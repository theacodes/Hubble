EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
Title "Hubble Motherboard"
Date "2021-11-12"
Rev "v2"
Comp "Winterbloom"
Comment1 "Alethea Flowers"
Comment2 "CERN-OHL-P V2"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L winterbloom:OPA4197 U10
U 1 1 609175C7
P 1975 1500
F 0 "U10" H 1975 1867 50  0000 C CNN
F 1 "OPA4197" H 1975 1776 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 1975 1150 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/opa4197.pdf" H 2025 1700 50  0001 C CNN
F 4 "OPA4197IPW" H 1975 1050 39  0001 C CNN "mpn"
	1    1975 1500
	1    0    0    -1
$EndComp
$Comp
L Device:R_US R15
U 1 1 609175CD
P 2000 1950
F 0 "R15" V 1795 1950 50  0000 C CNN
F 1 "10k" V 1886 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2040 1940 50  0001 C CNN
F 3 "~" H 2000 1950 50  0001 C CNN
	1    2000 1950
	0    1    1    0
$EndComp
$Comp
L Device:R_US R7
U 1 1 609175D3
P 1300 1600
F 0 "R7" V 1095 1600 50  0000 C CNN
F 1 "1.54k" V 1186 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1340 1590 50  0001 C CNN
F 3 "~" H 1300 1600 50  0001 C CNN
	1    1300 1600
	0    1    1    0
$EndComp
$Comp
L Device:R_US R19
U 1 1 609175D9
P 2425 1500
F 0 "R19" V 2220 1500 50  0000 C CNN
F 1 "1k" V 2311 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2465 1490 50  0001 C CNN
F 3 "~" H 2425 1500 50  0001 C CNN
	1    2425 1500
	0    1    1    0
$EndComp
$Comp
L Device:R_US R8
U 1 1 609175F2
P 1300 1950
F 0 "R8" V 1095 1950 50  0000 C CNN
F 1 "12.4k" V 1186 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1340 1940 50  0001 C CNN
F 3 "~" H 1300 1950 50  0001 C CNN
	1    1300 1950
	0    1    1    0
$EndComp
Wire Wire Line
	1450 1600 1675 1600
Wire Wire Line
	1450 1950 1450 1600
Connection ~ 1450 1600
Wire Wire Line
	1675 1600 1675 1950
Wire Wire Line
	1675 1950 1850 1950
Connection ~ 1675 1600
$Comp
L power:GND #PWR072
U 1 1 609175FF
P 1625 1400
F 0 "#PWR072" H 1625 1150 50  0001 C CNN
F 1 "GND" H 1625 1250 50  0000 C CNN
F 2 "" H 1625 1400 50  0001 C CNN
F 3 "" H 1625 1400 50  0001 C CNN
	1    1625 1400
	-1   0    0    1
$EndComp
Wire Wire Line
	1625 1400 1675 1400
Wire Wire Line
	2575 1500 2575 1950
Wire Wire Line
	2150 1950 2575 1950
Text Notes 800  1525 0    50   ~ 0
0 - 2.5v
Text Notes 850  925  0    50   ~ 0
Amplifies 0 V - 2.5 V to -8 V to 8 V\nResolution:\n- 16-bit DAC: 0.25 mV\n- 14-bit DAC: 1 mV\n
$Comp
L winterbloom:OPA4197 U10
U 2 1 6091762C
P 2000 2500
F 0 "U10" H 2000 2867 50  0000 C CNN
F 1 "OPA4197" H 2000 2776 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 2000 2150 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/opa4197.pdf" H 2050 2700 50  0001 C CNN
F 4 "OPA4197IPW" H 2000 2050 39  0001 C CNN "mpn"
	2    2000 2500
	1    0    0    -1
$EndComp
$Comp
L Device:R_US R16
U 1 1 60917632
P 2025 2950
F 0 "R16" V 1820 2950 50  0000 C CNN
F 1 "10k" V 1911 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2065 2940 50  0001 C CNN
F 3 "~" H 2025 2950 50  0001 C CNN
	1    2025 2950
	0    1    1    0
$EndComp
$Comp
L Device:R_US R9
U 1 1 60917638
P 1325 2600
F 0 "R9" V 1120 2600 50  0000 C CNN
F 1 "1.54k" V 1211 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1365 2590 50  0001 C CNN
F 3 "~" H 1325 2600 50  0001 C CNN
	1    1325 2600
	0    1    1    0
