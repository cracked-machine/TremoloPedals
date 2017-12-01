EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:7660
LIBS:msp430g2553
LIBS:switches
LIBS:JFetTremolo-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L JACK_2P J?
U 1 1 59C8D282
P 1450 4500
F 0 "J?" H 1100 4300 50  0000 C CNN
F 1 "JACK_2P" H 1300 4750 50  0000 C CNN
F 2 "" H 1450 4500 50  0001 C CNN
F 3 "" H 1450 4500 50  0001 C CNN
	1    1450 4500
	1    0    0    1   
$EndComp
$Comp
L JACK_2P J?
U 1 1 59C8D31E
P 10000 4800
F 0 "J?" H 9650 4600 50  0000 C CNN
F 1 "JACK_2P" H 9850 5050 50  0000 C CNN
F 2 "" H 10000 4800 50  0001 C CNN
F 3 "" H 10000 4800 50  0001 C CNN
	1    10000 4800
	-1   0    0    1   
$EndComp
$Comp
L TL072 U?
U 1 1 59C8D400
P 3650 4500
F 0 "U?" H 3650 4700 50  0000 L CNN
F 1 "TL072" H 3650 4300 50  0000 L CNN
F 2 "" H 3650 4500 50  0001 C CNN
F 3 "" H 3650 4500 50  0001 C CNN
	1    3650 4500
	1    0    0    -1  
$EndComp
$Comp
L TL072 U?
U 2 1 59C8D48B
P 5350 4600
F 0 "U?" H 5350 4800 50  0000 L CNN
F 1 "TL072" H 5350 4400 50  0000 L CNN
F 2 "" H 5350 4600 50  0001 C CNN
F 3 "" H 5350 4600 50  0001 C CNN
	2    5350 4600
	1    0    0    1   
$EndComp
$Comp
L 7660 U?
U 1 1 59C8D997
P 8000 2000
F 0 "U?" H 8000 2450 60  0000 C CNN
F 1 "7660" H 8000 1500 60  0000 C CNN
F 2 "" H 8000 2000 60  0001 C CNN
F 3 "" H 8000 2000 60  0001 C CNN
	1    8000 2000
	1    0    0    -1  
$EndComp
$Comp
L LM317T U?
U 1 1 59C8DA28
P 2400 1450
F 0 "U?" H 2200 1650 50  0000 C CNN
F 1 "LM317T" H 2400 1650 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 2400 1550 50  0001 C CIN
F 3 "" H 2400 1450 50  0001 C CNN
	1    2400 1450
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 59C8E07B
P 2500 4400
F 0 "C?" H 2525 4500 50  0000 L CNN
F 1 "470u" H 2525 4300 50  0000 L CNN
F 2 "" H 2538 4250 50  0001 C CNN
F 3 "" H 2500 4400 50  0001 C CNN
	1    2500 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 4400 2350 4400
Wire Wire Line
	2650 4400 3350 4400
Wire Wire Line
	3350 4600 3150 4600
Wire Wire Line
	3150 4600 3150 5150
Wire Wire Line
	3150 5150 4050 5150
Wire Wire Line
	4050 5150 4050 4500
Connection ~ 4050 4500
Wire Wire Line
	3950 4500 4450 4500
$Comp
L R R?
U 1 1 59C8E289
P 4600 4500
F 0 "R?" V 4680 4500 50  0000 C CNN
F 1 "100K" V 4600 4500 50  0000 C CNN
F 2 "" V 4530 4500 50  0001 C CNN
F 3 "" H 4600 4500 50  0001 C CNN
	1    4600 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 4500 5050 4500
Wire Wire Line
	5050 4700 4900 4700
Wire Wire Line
	4900 4700 4900 5000
$Comp
L GNDA #PWR?
U 1 1 59C8E6BC
P 4900 5000
F 0 "#PWR?" H 4900 4750 50  0001 C CNN
F 1 "GNDA" H 4900 4850 50  0000 C CNN
F 2 "" H 4900 5000 50  0001 C CNN
F 3 "" H 4900 5000 50  0001 C CNN
	1    4900 5000
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR?
U 1 1 59C8E6E9
P 2050 4950
F 0 "#PWR?" H 2050 4700 50  0001 C CNN
F 1 "GNDA" H 2050 4800 50  0000 C CNN
F 2 "" H 2050 4950 50  0001 C CNN
F 3 "" H 2050 4950 50  0001 C CNN
	1    2050 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4500 2050 4950
Wire Wire Line
	2050 4650 1900 4650
Wire Wire Line
	2050 4500 1900 4500
