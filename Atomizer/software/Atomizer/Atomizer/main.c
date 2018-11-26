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


// debounce variables
volatile unsigned int wdcounter = 0;
#define DEBOUNCE_DELAY 30 // 1 wdt tick = 16ms
uint32_t pd0_last_interrupt_time = 0;

// ADC variables
volatile unsigned int adc2_result = 0;
volatile unsigned int adc3_result = 0;

#define _ADCLA 0x20	// ADC Left Adjust Result
#define _ADC0EN 0x00	// PB5 - MUX(3:0) = 0000; Use bitwise AND to set ADC0 ( e.g. ADMUX &= ADC0EN; )
#define _ADC1EN 0x01	// PB2 - MUX(3:0) = 0001; Use bitwise OR to set ADC1 ( e.g. ADMUX |= ADC1EN; )
#define _ADC2EN 0x02	// PB4 - MUX(3:0) = 0010; Use bitwise OR to set ADC2 ( e.g. ADMUX |= ADC2EN; )
#define _ADC3EN 0x03	// PB3 - MUX(3:0) = 0011; Use bitwise OR to set ADC3 ( e.g. ADMUX |= ADC3EN; )

// PCINT variables
typedef enum {NORMAL, SKEW, GLITCH} CONTROLMODE;
volatile CONTROLMODE currentMode = NORMAL;

// function prototypes
void setModeIndicator(CONTROLMODE p_currentMode);
void TimerModeEnable(CONTROLMODE p_currentMode);
void resetPWM();

int main(void)
{
	// 
	// Setup Main CLK Freq
	//
	// MIN_TM1_Freq = 8000000(CLK) / 1024(TM1_PRESCALER) / 256(8BitPWM) = 30.5Hz
	// Required Min_Tremolo_Freq < 3Hz
	// MIN_TM1_Freq / 16 = 1.9Hz
	//
	// void clock_prescale_set(clock_div_t)
	// clock_div_1 = 0,
	// clock_div_2 = 1,
	// clock_div_4 = 2,
	// clock_div_8 = 3,
	// ** clock_div_16 = 4,
	// clock_div_32 = 5,
	
	clock_prescale_set(4);
	
	cli();
	
	// pin setup
	
	setModeIndicator(currentMode = NORMAL);
	
	// clock signal (output)
	PORTB |= (1<<PB1);
	DDRB |= (1<<DDB1);
	
	// ADC3 (input)
	PORTB &= ~(1<<PB3);
	DDRB &= ~(1<<DDB3);
		
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
		
	//currentMode = NORMAL;
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
		// idle	
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
		
		case GLITCH:
			// Logic zero to mode LED pin 
			DDRB |= (1<<DDB2);
			PORTB &= ~(1<<PB2);
			break;
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
		
		case GLITCH:
			break;
	}
	
	sei();	
}

//////////////////////////////
///// INTERRUPTS
//////////////////////////////

ISR (TIMER1_COMPA_vect)
{
	// Normal mode freq adjust
	OCR1C = (adc2_result / 16); 
	
}

ISR (TIMER0_COMPA_vect)
{
	// Skew mode freq adjust
	
	// update low duty (adc3_result mapped 10bit -> 8Bit)
	OCR0A=0x1 + (adc3_result / 16);
	
	// update high duty (adc2_result mapped 10bit -> 8Bit)
	OCR0B=0x1 + (adc2_result / 16);

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
				
				setModeIndicator(GLITCH);

				break;	

			case GLITCH:
				
				setModeIndicator(NORMAL);
				TimerModeEnable(NORMAL);
				resetPWM();
				
				break;
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
		adc2_result = ADCL;				// read 8 LSB
		adc2_result += ADCH << 8;		// read 2 MSB, shift them left and add to LSB. Result = 2MSB + 8LSB
		ADMUX &= _ADCLA | _ADC0EN;		//  clear MUX bits whilst retaining ADC Left Adjust Result
		ADMUX |= _ADC3EN;				// set ADC3 for next check
		break;
		
		case _ADC3EN:
		adc3_result = ADCL;				// read 8 LSB
		adc3_result += ADCH << 8;		// read 2 MSB, shift them left and add to LSB. Result = 2MSB + 8LSB
		ADMUX &= _ADCLA | _ADC0EN;		// clear MUX bits whilst retaining ADC Left Adjust Result
		ADMUX |= _ADC2EN;				// set ADC2 for check
		break;
		
	}
	// Start the next AD conversion
	ADCSRA|=(1<<ADSC);
}




