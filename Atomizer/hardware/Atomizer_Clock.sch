EESchema Schematic File Version 4
LIBS:Atomizer-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:LED D_LED1
U 1 1 5BF61C9C
P 6600 2700
F 0 "D_LED1" H 6600 2450 50  0000 C CNN
F 1 "LED" H 6600 2550 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6600 2700 50  0001 C CNN
F 3 "~" H 6600 2700 50  0001 C CNN
	1    6600 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8600 2700 8600 2400
Wire Wire Line
	9600 2700 9600 3600
Wire Wire Line
	8800 1800 8800 1700
Wire Wire Line
	8800 1700 9600 1700
$Comp
L Device:R R_LPF1
U 1 1 5BF61CAE
P 6000 2700
F 0 "R_LPF1" V 5750 2700 50  0000 C CNN
F 1 "100R" V 5850 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5930 2700 50  0001 C CNN
F 3 "~" H 6000 2700 50  0001 C CNN
	1    6000 2700
	0    1    1    0   
$EndComp
$Comp
L Device:CP CP_FAST1
U 1 1 5BF61CB5
P 8900 3750
F 0 "CP_FAST1" H 9017 3795 50  0000 L CNN
F 1 "22uF" H 9017 3706 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.4" H 8938 3600 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/445/875105240003-540627.pdf" H 8900 3750 50  0001 C CNN
F 4 "710-875105240003" H 8900 3750 50  0001 C CNN "MouserNo"
F 5 "875105240003" H 8900 3750 50  0001 C CNN "Mfr. No:"
F 6 "Wurth" H 8900 3750 50  0001 C CNN "Mfr:"
F 7 "Aluminium Organic Polymer Capacitors WCAP-PSLP 10V 22uF 20%" H 8900 3750 50  0001 C CNN "Type"
F 8 "45mOhms" H 8900 3750 50  0001 C CNN "ESR"
F 9 "20%" H 8900 3750 50  0001 C CNN "Tolerance"
F 10 "10 DC" H 8900 3750 50  0001 C CNN "Voltage Rating DC"
F 11 "4mm" H 8900 3750 50  0001 C CNN "Diameter"
	1    8900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3300 8900 3600
Wire Wire Line
	8600 2700 7100 2700
Wire Wire Line
	6150 2700 6300 2700
Wire Wire Line
	8800 2400 8800 2700
Wire Wire Line
	8800 2700 9600 2700
Wire Wire Line
	9600 1700 9600 2700
Connection ~ 9600 2700
Text HLabel 9650 1400 2    50   Input ~ 0
CLK_OUT
Wire Wire Line
	8600 1400 8600 1800
Wire Wire Line
	8600 1400 9650 1400
Text HLabel 9600 3600 3    50   Input ~ 0
GND
Text HLabel 8900 4200 3    50   Input ~ 0
GND
$Comp
L Device:C C_LPFOPT2
U 1 1 5C18730A
P 7100 3150
F 0 "C_LPFOPT2" H 7215 3196 50  0000 L CNN
F 1 "10uF" H 7215 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7138 3000 50  0001 C CNN
F 3 "~" H 7100 3150 50  0001 C CNN
	1    7100 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_LPFOPT1
U 1 1 5C18735B
P 6300 3150
F 0 "C_LPFOPT1" H 6415 3196 50  0000 L CNN
F 1 "100nF" H 6415 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6338 3000 50  0001 C CNN
F 3 "~" H 6300 3150 50  0001 C CNN
	1    6300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3000 6300 2700
Connection ~ 6300 2700
Wire Wire Line
	6300 2700 6450 2700
Wire Wire Line
	7100 3000 7100 2700
Connection ~ 7100 2700
Wire Wire Line
	7100 2700 6750 2700
Wire Wire Line
	7100 3300 7100 3600
Text HLabel 7100 3600 3    50   Input ~ 0
GND
Wire Wire Line
	6300 3300 6300 3600