Connection ~ 2050 4650
$Comp
L POT RV?
U 1 1 59C8EA85
P 5250 3750
F 0 "RV?" V 5075 3750 50  0000 C CNN
F 1 "100K" V 5150 3750 50  0000 C CNN
F 2 "" H 5250 3750 50  0001 C CNN
F 3 "" H 5250 3750 50  0001 C CNN
	1    5250 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 4500 4950 3750
Wire Wire Line
	4950 3750 5100 3750
Connection ~ 4950 4500
Wire Wire Line
	5400 3750 5750 3750
Wire Wire Line
	5750 3750 5750 4600
Wire Wire Line
	5650 4600 7250 4600
Wire Wire Line
	5250 3600 5250 3500
Wire Wire Line
	5250 3500 5500 3500
Wire Wire Line
	5500 3500 5500 3750
Connection ~ 5500 3750
$Comp
L TL071 U?
U 1 1 59C8DC63
P 7550 4700
F 0 "U?" H 7550 4950 50  0000 L CNN
F 1 "TL071" H 7550 4850 50  0000 L CNN
F 2 "" H 7600 4750 50  0001 C CNN
F 3 "" H 7700 4850 50  0001 C CNN
	1    7550 4700
	1    0    0    -1  
$EndComp
Connection ~ 5750 4600
$Comp
L POT RV?
U 1 1 59C8EEDD
P 7550 5950
F 0 "RV?" V 7375 5950 50  0000 C CNN
F 1 "100K" V 7450 5950 50  0000 C CNN
F 2 "" H 7550 5950 50  0001 C CNN
F 3 "" H 7550 5950 50  0001 C CNN
	1    7550 5950
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 59C8EF68
P 7550 5550
F 0 "C?" V 7450 5650 50  0000 L CNN
F 1 "2.2n" V 7600 5650 50  0000 L CNN
F 2 "" H 7588 5400 50  0001 C CNN
F 3 "" H 7550 5550 50  0001 C CNN
	1    7550 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 4800 7000 4800
Wire Wire Line
	7000 4800 7000 5950
Wire Wire Line
	6800 5950 7400 5950
Wire Wire Line
	8100 5950 7700 5950
Wire Wire Line
	8100 4700 8100 5950
Wire Wire Line
	7850 4700 8650 4700
Wire Wire Line
	7400 5550 7000 5550
Connection ~ 7000 5550
Wire Wire Line
	7700 5550 8100 5550
Connection ~ 8100 5550
$Comp
L R R?
U 1 1 59C8F1A3
P 6650 5950
F 0 "R?" V 6730 5950 50  0000 C CNN
F 1 "10K" V 6650 5950 50  0000 C CNN
F 2 "" V 6580 5950 50  0001 C CNN
F 3 "" H 6650 5950 50  0001 C CNN
	1    6650 5950
	0    1    1    0   
$EndComp
$Comp
L CP C?
U 1 1 59C8F2A0
P 5700 6250
F 0 "C?" H 5725 6350 50  0000 L CNN
F 1 "CP" H 5725 6150 50  0000 L CNN
F 2 "" H 5738 6100 50  0001 C CNN
F 3 "" H 5700 6250 50  0001 C CNN
	1    5700 6250
	1    0    0    -1  
$EndComp
Connection ~ 7000 5950
Wire Wire Line
	5700 5950 5700 6100
$Comp
L GNDA #PWR?
U 1 1 59C8F3BE
P 5700 6600
F 0 "#PWR?" H 5700 6350 50  0001 C CNN
F 1 "GNDA" H 5700 6450 50  0000 C CNN
F 2 "" H 5700 6600 50  0001 C CNN
F 3 "" H 5700 6600 50  0001 C CNN
	1    5700 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 6400 5700 6600
$Comp
L R R?
U 1 1 59C8F777
P 6100 5950
F 0 "R?" V 6180 5950 50  0000 C CNN
F 1 "1K" V 6100 5950 50  0000 C CNN
F 2 "" V 6030 5950 50  0001 C CNN
F 3 "" H 6100 5950 50  0001 C CNN
	1    6100 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 5950 5700 5950
Wire Wire Line
	6250 5950 6500 5950
Wire Wire Line
	7550 6100 7550 6200
Wire Wire Line
	7550 6200 7950 6200
Wire Wire Line
	7950 6200 7950 5950
Connection ~ 7950 5950
$Comp
L C C?
U 1 1 59C905AE
P 8800 4700
F 0 "C?" H 8825 4800 50  0000 L CNN
F 1 "470u" H 8825 4600 50  0000 L CNN
F 2 "" H 8838 4550 50  0001 C CNN
F 3 "" H 8800 4700 50  0001 C CNN
	1    8800 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 4700 8950 4700