$EndComp
$Comp
L Device:R_US R20
U 1 1 6091763E
P 2450 2500
F 0 "R20" V 2245 2500 50  0000 C CNN
F 1 "1k" V 2336 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2490 2490 50  0001 C CNN
F 3 "~" H 2450 2500 50  0001 C CNN
	1    2450 2500
	0    1    1    0
$EndComp
$Comp
L Device:R_US R10
U 1 1 60917644
P 1325 2950
F 0 "R10" V 1120 2950 50  0000 C CNN
F 1 "12.4k" V 1211 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1365 2940 50  0001 C CNN
F 3 "~" H 1325 2950 50  0001 C CNN
	1    1325 2950
	0    1    1    0
$EndComp
Wire Wire Line
	1475 2600 1700 2600
Wire Wire Line
	1475 2950 1475 2600
Connection ~ 1475 2600
Wire Wire Line
	1700 2600 1700 2950
Wire Wire Line
	1700 2950 1875 2950
Connection ~ 1700 2600
$Comp
L power:GND #PWR073
U 1 1 60917651
P 1650 2400
F 0 "#PWR073" H 1650 2150 50  0001 C CNN
F 1 "GND" H 1650 2250 50  0000 C CNN
F 2 "" H 1650 2400 50  0001 C CNN
F 3 "" H 1650 2400 50  0001 C CNN
	1    1650 2400
	-1   0    0    1
$EndComp
Wire Wire Line
	1650 2400 1700 2400
Wire Wire Line
	2600 2500 2600 2950
Wire Wire Line
	2175 2950 2600 2950
Text Notes 825  2525 0    50   ~ 0
0 - 2.5v
$Comp
L winterbloom:OPA4197 U10
U 3 1 60917664
P 2000 3475
F 0 "U10" H 2000 3842 50  0000 C CNN
F 1 "OPA4197" H 2000 3751 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 2000 3125 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/opa4197.pdf" H 2050 3675 50  0001 C CNN
F 4 "OPA4197IPW" H 2000 3025 39  0001 C CNN "mpn"
	3    2000 3475
	1    0    0    -1
$EndComp
$Comp
L Device:R_US R17
U 1 1 6091766A
P 2025 3925
F 0 "R17" V 1820 3925 50  0000 C CNN
F 1 "10k" V 1911 3925 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2065 3915 50  0001 C CNN
F 3 "~" H 2025 3925 50  0001 C CNN
	1    2025 3925
	0    1    1    0
$EndComp
$Comp
L Device:R_US R11
U 1 1 60917670
P 1325 3575
F 0 "R11" V 1120 3575 50  0000 C CNN
F 1 "1.54k" V 1211 3575 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1365 3565 50  0001 C CNN
F 3 "~" H 1325 3575 50  0001 C CNN
	1    1325 3575
	0    1    1    0
$EndComp
$Comp
L Device:R_US R21
U 1 1 60917676
P 2450 3475
F 0 "R21" V 2245 3475 50  0000 C CNN
F 1 "1k" V 2336 3475 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2490 3465 50  0001 C CNN
F 3 "~" H 2450 3475 50  0001 C CNN
	1    2450 3475
	0    1    1    0
$EndComp
$Comp
L Device:R_US R12
U 1 1 6091767C
P 1325 3925
F 0 "R12" V 1120 3925 50  0000 C CNN
F 1 "12.4k" V 1211 3925 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1365 3915 50  0001 C CNN
F 3 "~" H 1325 3925 50  0001 C CNN
	1    1325 3925
	0    1    1    0
$EndComp
Wire Wire Line
	1475 3575 1700 3575
Wire Wire Line
	1475 3925 1475 3575
Connection ~ 1475 3575
Wire Wire Line
	1700 3575 1700 3925
Wire Wire Line
	1700 3925 1875 3925
Connection ~ 1700 3575
$Comp
L power:GND #PWR074
U 1 1 60917689
P 1650 3375
F 0 "#PWR074" H 1650 3125 50  0001 C CNN
F 1 "GND" H 1650 3225 50  0000 C CNN
F 2 "" H 1650 3375 50  0001 C CNN
F 3 "" H 1650 3375 50  0001 C CNN
	1    1650 3375
	-1   0    0    1
$EndComp
Wire Wire Line
	1650 3375 1700 3375
Wire Wire Line
	2600 3475 2600 3925
Wire Wire Line
	2175 3925 2600 3925
Text Notes 825  3500 0    50   ~ 0
0 - 2.5v
$Comp
L winterbloom:OPA4197 U10
U 4 1 6091769C
P 2000 4450
F 0 "U10" H 2000 4817 50  0000 C CNN
F 1 "OPA4197" H 2000 4726 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 2000 4100 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/opa4197.pdf" H 2050 4650 50  0001 C CNN
F 4 "OPA4197IPW" H 2000 4000 39  0001 C CNN "mpn"
	4    2000 4450
	1    0    0    -1