Text HLabel 6300 3600 3    50   Input ~ 0
GND
$Comp
L Device:R_POT P_OSCON1
U 1 1 5BE6F106
P 3100 6550
F 0 "P_OSCON1" H 2800 6700 50  0000 C CNN
F 1 "B10K" H 2850 6600 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 3100 6550 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/15/RK09L-1370814.pdf" H 3100 6550 50  0001 C CNN
F 4 "688-RK09L1140A66" H 3100 6550 50  0001 C CNN "MouserNo"
F 5 "RK09L1140A66" H 3100 6550 50  0001 C CNN "Mfr. No:"
F 6 "ALPS" H 3100 6550 50  0001 C CNN "Mfr:"
F 7 "1GANG LINEAR 20% FLATTED 1TURN" H 3100 6550 50  0001 C CNN "Type"
	1    3100 6550
	-1   0    0    1   
$EndComp
Text HLabel 2100 4200 3    50   Input ~ 0
GND
$Comp
L Device:R R_OSCON1
U 1 1 5BE70559
P 3100 5900
F 0 "R_OSCON1" H 3400 5850 50  0000 C CNN
F 1 "1K" H 3300 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3030 5900 50  0001 C CNN
F 3 "~" H 3100 5900 50  0001 C CNN
	1    3100 5900
	1    0    0    1   
$EndComp
Wire Wire Line
	2700 3100 4600 3100
Wire Wire Line
	4600 2700 5850 2700
$Comp
L Device:R_POT P_OSCOFF1
U 1 1 5BE76FC9
P 1600 6550
F 0 "P_OSCOFF1" H 1300 6700 50  0000 C CNN
F 1 "B10K" H 1400 6600 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 1600 6550 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/15/RK09L-1370814.pdf" H 1600 6550 50  0001 C CNN
F 4 "688-RK09L1140A66" H 1600 6550 50  0001 C CNN "MouserNo"
F 5 "RK09L1140A66" H 1600 6550 50  0001 C CNN "Mfr. No:"
F 6 "ALPS" H 1600 6550 50  0001 C CNN "Mfr:"
F 7 "1GANG LINEAR 20% FLATTED 1TURN" H 1600 6550 50  0001 C CNN "Type"
	1    1600 6550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R_OSCOFF1
U 1 1 5BE76FCF
P 1600 5900
F 0 "R_OSCOFF1" H 1900 5850 50  0000 C CNN
F 1 "1K" H 1750 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1530 5900 50  0001 C CNN
F 3 "~" H 1600 5900 50  0001 C CNN
	1    1600 5900
	1    0    0    1   
$EndComp
Connection ~ 2100 1700
Text HLabel 2100 1000 1    50   Input ~ 0
VCC
$Comp
L Device:C C_BP1
U 1 1 5BEBE4C2
P 2500 2000
F 0 "C_BP1" H 2615 2045 50  0000 L CNN
F 1 "100nF" H 2615 1956 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2538 1850 50  0001 C CNN
F 3 "~" H 2500 2000 50  0001 C CNN
	1    2500 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1850 2500 1700
Wire Wire Line
	2500 1700 2100 1700
Wire Wire Line
	2500 2150 2500 2250
Text HLabel 2500 2250 3    50   Input ~ 0
GND
$Comp
L Isolator:LTV-357T U_OPTO1
U 1 1 5BE5F080
P 8700 2100
F 0 "U_OPTO1" V 8750 2650 50  0000 R CNN
F 1 "ACPL-217" V 8650 2650 50  0000 R CNN
F 2 "Package_SO:SO-4_4.4x2.3mm_P1.27mm" H 8500 1900 50  0001 L CIN
F 3 "https://docs-emea.rs-online.com/webdocs/163c/0900766b8163ccc8.pdf" H 8700 2100 50  0001 L CNN
F 4 "630-ACPL-217-50BE" H 8700 2100 50  0001 C CNN "MouserNo"
F 5 "ACPL-217-50BE" H 8700 2100 50  0001 C CNN "Mfr. No:"
F 6 "Broadcom / Avago" H 8700 2100 50  0001 C CNN "Mfr:"
F 7 "Transistor Output Optocouplers 3000Vrms 50% CTR" H 8700 2100 50  0001 C CNN "Type"
	1    8700 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R_OSCLIMIT1