Connection ~ 8100 4700
$Comp
L MSP430G2553 U?
U 1 1 59C911C6
P 5000 2050
F 0 "U?" H 5000 3000 60  0000 C CNN
F 1 "MSP430G2553" H 5000 2850 60  0000 C CNN
F 2 "" H 4700 2050 60  0001 C CNN
F 3 "" H 4700 2050 60  0001 C CNN
	1    5000 2050
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR?
U 1 1 59C91306
P 1700 1250
F 0 "#PWR?" H 1700 1100 50  0001 C CNN
F 1 "+9V" H 1700 1390 50  0000 C CNN
F 2 "" H 1700 1250 50  0001 C CNN
F 3 "" H 1700 1250 50  0001 C CNN
	1    1700 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1250 1700 1400
Wire Wire Line
	1700 1400 2000 1400
$Comp
L R R?
U 1 1 59C9137E
P 2900 1800
F 0 "R?" V 2980 1800 50  0000 C CNN
F 1 "220R" V 2900 1800 50  0000 C CNN
F 2 "" V 2830 1800 50  0001 C CNN
F 3 "" H 2900 1800 50  0001 C CNN
	1    2900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1650 2900 1400
Wire Wire Line
	2800 1400 4450 1400
Wire Wire Line
	2400 1700 2400 2250
Wire Wire Line
	2400 2100 2900 2100
Wire Wire Line
	2900 2100 2900 1950
$Comp
L GNDD #PWR?
U 1 1 59C91488
P 2400 3050
F 0 "#PWR?" H 2400 2800 50  0001 C CNN
F 1 "GNDD" H 2400 2900 50  0000 C CNN
F 2 "" H 2400 3050 50  0001 C CNN
F 3 "" H 2400 3050 50  0001 C CNN
	1    2400 3050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59C9154A
P 2400 2400
F 0 "R?" V 2480 2400 50  0000 C CNN
F 1 "390R" V 2400 2400 50  0000 C CNN
F 2 "" V 2330 2400 50  0001 C CNN
F 3 "" H 2400 2400 50  0001 C CNN
	1    2400 2400
	1    0    0    -1  
$EndComp
Connection ~ 2400 2100
Wire Wire Line
	2400 2550 2400 3050
$Comp
L C C?
U 1 1 59C91657
P 1900 2100
F 0 "C?" H 1925 2200 50  0000 L CNN
F 1 "100N" H 1925 2000 50  0000 L CNN
F 2 "" H 1938 1950 50  0001 C CNN
F 3 "" H 1900 2100 50  0001 C CNN
	1    1900 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 1950 1900 1400
Connection ~ 1900 1400
Wire Wire Line
	1900 2750 2400 2750
Wire Wire Line
	1900 2750 1900 2250
Connection ~ 2400 2750
Connection ~ 2900 1400
Text Label 3450 1400 0    60   ~ 0
+3.3V
$Comp
L R R?
U 1 1 59C92340
P 3300 1800
F 0 "R?" V 3380 1800 50  0000 C CNN
F 1 "1K" V 3300 1800 50  0000 C CNN
F 2 "" V 3230 1800 50  0001 C CNN
F 3 "" H 3300 1800 50  0001 C CNN
	1    3300 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 1650 3300 1550
Wire Wire Line
	3300 1550 4450 1550
$Comp
L LED D?
U 1 1 59C9250C
P 3300 2200
F 0 "D?" H 3300 2300 50  0000 C CNN
F 1 "LED" H 3300 2100 50  0000 C CNN
F 2 "" H 3300 2200 50  0001 C CNN
F 3 "" H 3300 2200 50  0001 C CNN
	1    3300 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 1950 3300 2050
$Comp
L GNDD #PWR?
U 1 1 59C925D5
P 3300 3050
F 0 "#PWR?" H 3300 2800 50  0001 C CNN
F 1 "GNDD" H 3300 2900 50  0000 C CNN
F 2 "" H 3300 3050 50  0001 C CNN
F 3 "" H 3300 3050 50  0001 C CNN
	1    3300 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2350 3300 3050
$Comp
L GNDD #PWR?
U 1 1 59C92FCD
P 5850 1500
F 0 "#PWR?" H 5850 1250 50  0001 C CNN
F 1 "GNDD" H 5850 1350 50  0000 C CNN
F 2 "" H 5850 1500 50  0001 C CNN
F 3 "" H 5850 1500 50  0001 C CNN
	1    5850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1400 5850 1400
Wire Wire Line
	5850 1400 5850 1500
Wire Wire Line
	4100 1400 4100 1050
Wire Wire Line
	4100 1050 6100 1050
