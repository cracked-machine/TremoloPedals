EESchema Schematic File Version 4
LIBS:HexTremolo-cache
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
Text HLabel 3350 3250 0    50   Input ~ 0
3PDT_2
Text HLabel 3350 3550 0    50   Input ~ 0
3PDT_5
Text HLabel 3350 3750 0    50   Input ~ 0
3PDT_7
Text HLabel 3350 3850 0    50   Input ~ 0
3PDT_8
Text HLabel 3350 3950 0    50   Input ~ 0
3PDT_9
Text HLabel 3350 3650 0    50   Input ~ 0
3PDT_6
Text HLabel 3350 3450 0    50   Input ~ 0
3PDT_4
Text HLabel 3350 3350 0    50   Input ~ 0
3PDT_3
Text HLabel 3350 3150 0    50   Input ~ 0
3PDT_1
Wire Wire Line
	3350 3250 3750 3250
Wire Wire Line
	3750 3550 3350 3550
Wire Wire Line
	3350 3850 3750 3850
Wire Wire Line
	3750 3950 3350 3950
Wire Wire Line
	3350 3750 3750 3750
Wire Wire Line
	3750 3650 3350 3650
Wire Wire Line
	3350 3450 3750 3450
Wire Wire Line
	3750 3350 3350 3350
Wire Wire Line
	3350 3150 3750 3150
$Comp
L Connector_Generic:Conn_01x10 J_MAINTOAUX1
U 1 1 5BFD031D
P 3950 3550
F 0 "J_MAINTOAUX1" H 3550 4200 50  0000 L CNN
F 1 "Conn_01x10" H 3600 4100 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x10_P1.27mm_Vertical" H 3950 3550 50  0001 C CNN
F 3 "~" H 3950 3550 50  0001 C CNN
	1    3950 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J_AUXTOMAIN1
U 1 1 5BFD0349
P 4400 3550
F 0 "J_AUXTOMAIN1" H 4300 4200 50  0000 C CNN
F 1 "Conn_01x10" H 4300 4100 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x10_P1.27mm_Vertical" H 4400 3550 50  0001 C CNN
F 3 "~" H 4400 3550 50  0001 C CNN
	1    4400 3550
	-1   0    0    -1  
$EndComp
NoConn ~ 3750 4050
Wire Wire Line
	4600 3150 5050 3150
Wire Wire Line
	4600 3250 5050 3250
Wire Wire Line
	4600 3350 5050 3350
Wire Wire Line
	4600 3450 5050 3450
Wire Wire Line
	4600 3550 5050 3550
Wire Wire Line
	4600 3650 5050 3650
Wire Wire Line
	4600 3750 5050 3750
Wire Wire Line
	4600 3850 5050 3850
Wire Wire Line
	4600 3950 5050 3950
NoConn ~ 4600 4050
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
Text Label 5050 3150 2    50   ~ 0
3PDT_1_INT
Text Label 5050 3250 2    50   ~ 0
3PDT_2_INT
Text Label 5050 3350 2    50   ~ 0
3PDT_3_INT
Text Label 5050 3450 2    50   ~ 0
3PDT_4_INT
Text Label 5050 3550 2    50   ~ 0
3PDT_5_INT
Text Label 5050 3650 2    50   ~ 0
3PDT_6_INT
Text Label 5050 3750 2    50   ~ 0
3PDT_7_INT
Text Label 5050 3850 2    50   ~ 0
3PDT_8_INT
Text Label 5050 3950 2    50   ~ 0
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
$EndSCHEMATC
