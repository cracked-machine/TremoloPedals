/*
 * Attiny85Test.c
 *
 * Created: 19-11-2018 11:58:36 PM
 * Author : chris
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>

#include <avr/wdt.h>        // Supplied Watch Dog Timer Macros 
#include <avr/sleep.h>      // Supplied AVR Sleep Macros
#include <avr/power.h>

// sweep
volatile float weight = 0;

// fade
volatile float fade = 20;
volatile int fadeup = 0;

// debounce variables
volatile unsigned int wdcounter = 0;
#define DEBOUNCE_DELAY 60 // 1 wdt tick = 16ms
uint32_t pd0_last_interrupt_time = 0;

// ADC variables
volatile unsigned int upperpot = 0;		// the top potentiometer
volatile unsigned int lowerpot = 0;		// the bottom potentiometer

#define _ADCLA 0x20	// ADC Left Adjust Result
#define _ADC0EN 0x00	// PB5 - MUX(3:0) = 0000; Use bitwise AND to set ADC0 ( e.g. ADMUX &= ADC0EN; )
#define _ADC1EN 0x01	// PB2 - MUX(3:0) = 0001; Use bitwise OR to set ADC1 ( e.g. ADMUX |= ADC1EN; )
#define _ADC2EN 0x02	// PB4 - MUX(3:0) = 0010; Use bitwise OR to set ADC2 ( e.g. ADMUX |= ADC2EN; )
#define _ADC3EN 0x03	// PB3 - MUX(3:0) = 0011; Use bitwise OR to set ADC3 ( e.g. ADMUX |= ADC3EN; )

// PCINT variables
// NORMAL	=	Synchronized-duty Tremolo (lowerpot does nothing)
// SKEW		=	PWM Tremolo (on/off duties controlled by upper/lower pots)
// SWEEP	=	Time-varied-sweep Tremolo (sweep speed and sweep duration controlled by upper/lower pots)
// FADE		=	sweeps duty of PWM (upperpot). ABANDONED; tremolo circuit too choppy for fade effect to be musically pleasing

typedef enum {NORMAL, SKEW, SWEEP /*,FADE*/} CONTROLMODE;
volatile CONTROLMODE currentMode = NORMAL;



// function prototypes
void setModeIndicator(CONTROLMODE p_currentMode);
void TimerModeEnable(CONTROLMODE p_currentMode);
void resetPWM();

int main(void)
{
	// set the MCU clock low enough to run at ~3Hz	
	clock_prescale_set(4);
	
	cli();
	
	///////////////////////
	/////	PIN USAGE
	///////////////////////
	///
	//		PB0 - INPUT  - Mode Button
	//		PB1 - OUTPUT - Tremolo Clock 
	//		PB2 - OUTPUT - Mode LEDs
	//		PB3 - INPUT  - Hi Adjust Pot
	//		PB4 - INPUT  - Lo Adjust Pot
	///
	////////////////////////
	
	
	
	// clock signal (output)
	PORTB |= (1<<PB1);
	DDRB |= (1<<DDB1);
	
	// ADC3+4 (input)
	PORTB &= ~(1<<PB3);
	DDRB &= ~(1<<DDB3);
	PORTB &= ~(1<<PB4);
	DDRB &= ~(1<<DDB4);
		
	///////////////////////////////////
	//// PCINT setup
	///////////////////////////////////
	
	// set PB0 to input
	DDRB &= ~(1<<DDB0);
	// set PB0 pull-up
	PORTB |= 1<<PB0;
	
	// enable PC Interrupts
	GIMSK |= (1<<PCIE);
	// enable PCINT0 interrupt
	PCMSK |= (1<<PCINT0);
		
	setModeIndicator(currentMode = NORMAL);
	
	TimerModeEnable(NORMAL);
	

	///////////////////////////////////
	//// ADC setup 
	///////////////////////////////////

	
	// VCC used as Voltage Reference, disconnected from PB0 (AREF).
	ADMUX &= ~((1<<REFS0) | (1<<REFS1));
	
	// ADC Right Adjust Result
	ADMUX &= ~((1<<ADLAR));
	// ADC Left Adjust Result
	//ADMUX |= _ADCLA;
	
	// ADC3 selected by default
	ADMUX |= _ADC3EN;
	
	// ADC enable,  Auto Trigger Enable,  Interrupt Enable	
	ADCSRA |= (1<<ADATE) | (1<<ADIE) | (1<<ADEN);
	
	// ADC prescaler /128 - this is fast enough for our purposes, NOTE: /2 prescaler blocks WDT_vect 
	ADCSRA |= (1<<ADPS0) | (1<<ADPS1) | (1<<ADPS2);

	// Single Ended conversions, Auto Trigger Source = Free Running mode
	ADCSRB = 0;
	
	// ADC Start Conversion
	ADCSRA |= (1<<ADSC);
	
	// setup watchdog to interupt every 1sec
	WDTCR |= (1<<WDE) | (1<<WDIE);
	
	sei();
	
	while(1)
	{
		// wait for interrupts
	}
	
}

