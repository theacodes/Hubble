EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title "Hubble Motherboard"
Date "2021-11-20"
Rev "v2"
Comp "Winterbloom"
Comment1 "Alethea Flowers"
Comment2 "CERN-OHL-P V2"
Comment3 "hubble.wntr.dev"
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR02
U 1 1 6071824F
P 925 1150
F 0 "#PWR02" H 925 900 50  0001 C CNN
F 1 "GND" V 925 950 50  0000 C CNN
F 2 "" H 925 1150 50  0001 C CNN
F 3 "" H 925 1150 50  0001 C CNN
	1    925  1150
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N5819 D1
U 1 1 60718B95
P 1850 1250
F 0 "D1" H 1850 1050 50  0000 C CNN
F 1 "BARRIER" H 1850 1125 50  0000 C CNN
F 2 "winterbloom:DIODE_SOD-123_SOD-123F" H 1850 1075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 1850 1250 50  0001 C CNN
	1    1850 1250
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5819 D2
U 1 1 60719B5B
P 1850 1050
F 0 "D2" H 1850 850 50  0000 C CNN
F 1 "BARRIER" H 1850 925 50  0000 C CNN
F 2 "winterbloom:DIODE_SOD-123_SOD-123F" H 1850 875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 1850 1050 50  0001 C CNN
	1    1850 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	925  1250 1325 1250
Wire Wire Line
	1300 1050 925  1050
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 6071C373
P 1425 1250
F 0 "FB2" V 1300 1250 50  0000 C CNN
F 1 "1A" V 1225 1250 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1355 1250 50  0001 C CNN
F 3 "~" H 1425 1250 50  0001 C CNN
	1    1425 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 6071D4DB
P 1400 1050
F 0 "FB1" V 1525 1050 50  0000 C CNN
F 1 "1A" V 1600 1050 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1330 1050 50  0001 C CNN
F 3 "~" H 1400 1050 50  0001 C CNN
	1    1400 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 1250 1525 1250
Wire Wire Line
	1500 1050 1700 1050
Wire Wire Line
	2200 1250 2000 1250
$Comp
L power:-12V #PWR06
U 1 1 6071FE21
P 2200 1250
F 0 "#PWR06" H 2200 1350 50  0001 C CNN
F 1 "-12V" V 2200 1350 50  0000 L CNN
F 2 "" H 2200 1250 50  0001 C CNN
F 3 "" H 2200 1250 50  0001 C CNN
	1    2200 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 1050 2000 1050
Text GLabel 1125 1250 3    50   Input ~ 0
-12VRAW
Text GLabel 1125 1050 1    50   Input ~ 0
+12VRAW
Wire Wire Line
	1075 3575 1225 3575
Wire Wire Line
	1075 3375 1225 3375
$Comp
L power:+12V #PWR011
U 1 1 6074291B
P 3525 950
F 0 "#PWR011" H 3525 800 50  0001 C CNN
F 1 "+12V" V 3525 1050 50  0000 L CNN
F 2 "" H 3525 950 50  0001 C CNN
F 3 "" H 3525 950 50  0001 C CNN
	1    3525 950 
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR021
U 1 1 60743F4D
P 4925 950
F 0 "#PWR021" H 4925 800 50  0001 C CNN
F 1 "+3.3V" V 4925 1175 50  0000 C CNN
F 2 "" H 4925 950 50  0001 C CNN
F 3 "" H 4925 950 50  0001 C CNN
	1    4925 950 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 6074CE94
P 4250 1550
F 0 "#PWR016" H 4250 1300 50  0001 C CNN
F 1 "GND" H 4325 1400 50  0000 R CNN
F 2 "" H 4250 1550 50  0001 C CNN
F 3 "" H 4250 1550 50  0001 C CNN
	1    4250 1550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPST SW1
U 1 1 60721796
P 1425 3475
F 0 "SW1" H 1425 3800 50  0000 C CNN
F 1 "POWER" H 1425 3709 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.75sqmm_1x04_P4.8mm_D1.25mm_OD2.3mm" H 1425 3475 50  0001 C CNN
F 3 "~" H 1425 3475 50  0001 C CNN
	1    1425 3475
	1    0    0    -1  
$EndComp
Text GLabel 2175 3375 2    50   Input ~ 0
+12VDOWNSTREAM
Text GLabel 2175 3575 2    50   Input ~ 0
-12VDOWNSTREAM
Wire Wire Line
	1800 3375 1625 3375
Wire Wire Line
	1625 3575 1800 3575
$Comp
L Device:CP1 C1
U 1 1 61721677
P 1250 2300
F 0 "C1" H 1365 2346 50  0000 L CNN
F 1 "47uF" H 1365 2255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1250 2300 50  0001 C CNN
F 3 "~" H 1250 2300 50  0001 C CNN
	1    1250 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C2