$EndComp
$Comp
L Device:R_US R18
U 1 1 609176A2
P 2025 4900
F 0 "R18" V 1820 4900 50  0000 C CNN
F 1 "10k" V 1911 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2065 4890 50  0001 C CNN
F 3 "~" H 2025 4900 50  0001 C CNN
	1    2025 4900
	0    1    1    0
$EndComp
$Comp
L Device:R_US R13
U 1 1 609176A8
P 1325 4550
F 0 "R13" V 1120 4550 50  0000 C CNN
F 1 "1.54k" V 1211 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1365 4540 50  0001 C CNN
F 3 "~" H 1325 4550 50  0001 C CNN
	1    1325 4550
	0    1    1    0
$EndComp
$Comp
L Device:R_US R22
U 1 1 609176AE
P 2450 4450
F 0 "R22" V 2245 4450 50  0000 C CNN
F 1 "1k" V 2336 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2490 4440 50  0001 C CNN
F 3 "~" H 2450 4450 50  0001 C CNN
	1    2450 4450
	0    1    1    0
$EndComp
$Comp
L Device:R_US R14
U 1 1 609176B4
P 1325 4900
F 0 "R14" V 1120 4900 50  0000 C CNN
F 1 "12.4k" V 1211 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1365 4890 50  0001 C CNN
F 3 "~" H 1325 4900 50  0001 C CNN
	1    1325 4900
	0    1    1    0
$EndComp
Wire Wire Line
	1475 4550 1700 4550
Wire Wire Line
	1475 4900 1475 4550
Connection ~ 1475 4550
Wire Wire Line
	1700 4550 1700 4900
Wire Wire Line
	1700 4900 1875 4900
Connection ~ 1700 4550
$Comp
L power:GND #PWR075
U 1 1 609176C1
P 1650 4350
F 0 "#PWR075" H 1650 4100 50  0001 C CNN
F 1 "GND" H 1650 4200 50  0000 C CNN
F 2 "" H 1650 4350 50  0001 C CNN
F 3 "" H 1650 4350 50  0001 C CNN
	1    1650 4350
	-1   0    0    1
$EndComp
Wire Wire Line
	1650 4350 1700 4350
Wire Wire Line
	2600 4450 2600 4900
Wire Wire Line
	2175 4900 2600 4900
Text Notes 825  4475 0    50   ~ 0
0 - 2.5v
Text HLabel 1175 2600 0    50   Input ~ 0
DAC_2_PRE
Text HLabel 1175 3575 0    50   Input ~ 0
DAC_3_PRE
Text HLabel 3050 3475 2    50   Input ~ 0
DAC_3_POST
Text HLabel 3050 4450 2    50   Input ~ 0
DAC_4_POST
Text HLabel 3025 1500 2    50   Input ~ 0
DAC_1_POST
Text HLabel 3050 2500 2    50   Input ~ 0
DAC_2_POST
$Comp
L winterbloom:OPA4197 U10
U 5 1 61594009
P 4625 2050
F 0 "U10" H 4650 2225 50  0000 C CNN
F 1 "OPA4197" H 4750 1875 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 4625 1700 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/opa4197.pdf" H 4675 2250 50  0001 C CNN
F 4 "OPA4197IPW" H 4625 1600 39  0001 C CNN "mpn"
	5    4625 2050
	1    0    0    -1
$EndComp
$Comp
L power:-12V #PWR0161
U 1 1 61595B3A
P 4525 2350
F 0 "#PWR0161" H 4525 2450 50  0001 C CNN
F 1 "-12V" H 4540 2523 50  0000 C CNN
F 2 "" H 4525 2350 50  0001 C CNN
F 3 "" H 4525 2350 50  0001 C CNN
	1    4525 2350
	-1   0    0    1
$EndComp
$Comp
L power:+12V #PWR0162
U 1 1 61596478
P 4525 1750
F 0 "#PWR0162" H 4525 1600 50  0001 C CNN
F 1 "+12V" H 4540 1923 50  0000 C CNN
F 2 "" H 4525 1750 50  0001 C CNN
F 3 "" H 4525 1750 50  0001 C CNN
	1    4525 1750
	1    0    0    -1