/////////////////////////
/// FUNCTIONS
/////////////////////////

void resetPWM() {
	
	OCR0A=0x81;		// low duty;	0x42 (66) - 0x81 (129)
	OCR0B=0x41;		// high duty;	0x01 (1) - 0x41 (65)
}

void setModeIndicator(CONTROLMODE p_currentMode) 
{
	currentMode = p_currentMode;
	switch(p_currentMode)
	{
		case NORMAL:
			// Tri-State mode LED pin (LEDS off)
			DDRB &= ~(1<<DDB2);
			PORTB &= ~(1<<PB2);
			break;
			
		case SKEW:
			// Logic one to mode LED pin 
			DDRB |= (1<<DDB2);
			PORTB |= (1<<PB2);
			break;
		
		case SWEEP:
			// Logic zero to mode LED pin 
			DDRB |= (1<<DDB2);
			PORTB &= ~(1<<PB2);
			break;
		/* abandoned *see top*
		case FADE:
			break;
		*/
	}
}

void TimerModeEnable(CONTROLMODE p_currentMode)
{
	currentMode = p_currentMode;
	cli();
	
	switch(p_currentMode)
	{
		case NORMAL:
			
			// disable Timer0 output to OC0B (PB1)
			TCCR0A = 0;
			
			///////////////////////////////////
			//// Timer1 CTC  setup
			///////////////////////////////////

			// Timer/Counter1 is reset to $00 after a compare match with OCR1C register value 
			TCCR1 |= (1<<CTC1);
	
			// enable toggle output on OC1A (PB1) output line.
			TCCR1 |= (0<<COM1A1) | (1<<COM1A0);
			
			// Timer/Counter1 Prescale Select PCK/2048
			TCCR1 |= (1<<CS13) | (1<<CS12) | (0<<CS11) | (0<<CS10);
	
			TIMSK |= (1<<OCIE1A);
	
			OCR1C =  10;
	
			break;
			
		case SKEW:
			
			// disable Timer1 output to OC1A (PB1)
			TCCR1 = 0;
			
			///////////////////////////////////
			//// Timer0 phase PWM setup
			/////////////////////////////////
			
			//Normal port operation, OC0A disconnected
			TCCR0A |= (0<<COM0A1) | (0<<COM0A0);
			// Enable OC0B (PB1) output. (Clear OC0B on Compare Match, set OC0B at BOTTOM - non-inverting mode)
			TCCR0A |= (1<<COM0B1) | (0<<COM0B0);
			// Mode 5: phase PWM
			TCCR0A |= (0<<WGM01) | (1<<WGM00);
			TCCR0B |= (1<<WGM02);
			// 1024 Prescaler
			TCCR0B |= (1<<CS02) | (0<<CS01) | (1<<CS00);
	
			// Timer/Counter0 Output Compare Match A Interrupt Enable
			TIMSK |= (1<<OCIE0A);
	
			TCNT0=0x00;
			resetPWM();
			
			break;
		
		case SWEEP:
		
			// disable Timer0 output to OC0B (PB1)
			TCCR0A = 0;
			
			///////////////////////////////////
			//// Timer1 CTC  setup
			///////////////////////////////////

			// Timer/Counter1 is reset to $00 after a compare match with OCR1C register value
			TCCR1 |= (1<<CTC1);
			
			// enable toggle output on OC1A (PB1) output line.
			TCCR1 |= (0<<COM1A1) | (1<<COM1A0);
			
			// Timer/Counter1 Prescale Select PCK/2048
			//TCCR1 |= (0<<CS13) | (1<<CS12) | (1<<CS11) | (1<<CS10); // /64 
			//TCCR1 |= (1<<CS13) | (0<<CS12) | (0<<CS11) | (0<<CS10); // /128
			TCCR1 |= (1<<CS13) | (0<<CS12) | (0<<CS11) | (1<<CS10); // /256
			//TCCR1 |= (1<<CS13) | (0<<CS12) | (1<<CS11) | (0<<CS10); // /512
			//TCCR1 |= (1<<CS13) | (0<<CS12) | (1<<CS11) | (1<<CS10); // /1024
			//TCCR1 |= (1<<CS13) | (1<<CS12) | (0<<CS11) | (0<<CS10); // /2048
			
			TIMSK |= (1<<OCIE1A);
			
			OCR1C =  10;
			
			break;
			/*  abandoned *see top*
			case FADE:
			
			// disable Timer1 output to OC1A (PB1)
			TCCR1 = 0;
			
			///////////////////////////////////
			//// Timer0 phase PWM setup
			/////////////////////////////////
			
			//Normal port operation, OC0A disconnected
			TCCR0A |= (0<<COM0A1) | (0<<COM0A0);
			// Enable OC0B (PB1) output. (Clear OC0B on Compare Match, set OC0B at BOTTOM - non-inverting mode)
			TCCR0A |= (1<<COM0B1) | (0<<COM0B0);
			// Mode 5: phase PWM
			TCCR0A |= (0<<WGM01) | (1<<WGM00);
			TCCR0B |= (1<<WGM02);
			// 1024 Prescaler
			TCCR0B |= (1<<CS02) | (0<<CS01) | (1<<CS00);
			
			// Timer/Counter0 Output Compare Match A Interrupt Enable
			TIMSK |= (1<<OCIE0A);
			
			TCNT0=0x00;
			resetPWM();
			
			break;
			*/
	}
	
	sei();	
}