U 1 1 5BE63342
P 2100 1350
F 0 "R_OSCLIMIT1" H 2170 1396 50  0000 L CNN
F 1 "330R" H 2170 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 1350 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/54/rs-a-1222350.pdf" H 2100 1350 50  0001 C CNN
F 4 "652-CRS0805AFX1000LF" H 2100 1350 50  0001 C CNN "MouserNo"
F 5 "CRS0805AFX1000LF" H 2100 1350 50  0001 C CNN "Mfr. No:"
F 6 "Bourns" H 2100 1350 50  0001 C CNN "Mfr:"
F 7 "Thick Film Resistors - SMD 100 ohm 1% 1/4W TC100" H 2100 1350 50  0001 C CNN "Type"
	1    2100 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1000 2100 1200
Wire Wire Line
	2100 1500 2100 1700
$Comp
L Switch:SW_SPDT SW_ATTACK1
U 1 1 5BE6888F
P 8600 3100
F 0 "SW_ATTACK1" V 8600 3248 50  0000 L CNN
F 1 "SW_SPDT" V 8645 3248 50  0001 L CNN
F 2 "DailywellSwitches:Dailywell_SPDT" H 8600 3100 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/209/MS-100786-1172382.pdf" H 8600 3100 50  0001 C CNN
F 4 "108-2MS1T1B1M2QE-EVX" H 8600 3100 50  0001 C CNN "MouserNo"
F 5 "108-2MS1T1B1M2QE-EVX" H 8600 3100 50  0001 C CNN "Mfr. No:"
F 6 "Mountain Switch" H 8600 3100 50  0001 C CNN "Mfr:"
F 7 "TOGGLE SPDT ON-ON PC MOUNT" H 8600 3100 50  0001 C CNN "Type"
	1    8600 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 3900 8900 4200
Wire Wire Line
	8600 2900 8600 2700
Connection ~ 8600 2700
$Comp
L Device:CP CP_SLOW1
U 1 1 5BE6F69D
P 8300 3750
F 0 "CP_SLOW1" H 7800 3800 50  0000 L CNN
F 1 "220uF" H 7850 3650 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.4" H 8338 3600 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/315/ABA0000C1184-947404.pdf" H 8300 3750 50  0001 C CNN
F 4 "667-EEE-FPC221XAP" H 8300 3750 50  0001 C CNN "MouserNo"
F 5 "EEE-FPC221XAP" H 8300 3750 50  0001 C CNN "Mfr. No:"
F 6 "Panasonic" H 8300 3750 50  0001 C CNN "Mfr:"
F 7 "Aluminium Electrolytic Capacitors - SMD  " H 8300 3750 50  0001 C CNN "Type"
F 8 "6 mm" H 8300 3750 50  0001 C CNN "Diameter"
F 9 "160 mOhms" H 8300 3750 50  0001 C CNN "ESR"
F 10 "16 VDC" H 8300 3750 50  0001 C CNN "Voltage Rating DC"
F 11 "20 %" H 8300 3750 50  0001 C CNN "Tolerance"
	1    8300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3600 8500 3300
Text HLabel 8300 4200 3    50   Input ~ 0
GND
Wire Wire Line
	8300 3900 8300 4200
Wire Wire Line
	3000 1850 3000 1700
Wire Wire Line
	3000 1700 2500 1700
Connection ~ 2500 1700
Wire Wire Line
	3000 2150 3000 2250
Text HLabel 3000 2250 3    50   Input ~ 0
GND
$Comp
L Device:C C_BP2
U 1 1 5BEDE887
P 3000 2000
F 0 "C_BP2" H 3115 2046 50  0000 L CNN
F 1 "10uF" H 3115 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3038 1850 50  0001 C CNN
F 3 "~" H 3000 2000 50  0001 C CNN
	1    3000 2000
	1    0    0    -1  