Wire Wire Line
	6100 1050 6100 2000
Wire Wire Line
	6100 2000 5950 2000
Connection ~ 4100 1400
$Comp
L R R?
U 1 1 59C930D5
P 5800 2000
F 0 "R?" V 5880 2000 50  0000 C CNN
F 1 "47K" V 5800 2000 50  0000 C CNN
F 2 "" V 5730 2000 50  0001 C CNN
F 3 "" H 5800 2000 50  0001 C CNN
	1    5800 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 2000 5550 2000
$Comp
L SW_SPST SW?
U 1 1 59C932A9
P 3900 2450
F 0 "SW?" H 3900 2575 50  0000 C CNN
F 1 "SW_SPST" H 3900 2350 50  0000 C CNN
F 2 "" H 3900 2450 50  0001 C CNN
F 3 "" H 3900 2450 50  0001 C CNN
	1    3900 2450
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR?
U 1 1 59C93A6F
P 3650 3050
F 0 "#PWR?" H 3650 2800 50  0001 C CNN
F 1 "GNDD" H 3650 2900 50  0000 C CNN
F 2 "" H 3650 3050 50  0001 C CNN
F 3 "" H 3650 3050 50  0001 C CNN
	1    3650 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2450 4450 2450
Wire Wire Line
	3700 2450 3650 2450
Wire Wire Line
	3650 2450 3650 3050
$Comp
L GNDD #PWR?
U 1 1 59C93BC2
P 4250 3050
F 0 "#PWR?" H 4250 2800 50  0001 C CNN
F 1 "GNDD" H 4250 2900 50  0000 C CNN
F 2 "" H 4250 3050 50  0001 C CNN
F 3 "" H 4250 3050 50  0001 C CNN
	1    4250 3050
	1    0    0    -1  
$EndComp
Connection ~ 4250 2450
$Comp
L C C?
U 1 1 59C93C8E
P 4250 2750
F 0 "C?" H 4275 2850 50  0000 L CNN
F 1 "100n" H 4275 2650 50  0000 L CNN
F 2 "" H 4288 2600 50  0001 C CNN
F 3 "" H 4250 2750 50  0001 C CNN
	1    4250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3050 4250 2900
Wire Wire Line
	4250 2600 4250 2450
$Comp
L +9V #PWR?
U 1 1 59C96F64
P 8550 1500
F 0 "#PWR?" H 8550 1350 50  0001 C CNN
F 1 "+9V" H 8550 1640 50  0000 C CNN
F 2 "" H 8550 1500 50  0001 C CNN
F 3 "" H 8550 1500 50  0001 C CNN
	1    8550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1500 8550 1700
Wire Wire Line
	8550 1700 8350 1700
$Comp
L GNDD #PWR?
U 1 1 59C97037
P 7300 2800
F 0 "#PWR?" H 7300 2550 50  0001 C CNN
F 1 "GNDD" H 7300 2650 50  0000 C CNN
F 2 "" H 7300 2800 50  0001 C CNN
F 3 "" H 7300 2800 50  0001 C CNN
	1    7300 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2100 7650 2100
Wire Wire Line
	7300 2100 7300 2800
$Comp
L CP C?
U 1 1 59C97B86
P 6950 2100
F 0 "C?" H 6975 2200 50  0000 L CNN
F 1 "10u" H 6975 2000 50  0000 L CNN
F 2 "" H 6988 1950 50  0001 C CNN
F 3 "" H 6950 2100 50  0001 C CNN
	1    6950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1900 6950 1900
Wire Wire Line
	6950 1900 6950 1950
Wire Wire Line
	6950 2250 6950 2300
Wire Wire Line
	6950 2300 7650 2300
$Comp
L CP C?
U 1 1 59C97F94
P 8600 2550
F 0 "C?" H 8625 2650 50  0000 L CNN
F 1 "10u" H 8625 2450 50  0000 L CNN
F 2 "" H 8638 2400 50  0001 C CNN
F 3 "" H 8600 2550 50  0001 C CNN
	1    8600 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2400 8600 2300
Wire Wire Line
	8350 2300 9400 2300
Wire Wire Line
	8600 2700 7500 2700
Wire Wire Line
	7500 2700 7500 2100
Connection ~ 7500 2100
$Comp
L CP C?
U 1 1 59C9813C
P 9000 2550
F 0 "C?" H 9025 2650 50  0000 L CNN
F 1 "100u" H 9025 2450 50  0000 L CNN
F 2 "" H 9038 2400 50  0001 C CNN
F 3 "" H 9000 2550 50  0001 C CNN
	1    9000 2550
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR?
U 1 1 59C98263
P 9000 2800
F 0 "#PWR?" H 9000 2550 50  0001 C CNN
F 1 "GNDD" H 9000 2650 50  0000 C CNN
F 2 "" H 9000 2800 50  0001 C CNN
F 3 "" H 9000 2800 50  0001 C CNN
	1    9000 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2800 9000 2700