//////////////////////////////
///// INTERRUPTS
//////////////////////////////

ISR (TIMER1_COMPA_vect)
{
	// Normal/SWEEP mode freq adjust
	switch(currentMode)
	{
		// as the pot is turned CW the clock duty will decrease, a duty less than 2 is bad
		case NORMAL:
			if((upperpot / 16) < 2)
			{
				OCR1C = 2;
			}
			else
			{
				OCR1C = (upperpot / 16);
			}
			
			
			
			break;
		case SWEEP:
			//prevents MCU reset
			if(upperpot < 50) 
			{
				upperpot = 100;
			}
			
			OCR1C= (upperpot / (lowerpot/16)) * weight;
			weight=weight+0.5;
			if (OCR1C > (upperpot))
			{
				weight = 0;
			}
			
			break;
		
		//unused modes in this interrupt	
		case SKEW:
			break;
			
		/* abandoned *see top*
		case FADE:
			break;
		*/
	}
			
	
}

ISR (TIMER0_COMPA_vect)
{
	
	switch(currentMode)
	{
		// SKEW mode: user can control both duties of timer PWM (translates to tremolo PWM)
		case SKEW:
			// Skew mode freq adjust
	
			// update high duty (upperpot mapped 10bit -> 8Bit)
			if((upperpot / 16) > (lowerpot / 16)) 
			{
				// upper pot cannot be more than lower pot
			}
			else 
			{
				OCR0B=0x1 + (upperpot / 16);
			}
	
	
			// update low duty (lowerpot mapped 10bit -> 8Bit)
			if((lowerpot / 16) < (upperpot / 16)) 
			{
				// lower pot cannot be less than higher pot
			}
			else 
			{
				OCR0A=0x1 + (lowerpot / 16);
			}
			break;
		
		/*	abandoned *see top*
		
		case FADE:
				
				if(fade < 0)
					fadeup = 1;
				else if (fade > 10)
					fadeup = 0;
					
				if(fadeup)
					OCR0B= (fade=fade+0.2);
				else if(!fadeup)
					OCR0B= (fade=fade-0.2);
					
						
				OCR0A=0x1 + (lowerpot / 16);

			break;
		*/	
		
		//unused modes in this interrupt
		case SWEEP:
			break;
		case NORMAL:
			break;
	
	}
	

}

ISR (WDT_vect)
{
	// increment the counter
	wdcounter++;
	// re-enable the WDG interrupt to prevent device reset.
	WDTCR |= (1<<WDIE);
}

ISR (PCINT0_vect)
{
	// check for bounce
	uint32_t interrupt_time = wdcounter;
	if (interrupt_time - pd0_last_interrupt_time > DEBOUNCE_DELAY) 
	{
		// toggle the control mode
		switch(currentMode) 
		{
			case NORMAL:
				
				TimerModeEnable(SKEW);
				setModeIndicator(SKEW);

				break;

			case SKEW:
				
				setModeIndicator(SWEEP);
				TimerModeEnable(SWEEP);
				resetPWM();
				break;	

			case SWEEP:
				
				setModeIndicator(NORMAL);
				TimerModeEnable(NORMAL);
				resetPWM();
				
				break;
			/* abandoned *see top*
			case FADE:
				break;
			*/
		}
		// store the tick of the last successful press
		pd0_last_interrupt_time = interrupt_time;
	
	}
}

ISR (ADC_vect)
{
	// 1.check current adc mux channel
	// 2.read ADC result
	// 3.enable the next contiguous mux channel
	
	switch(ADMUX) {
		
		// if ADLAR bit set, use switch case mask '_ADCLA | _ADCXEN'
		// if ADLAR bit cleared, use switch case mask '_ADCXEN'
		
		case _ADC2EN:
		upperpot = ADCL;				// read 8 LSB
		upperpot += ADCH << 8;		// read 2 MSB, shift them left 8 positions and add to LSB. Result = 2MSB + 8LSB
		ADMUX &= _ADCLA | _ADC0EN;		//  clear MUX bits whilst retaining ADC Left Adjust Result
		ADMUX |= _ADC3EN;				// set ADC3 for next check
		break;
		
		case _ADC3EN:
		lowerpot = ADCL;				// read 8 LSB
		lowerpot += ADCH << 8;		// read 2 MSB, shift them left 8 positions and add to LSB. Result = 2MSB + 8LSB
		ADMUX &= _ADCLA | _ADC0EN;		// clear MUX bits whilst retaining ADC Left Adjust Result
		ADMUX |= _ADC2EN;				// set ADC2 for check
		break;
		
	}
	// Start the next AD conversion
	ADCSRA|=(1<<ADSC);
}