U 1 1 61721CD5
P 1750 2300
F 0 "C2" H 1600 2250 50  0000 R CNN
F 1 "47uF" H 1600 2350 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1750 2300 50  0001 C CNN
F 3 "~" H 1750 2300 50  0001 C CNN
	1    1750 2300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 61722D1A
P 1250 2450
F 0 "#PWR0115" H 1250 2200 50  0001 C CNN
F 1 "GND" H 1325 2300 50  0000 R CNN
F 2 "" H 1250 2450 50  0001 C CNN
F 3 "" H 1250 2450 50  0001 C CNN
	1    1250 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 61723462
P 1750 2450
F 0 "#PWR0116" H 1750 2200 50  0001 C CNN
F 1 "GND" H 1825 2300 50  0000 R CNN
F 2 "" H 1750 2450 50  0001 C CNN
F 3 "" H 1750 2450 50  0001 C CNN
	1    1750 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0118
U 1 1 6172AC33
P 2200 1050
F 0 "#PWR0118" H 2200 900 50  0001 C CNN
F 1 "+12V" V 2200 1175 50  0000 L CNN
F 2 "" H 2200 1050 50  0001 C CNN
F 3 "" H 2200 1050 50  0001 C CNN
	1    2200 1050
	0    1    1    0   
$EndComp
$Comp
L winterbloom:LM1117-3.3 U1
U 1 1 6172C625
P 4250 950
F 0 "U1" H 4250 1192 50  0000 C CNN
F 1 "LD1117-3.3" H 4250 1101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4250 1425 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 4250 950 50  0001 C CNN
F 4 "LM1117IMP-3.3" H 4250 1300 50  0001 C CNN "mpn"
	1    4250 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C3
U 1 1 6172DB3F
P 3675 1250
F 0 "C3" H 3790 1296 50  0000 L CNN
F 1 "10uF" H 3790 1205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3675 1250 50  0001 C CNN
F 3 "~" H 3675 1250 50  0001 C CNN
	1    3675 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C4
U 1 1 6172E86A
P 4750 1225
F 0 "C4" H 4865 1271 50  0000 L CNN
F 1 "10uF" H 4865 1180 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4750 1225 50  0001 C CNN
F 3 "~" H 4750 1225 50  0001 C CNN
	1    4750 1225
	1    0    0    -1  
$EndComp
Wire Wire Line
	3525 950  3675 950 
Wire Wire Line
	3675 950  3675 1100
Wire Wire Line
	3675 950  3950 950 
Connection ~ 3675 950 
Wire Wire Line
	4550 950  4750 950 
Wire Wire Line
	4750 1075 4750 950 
Connection ~ 4750 950 
Wire Wire Line
	4750 950  4925 950 
Wire Wire Line
	4750 1375 4750 1550
Wire Wire Line
	4750 1550 4250 1550
Wire Wire Line
	4250 1550 3675 1550
Wire Wire Line
	3675 1550 3675 1400
Connection ~ 4250 1550
Wire Wire Line
	4250 1250 4250 1550
$Comp
L Device:LED_ALT D?
U 1 1 617EC983
P 3700 2700
AR Path="/608B4064/617EC983" Ref="D?"  Part="1" 
AR Path="/60711259/617EC983" Ref="D4"  Part="1" 
F 0 "D4" V 3739 2582 50  0000 R CNN
F 1 "3.3" V 3648 2582 50  0000 R CNN
F 2 "winterbloom:LED_0805_Kingbright_APT2012" H 3700 2700 50  0001 C CNN
F 3 "~" H 3700 2700 50  0001 C CNN
	1    3700 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 617EC989
P 3700 2400
AR Path="/608B4064/617EC989" Ref="R?"  Part="1" 
AR Path="/60711259/617EC989" Ref="R1"  Part="1" 
F 0 "R1" H 3825 2350 50  0000 C CNN
F 1 "10k" H 3825 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3740 2390 50  0001 C CNN
F 3 "~" H 3700 2400 50  0001 C CNN
	1    3700 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 617EC98F
P 3700 2850
AR Path="/608B4064/617EC98F" Ref="#PWR?"  Part="1" 
AR Path="/60711259/617EC98F" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 3700 2600 50  0001 C CNN
F 1 "GND" H 3700 2700 50  0000 C CNN
F 2 "" H 3700 2850 50  0001 C CNN
F 3 "" H 3700 2850 50  0001 C CNN
	1    3700 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0120