Wire Wire Line
	9000 2300 9000 2400
Connection ~ 8600 2300
$Comp
L GNDD #PWR?
U 1 1 59C98B8E
P 9400 2800
F 0 "#PWR?" H 9400 2550 50  0001 C CNN
F 1 "GNDD" H 9400 2650 50  0000 C CNN
F 2 "" H 9400 2800 50  0001 C CNN
F 3 "" H 9400 2800 50  0001 C CNN
	1    9400 2800
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 59C98BED
P 9400 2550
F 0 "C?" H 9250 2450 50  0000 L CNN
F 1 "100n" H 9150 2650 50  0000 L CNN
F 2 "" H 9438 2400 50  0001 C CNN
F 3 "" H 9400 2550 50  0001 C CNN
	1    9400 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 2050 9400 2400
Connection ~ 9000 2300
Wire Wire Line
	9400 2700 9400 2800
$Comp
L GNDA #PWR?
U 1 1 59C9A0DF
P 9450 5100
F 0 "#PWR?" H 9450 4850 50  0001 C CNN
F 1 "GNDA" H 9450 4950 50  0000 C CNN
F 2 "" H 9450 5100 50  0001 C CNN
F 3 "" H 9450 5100 50  0001 C CNN
	1    9450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 4800 9450 4800
Wire Wire Line
	9450 4800 9450 5100
Wire Wire Line
	9550 4950 9450 4950
Connection ~ 9450 4950
$Comp
L -9VA #PWR?
U 1 1 59C9B565
P 9400 2050
F 0 "#PWR?" H 9400 1925 50  0001 C CNN
F 1 "-9VA" H 9400 2200 50  0000 C CNN
F 2 "" H 9400 2050 50  0001 C CNN
F 3 "" H 9400 2050 50  0001 C CNN
	1    9400 2050
	1    0    0    -1  
$EndComp
Connection ~ 9400 2300
$Comp
L -9VA #PWR?
U 1 1 59C9B9E3
P 3550 4900
F 0 "#PWR?" H 3550 4775 50  0001 C CNN
F 1 "-9VA" H 3550 5050 50  0000 C CNN
F 2 "" H 3550 4900 50  0001 C CNN
F 3 "" H 3550 4900 50  0001 C CNN
	1    3550 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 4900 3550 4800
$Comp
L -9VA #PWR?
U 1 1 59C9C0BD
P 5250 4200
F 0 "#PWR?" H 5250 4075 50  0001 C CNN
F 1 "-9VA" H 5250 4350 50  0000 C CNN
F 2 "" H 5250 4200 50  0001 C CNN
F 3 "" H 5250 4200 50  0001 C CNN
	1    5250 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4300 5250 4200
$Comp
L -9VA #PWR?
U 1 1 59C9C550
P 7450 5100
F 0 "#PWR?" H 7450 4975 50  0001 C CNN
F 1 "-9VA" H 7450 5250 50  0000 C CNN
F 2 "" H 7450 5100 50  0001 C CNN
F 3 "" H 7450 5100 50  0001 C CNN
	1    7450 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 5100 7450 5000
$Comp
L +9V #PWR?
U 1 1 59C9CA2A
P 7450 4300
F 0 "#PWR?" H 7450 4150 50  0001 C CNN
F 1 "+9V" H 7450 4440 50  0000 C CNN
F 2 "" H 7450 4300 50  0001 C CNN
F 3 "" H 7450 4300 50  0001 C CNN
	1    7450 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4300 7450 4400
$Comp
L +9V #PWR?
U 1 1 59C9CB16
P 3550 4100
F 0 "#PWR?" H 3550 3950 50  0001 C CNN
F 1 "+9V" H 3550 4240 50  0000 C CNN
F 2 "" H 3550 4100 50  0001 C CNN
F 3 "" H 3550 4100 50  0001 C CNN
	1    3550 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4100 3550 4200
$Comp
L +9V #PWR?
U 1 1 59C9CC4A
P 5250 5000
F 0 "#PWR?" H 5250 4850 50  0001 C CNN
F 1 "+9V" H 5250 5140 50  0000 C CNN
F 2 "" H 5250 5000 50  0001 C CNN
F 3 "" H 5250 5000 50  0001 C CNN
	1    5250 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 5000 5250 4900
$EndSCHEMATC
