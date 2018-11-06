EESchema Schematic File Version 4
EELAYER 26 0
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
L Converter_DCDC:TC7662Bx0A U_INV1
U 1 1 5BE0D4DB
P 1700 6000
F 0 "U_INV1" H 1700 6564 50  0000 C CNN
F 1 "TC7662Bx0A" H 1700 6475 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1800 5900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21469a.pdf" H 1800 5900 50  0001 C CNN
	1    1700 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5700 1150 5700
Wire Wire Line
	1150 5700 1150 5200
Wire Wire Line
	1150 5200 2200 5200
Wire Wire Line
	2200 5200 2200 5700
Wire Wire Line
	2200 5700 2100 5700
$Comp
L Device:CP C2
U 1 1 5BE0D571
P 2800 6050
F 0 "C2" H 2683 6005 50  0000 R CNN
F 1 "CP" H 2683 6094 50  0000 R CNN
F 2 "" H 2838 5900 50  0001 C CNN
F 3 "~" H 2800 6050 50  0001 C CNN
	1    2800 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 5900 2800 5700
Wire Wire Line
	2800 5700 2200 5700
Connection ~ 2200 5700
$Comp
L Device:CP C1
U 1 1 5BE0D68C
P 2300 6100
F 0 "C1" H 2417 6145 50  0000 L CNN
F 1 "CP" H 2417 6056 50  0000 L CNN
F 2 "" H 2338 5950 50  0001 C CNN
F 3 "~" H 2300 6100 50  0001 C CNN
	1    2300 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 5900 2300 5900
Wire Wire Line
	2300 5900 2300 5950
Wire Wire Line
	2300 6250 2300 6300
Wire Wire Line
	2300 6300 2100 6300
Wire Wire Line
	1700 6500 1700 7150
$Comp
L power:GND #PWR03
U 1 1 5BE0D7C8
P 1700 7150
F 0 "#PWR03" H 1700 6900 50  0001 C CNN
F 1 "GND" H 1705 6979 50  0001 C CNN
F 2 "" H 1700 7150 50  0001 C CNN
F 3 "" H 1700 7150 50  0001 C CNN
	1    1700 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6200 1050 6200
Wire Wire Line
	1050 6200 1050 7150
$Comp
L power:GND #PWR02
U 1 1 5BE0D8B2
P 1050 7150
F 0 "#PWR02" H 1050 6900 50  0001 C CNN
F 1 "GND" H 1055 6979 50  0001 C CNN
F 2 "" H 1050 7150 50  0001 C CNN
F 3 "" H 1050 7150 50  0001 C CNN
	1    1050 7150
	1    0    0    -1  
$EndComp
NoConn ~ 1300 6000
Wire Wire Line
	1300 5850 800  5850
Wire Wire Line
	800  5850 800  5300
$Comp
L power:+9V #PWR01
U 1 1 5BE0DDC0
P 800 5300
F 0 "#PWR01" H 800 5150 50  0001 C CNN
F 1 "+9V" H 815 5471 50  0000 C CNN
F 2 "" H 800 5300 50  0001 C CNN
F 3 "" H 800 5300 50  0001 C CNN
	1    800  5300
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM317_3PinPackage U_PREG1
U 1 1 5BE0E29B
P 4150 5900
F 0 "U_PREG1" H 4150 6139 50  0000 C CNN
F 1 "LM317_3PinPackage" H 4150 6050 50  0000 C CNN
F 2 "" H 4150 6150 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 4150 5900 50  0001 C CNN
	1    4150 5900
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM337_TO220 U_NREG1
U 1 1 5BE0E31E
P 5800 5900
F 0 "U_NREG1" H 5800 5661 50  0000 C CNN
F 1 "LM337_TO220" H 5800 5750 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5800 5700 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm337-n.pdf" H 5800 5900 50  0001 C CNN
	1    5800 5900
	1    0    0    1   
$EndComp
Wire Wire Line
	2800 5700 3100 5700
Connection ~ 2800 5700
Wire Wire Line
	3100 5300 3100 5700
$Comp
L power:-9V #PWR06
U 1 1 5BE0E637
P 3100 5300
F 0 "#PWR06" H 3100 5175 50  0001 C CNN
F 1 "-9V" H 3115 5471 50  0000 C CNN
F 2 "" H 3100 5300 50  0001 C CNN
F 3 "" H 3100 5300 50  0001 C CNN
	1    3100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5900 3600 5300
$Comp
L power:+9V #PWR07
U 1 1 5BE0E863
P 3600 5300
F 0 "#PWR07" H 3600 5150 50  0001 C CNN
F 1 "+9V" H 3615 5471 50  0000 C CNN
F 2 "" H 3600 5300 50  0001 C CNN
F 3 "" H 3600 5300 50  0001 C CNN
	1    3600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5900 3850 5900