U 1 1 617ECD2D
P 3700 2250
F 0 "#PWR0120" H 3700 2100 50  0001 C CNN
F 1 "+3.3V" H 3700 2400 50  0000 C CNN
F 2 "" H 3700 2250 50  0001 C CNN
F 3 "" H 3700 2250 50  0001 C CNN
	1    3700 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D?
U 1 1 617EDA46
P 4200 2700
AR Path="/608B4064/617EDA46" Ref="D?"  Part="1" 
AR Path="/60711259/617EDA46" Ref="D5"  Part="1" 
F 0 "D5" V 4239 2582 50  0000 R CNN
F 1 "+12V" V 4148 2582 50  0000 R CNN
F 2 "winterbloom:LED_0805_Kingbright_APT2012" H 4200 2700 50  0001 C CNN
F 3 "~" H 4200 2700 50  0001 C CNN
	1    4200 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 617EDA50
P 4200 2400
AR Path="/608B4064/617EDA50" Ref="R?"  Part="1" 
AR Path="/60711259/617EDA50" Ref="R2"  Part="1" 
F 0 "R2" H 4325 2350 50  0000 C CNN
F 1 "10k" H 4325 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4240 2390 50  0001 C CNN
F 3 "~" H 4200 2400 50  0001 C CNN
	1    4200 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 617EDA5A
P 4200 2850
AR Path="/608B4064/617EDA5A" Ref="#PWR?"  Part="1" 
AR Path="/60711259/617EDA5A" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 4200 2600 50  0001 C CNN
F 1 "GND" H 4200 2700 50  0000 C CNN
F 2 "" H 4200 2850 50  0001 C CNN
F 3 "" H 4200 2850 50  0001 C CNN
	1    4200 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0136
U 1 1 617EEBFA
P 4200 2250
F 0 "#PWR0136" H 4200 2100 50  0001 C CNN
F 1 "+12V" H 4100 2400 50  0000 L CNN
F 2 "" H 4200 2250 50  0001 C CNN
F 3 "" H 4200 2250 50  0001 C CNN
	1    4200 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 617EE346
P 4750 2850
AR Path="/608B4064/617EE346" Ref="#PWR?"  Part="1" 
AR Path="/60711259/617EE346" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 4750 2600 50  0001 C CNN
F 1 "GND" H 4750 2700 50  0000 C CNN
F 2 "" H 4750 2850 50  0001 C CNN
F 3 "" H 4750 2850 50  0001 C CNN
	1    4750 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 617EE33C
P 4750 2700
AR Path="/608B4064/617EE33C" Ref="R?"  Part="1" 
AR Path="/60711259/617EE33C" Ref="R3"  Part="1" 
F 0 "R3" H 4600 2650 50  0000 C CNN
F 1 "10k" H 4600 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4790 2690 50  0001 C CNN
F 3 "~" H 4750 2700 50  0001 C CNN
	1    4750 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_ALT D?
U 1 1 617EE332
P 4750 2400
AR Path="/608B4064/617EE332" Ref="D?"  Part="1" 
AR Path="/60711259/617EE332" Ref="D6"  Part="1" 
F 0 "D6" V 4750 2600 50  0000 R CNN
F 1 "-12V" V 4675 2700 50  0000 R CNN
F 2 "winterbloom:LED_0805_Kingbright_APT2012" H 4750 2400 50  0001 C CNN
F 3 "~" H 4750 2400 50  0001 C CNN
	1    4750 2400
	0    1    1    0   
$EndComp
$Comp
L power:-12V #PWR0138
U 1 1 617EF25A
P 4750 2250
F 0 "#PWR0138" H 4750 2350 50  0001 C CNN
F 1 "-12V" H 4650 2400 50  0000 L CNN
F 2 "" H 4750 2250 50  0001 C CNN
F 3 "" H 4750 2250 50  0001 C CNN
	1    4750 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 618E170D
P 725 1150
F 0 "J1" H 643 825 50  0000 C CNN
F 1 "POWER" H 643 916 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.75sqmm_1x03_P4.8mm_D1.25mm_OD2.3mm" H 725 1150 50  0001 C CNN
F 3 "~" H 725 1150 50  0001 C CNN
	1    725  1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 2050 1750 2150
Wire Wire Line
	1250 2050 1250 2150
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 61D75881
P 5175 4825
F 0 "H1" H 5275 4874 50  0000 L CNN
F 1 "M3" H 5275 4783 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5175 4825 50  0001 C CNN
F 3 "~" H 5175 4825 50  0001 C CNN
	1    5175 4825
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 61D764D5
P 5550 4825
F 0 "H2" H 5650 4874 50  0000 L CNN
F 1 "M3" H 5650 4783 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5550 4825 50  0001 C CNN
F 3 "~" H 5550 4825 50  0001 C CNN
	1    5550 4825
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 61D76922
P 5925 4825
F 0 "H3" H 6025 4874 50  0000 L CNN
F 1 "M3" H 6025 4783 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5925 4825 50  0001 C CNN
F 3 "~" H 5925 4825 50  0001 C CNN
	1    5925 4825
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 61D76DEB
P 6300 4825
F 0 "H4" H 6400 4874 50  0000 L CNN
F 1 "M3" H 6400 4783 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 6300 4825 50  0001 C CNN
F 3 "~" H 6300 4825 50  0001 C CNN
	1    6300 4825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61D7723D