$EndComp
Text Notes 6400 3350 0    50   ~ 0
(Optional)
Text Notes 7200 3350 0    50   ~ 0
(Optional)
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20SU U_CLK1
U 1 1 5BFB6DEC
P 2100 3300
F 0 "U_CLK1" H 1571 3345 50  0000 R CNN
F 1 "ATtiny85-20SU" H 1571 3256 50  0000 R CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 2100 3300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 2100 3300 50  0001 C CNN
	1    2100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6700 1600 7050
Text Label 3400 3100 2    50   ~ 0
CLK_OUT_PIN
Wire Wire Line
	2100 1700 2100 2700
Wire Wire Line
	2100 3900 2100 4200
Wire Wire Line
	2700 3000 3400 3000
Text Label 3400 3000 2    50   ~ 0
MODE_BTN_PIN
Text Label 3400 3400 2    50   ~ 0
FREQ_ADJ_OFF_PIN
Text Label 3400 3300 2    50   ~ 0
FREQ_ADJ_ON_PIN
NoConn ~ 2700 3500
Wire Wire Line
	3100 6700 3100 7050
Wire Wire Line
	1600 6050 1600 6400
Wire Wire Line
	3100 6050 3100 6400
Wire Wire Line
	700  6550 1450 6550
Wire Wire Line
	2700 3300 3400 3300
Wire Wire Line
	2300 6550 2950 6550
Wire Wire Line
	1600 5300 1600 5750
Wire Wire Line
	3100 5300 3100 5750
Text HLabel 1600 5300 1    50   Input ~ 0
VCC
Text HLabel 3100 5300 1    50   Input ~ 0
VCC
Text HLabel 1600 7050 3    50   Input ~ 0
GND
Text HLabel 3100 7050 3    50   Input ~ 0
GND
$Comp
L Switch:SW_SPST SW_MODE1
U 1 1 5BFD81F6
P 4300 6550
F 0 "SW_MODE1" V 4255 6647 50  0000 L CNN
F 1 "SW_SPST" V 4344 6647 50  0000 L CNN
F 2 "TE_Alcoswitch_Tactile_FSM_RAJ:SW_TH_Tactile_Omron_B3F-10xx" H 4300 6550 50  0001 C CNN
F 3 "" H 4300 6550 50  0001 C CNN
	1    4300 6550
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 6350 4300 6050
Wire Wire Line
	4300 6750 4300 7000
Text HLabel 4300 7000 3    50   Input ~ 0
GND
$Comp
L Device:R R_MODE1
U 1 1 5BFDBAF5
P 4300 5900
F 0 "R_MODE1" H 4370 5945 50  0000 L CNN
F 1 "1K" H 4370 5856 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4230 5900 50  0001 C CNN
F 3 "~" H 4300 5900 50  0001 C CNN
	1    4300 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5750 4300 5100
Text Label 4300 5100 3    50   ~ 0
MODE_BTN_PIN
Wire Wire Line
	2700 3400 3400 3400
Text Label 700  6550 0    50   ~ 0
FREQ_ADJ_OFF_PIN
Text Label 2300 6550 0    50   ~ 0
FREQ_ADJ_ON_PIN
Wire Wire Line
	4600 3100 4600 2700
Wire Wire Line
	5800 5550 5800 5700
$Comp
L Device:R R_MODE_LED_PD1
U 1 1 5BFBD579
P 5800 5850
F 0 "R_MODE_LED_PD1" H 5100 5900 50  0000 L CNN
F 1 "47K" H 5600 5800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 5850 50  0001 C CNN
F 3 "~" H 5800 5850 50  0001 C CNN
	1    5800 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6000 5800 6150