Wire Wire Line
	5300 5300 5300 5900
$Comp
L power:-9V #PWR010
U 1 1 5BE0ECF7
P 5300 5300
F 0 "#PWR010" H 5300 5175 50  0001 C CNN
F 1 "-9V" H 5315 5471 50  0000 C CNN
F 2 "" H 5300 5300 50  0001 C CNN
F 3 "" H 5300 5300 50  0001 C CNN
	1    5300 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5900 5500 5900
Wire Wire Line
	5800 6200 5800 6650
$Comp
L power:GND #PWR011
U 1 1 5BE0F8AC
P 5800 7150
F 0 "#PWR011" H 5800 6900 50  0001 C CNN
F 1 "GND" H 5805 6979 50  0001 C CNN
F 2 "" H 5800 7150 50  0001 C CNN
F 3 "" H 5800 7150 50  0001 C CNN
	1    5800 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6200 4150 6300
$Comp
L power:GND #PWR08
U 1 1 5BE0FCBF
P 4150 7150
F 0 "#PWR08" H 4150 6900 50  0001 C CNN
F 1 "GND" H 4155 6979 50  0001 C CNN
F 2 "" H 4150 7150 50  0001 C CNN
F 3 "" H 4150 7150 50  0001 C CNN
	1    4150 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BE0FDA6
P 4600 6100
F 0 "R2" H 4670 6145 50  0000 L CNN
F 1 "330R" H 4670 6056 50  0000 L CNN
F 2 "" V 4530 6100 50  0001 C CNN
F 3 "~" H 4600 6100 50  0001 C CNN
	1    4600 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5950 4600 5900
Wire Wire Line
	4600 5900 4450 5900
Wire Wire Line
	4600 6300 4150 6300
Wire Wire Line
	4600 6300 4600 6250
$Comp
L Device:R R1
U 1 1 5BE11469
P 4150 6550
F 0 "R1" H 4220 6595 50  0000 L CNN
F 1 "1K" H 4220 6506 50  0000 L CNN
F 2 "" V 4080 6550 50  0001 C CNN
F 3 "~" H 4150 6550 50  0001 C CNN
	1    4150 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 7150 4150 6700
Wire Wire Line
	4150 6400 4150 6300
Connection ~ 4150 6300
Wire Wire Line
	4600 5900 4800 5900
Wire Wire Line
	4800 5900 4800 5300
Connection ~ 4600 5900
$Comp
L power:+5V #PWR09
U 1 1 5BE1356B
P 4800 5300
F 0 "#PWR09" H 4800 5150 50  0001 C CNN
F 1 "+5V" H 4815 5471 50  0000 C CNN
F 2 "" H 4800 5300 50  0001 C CNN
F 3 "" H 4800 5300 50  0001 C CNN
	1    4800 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5900 6500 5300
$Comp
L power:-5V #PWR013
U 1 1 5BE140C4
P 6500 5300
F 0 "#PWR013" H 6500 5400 50  0001 C CNN
F 1 "-5V" H 6515 5471 50  0000 C CNN
F 2 "" H 6500 5300 50  0001 C CNN
F 3 "" H 6500 5300 50  0001 C CNN
	1    6500 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5BE144F3
P 6300 6100
F 0 "R4" H 6230 6055 50  0000 R CNN
F 1 "270R" H 6230 6144 50  0000 R CNN
F 2 "" V 6230 6100 50  0001 C CNN
F 3 "~" H 6300 6100 50  0001 C CNN
	1    6300 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 5950 6300 5900
Wire Wire Line
	6300 5900 6500 5900
Wire Wire Line
	6300 5900 6100 5900
Connection ~ 6300 5900
Wire Wire Line
	6300 6650 5800 6650
$Comp
L Device:R R5
U 1 1 5BE16594
P 6300 6450
F 0 "R5" H 6370 6495 50  0000 L CNN
F 1 "47R" H 6370 6406 50  0000 L CNN
F 2 "" V 6230 6450 50  0001 C CNN
F 3 "~" H 6300 6450 50  0001 C CNN
	1    6300 6450
	1    0    0    -1  
$EndComp
Connection ~ 5800 6650
$Comp
L Device:R R3
U 1 1 5BE175D9
P 5800 6900
F 0 "R3" H 5870 6945 50  0000 L CNN
F 1 "1K" H 5870 6856 50  0000 L CNN
F 2 "" V 5730 6900 50  0001 C CNN
F 3 "~" H 5800 6900 50  0001 C CNN
	1    5800 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 7050 5800 7150