P 5175 4925
AR Path="/608B4064/61D7723D" Ref="#PWR?"  Part="1" 
AR Path="/60711259/61D7723D" Ref="#PWR0214"  Part="1" 
F 0 "#PWR0214" H 5175 4675 50  0001 C CNN
F 1 "GND" H 5175 4775 50  0000 C CNN
F 2 "" H 5175 4925 50  0001 C CNN
F 3 "" H 5175 4925 50  0001 C CNN
	1    5175 4925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61D77CEB
P 5550 4925
AR Path="/608B4064/61D77CEB" Ref="#PWR?"  Part="1" 
AR Path="/60711259/61D77CEB" Ref="#PWR0215"  Part="1" 
F 0 "#PWR0215" H 5550 4675 50  0001 C CNN
F 1 "GND" H 5550 4775 50  0000 C CNN
F 2 "" H 5550 4925 50  0001 C CNN
F 3 "" H 5550 4925 50  0001 C CNN
	1    5550 4925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61D780D8
P 5925 4925
AR Path="/608B4064/61D780D8" Ref="#PWR?"  Part="1" 
AR Path="/60711259/61D780D8" Ref="#PWR0216"  Part="1" 
F 0 "#PWR0216" H 5925 4675 50  0001 C CNN
F 1 "GND" H 5925 4775 50  0000 C CNN
F 2 "" H 5925 4925 50  0001 C CNN
F 3 "" H 5925 4925 50  0001 C CNN
	1    5925 4925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61D78611
P 6300 4925
AR Path="/608B4064/61D78611" Ref="#PWR?"  Part="1" 
AR Path="/60711259/61D78611" Ref="#PWR0217"  Part="1" 
F 0 "#PWR0217" H 6300 4675 50  0001 C CNN
F 1 "GND" H 6300 4775 50  0000 C CNN
F 2 "" H 6300 4925 50  0001 C CNN
F 3 "" H 6300 4925 50  0001 C CNN
	1    6300 4925
	1    0    0    -1  
$EndComp
Text GLabel 1075 3575 0    50   Input ~ 0
-12VRAW
Text GLabel 1075 3375 0    50   Input ~ 0
+12VRAW
$Comp
L power:+12V #PWR0117
U 1 1 617F4C4D
P 1250 2050
F 0 "#PWR0117" H 1250 1900 50  0001 C CNN
F 1 "+12V" H 1150 2200 50  0000 L CNN
F 2 "" H 1250 2050 50  0001 C CNN
F 3 "" H 1250 2050 50  0001 C CNN
	1    1250 2050
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0218
U 1 1 617F5561
P 1750 2050
F 0 "#PWR0218" H 1750 2150 50  0001 C CNN
F 1 "-12V" H 1650 2200 50  0000 L CNN
F 2 "" H 1750 2050 50  0001 C CNN
F 3 "" H 1750 2050 50  0001 C CNN
	1    1750 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse_Small F2
U 1 1 619A3015
P 1900 3575
F 0 "F2" V 1700 3575 50  0000 C CNN
F 1 "1A Polyfuse" V 1800 3575 50  0000 C CNN
F 2 "winterbloom:Littelfuse_0805L" H 1950 3375 50  0001 L CNN
F 3 "https://m.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_0805l_datasheet.pdf.pdf" H 1900 3575 50  0001 C CNN
F 4 "0805L075" V 1900 3575 50  0001 C CNN "mpn"
	1    1900 3575
	0    -1   -1   0   
$EndComp
$Comp
L Device:Polyfuse_Small F1
U 1 1 619A193A
P 1900 3375
F 0 "F1" V 1695 3375 50  0000 C CNN
F 1 "1A Polyfuse" V 1786 3375 50  0000 C CNN
F 2 "winterbloom:Littelfuse_0805L" H 1950 3175 50  0001 L CNN
F 3 "https://m.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_0805l_datasheet.pdf.pdf" H 1900 3375 50  0001 C CNN
F 4 "0805L075" V 1900 3375 50  0001 C CNN "mpn"
	1    1900 3375
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 3375 2175 3375
Wire Wire Line
	2175 3575 2000 3575
$EndSCHEMATC