Text HLabel 5800 6150 3    50   Input ~ 0
GND
Text Label 3400 3200 2    50   ~ 0
MODE_LED_PIN
$Comp
L Device:LED D_LED_ACT_LO1
U 1 1 5BFC1538
P 6750 5350
F 0 "D_LED_ACT_LO1" H 6750 5100 50  0000 C CNN
F 1 "LED" H 6750 5200 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6750 5350 50  0001 C CNN
F 3 "~" H 6750 5350 50  0001 C CNN
	1    6750 5350
	1    0    0    1   
$EndComp
$Comp
L Device:LED D_LED_ACT_HI1
U 1 1 5BFC1588
P 6750 5750
F 0 "D_LED_ACT_HI1" H 6750 5600 50  0000 C CNN
F 1 "LED" H 6750 5500 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6750 5750 50  0001 C CNN
F 3 "~" H 6750 5750 50  0001 C CNN
	1    6750 5750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R_MODE_LED1
U 1 1 5BFC269C
P 6050 5550
F 0 "R_MODE_LED1" V 5846 5550 50  0000 C CNN
F 1 "22K" V 5935 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5980 5550 50  0001 C CNN
F 3 "~" H 6050 5550 50  0001 C CNN
	1    6050 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 5550 5800 5550
Text Label 5250 5550 0    50   ~ 0
MODE_LED_PIN
Wire Wire Line
	6200 5550 6400 5550
Wire Wire Line
	6400 5550 6400 5350
Wire Wire Line
	6400 5350 6600 5350
Wire Wire Line
	6400 5550 6400 5750
Wire Wire Line
	6400 5750 6600 5750
Connection ~ 6400 5550
Wire Wire Line
	6900 5350 7400 5350
Wire Wire Line
	8700 5350 8700 4950
Text HLabel 8700 4950 1    50   Input ~ 0
VCC
Wire Wire Line
	7400 5750 6900 5750
Wire Wire Line
	8450 5750 8700 5750
Wire Wire Line
	8700 5750 8700 6150
Text HLabel 8700 6150 3    50   Input ~ 0
GND
Text Notes 7350 5600 0    50   ~ 0
Diodes prevent switch on when \nMODE_LED_PIN is in Tri-State
Connection ~ 5800 5550
Wire Wire Line
	5800 5550 5250 5550
Wire Wire Line
	2700 3200 3400 3200
Wire Wire Line
	8450 5350 8700 5350
$Comp
L Device:D D_LED_ACT_LO3
U 1 1 5BFC855E
P 8300 5350
F 0 "D_LED_ACT_LO3" H 8300 5600 50  0000 C CNN
F 1 "1N914_VF1" H 8300 5474 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 8300 5350 50  0001 C CNN
F 3 "~" H 8300 5350 50  0001 C CNN
	1    8300 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5350 8150 5350
$Comp
L Device:D D_LED_ACT_LO2
U 1 1 5BFC8500
P 7550 5350
F 0 "D_LED_ACT_LO2" H 7550 5600 50  0000 C CNN
F 1 "1N914_VF1" H 7550 5474 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 7550 5350 50  0001 C CNN
F 3 "~" H 7550 5350 50  0001 C CNN
	1    7550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5750 7700 5750
$Comp
L Device:D D_LED_ACT_HI3
U 1 1 5BFCED00
P 8300 5750
F 0 "D_LED_ACT_HI3" H 8300 5900 50  0000 C CNN
F 1 "1N914_VF1" H 8300 6000 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 8300 5750 50  0001 C CNN
F 3 "~" H 8300 5750 50  0001 C CNN
	1    8300 5750
	-1   0    0    1   
$EndComp
$Comp
L Device:D D_LED_ACT_HI2
U 1 1 5BFCED06
P 7550 5750
F 0 "D_LED_ACT_HI2" H 7550 5900 50  0000 C CNN
F 1 "1N914_VF1" H 7550 6000 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 7550 5750 50  0001 C CNN
F 3 "~" H 7550 5750 50  0001 C CNN
	1    7550 5750
	-1   0    0    1   
$EndComp
Text Notes 5100 6025 0    50   ~ 0
(ICSP Debug \nUse Only)
$EndSCHEMATC