Wire Wire Line
	5800 6650 5800 6750
Wire Wire Line
	6300 6250 6300 6300
Wire Wire Line
	6300 6600 6300 6650
Wire Wire Line
	2800 6200 2800 7150
$Comp
L power:GND #PWR05
U 1 1 5BE19F49
P 2800 7150
F 0 "#PWR05" H 2800 6900 50  0001 C CNN
F 1 "GND" H 2805 6979 50  0001 C CNN
F 2 "" H 2800 7150 50  0001 C CNN
F 3 "" H 2800 7150 50  0001 C CNN
	1    2800 7150
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground_Switch J_IN1
U 1 1 5BE1DA1A
P 1500 1300
F 0 "J_IN1" H 1268 1325 50  0000 R CNN
F 1 "AudioJack2_Ground_Switch" H 1269 1369 50  0001 R CNN
F 2 "" H 1500 1300 50  0001 C CNN
F 3 "~" H 1500 1300 50  0001 C CNN
	1    1500 1300
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack2_Ground_Switch J_OUT1
U 1 1 5BE1E09F
P 9200 1800
F 0 "J_OUT1" H 8968 1825 50  0000 R CNN
F 1 "AudioJack2_Ground_Switch" H 8968 1869 50  0001 R CNN
F 2 "" H 9200 1800 50  0001 C CNN
F 3 "~" H 9200 1800 50  0001 C CNN
	1    9200 1800
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U_BUF1
U 1 1 5BE1E27D
P 3300 1400
F 0 "U_BUF1" H 3300 1764 50  0000 C CNN
F 1 "TL072" H 3300 1675 50  0000 C CNN
F 2 "" H 3300 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3300 1400 50  0001 C CNN
	1    3300 1400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U_BUF1
U 3 1 5BE1E2F5
P 8000 5600
F 0 "U_BUF1" H 7957 5645 50  0000 L CNN
F 1 "TL072" H 7957 5556 50  0000 L CNN
F 2 "" H 8000 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8000 5600 50  0001 C CNN
	3    8000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5300 7900 5200
$Comp
L power:+5V #PWR015
U 1 1 5BE1F4DB
P 7900 5200
F 0 "#PWR015" H 7900 5050 50  0001 C CNN
F 1 "+5V" H 7915 5371 50  0000 C CNN
F 2 "" H 7900 5200 50  0001 C CNN
F 3 "" H 7900 5200 50  0001 C CNN
	1    7900 5200
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR016
U 1 1 5BE1F510
P 7900 6000
F 0 "#PWR016" H 7900 6100 50  0001 C CNN
F 1 "-5V" H 7915 6171 50  0000 C CNN
F 2 "" H 7900 6000 50  0001 C CNN
F 3 "" H 7900 6000 50  0001 C CNN
	1    7900 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7900 6000 7900 5900
Wire Wire Line
	1700 1400 1900 1400
Wire Wire Line
	1900 1400 1900 1700
$Comp
L power:GND #PWR04
U 1 1 5BE20E02
P 1900 1700
F 0 "#PWR04" H 1900 1450 50  0001 C CNN
F 1 "GND" H 1905 1529 50  0001 C CNN
F 2 "" H 1900 1700 50  0001 C CNN
F 3 "" H 1900 1700 50  0001 C CNN
	1    1900 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT DEPTH1
U 1 1 5BE21679
P 5400 1700
F 0 "DEPTH1" H 5400 2200 50  0000 C CNN
F 1 "B10k" H 5400 2100 50  0000 C CNN
F 2 "" H 5400 1700 50  0001 C CNN
F 3 "~" H 5400 1700 50  0001 C CNN
	1    5400 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT VOLUME1
U 1 1 5BE216FA
P 6950 2550
F 0 "VOLUME1" H 6880 2595 50  0000 R CNN
F 1 "B10K" H 6880 2506 50  0000 R CNN
F 2 "" H 6950 2550 50  0001 C CNN
F 3 "~" H 6950 2550 50  0001 C CNN
	1    6950 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1400 5400 1550
Wire Wire Line
	5550 1700 7150 1700
Wire Wire Line
	7150 1900 6950 1900
$Comp
L power:GND #PWR014
U 1 1 5BE2458F
P 6950 3500
F 0 "#PWR014" H 6950 3250 50  0001 C CNN
F 1 "GND" H 6955 3329 50  0001 C CNN
F 2 "" H 6950 3500 50  0001 C CNN
F 3 "" H 6950 3500 50  0001 C CNN
	1    6950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2400 6950 2300
