EESchema Schematic File Version 4
LIBS:555PWMTremolo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L sw_custom:SW_3PDT_on_on SW_EN1
U 1 1 5BFCF869
P 6650 2950
F 0 "SW_EN1" H 6650 3235 50  0000 C CNN
F 1 "SW_3PDT_on_on" H 6650 3144 50  0000 C CNN
F 2 "custom_sw:SW_3PDT_W18MM_L17.3MM_P5.3MM_D2MM" H 6650 2950 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/140/FS5700-1147045.pdf" H 6650 2950 50  0001 C CNN
	1    6650 2950
	1    0    0    -1  
$EndComp
$Comp
L sw_custom:SW_3PDT_on_on SW_EN1
U 2 1 5BFCF8CC
P 6650 3550
F 0 "SW_EN1" H 6650 3835 50  0000 C CNN
F 1 "SW_3PDT_on_on" H 6650 3744 50  0000 C CNN
F 2 "custom_sw:SW_3PDT_W18MM_L17.3MM_P5.3MM_D2MM" H 6650 3550 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/140/FS5700-1147045.pdf" H 6650 3550 50  0001 C CNN
	2    6650 3550
	1    0    0    -1  
$EndComp
$Comp
L sw_custom:SW_3PDT_on_on SW_EN1
U 3 1 5BFCF92E
P 6650 4150
F 0 "SW_EN1" H 6650 4435 50  0000 C CNN
F 1 "SW_3PDT_on_on" H 6650 4344 50  0000 C CNN
F 2 "custom_sw:SW_3PDT_W18MM_L17.3MM_P5.3MM_D2MM" H 6650 4150 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/140/FS5700-1147045.pdf" H 6650 4150 50  0001 C CNN
	3    6650 4150
	1    0    0    -1  
$EndComp
Text HLabel 2900 4500 0    50   Input ~ 0
3PDT_2
Text HLabel 2900 4800 0    50   Input ~ 0
3PDT_5
Text HLabel 3600 4700 2    50   Input ~ 0
3PDT_7
Text HLabel 3600 4600 2    50   Input ~ 0
3PDT_8
Text HLabel 3600 4500 2    50   Input ~ 0
3PDT_9
Text HLabel 3600 4800 2    50   Input ~ 0
3PDT_6
Text HLabel 2900 4700 0    50   Input ~ 0
3PDT_4
Text HLabel 2900 4600 0    50   Input ~ 0
3PDT_3
Text HLabel 2900 4400 0    50   Input ~ 0
3PDT_1
Wire Wire Line
	2900 4500 3000 4500
Wire Wire Line
	3000 4800 2900 4800
Wire Wire Line
	3600 4600 3500 4600
Wire Wire Line
	3500 4500 3600 4500
Wire Wire Line
	3600 4700 3500 4700
Wire Wire Line
	3500 4800 3600 4800
Wire Wire Line
	2900 4700 3000 4700
Wire Wire Line
	3000 4600 2900 4600
Wire Wire Line
	2900 4400 3000 4400
Wire Wire Line
	4800 4400 4150 4400
Wire Wire Line
	4800 4500 4150 4500
Wire Wire Line
	4800 4600 4150 4600
Wire Wire Line
	4800 4700 4150 4700
Wire Wire Line
	4800 4800 4150 4800
Wire Wire Line
	5300 4800 5800 4800
Wire Wire Line
	5300 4700 5800 4700
Wire Wire Line
	5300 4600 5800 4600
Wire Wire Line
	5300 4500 5800 4500
Wire Wire Line
	6450 2950 6150 2950
Wire Wire Line
	6450 3550 6150 3550
Wire Wire Line
	6450 4150 6150 4150
Wire Wire Line
	6850 4250 7150 4250
Wire Wire Line
	6850 4050 7150 4050
Wire Wire Line
	6850 3650 7150 3650
Wire Wire Line
	6850 3450 7150 3450
Wire Wire Line
	6850 3050 7150 3050
Wire Wire Line
	6850 2850 7150 2850
Text Label 4150 4400 0    50   ~ 0
3PDT_1_INT
Text Label 4150 4500 0    50   ~ 0
3PDT_2_INT
Text Label 4150 4600 0    50   ~ 0
3PDT_3_INT
Text Label 4150 4700 0    50   ~ 0
3PDT_4_INT
Text Label 4150 4800 0    50   ~ 0
3PDT_5_INT
Text Label 5800 4800 2    50   ~ 0
3PDT_6_INT
Text Label 5800 4700 2    50   ~ 0
3PDT_7_INT
Text Label 5800 4600 2    50   ~ 0
3PDT_8_INT
Text Label 5800 4500 2    50   ~ 0
3PDT_9_INT
Text Label 6150 2950 2    50   ~ 0
3PDT_2_INT
Text Label 6150 3550 2    50   ~ 0
3PDT_5_INT
Text Label 6150 4150 2    50   ~ 0
3PDT_8_INT
Text Label 7150 2850 0    50   ~ 0
3PDT_1_INT
Text Label 7150 3050 0    50   ~ 0
3PDT_3_INT
Text Label 7150 3450 0    50   ~ 0
3PDT_4_INT
Text Label 7150 3650 0    50   ~ 0
3PDT_6_INT
Text Label 7150 4050 0    50   ~ 0
3PDT_7_INT
Text Label 7150 4250 0    50   ~ 0
3PDT_9_INT
$Comp
L Connector_Generic:Conn_02x05_Counter_Clockwise J_MAINTOAUX1
U 1 1 5BE5C9F1
P 3200 4600
F 0 "J_MAINTOAUX1" H 3250 4925 50  0000 C CNN
F 1 "Conn_02x05_Counter_Clockwise" H 3250 4926 50  0001 C CNN
F 2 "CustomHeaders:IDCHeader_02x05_P2.54mm_Vertical_Counter_Clockwise" H 3200 4600 50  0001 C CNN
F 3 "~" H 3200 4600 50  0001 C CNN
	1    3200 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Counter_Clockwise J_AUXTOMAIN1
U 1 1 5BE5CA85
P 5000 4600
F 0 "J_AUXTOMAIN1" H 5050 4925 50  0000 C CNN
F 1 "Conn_02x05_Counter_Clockwise" H 5050 4926 50  0001 C CNN
F 2 "CustomHeaders:IDCHeader_02x05_P2.54mm_Vertical_Counter_Clockwise" H 5000 4600 50  0001 C CNN
F 3 "~" H 5000 4600 50  0001 C CNN
	1    5000 4600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