$EndComp
$Comp
L power:+12V #PWR0163
U 1 1 615968CE
P 5875 2075
F 0 "#PWR0163" H 5875 1925 50  0001 C CNN
F 1 "+12V" H 5890 2248 50  0000 C CNN
F 2 "" H 5875 2075 50  0001 C CNN
F 3 "" H 5875 2075 50  0001 C CNN
	1    5875 2075
	1    0    0    -1
$EndComp
$Comp
L power:-12V #PWR0164
U 1 1 61596B9E
P 5450 2175
F 0 "#PWR0164" H 5450 2275 50  0001 C CNN
F 1 "-12V" H 5465 2348 50  0000 C CNN
F 2 "" H 5450 2175 50  0001 C CNN
F 3 "" H 5450 2175 50  0001 C CNN
	1    5450 2175
	-1   0    0    1
$EndComp
$Comp
L Device:C_Small C33
U 1 1 615973E7
P 5450 2075
F 0 "C33" H 5542 2121 50  0000 L CNN
F 1 "0.1uF" H 5542 2030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5450 2075 50  0001 C CNN
F 3 "~" H 5450 2075 50  0001 C CNN
	1    5450 2075
	1    0    0    -1
$EndComp
$Comp
L Device:C_Small C34
U 1 1 61597F9E
P 5875 2175
F 0 "C34" H 5967 2221 50  0000 L CNN
F 1 "0.1uF" H 5967 2130 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5875 2175 50  0001 C CNN
F 3 "~" H 5875 2175 50  0001 C CNN
	1    5875 2175
	1    0    0    -1
$EndComp
$Comp
L power:GND #PWR0165
U 1 1 61598D1B
P 5450 1975
F 0 "#PWR0165" H 5450 1725 50  0001 C CNN
F 1 "GND" H 5455 1802 50  0001 C CNN
F 2 "" H 5450 1975 50  0001 C CNN
F 3 "" H 5450 1975 50  0001 C CNN
	1    5450 1975
	-1   0    0    1
$EndComp
$Comp
L power:GND #PWR0166
U 1 1 61599110
P 5875 2275
F 0 "#PWR0166" H 5875 2025 50  0001 C CNN
F 1 "GND" H 5880 2102 50  0001 C CNN
F 2 "" H 5875 2275 50  0001 C CNN
F 3 "" H 5875 2275 50  0001 C CNN
	1    5875 2275
	1    0    0    -1
$EndComp
Text HLabel 1175 4550 0    50   Input ~ 0
DAC_4_PRE
Text HLabel 1150 1600 0    50   Input ~ 0
DAC_1_PRE
$Comp
L winterbloom:LM4040-10 U?
U 1 1 617993BE
P 5075 3375
AR Path="/60711259/617993BE" Ref="U?"  Part="1"
AR Path="/61059808/617993BE" Ref="U?"  Part="1"
AR Path="/608FFE97/617993BE" Ref="U2"  Part="1"
F 0 "U2" V 5029 3454 50  0000 L CNN
F 1 "LM4040-10" V 5120 3454 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5075 3175 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm4040-n.pdf" H 5075 3375 50  0001 C CIN
F 4 "LM4040DIM3-10.0/NOPB" H 5075 3575 50  0001 C CNN "mpn"
	1    5075 3375
	0    1    1    0
$EndComp
$Comp
L Device:R_US R?
U 1 1 617993C4
P 5075 3075
AR Path="/60711259/617993C4" Ref="R?"  Part="1"
AR Path="/61059808/617993C4" Ref="R?"  Part="1"
AR Path="/608FFE97/617993C4" Ref="R36"  Part="1"
F 0 "R36" H 5143 3121 50  0000 L CNN
F 1 "270" H 5143 3030 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5115 3065 50  0001 C CNN
F 3 "~" H 5075 3075 50  0001 C CNN
	1    5075 3075
	1    0    0    -1
$EndComp
$Comp
L power:GND #PWR?
U 1 1 617993CA
P 5075 3525
AR Path="/60711259/617993CA" Ref="#PWR?"  Part="1"
AR Path="/61059808/617993CA" Ref="#PWR?"  Part="1"
AR Path="/608FFE97/617993CA" Ref="#PWR0159"  Part="1"
F 0 "#PWR0159" H 5075 3275 50  0001 C CNN
F 1 "GND" H 5150 3375 50  0000 R CNN
F 2 "" H 5075 3525 50  0001 C CNN
F 3 "" H 5075 3525 50  0001 C CNN
	1    5075 3525
	1    0    0    -1
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 617993D0
P 5075 2925
AR Path="/60711259/617993D0" Ref="#PWR?"  Part="1"
AR Path="/61059808/617993D0" Ref="#PWR?"  Part="1"
AR Path="/608FFE97/617993D0" Ref="#PWR0160"  Part="1"
F 0 "#PWR0160" H 5075 3025 50  0001 C CNN
F 1 "-12V" H 4975 3075 50  0000 L CNN
F 2 "" H 5075 2925 50  0001 C CNN
F 3 "" H 5075 2925 50  0001 C CNN
	1    5075 2925
	1    0    0    -1