$Comp
L Device:R R7
U 1 1 5BE26F5A
P 7450 2300
F 0 "R7" V 7246 2300 50  0000 C CNN
F 1 "10K" V 7335 2300 50  0000 C CNN
F 2 "" V 7380 2300 50  0001 C CNN
F 3 "~" H 7450 2300 50  0001 C CNN
	1    7450 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 2300 6950 2300
Connection ~ 6950 2300
Wire Wire Line
	6950 2300 6950 1900
Wire Wire Line
	7600 2300 8000 2300
Wire Wire Line
	8000 2300 8000 1800
Wire Wire Line
	8000 1800 7750 1800
Wire Wire Line
	6950 3100 6950 2900
Wire Wire Line
	6950 3400 6950 3500
$Comp
L Device:R R6
U 1 1 5BE2AB83
P 6950 3250
F 0 "R6" H 7020 3295 50  0000 L CNN
F 1 "1K" H 7020 3206 50  0000 L CNN
F 2 "" V 6880 3250 50  0001 C CNN
F 3 "~" H 6950 3250 50  0001 C CNN
	1    6950 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1800 8000 1800
Connection ~ 8000 1800
Wire Wire Line
	9000 1900 8700 1900
Wire Wire Line
	8700 1900 8700 2200
$Comp
L power:GND #PWR017
U 1 1 5BE2EF9C
P 8700 2200
F 0 "#PWR017" H 8700 1950 50  0001 C CNN
F 1 "GND" H 8705 2029 50  0001 C CNN
F 2 "" H 8700 2200 50  0001 C CNN
F 3 "" H 8700 2200 50  0001 C CNN
	1    8700 2200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC7014 U_OSC1
U 1 1 5BE2F2BE
P 4550 3400
F 0 "U_OSC1" H 4550 3714 50  0000 C CNN
F 1 "74HC7014" H 4550 3625 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4550 3400 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC7014.pdf" H 4550 3400 50  0001 C CNN
	1    4550 3400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC7014 U_OSC1
U 2 1 5BE2F379
P 5650 3400
F 0 "U_OSC1" H 5650 3714 50  0000 C CNN
F 1 "74HC7014" H 5650 3625 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5650 3400 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC7014.pdf" H 5650 3400 50  0001 C CNN
	2    5650 3400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC7014 U_OSC1
U 7 1 5BE2F3E3
P 8900 5600
F 0 "U_OSC1" H 9130 5645 50  0000 L CNN
F 1 "74HC7014" H 9130 5556 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 8900 5600 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC7014.pdf" H 8900 5600 50  0001 C CNN
	7    8900 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 5100 8900 5000
$Comp
L power:+5V #PWR018
U 1 1 5BE2F5C2
P 8900 5000
F 0 "#PWR018" H 8900 4850 50  0001 C CNN
F 1 "+5V" H 8915 5171 50  0000 C CNN
F 2 "" H 8900 5000 50  0001 C CNN
F 3 "" H 8900 5000 50  0001 C CNN
	1    8900 5000
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR019
U 1 1 5BE30387
P 8900 6200
F 0 "#PWR019" H 8900 6300 50  0001 C CNN
F 1 "-5V" H 8915 6371 50  0000 C CNN
F 2 "" H 8900 6200 50  0001 C CNN
F 3 "" H 8900 6200 50  0001 C CNN
	1    8900 6200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8900 6200 8900 6100
Wire Wire Line
	4250 3400 4000 3400
Wire Wire Line
	4000 3400 4000 4100
Wire Wire Line
	4000 4600 6200 4600
Wire Wire Line
	6200 4600 6200 3400
Wire Wire Line
	6200 3400 5950 3400
$Comp
L Device:CP C3
U 1 1 5BE325AD
P 5100 3400
F 0 "C3" V 4849 3400 50  0000 C CNN
F 1 "47uF" V 4938 3400 50  0000 C CNN
F 2 "" H 5138 3250 50  0001 C CNN
F 3 "~" H 5100 3400 50  0001 C CNN
	1    5100 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 3400 4950 3400
Wire Wire Line
	5250 3400 5300 3400
$Comp
L Device:R_POT SPEED1
U 1 1 5BE37D75
P 4700 4100
F 0 "SPEED1" V 4586 4100 50  0000 C CNN
F 1 "B100K" V 4497 4100 50  0000 C CNN
F 2 "" H 4700 4100 50  0001 C CNN
F 3 "~" H 4700 4100 50  0001 C CNN
	1    4700 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 4100 4000 4100
Connection ~ 4000 4100
Wire Wire Line
	4000 4100 4000 4600
Wire Wire Line
	4850 4100 5300 4100
Wire Wire Line
	5300 4100 5300 3800
Connection ~ 5300 3400
Wire Wire Line
	5300 3400 5350 3400
Wire Wire Line
	4700 3950 4700 3800
Wire Wire Line
	4700 3800 5300 3800
Connection ~ 5300 3800
Wire Wire Line
	5300 3800 5300 3400
Wire Wire Line
	7100 2550 7250 2550
Wire Wire Line
	7250 2550 7250 2900
Wire Wire Line
	7250 2900 6950 2900
Connection ~ 6950 2900
Wire Wire Line
	6950 2900 6950 2700
$Comp
L Isolator:4N35 U5
U 1 1 5BE44FF9
P 5400 2300
F 0 "U5" V 5445 2120 50  0000 R CNN
F 1 "4N35" V 5356 2120 50  0000 R CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 5200 2100 50  0001 L CIN
F 3 "https://www.vishay.com/docs/81181/4n35.pdf" H 5400 2300 50  0001 L CNN
	1    5400 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5BE4BD30
P 5450 2900
F 0 "D1" H 5450 2800 50  0000 C CNN
F 1 "LED" H 5450 3000 50  0000 C CNN
F 2 "" H 5450 2900 50  0001 C CNN
F 3 "~" H 5450 2900 50  0001 C CNN
	1    5450 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 3400 5300 2900
Connection ~ 5300 2900
Wire Wire Line
	5300 2900 5300 2600
Wire Wire Line
	5500 2600 6400 2600
Wire Wire Line
	6400 2600 6400 2900
Wire Wire Line
	5600 2900 6400 2900
Connection ~ 6400 2900
Wire Wire Line
	6400 2900 6400 3550
$Comp
L power:GND #PWR012
U 1 1 5BE515C5
P 6400 3550
F 0 "#PWR012" H 6400 3300 50  0001 C CNN
F 1 "GND" H 6405 3379 50  0001 C CNN
F 2 "" H 6400 3550 50  0001 C CNN
F 3 "" H 6400 3550 50  0001 C CNN
	1    6400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1850 5400 2000
Wire Wire Line
	5500 2000 5500 1900
Wire Wire Line
	5500 1900 6400 1900
Wire Wire Line
	6400 1900 6400 2600
Connection ~ 6400 2600
NoConn ~ 5300 2000
$Comp
L Amplifier_Operational:TL072 U_BUF1
U 2 1 5BE5C68D
P 7450 1800
F 0 "U_BUF1" H 7450 2164 50  0000 C CNN
F 1 "TL072" H 7450 2075 50  0000 C CNN
F 2 "" H 7450 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7450 1800 50  0001 C CNN
	2    7450 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1400 3700 1400
Wire Wire Line
	1700 1300 3000 1300
Wire Wire Line
	3000 1500 2900 1500
Wire Wire Line
	2900 1500 2900 1750
Wire Wire Line
	2900 1750 3700 1750
Wire Wire Line
	3700 1750 3700 1400
Connection ~ 3700 1400
Wire Wire Line
	3700 1400 5400 1400
Wire Wire Line
	1700 1200 1900 1200
Wire Wire Line
	1900 1200 1900 1400
Connection ~ 1900 1400
Wire Wire Line
	9000 1700 8700 1700
Wire Wire Line
	8700 1700 8700 1900
Connection ~ 8700 1900
$Comp
L Connector:Jack-DC J_PWR1
U 1 1 5BE7895A
P 1200 3500
F 0 "J_PWR1" H 1255 3821 50  0000 C CNN
F 1 "Jack-DC" H 1255 3732 50  0000 C CNN
F 2 "" H 1250 3460 50  0001 C CNN
F 3 "~" H 1250 3460 50  0001 C CNN
	1    1200 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3400 1900 3400
$Comp
L power:+9V #PWR020
U 1 1 5BE7B3D7
P 1900 3200
F 0 "#PWR020" H 1900 3050 50  0001 C CNN
F 1 "+9V" H 1915 3371 50  0000 C CNN
F 2 "" H 1900 3200 50  0001 C CNN
F 3 "" H 1900 3200 50  0001 C CNN
	1    1900 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3400 1900 3200
Wire Wire Line
	1500 3600 1900 3600
Wire Wire Line
	1900 3600 1900 3800
$Comp
L power:GND #PWR021
U 1 1 5BE80CEE
P 1900 3800
F 0 "#PWR021" H 1900 3550 50  0001 C CNN
F 1 "GND" H 1905 3629 50  0001 C CNN
F 2 "" H 1900 3800 50  0001 C CNN
F 3 "" H 1900 3800 50  0001 C CNN
	1    1900 3800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