$EndComp
$Comp
L Device:C_Small C?
U 1 1 617993D6
P 4825 3375
AR Path="/60711259/617993D6" Ref="C?"  Part="1"
AR Path="/61059808/617993D6" Ref="C?"  Part="1"
AR Path="/608FFE97/617993D6" Ref="C15"  Part="1"
F 0 "C15" H 5000 3350 50  0000 R CNN
F 1 "0.1uF" H 5125 3425 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4825 3375 50  0001 C CNN
F 3 "~" H 4825 3375 50  0001 C CNN
	1    4825 3375
	-1   0    0    1
$EndComp
Wire Wire Line
	4825 3275 4825 3225
Wire Wire Line
	4825 3225 5075 3225
Connection ~ 5075 3225
Wire Wire Line
	4825 3475 4825 3525
Wire Wire Line
	4825 3525 5075 3525
Connection ~ 5075 3525
Text Label 5275 3225 0    50   ~ 0
-10v_DAC
Wire Wire Line
	5275 3225 5075 3225
Text Label 1150 1950 2    50   ~ 0
-10v_DAC
Text Label 1175 2950 2    50   ~ 0
-10v_DAC
Text Label 1175 3925 2    50   ~ 0
-10v_DAC
Text Label 1175 4900 2    50   ~ 0
-10v_DAC
$Comp
L Connector:TestPoint_Small TP?
U 1 1 618195C6
P 2800 1500
AR Path="/617FCAA5/618195C6" Ref="TP?"  Part="1"
AR Path="/608FFE97/618195C6" Ref="TP3"  Part="1"
F 0 "TP3" V 2600 1575 50  0000 R CNN
F 1 "1" V 2675 1525 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3000 1500 50  0001 C CNN
F 3 "~" H 3000 1500 50  0001 C CNN
	1    2800 1500
	0    1    1    0
$EndComp
Wire Wire Line
	2575 1500 2800 1500
Connection ~ 2575 1500
Wire Wire Line
	2800 1500 3025 1500
Connection ~ 2800 1500
$Comp
L Connector:TestPoint_Small TP?
U 1 1 6181CE72
P 2825 2500
AR Path="/617FCAA5/6181CE72" Ref="TP?"  Part="1"
AR Path="/608FFE97/6181CE72" Ref="TP4"  Part="1"
F 0 "TP4" V 2625 2575 50  0000 R CNN
F 1 "2" V 2700 2525 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3025 2500 50  0001 C CNN
F 3 "~" H 3025 2500 50  0001 C CNN
	1    2825 2500
	0    1    1    0
$EndComp
Wire Wire Line
	2600 2500 2825 2500
Wire Wire Line
	2825 2500 3050 2500
Connection ~ 2825 2500
$Comp
L Connector:TestPoint_Small TP?
U 1 1 6181D989
P 2825 3475
AR Path="/617FCAA5/6181D989" Ref="TP?"  Part="1"
AR Path="/608FFE97/6181D989" Ref="TP5"  Part="1"
F 0 "TP5" V 2625 3550 50  0000 R CNN
F 1 "3" V 2700 3500 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3025 3475 50  0001 C CNN
F 3 "~" H 3025 3475 50  0001 C CNN
	1    2825 3475
	0    1    1    0
$EndComp
Wire Wire Line
	2600 3475 2825 3475
Wire Wire Line
	2825 3475 3050 3475
Connection ~ 2825 3475
$Comp
L Connector:TestPoint_Small TP?
U 1 1 6181E6EB
P 2825 4450
AR Path="/617FCAA5/6181E6EB" Ref="TP?"  Part="1"
AR Path="/608FFE97/6181E6EB" Ref="TP6"  Part="1"
F 0 "TP6" V 2625 4525 50  0000 R CNN
F 1 "4" V 2700 4475 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3025 4450 50  0001 C CNN
F 3 "~" H 3025 4450 50  0001 C CNN
	1    2825 4450
	0    1    1    0
$EndComp
Wire Wire Line
	2600 4450 2825 4450
Wire Wire Line
	2825 4450 3050 4450
Connection ~ 2825 4450
$EndSCHEMATC
