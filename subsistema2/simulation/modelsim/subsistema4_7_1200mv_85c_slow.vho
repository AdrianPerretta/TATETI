-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/10/2025 16:55:01"

-- 
-- Device: Altera EP4CGX110DF31C7 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Block1 IS
    PORT (
	locked : OUT std_logic;
	inclk0 : IN std_logic;
	areset : IN std_logic;
	Y : OUT std_logic;
	load : IN std_logic;
	parallel_in : IN std_logic_vector(383 DOWNTO 0);
	CERO : OUT std_logic;
	UNO : OUT std_logic;
	frecuencialed : OUT std_logic
	);
END Block1;

-- Design Ports Information
-- locked	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CERO	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UNO	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- frecuencialed	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- areset	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inclk0	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[383]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[382]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[381]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[380]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[379]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[378]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[377]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[376]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[375]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[374]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[373]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[372]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[371]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[370]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[369]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[368]	=>  Location: PIN_AK5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[367]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[366]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[365]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[364]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[363]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[362]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[361]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[360]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[359]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[358]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[357]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[356]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[355]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[354]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[353]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[352]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[351]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[350]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[349]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[348]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[347]	=>  Location: PIN_AK15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[346]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[345]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[344]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[343]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[342]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[341]	=>  Location: PIN_AJ15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[340]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[339]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[338]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[337]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[336]	=>  Location: PIN_AK17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[335]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[334]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[333]	=>  Location: PIN_AJ13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[332]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[331]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[330]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[329]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[328]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[327]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[326]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[325]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[324]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[323]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[322]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[321]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[320]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[319]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[318]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[317]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[316]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[315]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[314]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[313]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[312]	=>  Location: PIN_AK10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[311]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[310]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[309]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[308]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[307]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[306]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[305]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[304]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[303]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[302]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[301]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[300]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[299]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[298]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[297]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[296]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[295]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[294]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[293]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[292]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[291]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[290]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[289]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[288]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[287]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[286]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[285]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[284]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[283]	=>  Location: PIN_C29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[282]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[281]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[280]	=>  Location: PIN_F29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[279]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[278]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[277]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[276]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[275]	=>  Location: PIN_C30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[274]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[273]	=>  Location: PIN_H27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[272]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[271]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[270]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[269]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[268]	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[267]	=>  Location: PIN_N27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[266]	=>  Location: PIN_M30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[265]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[264]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[263]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[262]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[261]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[260]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[259]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[258]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[257]	=>  Location: PIN_N30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[256]	=>  Location: PIN_N28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[255]	=>  Location: PIN_N29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[254]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[253]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[252]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[251]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[250]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[249]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[248]	=>  Location: PIN_V30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[247]	=>  Location: PIN_V29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[246]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[245]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[244]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[243]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[242]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[241]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[240]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[239]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[238]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[237]	=>  Location: PIN_T27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[236]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[235]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[234]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[233]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[232]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[231]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[230]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[229]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[228]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[227]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[226]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[225]	=>  Location: PIN_AA29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[224]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[223]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[222]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[221]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[220]	=>  Location: PIN_G29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[219]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[218]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[217]	=>  Location: PIN_D30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[216]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[215]	=>  Location: PIN_D29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[214]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[213]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[212]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[211]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[210]	=>  Location: PIN_E30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[209]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[208]	=>  Location: PIN_H28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[207]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[206]	=>  Location: PIN_F30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[205]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[204]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[203]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[202]	=>  Location: PIN_AK20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[201]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[200]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[199]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[198]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[197]	=>  Location: PIN_AJ18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[196]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[195]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[194]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[193]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[192]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[191]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[190]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[189]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[188]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[187]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[186]	=>  Location: PIN_J30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[185]	=>  Location: PIN_G30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[184]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[183]	=>  Location: PIN_M29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[182]	=>  Location: PIN_L30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[181]	=>  Location: PIN_K30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[180]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[179]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[178]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[177]	=>  Location: PIN_J29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[176]	=>  Location: PIN_K29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[175]	=>  Location: PIN_H30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[174]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[173]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[172]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[171]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[170]	=>  Location: PIN_AE30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[169]	=>  Location: PIN_AJ30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[168]	=>  Location: PIN_AA27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[167]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[166]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[165]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[164]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[163]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[162]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[161]	=>  Location: PIN_AG29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[160]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[159]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[158]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[157]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[156]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[155]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[154]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[153]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[152]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[151]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[150]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[149]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[148]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[147]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[146]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[145]	=>  Location: PIN_AJ28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[144]	=>  Location: PIN_AK25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[143]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[142]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[141]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[140]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[139]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[138]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[137]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[136]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[135]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[134]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[133]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[132]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[131]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[130]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[129]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[128]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[127]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[126]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[125]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[124]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[123]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[122]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[121]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[120]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[119]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[118]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[117]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[116]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[115]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[114]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[113]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[112]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[111]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[110]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[109]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[108]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[107]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[106]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[105]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[104]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[103]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[102]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[101]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[100]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[99]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[98]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[97]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[96]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[95]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[94]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[93]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[92]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[91]	=>  Location: PIN_W30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[90]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[89]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[88]	=>  Location: PIN_W29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[87]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[86]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[85]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[84]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[83]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[82]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[81]	=>  Location: PIN_Y30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[80]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[79]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[78]	=>  Location: PIN_AB29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[77]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[76]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[75]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[74]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[73]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[72]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[71]	=>  Location: PIN_A29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[70]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[69]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[68]	=>  Location: PIN_B30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[67]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[66]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[65]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[64]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[63]	=>  Location: PIN_F23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[62]	=>  Location: PIN_C28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[61]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[60]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[59]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[58]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[57]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[56]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[55]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[54]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[53]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[52]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[51]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[50]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[49]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[48]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[47]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[46]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[45]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[44]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[43]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[42]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[41]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[40]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[39]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[38]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[37]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[36]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[35]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[34]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[33]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[32]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[31]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[30]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[29]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[28]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[27]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[26]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[25]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[24]	=>  Location: PIN_B24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[23]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[22]	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[21]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[20]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[19]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[18]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[17]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[16]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[15]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[14]	=>  Location: PIN_B27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[13]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[12]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[11]	=>  Location: PIN_A27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[10]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[9]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[8]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[7]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[6]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[3]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[2]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[1]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_in[0]	=>  Location: PIN_T30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_locked : std_logic;
SIGNAL ww_inclk0 : std_logic;
SIGNAL ww_areset : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_parallel_in : std_logic_vector(383 DOWNTO 0);
SIGNAL ww_CERO : std_logic;
SIGNAL ww_UNO : std_logic;
SIGNAL ww_frecuencialed : std_logic;
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CERO_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|count[1]~12_combout\ : std_logic;
SIGNAL \inst1|shift_reg~2_combout\ : std_logic;
SIGNAL \inst1|shift_reg~3_combout\ : std_logic;
SIGNAL \inst1|shift_reg~4_combout\ : std_logic;
SIGNAL \inst1|shift_reg~5_combout\ : std_logic;
SIGNAL \inst1|shift_reg~6_combout\ : std_logic;
SIGNAL \inst1|shift_reg~7_combout\ : std_logic;
SIGNAL \inst1|shift_reg~8_combout\ : std_logic;
SIGNAL \inst1|shift_reg~9_combout\ : std_logic;
SIGNAL \inst1|shift_reg~10_combout\ : std_logic;
SIGNAL \inst1|shift_reg~11_combout\ : std_logic;
SIGNAL \inst1|shift_reg~12_combout\ : std_logic;
SIGNAL \inst1|shift_reg~13_combout\ : std_logic;
SIGNAL \inst1|shift_reg~14_combout\ : std_logic;
SIGNAL \inst1|shift_reg~15_combout\ : std_logic;
SIGNAL \inst1|shift_reg~16_combout\ : std_logic;
SIGNAL \inst1|shift_reg~17_combout\ : std_logic;
SIGNAL \inst1|shift_reg~18_combout\ : std_logic;
SIGNAL \inst1|shift_reg~19_combout\ : std_logic;
SIGNAL \inst1|shift_reg~20_combout\ : std_logic;
SIGNAL \inst1|shift_reg~21_combout\ : std_logic;
SIGNAL \inst1|shift_reg~22_combout\ : std_logic;
SIGNAL \inst1|shift_reg~23_combout\ : std_logic;
SIGNAL \inst1|shift_reg~24_combout\ : std_logic;
SIGNAL \inst1|shift_reg~25_combout\ : std_logic;
SIGNAL \inst1|shift_reg~26_combout\ : std_logic;
SIGNAL \inst1|shift_reg~27_combout\ : std_logic;
SIGNAL \inst1|shift_reg~28_combout\ : std_logic;
SIGNAL \inst1|shift_reg~29_combout\ : std_logic;
SIGNAL \inst1|shift_reg~30_combout\ : std_logic;
SIGNAL \inst1|shift_reg~31_combout\ : std_logic;
SIGNAL \inst1|shift_reg~32_combout\ : std_logic;
SIGNAL \inst1|shift_reg~33_combout\ : std_logic;
SIGNAL \inst1|shift_reg~34_combout\ : std_logic;
SIGNAL \inst1|shift_reg~35_combout\ : std_logic;
SIGNAL \inst1|shift_reg~36_combout\ : std_logic;
SIGNAL \inst1|shift_reg~37_combout\ : std_logic;
SIGNAL \inst1|shift_reg~38_combout\ : std_logic;
SIGNAL \inst1|shift_reg~39_combout\ : std_logic;
SIGNAL \inst1|shift_reg~40_combout\ : std_logic;
SIGNAL \inst1|shift_reg~41_combout\ : std_logic;
SIGNAL \inst1|shift_reg~42_combout\ : std_logic;
SIGNAL \inst1|shift_reg~43_combout\ : std_logic;
SIGNAL \inst1|shift_reg~44_combout\ : std_logic;
SIGNAL \inst1|shift_reg~45_combout\ : std_logic;
SIGNAL \inst1|shift_reg~46_combout\ : std_logic;
SIGNAL \inst1|shift_reg~47_combout\ : std_logic;
SIGNAL \inst1|shift_reg~48_combout\ : std_logic;
SIGNAL \inst1|shift_reg~49_combout\ : std_logic;
SIGNAL \inst1|shift_reg~50_combout\ : std_logic;
SIGNAL \inst1|shift_reg~51_combout\ : std_logic;
SIGNAL \inst1|shift_reg~52_combout\ : std_logic;
SIGNAL \inst1|shift_reg~53_combout\ : std_logic;
SIGNAL \inst1|shift_reg~54_combout\ : std_logic;
SIGNAL \inst1|shift_reg~55_combout\ : std_logic;
SIGNAL \inst1|shift_reg~56_combout\ : std_logic;
SIGNAL \inst1|shift_reg~57_combout\ : std_logic;
SIGNAL \inst1|shift_reg~58_combout\ : std_logic;
SIGNAL \inst1|shift_reg~59_combout\ : std_logic;
SIGNAL \inst1|shift_reg~60_combout\ : std_logic;
SIGNAL \inst1|shift_reg~61_combout\ : std_logic;
SIGNAL \inst1|shift_reg~62_combout\ : std_logic;
SIGNAL \inst1|shift_reg~63_combout\ : std_logic;
SIGNAL \inst1|shift_reg~64_combout\ : std_logic;
SIGNAL \inst1|shift_reg~65_combout\ : std_logic;
SIGNAL \inst1|shift_reg~66_combout\ : std_logic;
SIGNAL \inst1|shift_reg~67_combout\ : std_logic;
SIGNAL \inst1|shift_reg~68_combout\ : std_logic;
SIGNAL \inst1|shift_reg~69_combout\ : std_logic;
SIGNAL \inst1|shift_reg~70_combout\ : std_logic;
SIGNAL \inst1|shift_reg~71_combout\ : std_logic;
SIGNAL \inst1|shift_reg~72_combout\ : std_logic;
SIGNAL \inst1|shift_reg~73_combout\ : std_logic;
SIGNAL \inst1|shift_reg~74_combout\ : std_logic;
SIGNAL \inst1|shift_reg~75_combout\ : std_logic;
SIGNAL \inst1|shift_reg~76_combout\ : std_logic;
SIGNAL \inst1|shift_reg~77_combout\ : std_logic;
SIGNAL \inst1|shift_reg~78_combout\ : std_logic;
SIGNAL \inst1|shift_reg~79_combout\ : std_logic;
SIGNAL \inst1|shift_reg~80_combout\ : std_logic;
SIGNAL \inst1|shift_reg~81_combout\ : std_logic;
SIGNAL \inst1|shift_reg~82_combout\ : std_logic;
SIGNAL \inst1|shift_reg~83_combout\ : std_logic;
SIGNAL \inst1|shift_reg~84_combout\ : std_logic;
SIGNAL \inst1|shift_reg~85_combout\ : std_logic;
SIGNAL \inst1|shift_reg~86_combout\ : std_logic;
SIGNAL \inst1|shift_reg~87_combout\ : std_logic;
SIGNAL \inst1|shift_reg~88_combout\ : std_logic;
SIGNAL \inst1|shift_reg~89_combout\ : std_logic;
SIGNAL \inst1|shift_reg~90_combout\ : std_logic;
SIGNAL \inst1|shift_reg~91_combout\ : std_logic;
SIGNAL \inst1|shift_reg~92_combout\ : std_logic;
SIGNAL \inst1|shift_reg~93_combout\ : std_logic;
SIGNAL \inst1|shift_reg~94_combout\ : std_logic;
SIGNAL \inst1|shift_reg~95_combout\ : std_logic;
SIGNAL \inst1|shift_reg~96_combout\ : std_logic;
SIGNAL \inst1|shift_reg~97_combout\ : std_logic;
SIGNAL \inst1|shift_reg~98_combout\ : std_logic;
SIGNAL \inst1|shift_reg~99_combout\ : std_logic;
SIGNAL \inst1|shift_reg~100_combout\ : std_logic;
SIGNAL \inst1|shift_reg~101_combout\ : std_logic;
SIGNAL \inst1|shift_reg~102_combout\ : std_logic;
SIGNAL \inst1|shift_reg~103_combout\ : std_logic;
SIGNAL \inst1|shift_reg~104_combout\ : std_logic;
SIGNAL \inst1|shift_reg~105_combout\ : std_logic;
SIGNAL \inst1|shift_reg~106_combout\ : std_logic;
SIGNAL \inst1|shift_reg~107_combout\ : std_logic;
SIGNAL \inst1|shift_reg~108_combout\ : std_logic;
SIGNAL \inst1|shift_reg~109_combout\ : std_logic;
SIGNAL \inst1|shift_reg~110_combout\ : std_logic;
SIGNAL \inst1|shift_reg~111_combout\ : std_logic;
SIGNAL \inst1|shift_reg~112_combout\ : std_logic;
SIGNAL \inst1|shift_reg~113_combout\ : std_logic;
SIGNAL \inst1|shift_reg~114_combout\ : std_logic;
SIGNAL \inst1|shift_reg~115_combout\ : std_logic;
SIGNAL \inst1|shift_reg~116_combout\ : std_logic;
SIGNAL \inst1|shift_reg~117_combout\ : std_logic;
SIGNAL \inst1|shift_reg~118_combout\ : std_logic;
SIGNAL \inst1|shift_reg~119_combout\ : std_logic;
SIGNAL \inst1|shift_reg~120_combout\ : std_logic;
SIGNAL \inst1|shift_reg~121_combout\ : std_logic;
SIGNAL \inst1|shift_reg~122_combout\ : std_logic;
SIGNAL \inst1|shift_reg~123_combout\ : std_logic;
SIGNAL \inst1|shift_reg~124_combout\ : std_logic;
SIGNAL \inst1|shift_reg~125_combout\ : std_logic;
SIGNAL \inst1|shift_reg~126_combout\ : std_logic;
SIGNAL \inst1|shift_reg~127_combout\ : std_logic;
SIGNAL \inst1|shift_reg~128_combout\ : std_logic;
SIGNAL \inst1|shift_reg~129_combout\ : std_logic;
SIGNAL \inst1|shift_reg~130_combout\ : std_logic;
SIGNAL \inst1|shift_reg~131_combout\ : std_logic;
SIGNAL \inst1|shift_reg~132_combout\ : std_logic;
SIGNAL \inst1|shift_reg~133_combout\ : std_logic;
SIGNAL \inst1|shift_reg~134_combout\ : std_logic;
SIGNAL \inst1|shift_reg~135_combout\ : std_logic;
SIGNAL \inst1|shift_reg~136_combout\ : std_logic;
SIGNAL \inst1|shift_reg~137_combout\ : std_logic;
SIGNAL \inst1|shift_reg~138_combout\ : std_logic;
SIGNAL \inst1|shift_reg~139_combout\ : std_logic;
SIGNAL \inst1|shift_reg~140_combout\ : std_logic;
SIGNAL \inst1|shift_reg~141_combout\ : std_logic;
SIGNAL \inst1|shift_reg~142_combout\ : std_logic;
SIGNAL \inst1|shift_reg~143_combout\ : std_logic;
SIGNAL \inst1|shift_reg~144_combout\ : std_logic;
SIGNAL \inst1|shift_reg~145_combout\ : std_logic;
SIGNAL \inst1|shift_reg~146_combout\ : std_logic;
SIGNAL \inst1|shift_reg~147_combout\ : std_logic;
SIGNAL \inst1|shift_reg~148_combout\ : std_logic;
SIGNAL \inst1|shift_reg~149_combout\ : std_logic;
SIGNAL \inst1|shift_reg~150_combout\ : std_logic;
SIGNAL \inst1|shift_reg~151_combout\ : std_logic;
SIGNAL \inst1|shift_reg~152_combout\ : std_logic;
SIGNAL \inst1|shift_reg~153_combout\ : std_logic;
SIGNAL \inst1|shift_reg~154_combout\ : std_logic;
SIGNAL \inst1|shift_reg~155_combout\ : std_logic;
SIGNAL \inst1|shift_reg~156_combout\ : std_logic;
SIGNAL \inst1|shift_reg~157_combout\ : std_logic;
SIGNAL \inst1|shift_reg~158_combout\ : std_logic;
SIGNAL \inst1|shift_reg~159_combout\ : std_logic;
SIGNAL \inst1|shift_reg~160_combout\ : std_logic;
SIGNAL \inst1|shift_reg~161_combout\ : std_logic;
SIGNAL \inst1|shift_reg~162_combout\ : std_logic;
SIGNAL \inst1|shift_reg~163_combout\ : std_logic;
SIGNAL \inst1|shift_reg~164_combout\ : std_logic;
SIGNAL \inst1|shift_reg~165_combout\ : std_logic;
SIGNAL \inst1|shift_reg~166_combout\ : std_logic;
SIGNAL \inst1|shift_reg~167_combout\ : std_logic;
SIGNAL \inst1|shift_reg~168_combout\ : std_logic;
SIGNAL \inst1|shift_reg~169_combout\ : std_logic;
SIGNAL \inst1|shift_reg~170_combout\ : std_logic;
SIGNAL \inst1|shift_reg~171_combout\ : std_logic;
SIGNAL \inst1|shift_reg~172_combout\ : std_logic;
SIGNAL \inst1|shift_reg~173_combout\ : std_logic;
SIGNAL \inst1|shift_reg~174_combout\ : std_logic;
SIGNAL \inst1|shift_reg~175_combout\ : std_logic;
SIGNAL \inst1|shift_reg~176_combout\ : std_logic;
SIGNAL \inst1|shift_reg~177_combout\ : std_logic;
SIGNAL \inst1|shift_reg~178_combout\ : std_logic;
SIGNAL \inst1|shift_reg~179_combout\ : std_logic;
SIGNAL \inst1|shift_reg~180_combout\ : std_logic;
SIGNAL \inst1|shift_reg~181_combout\ : std_logic;
SIGNAL \inst1|shift_reg~182_combout\ : std_logic;
SIGNAL \inst1|shift_reg~183_combout\ : std_logic;
SIGNAL \inst1|shift_reg~184_combout\ : std_logic;
SIGNAL \inst1|shift_reg~185_combout\ : std_logic;
SIGNAL \inst1|shift_reg~186_combout\ : std_logic;
SIGNAL \inst1|shift_reg~187_combout\ : std_logic;
SIGNAL \inst1|shift_reg~188_combout\ : std_logic;
SIGNAL \inst1|shift_reg~189_combout\ : std_logic;
SIGNAL \inst1|shift_reg~190_combout\ : std_logic;
SIGNAL \inst1|shift_reg~191_combout\ : std_logic;
SIGNAL \inst1|shift_reg~192_combout\ : std_logic;
SIGNAL \inst1|shift_reg~193_combout\ : std_logic;
SIGNAL \inst1|shift_reg~194_combout\ : std_logic;
SIGNAL \inst1|shift_reg~195_combout\ : std_logic;
SIGNAL \inst1|shift_reg~196_combout\ : std_logic;
SIGNAL \inst1|shift_reg~197_combout\ : std_logic;
SIGNAL \inst1|shift_reg~198_combout\ : std_logic;
SIGNAL \inst1|shift_reg~199_combout\ : std_logic;
SIGNAL \inst1|shift_reg~200_combout\ : std_logic;
SIGNAL \inst1|shift_reg~201_combout\ : std_logic;
SIGNAL \inst1|shift_reg~202_combout\ : std_logic;
SIGNAL \inst1|shift_reg~203_combout\ : std_logic;
SIGNAL \inst1|shift_reg~204_combout\ : std_logic;
SIGNAL \inst1|shift_reg~205_combout\ : std_logic;
SIGNAL \inst1|shift_reg~206_combout\ : std_logic;
SIGNAL \inst1|shift_reg~207_combout\ : std_logic;
SIGNAL \inst1|shift_reg~208_combout\ : std_logic;
SIGNAL \inst1|shift_reg~209_combout\ : std_logic;
SIGNAL \inst1|shift_reg~210_combout\ : std_logic;
SIGNAL \inst1|shift_reg~211_combout\ : std_logic;
SIGNAL \inst1|shift_reg~212_combout\ : std_logic;
SIGNAL \inst1|shift_reg~213_combout\ : std_logic;
SIGNAL \inst1|shift_reg~214_combout\ : std_logic;
SIGNAL \inst1|shift_reg~215_combout\ : std_logic;
SIGNAL \inst1|shift_reg~216_combout\ : std_logic;
SIGNAL \inst1|shift_reg~217_combout\ : std_logic;
SIGNAL \inst1|shift_reg~218_combout\ : std_logic;
SIGNAL \inst1|shift_reg~219_combout\ : std_logic;
SIGNAL \inst1|shift_reg~220_combout\ : std_logic;
SIGNAL \inst1|shift_reg~221_combout\ : std_logic;
SIGNAL \inst1|shift_reg~222_combout\ : std_logic;
SIGNAL \inst1|shift_reg~223_combout\ : std_logic;
SIGNAL \inst1|shift_reg~224_combout\ : std_logic;
SIGNAL \inst1|shift_reg~225_combout\ : std_logic;
SIGNAL \inst1|shift_reg~226_combout\ : std_logic;
SIGNAL \inst1|shift_reg~227_combout\ : std_logic;
SIGNAL \inst1|shift_reg~228_combout\ : std_logic;
SIGNAL \inst1|shift_reg~229_combout\ : std_logic;
SIGNAL \inst1|shift_reg~230_combout\ : std_logic;
SIGNAL \inst1|shift_reg~231_combout\ : std_logic;
SIGNAL \inst1|shift_reg~232_combout\ : std_logic;
SIGNAL \inst1|shift_reg~233_combout\ : std_logic;
SIGNAL \inst1|shift_reg~234_combout\ : std_logic;
SIGNAL \inst1|shift_reg~235_combout\ : std_logic;
SIGNAL \inst1|shift_reg~236_combout\ : std_logic;
SIGNAL \inst1|shift_reg~237_combout\ : std_logic;
SIGNAL \inst1|shift_reg~238_combout\ : std_logic;
SIGNAL \inst1|shift_reg~239_combout\ : std_logic;
SIGNAL \inst1|shift_reg~240_combout\ : std_logic;
SIGNAL \inst1|shift_reg~241_combout\ : std_logic;
SIGNAL \inst1|shift_reg~242_combout\ : std_logic;
SIGNAL \inst1|shift_reg~243_combout\ : std_logic;
SIGNAL \inst1|shift_reg~244_combout\ : std_logic;
SIGNAL \inst1|shift_reg~245_combout\ : std_logic;
SIGNAL \inst1|shift_reg~246_combout\ : std_logic;
SIGNAL \inst1|shift_reg~247_combout\ : std_logic;
SIGNAL \inst1|shift_reg~248_combout\ : std_logic;
SIGNAL \inst1|shift_reg~249_combout\ : std_logic;
SIGNAL \inst1|shift_reg~250_combout\ : std_logic;
SIGNAL \inst1|shift_reg~251_combout\ : std_logic;
SIGNAL \inst1|shift_reg~252_combout\ : std_logic;
SIGNAL \inst1|shift_reg~253_combout\ : std_logic;
SIGNAL \inst1|shift_reg~254_combout\ : std_logic;
SIGNAL \inst1|shift_reg~255_combout\ : std_logic;
SIGNAL \inst1|shift_reg~256_combout\ : std_logic;
SIGNAL \inst1|shift_reg~257_combout\ : std_logic;
SIGNAL \inst1|shift_reg~258_combout\ : std_logic;
SIGNAL \inst1|shift_reg~259_combout\ : std_logic;
SIGNAL \inst1|shift_reg~260_combout\ : std_logic;
SIGNAL \inst1|shift_reg~261_combout\ : std_logic;
SIGNAL \inst1|shift_reg~262_combout\ : std_logic;
SIGNAL \inst1|shift_reg~263_combout\ : std_logic;
SIGNAL \inst1|shift_reg~264_combout\ : std_logic;
SIGNAL \inst1|shift_reg~265_combout\ : std_logic;
SIGNAL \inst1|shift_reg~266_combout\ : std_logic;
SIGNAL \inst1|shift_reg~267_combout\ : std_logic;
SIGNAL \inst1|shift_reg~268_combout\ : std_logic;
SIGNAL \inst1|shift_reg~269_combout\ : std_logic;
SIGNAL \inst1|shift_reg~270_combout\ : std_logic;
SIGNAL \inst1|shift_reg~271_combout\ : std_logic;
SIGNAL \inst1|shift_reg~272_combout\ : std_logic;
SIGNAL \inst1|shift_reg~273_combout\ : std_logic;
SIGNAL \inst1|shift_reg~274_combout\ : std_logic;
SIGNAL \inst1|shift_reg~275_combout\ : std_logic;
SIGNAL \inst1|shift_reg~276_combout\ : std_logic;
SIGNAL \inst1|shift_reg~277_combout\ : std_logic;
SIGNAL \inst1|shift_reg~278_combout\ : std_logic;
SIGNAL \inst1|shift_reg~279_combout\ : std_logic;
SIGNAL \inst1|shift_reg~280_combout\ : std_logic;
SIGNAL \inst1|shift_reg~281_combout\ : std_logic;
SIGNAL \inst1|shift_reg~282_combout\ : std_logic;
SIGNAL \inst1|shift_reg~283_combout\ : std_logic;
SIGNAL \inst1|shift_reg~284_combout\ : std_logic;
SIGNAL \inst1|shift_reg~285_combout\ : std_logic;
SIGNAL \inst1|shift_reg~286_combout\ : std_logic;
SIGNAL \inst1|shift_reg~287_combout\ : std_logic;
SIGNAL \inst1|shift_reg~288_combout\ : std_logic;
SIGNAL \inst1|shift_reg~289_combout\ : std_logic;
SIGNAL \inst1|shift_reg~290_combout\ : std_logic;
SIGNAL \inst1|shift_reg~291_combout\ : std_logic;
SIGNAL \inst1|shift_reg~292_combout\ : std_logic;
SIGNAL \inst1|shift_reg~293_combout\ : std_logic;
SIGNAL \inst1|shift_reg~294_combout\ : std_logic;
SIGNAL \inst1|shift_reg~295_combout\ : std_logic;
SIGNAL \inst1|shift_reg~296_combout\ : std_logic;
SIGNAL \inst1|shift_reg~297_combout\ : std_logic;
SIGNAL \inst1|shift_reg~298_combout\ : std_logic;
SIGNAL \inst1|shift_reg~299_combout\ : std_logic;
SIGNAL \inst1|shift_reg~300_combout\ : std_logic;
SIGNAL \inst1|shift_reg~301_combout\ : std_logic;
SIGNAL \inst1|shift_reg~302_combout\ : std_logic;
SIGNAL \inst1|shift_reg~303_combout\ : std_logic;
SIGNAL \inst1|shift_reg~304_combout\ : std_logic;
SIGNAL \inst1|shift_reg~305_combout\ : std_logic;
SIGNAL \inst1|shift_reg~306_combout\ : std_logic;
SIGNAL \inst1|shift_reg~307_combout\ : std_logic;
SIGNAL \inst1|shift_reg~308_combout\ : std_logic;
SIGNAL \inst1|shift_reg~309_combout\ : std_logic;
SIGNAL \inst1|shift_reg~310_combout\ : std_logic;
SIGNAL \inst1|shift_reg~311_combout\ : std_logic;
SIGNAL \inst1|shift_reg~312_combout\ : std_logic;
SIGNAL \inst1|shift_reg~313_combout\ : std_logic;
SIGNAL \inst1|shift_reg~314_combout\ : std_logic;
SIGNAL \inst1|shift_reg~315_combout\ : std_logic;
SIGNAL \inst1|shift_reg~316_combout\ : std_logic;
SIGNAL \inst1|shift_reg~317_combout\ : std_logic;
SIGNAL \inst1|shift_reg~318_combout\ : std_logic;
SIGNAL \inst1|shift_reg~319_combout\ : std_logic;
SIGNAL \inst1|shift_reg~320_combout\ : std_logic;
SIGNAL \inst1|shift_reg~321_combout\ : std_logic;
SIGNAL \inst1|shift_reg~322_combout\ : std_logic;
SIGNAL \inst1|shift_reg~323_combout\ : std_logic;
SIGNAL \inst1|shift_reg~324_combout\ : std_logic;
SIGNAL \inst1|shift_reg~325_combout\ : std_logic;
SIGNAL \inst1|shift_reg~326_combout\ : std_logic;
SIGNAL \inst1|shift_reg~327_combout\ : std_logic;
SIGNAL \inst1|shift_reg~328_combout\ : std_logic;
SIGNAL \inst1|shift_reg~329_combout\ : std_logic;
SIGNAL \inst1|shift_reg~330_combout\ : std_logic;
SIGNAL \inst1|shift_reg~331_combout\ : std_logic;
SIGNAL \inst1|shift_reg~332_combout\ : std_logic;
SIGNAL \inst1|shift_reg~333_combout\ : std_logic;
SIGNAL \inst1|shift_reg~334_combout\ : std_logic;
SIGNAL \inst1|shift_reg~335_combout\ : std_logic;
SIGNAL \inst1|shift_reg~336_combout\ : std_logic;
SIGNAL \inst1|shift_reg~337_combout\ : std_logic;
SIGNAL \inst1|shift_reg~338_combout\ : std_logic;
SIGNAL \inst1|shift_reg~339_combout\ : std_logic;
SIGNAL \inst1|shift_reg~340_combout\ : std_logic;
SIGNAL \inst1|shift_reg~341_combout\ : std_logic;
SIGNAL \inst1|shift_reg~342_combout\ : std_logic;
SIGNAL \inst1|shift_reg~343_combout\ : std_logic;
SIGNAL \inst1|shift_reg~344_combout\ : std_logic;
SIGNAL \inst1|shift_reg~345_combout\ : std_logic;
SIGNAL \inst1|shift_reg~346_combout\ : std_logic;
SIGNAL \inst1|shift_reg~347_combout\ : std_logic;
SIGNAL \inst1|shift_reg~348_combout\ : std_logic;
SIGNAL \inst1|shift_reg~349_combout\ : std_logic;
SIGNAL \inst1|shift_reg~350_combout\ : std_logic;
SIGNAL \inst1|shift_reg~351_combout\ : std_logic;
SIGNAL \inst1|shift_reg~352_combout\ : std_logic;
SIGNAL \inst1|shift_reg~353_combout\ : std_logic;
SIGNAL \inst1|shift_reg~354_combout\ : std_logic;
SIGNAL \inst1|shift_reg~355_combout\ : std_logic;
SIGNAL \inst1|shift_reg~356_combout\ : std_logic;
SIGNAL \inst1|shift_reg~357_combout\ : std_logic;
SIGNAL \inst1|shift_reg~358_combout\ : std_logic;
SIGNAL \inst1|shift_reg~359_combout\ : std_logic;
SIGNAL \inst1|shift_reg~360_combout\ : std_logic;
SIGNAL \inst1|shift_reg~361_combout\ : std_logic;
SIGNAL \inst1|shift_reg~362_combout\ : std_logic;
SIGNAL \inst1|shift_reg~363_combout\ : std_logic;
SIGNAL \inst1|shift_reg~364_combout\ : std_logic;
SIGNAL \inst1|shift_reg~365_combout\ : std_logic;
SIGNAL \inst1|shift_reg~366_combout\ : std_logic;
SIGNAL \inst1|shift_reg~367_combout\ : std_logic;
SIGNAL \inst1|shift_reg~368_combout\ : std_logic;
SIGNAL \inst1|shift_reg~369_combout\ : std_logic;
SIGNAL \inst1|shift_reg~370_combout\ : std_logic;
SIGNAL \inst1|shift_reg~371_combout\ : std_logic;
SIGNAL \inst1|shift_reg~372_combout\ : std_logic;
SIGNAL \inst1|shift_reg~373_combout\ : std_logic;
SIGNAL \inst1|shift_reg~374_combout\ : std_logic;
SIGNAL \inst1|shift_reg~375_combout\ : std_logic;
SIGNAL \inst1|shift_reg~376_combout\ : std_logic;
SIGNAL \inst1|shift_reg~377_combout\ : std_logic;
SIGNAL \inst1|shift_reg~378_combout\ : std_logic;
SIGNAL \inst1|shift_reg~379_combout\ : std_logic;
SIGNAL \inst1|shift_reg~380_combout\ : std_logic;
SIGNAL \inst1|shift_reg~381_combout\ : std_logic;
SIGNAL \inst1|shift_reg~382_combout\ : std_logic;
SIGNAL \inst1|shift_reg~383_combout\ : std_logic;
SIGNAL \parallel_in[381]~input_o\ : std_logic;
SIGNAL \parallel_in[380]~input_o\ : std_logic;
SIGNAL \parallel_in[379]~input_o\ : std_logic;
SIGNAL \parallel_in[378]~input_o\ : std_logic;
SIGNAL \parallel_in[377]~input_o\ : std_logic;
SIGNAL \parallel_in[376]~input_o\ : std_logic;
SIGNAL \parallel_in[375]~input_o\ : std_logic;
SIGNAL \parallel_in[374]~input_o\ : std_logic;
SIGNAL \parallel_in[373]~input_o\ : std_logic;
SIGNAL \parallel_in[372]~input_o\ : std_logic;
SIGNAL \parallel_in[371]~input_o\ : std_logic;
SIGNAL \parallel_in[370]~input_o\ : std_logic;
SIGNAL \parallel_in[369]~input_o\ : std_logic;
SIGNAL \parallel_in[368]~input_o\ : std_logic;
SIGNAL \parallel_in[367]~input_o\ : std_logic;
SIGNAL \parallel_in[366]~input_o\ : std_logic;
SIGNAL \parallel_in[365]~input_o\ : std_logic;
SIGNAL \parallel_in[364]~input_o\ : std_logic;
SIGNAL \parallel_in[363]~input_o\ : std_logic;
SIGNAL \parallel_in[362]~input_o\ : std_logic;
SIGNAL \parallel_in[361]~input_o\ : std_logic;
SIGNAL \parallel_in[360]~input_o\ : std_logic;
SIGNAL \parallel_in[359]~input_o\ : std_logic;
SIGNAL \parallel_in[358]~input_o\ : std_logic;
SIGNAL \parallel_in[357]~input_o\ : std_logic;
SIGNAL \parallel_in[356]~input_o\ : std_logic;
SIGNAL \parallel_in[355]~input_o\ : std_logic;
SIGNAL \parallel_in[354]~input_o\ : std_logic;
SIGNAL \parallel_in[353]~input_o\ : std_logic;
SIGNAL \parallel_in[352]~input_o\ : std_logic;
SIGNAL \parallel_in[351]~input_o\ : std_logic;
SIGNAL \parallel_in[350]~input_o\ : std_logic;
SIGNAL \parallel_in[349]~input_o\ : std_logic;
SIGNAL \parallel_in[348]~input_o\ : std_logic;
SIGNAL \parallel_in[347]~input_o\ : std_logic;
SIGNAL \parallel_in[346]~input_o\ : std_logic;
SIGNAL \parallel_in[345]~input_o\ : std_logic;
SIGNAL \parallel_in[344]~input_o\ : std_logic;
SIGNAL \parallel_in[343]~input_o\ : std_logic;
SIGNAL \parallel_in[342]~input_o\ : std_logic;
SIGNAL \parallel_in[341]~input_o\ : std_logic;
SIGNAL \parallel_in[340]~input_o\ : std_logic;
SIGNAL \parallel_in[339]~input_o\ : std_logic;
SIGNAL \parallel_in[338]~input_o\ : std_logic;
SIGNAL \parallel_in[337]~input_o\ : std_logic;
SIGNAL \parallel_in[336]~input_o\ : std_logic;
SIGNAL \parallel_in[335]~input_o\ : std_logic;
SIGNAL \parallel_in[334]~input_o\ : std_logic;
SIGNAL \parallel_in[333]~input_o\ : std_logic;
SIGNAL \parallel_in[332]~input_o\ : std_logic;
SIGNAL \parallel_in[331]~input_o\ : std_logic;
SIGNAL \parallel_in[330]~input_o\ : std_logic;
SIGNAL \parallel_in[329]~input_o\ : std_logic;
SIGNAL \parallel_in[328]~input_o\ : std_logic;
SIGNAL \parallel_in[327]~input_o\ : std_logic;
SIGNAL \parallel_in[326]~input_o\ : std_logic;
SIGNAL \parallel_in[325]~input_o\ : std_logic;
SIGNAL \parallel_in[324]~input_o\ : std_logic;
SIGNAL \parallel_in[323]~input_o\ : std_logic;
SIGNAL \parallel_in[322]~input_o\ : std_logic;
SIGNAL \parallel_in[321]~input_o\ : std_logic;
SIGNAL \parallel_in[320]~input_o\ : std_logic;
SIGNAL \parallel_in[319]~input_o\ : std_logic;
SIGNAL \parallel_in[318]~input_o\ : std_logic;
SIGNAL \parallel_in[317]~input_o\ : std_logic;
SIGNAL \parallel_in[316]~input_o\ : std_logic;
SIGNAL \parallel_in[315]~input_o\ : std_logic;
SIGNAL \parallel_in[314]~input_o\ : std_logic;
SIGNAL \parallel_in[313]~input_o\ : std_logic;
SIGNAL \parallel_in[312]~input_o\ : std_logic;
SIGNAL \parallel_in[311]~input_o\ : std_logic;
SIGNAL \parallel_in[310]~input_o\ : std_logic;
SIGNAL \parallel_in[309]~input_o\ : std_logic;
SIGNAL \parallel_in[308]~input_o\ : std_logic;
SIGNAL \parallel_in[307]~input_o\ : std_logic;
SIGNAL \parallel_in[306]~input_o\ : std_logic;
SIGNAL \parallel_in[305]~input_o\ : std_logic;
SIGNAL \parallel_in[304]~input_o\ : std_logic;
SIGNAL \parallel_in[303]~input_o\ : std_logic;
SIGNAL \parallel_in[302]~input_o\ : std_logic;
SIGNAL \parallel_in[301]~input_o\ : std_logic;
SIGNAL \parallel_in[300]~input_o\ : std_logic;
SIGNAL \parallel_in[299]~input_o\ : std_logic;
SIGNAL \parallel_in[298]~input_o\ : std_logic;
SIGNAL \parallel_in[297]~input_o\ : std_logic;
SIGNAL \parallel_in[296]~input_o\ : std_logic;
SIGNAL \parallel_in[295]~input_o\ : std_logic;
SIGNAL \parallel_in[294]~input_o\ : std_logic;
SIGNAL \parallel_in[293]~input_o\ : std_logic;
SIGNAL \parallel_in[292]~input_o\ : std_logic;
SIGNAL \parallel_in[291]~input_o\ : std_logic;
SIGNAL \parallel_in[290]~input_o\ : std_logic;
SIGNAL \parallel_in[289]~input_o\ : std_logic;
SIGNAL \parallel_in[288]~input_o\ : std_logic;
SIGNAL \parallel_in[287]~input_o\ : std_logic;
SIGNAL \parallel_in[286]~input_o\ : std_logic;
SIGNAL \parallel_in[285]~input_o\ : std_logic;
SIGNAL \parallel_in[284]~input_o\ : std_logic;
SIGNAL \parallel_in[283]~input_o\ : std_logic;
SIGNAL \parallel_in[282]~input_o\ : std_logic;
SIGNAL \parallel_in[281]~input_o\ : std_logic;
SIGNAL \parallel_in[280]~input_o\ : std_logic;
SIGNAL \parallel_in[279]~input_o\ : std_logic;
SIGNAL \parallel_in[278]~input_o\ : std_logic;
SIGNAL \parallel_in[277]~input_o\ : std_logic;
SIGNAL \parallel_in[276]~input_o\ : std_logic;
SIGNAL \parallel_in[275]~input_o\ : std_logic;
SIGNAL \parallel_in[274]~input_o\ : std_logic;
SIGNAL \parallel_in[273]~input_o\ : std_logic;
SIGNAL \parallel_in[272]~input_o\ : std_logic;
SIGNAL \parallel_in[271]~input_o\ : std_logic;
SIGNAL \parallel_in[270]~input_o\ : std_logic;
SIGNAL \parallel_in[269]~input_o\ : std_logic;
SIGNAL \parallel_in[268]~input_o\ : std_logic;
SIGNAL \parallel_in[267]~input_o\ : std_logic;
SIGNAL \parallel_in[266]~input_o\ : std_logic;
SIGNAL \parallel_in[265]~input_o\ : std_logic;
SIGNAL \parallel_in[264]~input_o\ : std_logic;
SIGNAL \parallel_in[263]~input_o\ : std_logic;
SIGNAL \parallel_in[262]~input_o\ : std_logic;
SIGNAL \parallel_in[261]~input_o\ : std_logic;
SIGNAL \parallel_in[260]~input_o\ : std_logic;
SIGNAL \parallel_in[259]~input_o\ : std_logic;
SIGNAL \parallel_in[258]~input_o\ : std_logic;
SIGNAL \parallel_in[257]~input_o\ : std_logic;
SIGNAL \parallel_in[256]~input_o\ : std_logic;
SIGNAL \parallel_in[255]~input_o\ : std_logic;
SIGNAL \parallel_in[254]~input_o\ : std_logic;
SIGNAL \parallel_in[253]~input_o\ : std_logic;
SIGNAL \parallel_in[252]~input_o\ : std_logic;
SIGNAL \parallel_in[251]~input_o\ : std_logic;
SIGNAL \parallel_in[250]~input_o\ : std_logic;
SIGNAL \parallel_in[249]~input_o\ : std_logic;
SIGNAL \parallel_in[248]~input_o\ : std_logic;
SIGNAL \parallel_in[247]~input_o\ : std_logic;
SIGNAL \parallel_in[246]~input_o\ : std_logic;
SIGNAL \parallel_in[245]~input_o\ : std_logic;
SIGNAL \parallel_in[244]~input_o\ : std_logic;
SIGNAL \parallel_in[243]~input_o\ : std_logic;
SIGNAL \parallel_in[242]~input_o\ : std_logic;
SIGNAL \parallel_in[241]~input_o\ : std_logic;
SIGNAL \parallel_in[240]~input_o\ : std_logic;
SIGNAL \parallel_in[239]~input_o\ : std_logic;
SIGNAL \parallel_in[238]~input_o\ : std_logic;
SIGNAL \parallel_in[237]~input_o\ : std_logic;
SIGNAL \parallel_in[236]~input_o\ : std_logic;
SIGNAL \parallel_in[235]~input_o\ : std_logic;
SIGNAL \parallel_in[234]~input_o\ : std_logic;
SIGNAL \parallel_in[233]~input_o\ : std_logic;
SIGNAL \parallel_in[232]~input_o\ : std_logic;
SIGNAL \parallel_in[231]~input_o\ : std_logic;
SIGNAL \parallel_in[230]~input_o\ : std_logic;
SIGNAL \parallel_in[229]~input_o\ : std_logic;
SIGNAL \parallel_in[228]~input_o\ : std_logic;
SIGNAL \parallel_in[227]~input_o\ : std_logic;
SIGNAL \parallel_in[226]~input_o\ : std_logic;
SIGNAL \parallel_in[225]~input_o\ : std_logic;
SIGNAL \parallel_in[224]~input_o\ : std_logic;
SIGNAL \parallel_in[223]~input_o\ : std_logic;
SIGNAL \parallel_in[222]~input_o\ : std_logic;
SIGNAL \parallel_in[221]~input_o\ : std_logic;
SIGNAL \parallel_in[220]~input_o\ : std_logic;
SIGNAL \parallel_in[219]~input_o\ : std_logic;
SIGNAL \parallel_in[218]~input_o\ : std_logic;
SIGNAL \parallel_in[217]~input_o\ : std_logic;
SIGNAL \parallel_in[216]~input_o\ : std_logic;
SIGNAL \parallel_in[215]~input_o\ : std_logic;
SIGNAL \parallel_in[214]~input_o\ : std_logic;
SIGNAL \parallel_in[213]~input_o\ : std_logic;
SIGNAL \parallel_in[212]~input_o\ : std_logic;
SIGNAL \parallel_in[211]~input_o\ : std_logic;
SIGNAL \parallel_in[210]~input_o\ : std_logic;
SIGNAL \parallel_in[209]~input_o\ : std_logic;
SIGNAL \parallel_in[208]~input_o\ : std_logic;
SIGNAL \parallel_in[207]~input_o\ : std_logic;
SIGNAL \parallel_in[206]~input_o\ : std_logic;
SIGNAL \parallel_in[205]~input_o\ : std_logic;
SIGNAL \parallel_in[204]~input_o\ : std_logic;
SIGNAL \parallel_in[203]~input_o\ : std_logic;
SIGNAL \parallel_in[202]~input_o\ : std_logic;
SIGNAL \parallel_in[201]~input_o\ : std_logic;
SIGNAL \parallel_in[200]~input_o\ : std_logic;
SIGNAL \parallel_in[199]~input_o\ : std_logic;
SIGNAL \parallel_in[198]~input_o\ : std_logic;
SIGNAL \parallel_in[197]~input_o\ : std_logic;
SIGNAL \parallel_in[196]~input_o\ : std_logic;
SIGNAL \parallel_in[195]~input_o\ : std_logic;
SIGNAL \parallel_in[194]~input_o\ : std_logic;
SIGNAL \parallel_in[193]~input_o\ : std_logic;
SIGNAL \parallel_in[192]~input_o\ : std_logic;
SIGNAL \parallel_in[191]~input_o\ : std_logic;
SIGNAL \parallel_in[190]~input_o\ : std_logic;
SIGNAL \parallel_in[189]~input_o\ : std_logic;
SIGNAL \parallel_in[188]~input_o\ : std_logic;
SIGNAL \parallel_in[187]~input_o\ : std_logic;
SIGNAL \parallel_in[186]~input_o\ : std_logic;
SIGNAL \parallel_in[185]~input_o\ : std_logic;
SIGNAL \parallel_in[184]~input_o\ : std_logic;
SIGNAL \parallel_in[183]~input_o\ : std_logic;
SIGNAL \parallel_in[182]~input_o\ : std_logic;
SIGNAL \parallel_in[181]~input_o\ : std_logic;
SIGNAL \parallel_in[180]~input_o\ : std_logic;
SIGNAL \parallel_in[179]~input_o\ : std_logic;
SIGNAL \parallel_in[178]~input_o\ : std_logic;
SIGNAL \parallel_in[177]~input_o\ : std_logic;
SIGNAL \parallel_in[176]~input_o\ : std_logic;
SIGNAL \parallel_in[175]~input_o\ : std_logic;
SIGNAL \parallel_in[174]~input_o\ : std_logic;
SIGNAL \parallel_in[173]~input_o\ : std_logic;
SIGNAL \parallel_in[172]~input_o\ : std_logic;
SIGNAL \parallel_in[171]~input_o\ : std_logic;
SIGNAL \parallel_in[170]~input_o\ : std_logic;
SIGNAL \parallel_in[169]~input_o\ : std_logic;
SIGNAL \parallel_in[168]~input_o\ : std_logic;
SIGNAL \parallel_in[167]~input_o\ : std_logic;
SIGNAL \parallel_in[166]~input_o\ : std_logic;
SIGNAL \parallel_in[165]~input_o\ : std_logic;
SIGNAL \parallel_in[164]~input_o\ : std_logic;
SIGNAL \parallel_in[163]~input_o\ : std_logic;
SIGNAL \parallel_in[162]~input_o\ : std_logic;
SIGNAL \parallel_in[161]~input_o\ : std_logic;
SIGNAL \parallel_in[160]~input_o\ : std_logic;
SIGNAL \parallel_in[159]~input_o\ : std_logic;
SIGNAL \parallel_in[158]~input_o\ : std_logic;
SIGNAL \parallel_in[157]~input_o\ : std_logic;
SIGNAL \parallel_in[156]~input_o\ : std_logic;
SIGNAL \parallel_in[155]~input_o\ : std_logic;
SIGNAL \parallel_in[154]~input_o\ : std_logic;
SIGNAL \parallel_in[153]~input_o\ : std_logic;
SIGNAL \parallel_in[152]~input_o\ : std_logic;
SIGNAL \parallel_in[151]~input_o\ : std_logic;
SIGNAL \parallel_in[150]~input_o\ : std_logic;
SIGNAL \parallel_in[149]~input_o\ : std_logic;
SIGNAL \parallel_in[148]~input_o\ : std_logic;
SIGNAL \parallel_in[147]~input_o\ : std_logic;
SIGNAL \parallel_in[146]~input_o\ : std_logic;
SIGNAL \parallel_in[145]~input_o\ : std_logic;
SIGNAL \parallel_in[144]~input_o\ : std_logic;
SIGNAL \parallel_in[143]~input_o\ : std_logic;
SIGNAL \parallel_in[142]~input_o\ : std_logic;
SIGNAL \parallel_in[141]~input_o\ : std_logic;
SIGNAL \parallel_in[140]~input_o\ : std_logic;
SIGNAL \parallel_in[139]~input_o\ : std_logic;
SIGNAL \parallel_in[138]~input_o\ : std_logic;
SIGNAL \parallel_in[137]~input_o\ : std_logic;
SIGNAL \parallel_in[136]~input_o\ : std_logic;
SIGNAL \parallel_in[135]~input_o\ : std_logic;
SIGNAL \parallel_in[134]~input_o\ : std_logic;
SIGNAL \parallel_in[133]~input_o\ : std_logic;
SIGNAL \parallel_in[132]~input_o\ : std_logic;
SIGNAL \parallel_in[131]~input_o\ : std_logic;
SIGNAL \parallel_in[130]~input_o\ : std_logic;
SIGNAL \parallel_in[129]~input_o\ : std_logic;
SIGNAL \parallel_in[128]~input_o\ : std_logic;
SIGNAL \parallel_in[127]~input_o\ : std_logic;
SIGNAL \parallel_in[126]~input_o\ : std_logic;
SIGNAL \parallel_in[125]~input_o\ : std_logic;
SIGNAL \parallel_in[124]~input_o\ : std_logic;
SIGNAL \parallel_in[123]~input_o\ : std_logic;
SIGNAL \parallel_in[122]~input_o\ : std_logic;
SIGNAL \parallel_in[121]~input_o\ : std_logic;
SIGNAL \parallel_in[120]~input_o\ : std_logic;
SIGNAL \parallel_in[119]~input_o\ : std_logic;
SIGNAL \parallel_in[118]~input_o\ : std_logic;
SIGNAL \parallel_in[117]~input_o\ : std_logic;
SIGNAL \parallel_in[116]~input_o\ : std_logic;
SIGNAL \parallel_in[115]~input_o\ : std_logic;
SIGNAL \parallel_in[114]~input_o\ : std_logic;
SIGNAL \parallel_in[113]~input_o\ : std_logic;
SIGNAL \parallel_in[112]~input_o\ : std_logic;
SIGNAL \parallel_in[111]~input_o\ : std_logic;
SIGNAL \parallel_in[110]~input_o\ : std_logic;
SIGNAL \parallel_in[109]~input_o\ : std_logic;
SIGNAL \parallel_in[108]~input_o\ : std_logic;
SIGNAL \parallel_in[107]~input_o\ : std_logic;
SIGNAL \parallel_in[106]~input_o\ : std_logic;
SIGNAL \parallel_in[105]~input_o\ : std_logic;
SIGNAL \parallel_in[104]~input_o\ : std_logic;
SIGNAL \parallel_in[103]~input_o\ : std_logic;
SIGNAL \parallel_in[102]~input_o\ : std_logic;
SIGNAL \parallel_in[101]~input_o\ : std_logic;
SIGNAL \parallel_in[100]~input_o\ : std_logic;
SIGNAL \parallel_in[99]~input_o\ : std_logic;
SIGNAL \parallel_in[98]~input_o\ : std_logic;
SIGNAL \parallel_in[97]~input_o\ : std_logic;
SIGNAL \parallel_in[96]~input_o\ : std_logic;
SIGNAL \parallel_in[95]~input_o\ : std_logic;
SIGNAL \parallel_in[94]~input_o\ : std_logic;
SIGNAL \parallel_in[93]~input_o\ : std_logic;
SIGNAL \parallel_in[92]~input_o\ : std_logic;
SIGNAL \parallel_in[91]~input_o\ : std_logic;
SIGNAL \parallel_in[90]~input_o\ : std_logic;
SIGNAL \parallel_in[89]~input_o\ : std_logic;
SIGNAL \parallel_in[88]~input_o\ : std_logic;
SIGNAL \parallel_in[87]~input_o\ : std_logic;
SIGNAL \parallel_in[86]~input_o\ : std_logic;
SIGNAL \parallel_in[85]~input_o\ : std_logic;
SIGNAL \parallel_in[84]~input_o\ : std_logic;
SIGNAL \parallel_in[83]~input_o\ : std_logic;
SIGNAL \parallel_in[82]~input_o\ : std_logic;
SIGNAL \parallel_in[81]~input_o\ : std_logic;
SIGNAL \parallel_in[80]~input_o\ : std_logic;
SIGNAL \parallel_in[79]~input_o\ : std_logic;
SIGNAL \parallel_in[78]~input_o\ : std_logic;
SIGNAL \parallel_in[77]~input_o\ : std_logic;
SIGNAL \parallel_in[76]~input_o\ : std_logic;
SIGNAL \parallel_in[75]~input_o\ : std_logic;
SIGNAL \parallel_in[74]~input_o\ : std_logic;
SIGNAL \parallel_in[73]~input_o\ : std_logic;
SIGNAL \parallel_in[72]~input_o\ : std_logic;
SIGNAL \parallel_in[71]~input_o\ : std_logic;
SIGNAL \parallel_in[70]~input_o\ : std_logic;
SIGNAL \parallel_in[69]~input_o\ : std_logic;
SIGNAL \parallel_in[68]~input_o\ : std_logic;
SIGNAL \parallel_in[67]~input_o\ : std_logic;
SIGNAL \parallel_in[66]~input_o\ : std_logic;
SIGNAL \parallel_in[65]~input_o\ : std_logic;
SIGNAL \parallel_in[64]~input_o\ : std_logic;
SIGNAL \parallel_in[63]~input_o\ : std_logic;
SIGNAL \parallel_in[62]~input_o\ : std_logic;
SIGNAL \parallel_in[61]~input_o\ : std_logic;
SIGNAL \parallel_in[60]~input_o\ : std_logic;
SIGNAL \parallel_in[59]~input_o\ : std_logic;
SIGNAL \parallel_in[58]~input_o\ : std_logic;
SIGNAL \parallel_in[57]~input_o\ : std_logic;
SIGNAL \parallel_in[56]~input_o\ : std_logic;
SIGNAL \parallel_in[55]~input_o\ : std_logic;
SIGNAL \parallel_in[54]~input_o\ : std_logic;
SIGNAL \parallel_in[53]~input_o\ : std_logic;
SIGNAL \parallel_in[52]~input_o\ : std_logic;
SIGNAL \parallel_in[51]~input_o\ : std_logic;
SIGNAL \parallel_in[50]~input_o\ : std_logic;
SIGNAL \parallel_in[49]~input_o\ : std_logic;
SIGNAL \parallel_in[48]~input_o\ : std_logic;
SIGNAL \parallel_in[47]~input_o\ : std_logic;
SIGNAL \parallel_in[46]~input_o\ : std_logic;
SIGNAL \parallel_in[45]~input_o\ : std_logic;
SIGNAL \parallel_in[44]~input_o\ : std_logic;
SIGNAL \parallel_in[43]~input_o\ : std_logic;
SIGNAL \parallel_in[42]~input_o\ : std_logic;
SIGNAL \parallel_in[41]~input_o\ : std_logic;
SIGNAL \parallel_in[40]~input_o\ : std_logic;
SIGNAL \parallel_in[39]~input_o\ : std_logic;
SIGNAL \parallel_in[38]~input_o\ : std_logic;
SIGNAL \parallel_in[37]~input_o\ : std_logic;
SIGNAL \parallel_in[36]~input_o\ : std_logic;
SIGNAL \parallel_in[35]~input_o\ : std_logic;
SIGNAL \parallel_in[34]~input_o\ : std_logic;
SIGNAL \parallel_in[33]~input_o\ : std_logic;
SIGNAL \parallel_in[32]~input_o\ : std_logic;
SIGNAL \parallel_in[31]~input_o\ : std_logic;
SIGNAL \parallel_in[30]~input_o\ : std_logic;
SIGNAL \parallel_in[29]~input_o\ : std_logic;
SIGNAL \parallel_in[28]~input_o\ : std_logic;
SIGNAL \parallel_in[27]~input_o\ : std_logic;
SIGNAL \parallel_in[26]~input_o\ : std_logic;
SIGNAL \parallel_in[25]~input_o\ : std_logic;
SIGNAL \parallel_in[24]~input_o\ : std_logic;
SIGNAL \parallel_in[23]~input_o\ : std_logic;
SIGNAL \parallel_in[22]~input_o\ : std_logic;
SIGNAL \parallel_in[21]~input_o\ : std_logic;
SIGNAL \parallel_in[20]~input_o\ : std_logic;
SIGNAL \parallel_in[19]~input_o\ : std_logic;
SIGNAL \parallel_in[18]~input_o\ : std_logic;
SIGNAL \parallel_in[17]~input_o\ : std_logic;
SIGNAL \parallel_in[16]~input_o\ : std_logic;
SIGNAL \parallel_in[15]~input_o\ : std_logic;
SIGNAL \parallel_in[14]~input_o\ : std_logic;
SIGNAL \parallel_in[13]~input_o\ : std_logic;
SIGNAL \parallel_in[12]~input_o\ : std_logic;
SIGNAL \parallel_in[11]~input_o\ : std_logic;
SIGNAL \parallel_in[10]~input_o\ : std_logic;
SIGNAL \parallel_in[9]~input_o\ : std_logic;
SIGNAL \parallel_in[8]~input_o\ : std_logic;
SIGNAL \parallel_in[7]~input_o\ : std_logic;
SIGNAL \parallel_in[6]~input_o\ : std_logic;
SIGNAL \parallel_in[5]~input_o\ : std_logic;
SIGNAL \parallel_in[4]~input_o\ : std_logic;
SIGNAL \parallel_in[3]~input_o\ : std_logic;
SIGNAL \parallel_in[2]~input_o\ : std_logic;
SIGNAL \parallel_in[1]~input_o\ : std_logic;
SIGNAL \parallel_in[0]~input_o\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \areset~input_o\ : std_logic;
SIGNAL \inclk0~input_o\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \parallel_in[383]~input_o\ : std_logic;
SIGNAL \parallel_in[382]~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \inst1|shift_reg~1_combout\ : std_logic;
SIGNAL \inst1|shift_reg~0_combout\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst12|count[0]~9_combout\ : std_logic;
SIGNAL \inst12|count[6]~23\ : std_logic;
SIGNAL \inst12|count[7]~24_combout\ : std_logic;
SIGNAL \inst12|count[7]~25\ : std_logic;
SIGNAL \inst12|count[8]~26_combout\ : std_logic;
SIGNAL \inst12|count[8]~11_combout\ : std_logic;
SIGNAL \inst12|count[0]~10\ : std_logic;
SIGNAL \inst12|count[1]~13\ : std_logic;
SIGNAL \inst12|count[2]~14_combout\ : std_logic;
SIGNAL \inst12|count[2]~15\ : std_logic;
SIGNAL \inst12|count[3]~17\ : std_logic;
SIGNAL \inst12|count[4]~19\ : std_logic;
SIGNAL \inst12|count[5]~20_combout\ : std_logic;
SIGNAL \inst12|count[5]~21\ : std_logic;
SIGNAL \inst12|count[6]~22_combout\ : std_logic;
SIGNAL \inst12|count[4]~18_combout\ : std_logic;
SIGNAL \inst12|LessThan0~1_combout\ : std_logic;
SIGNAL \inst12|count[3]~16_combout\ : std_logic;
SIGNAL \inst12|LessThan0~0_combout\ : std_logic;
SIGNAL \inst12|LessThan0~2_combout\ : std_logic;
SIGNAL \inst12|pulso~0_combout\ : std_logic;
SIGNAL \inst12|activo~q\ : std_logic;
SIGNAL \inst2~1_combout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CERO_outclk\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst12|count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|shift_reg\ : std_logic_vector(383 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst12|ALT_INV_activo~q\ : std_logic;

BEGIN

locked <= ww_locked;
ww_inclk0 <= inclk0;
ww_areset <= areset;
Y <= ww_Y;
ww_load <= load;
ww_parallel_in <= parallel_in;
CERO <= ww_CERO;
UNO <= ww_UNO;
frecuencialed <= ww_frecuencialed;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \inclk0~input_o\);

\inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(2));

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CERO_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(1));
\inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\inst12|ALT_INV_activo~q\ <= NOT \inst12|activo~q\;

-- Location: FF_X41_Y1_N7
\inst12|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst12|count[1]~12_combout\,
	sclr => \inst12|ALT_INV_activo~q\,
	ena => \inst12|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count\(1));

-- Location: LCCOMB_X41_Y1_N6
\inst12|count[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|count[1]~12_combout\ = (\inst12|count\(1) & (!\inst12|count[0]~10\)) # (!\inst12|count\(1) & ((\inst12|count[0]~10\) # (GND)))
-- \inst12|count[1]~13\ = CARRY((!\inst12|count[0]~10\) # (!\inst12|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count\(1),
	datad => VCC,
	cin => \inst12|count[0]~10\,
	combout => \inst12|count[1]~12_combout\,
	cout => \inst12|count[1]~13\);

-- Location: FF_X38_Y1_N7
\inst1|shift_reg[381]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(381));

-- Location: FF_X38_Y1_N19
\inst1|shift_reg[380]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(380));

-- Location: LCCOMB_X38_Y1_N6
\inst1|shift_reg~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~2_combout\ = (\load~input_o\ & ((\parallel_in[381]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(380)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(380),
	datac => \parallel_in[381]~input_o\,
	combout => \inst1|shift_reg~2_combout\);

-- Location: FF_X38_Y1_N25
\inst1|shift_reg[379]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(379));

-- Location: LCCOMB_X38_Y1_N18
\inst1|shift_reg~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~3_combout\ = (\load~input_o\ & (\parallel_in[380]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(379))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[380]~input_o\,
	datab => \inst1|shift_reg\(379),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~3_combout\);

-- Location: FF_X38_Y1_N15
\inst1|shift_reg[378]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(378));

-- Location: LCCOMB_X38_Y1_N24
\inst1|shift_reg~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~4_combout\ = (\load~input_o\ & (\parallel_in[379]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(378))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \parallel_in[379]~input_o\,
	datac => \inst1|shift_reg\(378),
	combout => \inst1|shift_reg~4_combout\);

-- Location: FF_X38_Y1_N3
\inst1|shift_reg[377]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(377));

-- Location: LCCOMB_X38_Y1_N14
\inst1|shift_reg~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~5_combout\ = (\load~input_o\ & (\parallel_in[378]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(377))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[378]~input_o\,
	datab => \inst1|shift_reg\(377),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~5_combout\);

-- Location: FF_X38_Y1_N31
\inst1|shift_reg[376]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(376));

-- Location: LCCOMB_X38_Y1_N2
\inst1|shift_reg~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~6_combout\ = (\load~input_o\ & ((\parallel_in[377]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(376)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(376),
	datac => \load~input_o\,
	datad => \parallel_in[377]~input_o\,
	combout => \inst1|shift_reg~6_combout\);

-- Location: FF_X38_Y1_N17
\inst1|shift_reg[375]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(375));

-- Location: LCCOMB_X38_Y1_N30
\inst1|shift_reg~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~7_combout\ = (\load~input_o\ & ((\parallel_in[376]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(375)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(375),
	datac => \parallel_in[376]~input_o\,
	combout => \inst1|shift_reg~7_combout\);

-- Location: FF_X38_Y1_N23
\inst1|shift_reg[374]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(374));

-- Location: LCCOMB_X38_Y1_N16
\inst1|shift_reg~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~8_combout\ = (\load~input_o\ & ((\parallel_in[375]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(374)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(374),
	datac => \load~input_o\,
	datad => \parallel_in[375]~input_o\,
	combout => \inst1|shift_reg~8_combout\);

-- Location: FF_X38_Y1_N11
\inst1|shift_reg[373]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(373));

-- Location: LCCOMB_X38_Y1_N22
\inst1|shift_reg~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~9_combout\ = (\load~input_o\ & ((\parallel_in[374]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(373)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(373),
	datab => \parallel_in[374]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~9_combout\);

-- Location: FF_X38_Y1_N13
\inst1|shift_reg[372]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(372));

-- Location: LCCOMB_X38_Y1_N10
\inst1|shift_reg~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~10_combout\ = (\load~input_o\ & ((\parallel_in[373]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(372)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(372),
	datab => \parallel_in[373]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~10_combout\);

-- Location: FF_X38_Y1_N5
\inst1|shift_reg[371]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(371));

-- Location: LCCOMB_X38_Y1_N12
\inst1|shift_reg~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~11_combout\ = (\load~input_o\ & ((\parallel_in[372]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(371)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(371),
	datac => \parallel_in[372]~input_o\,
	combout => \inst1|shift_reg~11_combout\);

-- Location: FF_X38_Y1_N29
\inst1|shift_reg[370]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(370));

-- Location: LCCOMB_X38_Y1_N4
\inst1|shift_reg~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~12_combout\ = (\load~input_o\ & (\parallel_in[371]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(370))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[371]~input_o\,
	datab => \inst1|shift_reg\(370),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~12_combout\);

-- Location: FF_X38_Y1_N21
\inst1|shift_reg[369]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(369));

-- Location: LCCOMB_X38_Y1_N28
\inst1|shift_reg~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~13_combout\ = (\load~input_o\ & ((\parallel_in[370]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(369)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(369),
	datac => \parallel_in[370]~input_o\,
	combout => \inst1|shift_reg~13_combout\);

-- Location: FF_X27_Y1_N9
\inst1|shift_reg[368]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(368));

-- Location: LCCOMB_X38_Y1_N20
\inst1|shift_reg~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~14_combout\ = (\load~input_o\ & ((\parallel_in[369]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(368)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(368),
	datab => \parallel_in[369]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~14_combout\);

-- Location: FF_X27_Y1_N3
\inst1|shift_reg[367]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(367));

-- Location: LCCOMB_X27_Y1_N8
\inst1|shift_reg~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~15_combout\ = (\load~input_o\ & ((\parallel_in[368]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(367)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(367),
	datac => \parallel_in[368]~input_o\,
	combout => \inst1|shift_reg~15_combout\);

-- Location: FF_X27_Y1_N21
\inst1|shift_reg[366]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(366));

-- Location: LCCOMB_X27_Y1_N2
\inst1|shift_reg~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~16_combout\ = (\load~input_o\ & ((\parallel_in[367]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(366)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(366),
	datac => \parallel_in[367]~input_o\,
	combout => \inst1|shift_reg~16_combout\);

-- Location: FF_X27_Y1_N31
\inst1|shift_reg[365]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(365));

-- Location: LCCOMB_X27_Y1_N20
\inst1|shift_reg~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~17_combout\ = (\load~input_o\ & (\parallel_in[366]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(365))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \parallel_in[366]~input_o\,
	datac => \inst1|shift_reg\(365),
	combout => \inst1|shift_reg~17_combout\);

-- Location: FF_X27_Y1_N1
\inst1|shift_reg[364]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(364));

-- Location: LCCOMB_X27_Y1_N30
\inst1|shift_reg~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~18_combout\ = (\load~input_o\ & (\parallel_in[365]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(364))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[365]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(364),
	combout => \inst1|shift_reg~18_combout\);

-- Location: FF_X27_Y1_N19
\inst1|shift_reg[363]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(363));

-- Location: LCCOMB_X27_Y1_N0
\inst1|shift_reg~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~19_combout\ = (\load~input_o\ & (\parallel_in[364]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(363))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[364]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(363),
	combout => \inst1|shift_reg~19_combout\);

-- Location: FF_X27_Y1_N5
\inst1|shift_reg[362]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(362));

-- Location: LCCOMB_X27_Y1_N18
\inst1|shift_reg~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~20_combout\ = (\load~input_o\ & ((\parallel_in[363]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(362)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(362),
	datac => \parallel_in[363]~input_o\,
	combout => \inst1|shift_reg~20_combout\);

-- Location: FF_X27_Y1_N23
\inst1|shift_reg[361]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(361));

-- Location: LCCOMB_X27_Y1_N4
\inst1|shift_reg~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~21_combout\ = (\load~input_o\ & (\parallel_in[362]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(361))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \parallel_in[362]~input_o\,
	datac => \inst1|shift_reg\(361),
	combout => \inst1|shift_reg~21_combout\);

-- Location: FF_X27_Y1_N17
\inst1|shift_reg[360]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(360));

-- Location: LCCOMB_X27_Y1_N22
\inst1|shift_reg~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~22_combout\ = (\load~input_o\ & ((\parallel_in[361]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(360)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(360),
	datac => \parallel_in[361]~input_o\,
	combout => \inst1|shift_reg~22_combout\);

-- Location: FF_X27_Y1_N27
\inst1|shift_reg[359]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(359));

-- Location: LCCOMB_X27_Y1_N16
\inst1|shift_reg~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~23_combout\ = (\load~input_o\ & (\parallel_in[360]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(359))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \parallel_in[360]~input_o\,
	datac => \inst1|shift_reg\(359),
	combout => \inst1|shift_reg~23_combout\);

-- Location: FF_X27_Y1_N13
\inst1|shift_reg[358]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(358));

-- Location: LCCOMB_X27_Y1_N26
\inst1|shift_reg~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~24_combout\ = (\load~input_o\ & ((\parallel_in[359]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(358)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(358),
	datac => \load~input_o\,
	datad => \parallel_in[359]~input_o\,
	combout => \inst1|shift_reg~24_combout\);

-- Location: FF_X27_Y1_N7
\inst1|shift_reg[357]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(357));

-- Location: LCCOMB_X27_Y1_N12
\inst1|shift_reg~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~25_combout\ = (\load~input_o\ & (\parallel_in[358]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(357))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[358]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(357),
	combout => \inst1|shift_reg~25_combout\);

-- Location: FF_X27_Y1_N25
\inst1|shift_reg[356]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(356));

-- Location: LCCOMB_X27_Y1_N6
\inst1|shift_reg~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~26_combout\ = (\load~input_o\ & (\parallel_in[357]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(356))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[357]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(356),
	combout => \inst1|shift_reg~26_combout\);

-- Location: FF_X27_Y1_N11
\inst1|shift_reg[355]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(355));

-- Location: LCCOMB_X27_Y1_N24
\inst1|shift_reg~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~27_combout\ = (\load~input_o\ & ((\parallel_in[356]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(355)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(355),
	datab => \parallel_in[356]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~27_combout\);

-- Location: FF_X27_Y1_N29
\inst1|shift_reg[354]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(354));

-- Location: LCCOMB_X27_Y1_N10
\inst1|shift_reg~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~28_combout\ = (\load~input_o\ & (\parallel_in[355]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(354))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[355]~input_o\,
	datab => \inst1|shift_reg\(354),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~28_combout\);

-- Location: FF_X27_Y1_N15
\inst1|shift_reg[353]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(353));

-- Location: LCCOMB_X27_Y1_N28
\inst1|shift_reg~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~29_combout\ = (\load~input_o\ & (\parallel_in[354]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(353))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[354]~input_o\,
	datab => \inst1|shift_reg\(353),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~29_combout\);

-- Location: FF_X46_Y1_N9
\inst1|shift_reg[352]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(352));

-- Location: LCCOMB_X27_Y1_N14
\inst1|shift_reg~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~30_combout\ = (\load~input_o\ & (\parallel_in[353]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(352))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[353]~input_o\,
	datab => \inst1|shift_reg\(352),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~30_combout\);

-- Location: FF_X46_Y1_N3
\inst1|shift_reg[351]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(351));

-- Location: LCCOMB_X46_Y1_N8
\inst1|shift_reg~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~31_combout\ = (\load~input_o\ & (\parallel_in[352]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(351))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[352]~input_o\,
	datab => \inst1|shift_reg\(351),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~31_combout\);

-- Location: FF_X46_Y1_N13
\inst1|shift_reg[350]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(350));

-- Location: LCCOMB_X46_Y1_N2
\inst1|shift_reg~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~32_combout\ = (\load~input_o\ & ((\parallel_in[351]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(350)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(350),
	datab => \parallel_in[351]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~32_combout\);

-- Location: FF_X46_Y1_N7
\inst1|shift_reg[349]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(349));

-- Location: LCCOMB_X46_Y1_N12
\inst1|shift_reg~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~33_combout\ = (\load~input_o\ & (\parallel_in[350]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(349))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[350]~input_o\,
	datab => \load~input_o\,
	datad => \inst1|shift_reg\(349),
	combout => \inst1|shift_reg~33_combout\);

-- Location: FF_X61_Y1_N1
\inst1|shift_reg[348]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(348));

-- Location: LCCOMB_X46_Y1_N6
\inst1|shift_reg~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~34_combout\ = (\load~input_o\ & (\parallel_in[349]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(348))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[349]~input_o\,
	datac => \inst1|shift_reg\(348),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~34_combout\);

-- Location: FF_X61_Y1_N27
\inst1|shift_reg[347]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(347));

-- Location: LCCOMB_X61_Y1_N0
\inst1|shift_reg~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~35_combout\ = (\load~input_o\ & (\parallel_in[348]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(347))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[348]~input_o\,
	datac => \inst1|shift_reg\(347),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~35_combout\);

-- Location: FF_X61_Y1_N21
\inst1|shift_reg[346]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(346));

-- Location: LCCOMB_X61_Y1_N26
\inst1|shift_reg~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~36_combout\ = (\load~input_o\ & ((\parallel_in[347]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(346)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(346),
	datac => \parallel_in[347]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~36_combout\);

-- Location: FF_X61_Y1_N31
\inst1|shift_reg[345]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(345));

-- Location: LCCOMB_X61_Y1_N20
\inst1|shift_reg~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~37_combout\ = (\load~input_o\ & (\parallel_in[346]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(345))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[346]~input_o\,
	datac => \inst1|shift_reg\(345),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~37_combout\);

-- Location: FF_X61_Y1_N9
\inst1|shift_reg[344]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(344));

-- Location: LCCOMB_X61_Y1_N30
\inst1|shift_reg~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~38_combout\ = (\load~input_o\ & (\parallel_in[345]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(344))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[345]~input_o\,
	datac => \inst1|shift_reg\(344),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~38_combout\);

-- Location: FF_X61_Y1_N11
\inst1|shift_reg[343]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(343));

-- Location: LCCOMB_X61_Y1_N8
\inst1|shift_reg~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~39_combout\ = (\load~input_o\ & ((\parallel_in[344]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(343)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(343),
	datab => \parallel_in[344]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~39_combout\);

-- Location: FF_X61_Y1_N29
\inst1|shift_reg[342]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(342));

-- Location: LCCOMB_X61_Y1_N10
\inst1|shift_reg~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~40_combout\ = (\load~input_o\ & ((\parallel_in[343]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(342)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(342),
	datac => \parallel_in[343]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~40_combout\);

-- Location: FF_X61_Y1_N15
\inst1|shift_reg[341]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(341));

-- Location: LCCOMB_X61_Y1_N28
\inst1|shift_reg~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~41_combout\ = (\load~input_o\ & (\parallel_in[342]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(341))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[342]~input_o\,
	datac => \inst1|shift_reg\(341),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~41_combout\);

-- Location: FF_X61_Y1_N25
\inst1|shift_reg[340]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(340));

-- Location: LCCOMB_X61_Y1_N14
\inst1|shift_reg~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~42_combout\ = (\load~input_o\ & ((\parallel_in[341]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(340)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(340),
	datac => \parallel_in[341]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~42_combout\);

-- Location: FF_X61_Y1_N19
\inst1|shift_reg[339]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(339));

-- Location: LCCOMB_X61_Y1_N24
\inst1|shift_reg~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~43_combout\ = (\load~input_o\ & (\parallel_in[340]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(339))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[340]~input_o\,
	datab => \inst1|shift_reg\(339),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~43_combout\);

-- Location: FF_X61_Y1_N5
\inst1|shift_reg[338]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(338));

-- Location: LCCOMB_X61_Y1_N18
\inst1|shift_reg~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~44_combout\ = (\load~input_o\ & (\parallel_in[339]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(338))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[339]~input_o\,
	datac => \inst1|shift_reg\(338),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~44_combout\);

-- Location: FF_X61_Y1_N7
\inst1|shift_reg[337]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(337));

-- Location: LCCOMB_X61_Y1_N4
\inst1|shift_reg~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~45_combout\ = (\load~input_o\ & ((\parallel_in[338]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(337)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(337),
	datac => \parallel_in[338]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~45_combout\);

-- Location: FF_X61_Y1_N17
\inst1|shift_reg[336]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(336));

-- Location: LCCOMB_X61_Y1_N6
\inst1|shift_reg~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~46_combout\ = (\load~input_o\ & (\parallel_in[337]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(336))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[337]~input_o\,
	datab => \inst1|shift_reg\(336),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~46_combout\);

-- Location: FF_X61_Y1_N3
\inst1|shift_reg[335]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(335));

-- Location: LCCOMB_X61_Y1_N16
\inst1|shift_reg~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~47_combout\ = (\load~input_o\ & ((\parallel_in[336]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(335)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(335),
	datac => \parallel_in[336]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~47_combout\);

-- Location: FF_X61_Y1_N13
\inst1|shift_reg[334]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(334));

-- Location: LCCOMB_X61_Y1_N2
\inst1|shift_reg~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~48_combout\ = (\load~input_o\ & ((\parallel_in[335]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(334)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(334),
	datac => \parallel_in[335]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~48_combout\);

-- Location: FF_X61_Y1_N23
\inst1|shift_reg[333]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(333));

-- Location: LCCOMB_X61_Y1_N12
\inst1|shift_reg~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~49_combout\ = (\load~input_o\ & ((\parallel_in[334]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(333)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(333),
	datac => \parallel_in[334]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~49_combout\);

-- Location: FF_X85_Y1_N17
\inst1|shift_reg[332]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(332));

-- Location: LCCOMB_X61_Y1_N22
\inst1|shift_reg~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~50_combout\ = (\load~input_o\ & (\parallel_in[333]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(332))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[333]~input_o\,
	datac => \inst1|shift_reg\(332),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~50_combout\);

-- Location: FF_X85_Y1_N19
\inst1|shift_reg[331]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(331));

-- Location: LCCOMB_X85_Y1_N16
\inst1|shift_reg~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~51_combout\ = (\load~input_o\ & ((\parallel_in[332]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(331)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(331),
	datac => \load~input_o\,
	datad => \parallel_in[332]~input_o\,
	combout => \inst1|shift_reg~51_combout\);

-- Location: FF_X85_Y1_N21
\inst1|shift_reg[330]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(330));

-- Location: LCCOMB_X85_Y1_N18
\inst1|shift_reg~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~52_combout\ = (\load~input_o\ & (\parallel_in[331]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(330))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[331]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(330),
	combout => \inst1|shift_reg~52_combout\);

-- Location: FF_X85_Y1_N7
\inst1|shift_reg[329]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(329));

-- Location: LCCOMB_X85_Y1_N20
\inst1|shift_reg~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~53_combout\ = (\load~input_o\ & (\parallel_in[330]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(329))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[330]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(329),
	combout => \inst1|shift_reg~53_combout\);

-- Location: FF_X85_Y1_N9
\inst1|shift_reg[328]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(328));

-- Location: LCCOMB_X85_Y1_N6
\inst1|shift_reg~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~54_combout\ = (\load~input_o\ & (\parallel_in[329]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(328))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[329]~input_o\,
	datab => \inst1|shift_reg\(328),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~54_combout\);

-- Location: FF_X85_Y1_N3
\inst1|shift_reg[327]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(327));

-- Location: LCCOMB_X85_Y1_N8
\inst1|shift_reg~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~55_combout\ = (\load~input_o\ & (\parallel_in[328]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(327))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[328]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(327),
	combout => \inst1|shift_reg~55_combout\);

-- Location: FF_X85_Y1_N13
\inst1|shift_reg[326]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(326));

-- Location: LCCOMB_X85_Y1_N2
\inst1|shift_reg~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~56_combout\ = (\load~input_o\ & (\parallel_in[327]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(326))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[327]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(326),
	combout => \inst1|shift_reg~56_combout\);

-- Location: FF_X85_Y1_N23
\inst1|shift_reg[325]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(325));

-- Location: LCCOMB_X85_Y1_N12
\inst1|shift_reg~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~57_combout\ = (\load~input_o\ & ((\parallel_in[326]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(325)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(325),
	datac => \load~input_o\,
	datad => \parallel_in[326]~input_o\,
	combout => \inst1|shift_reg~57_combout\);

-- Location: FF_X85_Y1_N25
\inst1|shift_reg[324]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(324));

-- Location: LCCOMB_X85_Y1_N22
\inst1|shift_reg~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~58_combout\ = (\load~input_o\ & ((\parallel_in[325]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(324)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(324),
	datac => \load~input_o\,
	datad => \parallel_in[325]~input_o\,
	combout => \inst1|shift_reg~58_combout\);

-- Location: FF_X85_Y1_N27
\inst1|shift_reg[323]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(323));

-- Location: LCCOMB_X85_Y1_N24
\inst1|shift_reg~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~59_combout\ = (\load~input_o\ & (\parallel_in[324]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(323))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[324]~input_o\,
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(323),
	combout => \inst1|shift_reg~59_combout\);

-- Location: FF_X85_Y1_N5
\inst1|shift_reg[322]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(322));

-- Location: LCCOMB_X85_Y1_N26
\inst1|shift_reg~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~60_combout\ = (\load~input_o\ & ((\parallel_in[323]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(322)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(322),
	datac => \load~input_o\,
	datad => \parallel_in[323]~input_o\,
	combout => \inst1|shift_reg~60_combout\);

-- Location: FF_X85_Y1_N31
\inst1|shift_reg[321]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(321));

-- Location: LCCOMB_X85_Y1_N4
\inst1|shift_reg~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~61_combout\ = (\load~input_o\ & ((\parallel_in[322]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(321)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(321),
	datab => \parallel_in[322]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~61_combout\);

-- Location: FF_X85_Y1_N1
\inst1|shift_reg[320]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(320));

-- Location: LCCOMB_X85_Y1_N30
\inst1|shift_reg~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~62_combout\ = (\load~input_o\ & (\parallel_in[321]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(320))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[321]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(320),
	combout => \inst1|shift_reg~62_combout\);

-- Location: FF_X85_Y1_N11
\inst1|shift_reg[319]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(319));

-- Location: LCCOMB_X85_Y1_N0
\inst1|shift_reg~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~63_combout\ = (\load~input_o\ & ((\parallel_in[320]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(319)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(319),
	datab => \parallel_in[320]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~63_combout\);

-- Location: FF_X85_Y1_N29
\inst1|shift_reg[318]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(318));

-- Location: LCCOMB_X85_Y1_N10
\inst1|shift_reg~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~64_combout\ = (\load~input_o\ & (\parallel_in[319]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(318))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[319]~input_o\,
	datab => \inst1|shift_reg\(318),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~64_combout\);

-- Location: FF_X85_Y1_N15
\inst1|shift_reg[317]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(317));

-- Location: LCCOMB_X85_Y1_N28
\inst1|shift_reg~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~65_combout\ = (\load~input_o\ & ((\parallel_in[318]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(317)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(317),
	datac => \load~input_o\,
	datad => \parallel_in[318]~input_o\,
	combout => \inst1|shift_reg~65_combout\);

-- Location: FF_X45_Y90_N25
\inst1|shift_reg[316]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(316));

-- Location: LCCOMB_X85_Y1_N14
\inst1|shift_reg~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~66_combout\ = (\load~input_o\ & ((\parallel_in[317]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(316)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(316),
	datac => \load~input_o\,
	datad => \parallel_in[317]~input_o\,
	combout => \inst1|shift_reg~66_combout\);

-- Location: FF_X45_Y90_N27
\inst1|shift_reg[315]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(315));

-- Location: LCCOMB_X45_Y90_N24
\inst1|shift_reg~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~67_combout\ = (\load~input_o\ & ((\parallel_in[316]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(315)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(315),
	datac => \parallel_in[316]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~67_combout\);

-- Location: FF_X45_Y90_N21
\inst1|shift_reg[314]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(314));

-- Location: LCCOMB_X45_Y90_N26
\inst1|shift_reg~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~68_combout\ = (\load~input_o\ & (\parallel_in[315]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(314))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[315]~input_o\,
	datab => \inst1|shift_reg\(314),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~68_combout\);

-- Location: FF_X45_Y90_N23
\inst1|shift_reg[313]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(313));

-- Location: LCCOMB_X45_Y90_N20
\inst1|shift_reg~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~69_combout\ = (\load~input_o\ & (\parallel_in[314]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(313))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[314]~input_o\,
	datac => \inst1|shift_reg\(313),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~69_combout\);

-- Location: FF_X45_Y90_N9
\inst1|shift_reg[312]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(312));

-- Location: LCCOMB_X45_Y90_N22
\inst1|shift_reg~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~70_combout\ = (\load~input_o\ & (\parallel_in[313]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(312))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[313]~input_o\,
	datac => \inst1|shift_reg\(312),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~70_combout\);

-- Location: FF_X45_Y90_N3
\inst1|shift_reg[311]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(311));

-- Location: LCCOMB_X45_Y90_N8
\inst1|shift_reg~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~71_combout\ = (\load~input_o\ & ((\parallel_in[312]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(311)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(311),
	datac => \parallel_in[312]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~71_combout\);

-- Location: FF_X45_Y90_N13
\inst1|shift_reg[310]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(310));

-- Location: LCCOMB_X45_Y90_N2
\inst1|shift_reg~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~72_combout\ = (\load~input_o\ & ((\parallel_in[311]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(310)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(310),
	datab => \parallel_in[311]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~72_combout\);

-- Location: FF_X45_Y90_N7
\inst1|shift_reg[309]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(309));

-- Location: LCCOMB_X45_Y90_N12
\inst1|shift_reg~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~73_combout\ = (\load~input_o\ & ((\parallel_in[310]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(309)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(309),
	datab => \parallel_in[310]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~73_combout\);

-- Location: FF_X45_Y90_N1
\inst1|shift_reg[308]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(308));

-- Location: LCCOMB_X45_Y90_N6
\inst1|shift_reg~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~74_combout\ = (\load~input_o\ & (\parallel_in[309]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(308))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[309]~input_o\,
	datab => \inst1|shift_reg\(308),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~74_combout\);

-- Location: FF_X45_Y90_N11
\inst1|shift_reg[307]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(307));

-- Location: LCCOMB_X45_Y90_N0
\inst1|shift_reg~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~75_combout\ = (\load~input_o\ & ((\parallel_in[308]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(307)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(307),
	datab => \parallel_in[308]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~75_combout\);

-- Location: FF_X45_Y90_N29
\inst1|shift_reg[306]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(306));

-- Location: LCCOMB_X45_Y90_N10
\inst1|shift_reg~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~76_combout\ = (\load~input_o\ & ((\parallel_in[307]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(306)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(306),
	datac => \parallel_in[307]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~76_combout\);

-- Location: FF_X45_Y90_N31
\inst1|shift_reg[305]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(305));

-- Location: LCCOMB_X45_Y90_N28
\inst1|shift_reg~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~77_combout\ = (\load~input_o\ & (\parallel_in[306]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(305))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[306]~input_o\,
	datac => \inst1|shift_reg\(305),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~77_combout\);

-- Location: FF_X45_Y90_N17
\inst1|shift_reg[304]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(304));

-- Location: LCCOMB_X45_Y90_N30
\inst1|shift_reg~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~78_combout\ = (\load~input_o\ & ((\parallel_in[305]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(304)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(304),
	datac => \parallel_in[305]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~78_combout\);

-- Location: FF_X45_Y90_N19
\inst1|shift_reg[303]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(303));

-- Location: LCCOMB_X45_Y90_N16
\inst1|shift_reg~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~79_combout\ = (\load~input_o\ & ((\parallel_in[304]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(303)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(303),
	datad => \parallel_in[304]~input_o\,
	combout => \inst1|shift_reg~79_combout\);

-- Location: FF_X45_Y90_N5
\inst1|shift_reg[302]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(302));

-- Location: LCCOMB_X45_Y90_N18
\inst1|shift_reg~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~80_combout\ = (\load~input_o\ & ((\parallel_in[303]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(302)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(302),
	datac => \parallel_in[303]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~80_combout\);

-- Location: FF_X45_Y90_N15
\inst1|shift_reg[301]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(301));

-- Location: LCCOMB_X45_Y90_N4
\inst1|shift_reg~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~81_combout\ = (\load~input_o\ & (\parallel_in[302]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(301))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[302]~input_o\,
	datac => \inst1|shift_reg\(301),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~81_combout\);

-- Location: FF_X38_Y90_N25
\inst1|shift_reg[300]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(300));

-- Location: LCCOMB_X45_Y90_N14
\inst1|shift_reg~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~82_combout\ = (\load~input_o\ & (\parallel_in[301]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(300))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[301]~input_o\,
	datac => \inst1|shift_reg\(300),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~82_combout\);

-- Location: FF_X38_Y90_N19
\inst1|shift_reg[299]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(299));

-- Location: LCCOMB_X38_Y90_N24
\inst1|shift_reg~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~83_combout\ = (\load~input_o\ & (\parallel_in[300]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(299))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[300]~input_o\,
	datab => \inst1|shift_reg\(299),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~83_combout\);

-- Location: FF_X38_Y90_N13
\inst1|shift_reg[298]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(298));

-- Location: LCCOMB_X38_Y90_N18
\inst1|shift_reg~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~84_combout\ = (\load~input_o\ & ((\parallel_in[299]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(298)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(298),
	datac => \parallel_in[299]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~84_combout\);

-- Location: FF_X38_Y90_N15
\inst1|shift_reg[297]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(297));

-- Location: LCCOMB_X38_Y90_N12
\inst1|shift_reg~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~85_combout\ = (\load~input_o\ & (\parallel_in[298]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(297))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[298]~input_o\,
	datac => \inst1|shift_reg\(297),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~85_combout\);

-- Location: FF_X38_Y90_N9
\inst1|shift_reg[296]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(296));

-- Location: LCCOMB_X38_Y90_N14
\inst1|shift_reg~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~86_combout\ = (\load~input_o\ & ((\parallel_in[297]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(296)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(296),
	datac => \parallel_in[297]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~86_combout\);

-- Location: FF_X38_Y90_N11
\inst1|shift_reg[295]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(295));

-- Location: LCCOMB_X38_Y90_N8
\inst1|shift_reg~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~87_combout\ = (\load~input_o\ & ((\parallel_in[296]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(295)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(295),
	datab => \parallel_in[296]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~87_combout\);

-- Location: FF_X38_Y90_N5
\inst1|shift_reg[294]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(294));

-- Location: LCCOMB_X38_Y90_N10
\inst1|shift_reg~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~88_combout\ = (\load~input_o\ & ((\parallel_in[295]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(294)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(294),
	datac => \parallel_in[295]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~88_combout\);

-- Location: FF_X38_Y90_N23
\inst1|shift_reg[293]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(293));

-- Location: LCCOMB_X38_Y90_N4
\inst1|shift_reg~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~89_combout\ = (\load~input_o\ & (\parallel_in[294]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(293))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[294]~input_o\,
	datac => \inst1|shift_reg\(293),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~89_combout\);

-- Location: FF_X38_Y90_N17
\inst1|shift_reg[292]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(292));

-- Location: LCCOMB_X38_Y90_N22
\inst1|shift_reg~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~90_combout\ = (\load~input_o\ & ((\parallel_in[293]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(292)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(292),
	datac => \parallel_in[293]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~90_combout\);

-- Location: FF_X38_Y90_N3
\inst1|shift_reg[291]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(291));

-- Location: LCCOMB_X38_Y90_N16
\inst1|shift_reg~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~91_combout\ = (\load~input_o\ & ((\parallel_in[292]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(291)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(291),
	datac => \parallel_in[292]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~91_combout\);

-- Location: FF_X38_Y90_N21
\inst1|shift_reg[290]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(290));

-- Location: LCCOMB_X38_Y90_N2
\inst1|shift_reg~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~92_combout\ = (\load~input_o\ & (\parallel_in[291]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(290))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[291]~input_o\,
	datab => \inst1|shift_reg\(290),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~92_combout\);

-- Location: FF_X38_Y90_N7
\inst1|shift_reg[289]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(289));

-- Location: LCCOMB_X38_Y90_N20
\inst1|shift_reg~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~93_combout\ = (\load~input_o\ & ((\parallel_in[290]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(289)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(289),
	datab => \parallel_in[290]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~93_combout\);

-- Location: FF_X38_Y90_N1
\inst1|shift_reg[288]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(288));

-- Location: LCCOMB_X38_Y90_N6
\inst1|shift_reg~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~94_combout\ = (\load~input_o\ & ((\parallel_in[289]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(288)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(288),
	datac => \parallel_in[289]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~94_combout\);

-- Location: FF_X38_Y90_N27
\inst1|shift_reg[287]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(287));

-- Location: LCCOMB_X38_Y90_N0
\inst1|shift_reg~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~95_combout\ = (\load~input_o\ & ((\parallel_in[288]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(287)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(287),
	datac => \parallel_in[288]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~95_combout\);

-- Location: FF_X38_Y90_N29
\inst1|shift_reg[286]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(286));

-- Location: LCCOMB_X38_Y90_N26
\inst1|shift_reg~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~96_combout\ = (\load~input_o\ & (\parallel_in[287]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(286))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[287]~input_o\,
	datab => \inst1|shift_reg\(286),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~96_combout\);

-- Location: FF_X38_Y90_N31
\inst1|shift_reg[285]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(285));

-- Location: LCCOMB_X38_Y90_N28
\inst1|shift_reg~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~97_combout\ = (\load~input_o\ & (\parallel_in[286]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(285))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[286]~input_o\,
	datac => \inst1|shift_reg\(285),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~97_combout\);

-- Location: FF_X116_Y83_N25
\inst1|shift_reg[284]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(284));

-- Location: LCCOMB_X38_Y90_N30
\inst1|shift_reg~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~98_combout\ = (\load~input_o\ & (\parallel_in[285]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(284))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[285]~input_o\,
	datac => \inst1|shift_reg\(284),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~98_combout\);

-- Location: FF_X116_Y83_N11
\inst1|shift_reg[283]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(283));

-- Location: LCCOMB_X116_Y83_N24
\inst1|shift_reg~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~99_combout\ = (\load~input_o\ & (\parallel_in[284]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(283))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \parallel_in[284]~input_o\,
	datad => \inst1|shift_reg\(283),
	combout => \inst1|shift_reg~99_combout\);

-- Location: FF_X116_Y83_N5
\inst1|shift_reg[282]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(282));

-- Location: LCCOMB_X116_Y83_N10
\inst1|shift_reg~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~100_combout\ = (\load~input_o\ & (\parallel_in[283]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(282))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[283]~input_o\,
	datac => \inst1|shift_reg\(282),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~100_combout\);

-- Location: FF_X116_Y83_N23
\inst1|shift_reg[281]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(281));

-- Location: LCCOMB_X116_Y83_N4
\inst1|shift_reg~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~101_combout\ = (\load~input_o\ & ((\parallel_in[282]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(281)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \inst1|shift_reg\(281),
	datad => \parallel_in[282]~input_o\,
	combout => \inst1|shift_reg~101_combout\);

-- Location: FF_X116_Y83_N1
\inst1|shift_reg[280]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(280));

-- Location: LCCOMB_X116_Y83_N22
\inst1|shift_reg~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~102_combout\ = (\load~input_o\ & ((\parallel_in[281]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(280)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(280),
	datac => \parallel_in[281]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~102_combout\);

-- Location: FF_X116_Y83_N27
\inst1|shift_reg[279]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(279));

-- Location: LCCOMB_X116_Y83_N0
\inst1|shift_reg~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~103_combout\ = (\load~input_o\ & ((\parallel_in[280]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(279)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \inst1|shift_reg\(279),
	datad => \parallel_in[280]~input_o\,
	combout => \inst1|shift_reg~103_combout\);

-- Location: FF_X116_Y83_N21
\inst1|shift_reg[278]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(278));

-- Location: LCCOMB_X116_Y83_N26
\inst1|shift_reg~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~104_combout\ = (\load~input_o\ & ((\parallel_in[279]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(278)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(278),
	datad => \parallel_in[279]~input_o\,
	combout => \inst1|shift_reg~104_combout\);

-- Location: FF_X116_Y83_N31
\inst1|shift_reg[277]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(277));

-- Location: LCCOMB_X116_Y83_N20
\inst1|shift_reg~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~105_combout\ = (\load~input_o\ & ((\parallel_in[278]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(277)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \inst1|shift_reg\(277),
	datad => \parallel_in[278]~input_o\,
	combout => \inst1|shift_reg~105_combout\);

-- Location: FF_X116_Y83_N9
\inst1|shift_reg[276]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(276));

-- Location: LCCOMB_X116_Y83_N30
\inst1|shift_reg~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~106_combout\ = (\load~input_o\ & (\parallel_in[277]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(276))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[277]~input_o\,
	datac => \inst1|shift_reg\(276),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~106_combout\);

-- Location: FF_X116_Y83_N19
\inst1|shift_reg[275]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(275));

-- Location: LCCOMB_X116_Y83_N8
\inst1|shift_reg~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~107_combout\ = (\load~input_o\ & ((\parallel_in[276]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(275)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(275),
	datad => \parallel_in[276]~input_o\,
	combout => \inst1|shift_reg~107_combout\);

-- Location: FF_X116_Y83_N29
\inst1|shift_reg[274]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(274));

-- Location: LCCOMB_X116_Y83_N18
\inst1|shift_reg~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~108_combout\ = (\load~input_o\ & ((\parallel_in[275]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(274)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(274),
	datac => \parallel_in[275]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~108_combout\);

-- Location: FF_X116_Y83_N15
\inst1|shift_reg[273]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(273));

-- Location: LCCOMB_X116_Y83_N28
\inst1|shift_reg~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~109_combout\ = (\load~input_o\ & ((\parallel_in[274]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(273)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(273),
	datac => \parallel_in[274]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~109_combout\);

-- Location: FF_X116_Y83_N17
\inst1|shift_reg[272]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(272));

-- Location: LCCOMB_X116_Y83_N14
\inst1|shift_reg~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~110_combout\ = (\load~input_o\ & ((\parallel_in[273]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(272)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(272),
	datac => \parallel_in[273]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~110_combout\);

-- Location: FF_X116_Y83_N3
\inst1|shift_reg[271]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(271));

-- Location: LCCOMB_X116_Y83_N16
\inst1|shift_reg~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~111_combout\ = (\load~input_o\ & ((\parallel_in[272]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(271)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(271),
	datad => \parallel_in[272]~input_o\,
	combout => \inst1|shift_reg~111_combout\);

-- Location: FF_X116_Y83_N13
\inst1|shift_reg[270]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(270));

-- Location: LCCOMB_X116_Y83_N2
\inst1|shift_reg~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~112_combout\ = (\load~input_o\ & (\parallel_in[271]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(270))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \parallel_in[271]~input_o\,
	datad => \inst1|shift_reg\(270),
	combout => \inst1|shift_reg~112_combout\);

-- Location: FF_X116_Y83_N7
\inst1|shift_reg[269]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(269));

-- Location: LCCOMB_X116_Y83_N12
\inst1|shift_reg~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~113_combout\ = (\load~input_o\ & (\parallel_in[270]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(269))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \parallel_in[270]~input_o\,
	datad => \inst1|shift_reg\(269),
	combout => \inst1|shift_reg~113_combout\);

-- Location: FF_X116_Y53_N1
\inst1|shift_reg[268]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(268));

-- Location: LCCOMB_X116_Y83_N6
\inst1|shift_reg~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~114_combout\ = (\load~input_o\ & (\parallel_in[269]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(268))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[269]~input_o\,
	datac => \inst1|shift_reg\(268),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~114_combout\);

-- Location: FF_X116_Y53_N3
\inst1|shift_reg[267]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(267));

-- Location: LCCOMB_X116_Y53_N0
\inst1|shift_reg~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~115_combout\ = (\load~input_o\ & (\parallel_in[268]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(267))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \parallel_in[268]~input_o\,
	datad => \inst1|shift_reg\(267),
	combout => \inst1|shift_reg~115_combout\);

-- Location: FF_X116_Y53_N13
\inst1|shift_reg[266]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(266));

-- Location: LCCOMB_X116_Y53_N2
\inst1|shift_reg~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~116_combout\ = (\load~input_o\ & (\parallel_in[267]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(266))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \parallel_in[267]~input_o\,
	datad => \inst1|shift_reg\(266),
	combout => \inst1|shift_reg~116_combout\);

-- Location: FF_X116_Y53_N7
\inst1|shift_reg[265]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(265));

-- Location: LCCOMB_X116_Y53_N12
\inst1|shift_reg~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~117_combout\ = (\load~input_o\ & ((\parallel_in[266]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(265)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(265),
	datac => \load~input_o\,
	datad => \parallel_in[266]~input_o\,
	combout => \inst1|shift_reg~117_combout\);

-- Location: FF_X116_Y53_N9
\inst1|shift_reg[264]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(264));

-- Location: LCCOMB_X116_Y53_N6
\inst1|shift_reg~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~118_combout\ = (\load~input_o\ & ((\parallel_in[265]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(264)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(264),
	datad => \parallel_in[265]~input_o\,
	combout => \inst1|shift_reg~118_combout\);

-- Location: FF_X116_Y53_N11
\inst1|shift_reg[263]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(263));

-- Location: LCCOMB_X116_Y53_N8
\inst1|shift_reg~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~119_combout\ = (\load~input_o\ & (\parallel_in[264]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(263))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[264]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(263),
	combout => \inst1|shift_reg~119_combout\);

-- Location: FF_X116_Y53_N5
\inst1|shift_reg[262]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(262));

-- Location: LCCOMB_X116_Y53_N10
\inst1|shift_reg~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~120_combout\ = (\load~input_o\ & ((\parallel_in[263]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(262)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(262),
	datad => \parallel_in[263]~input_o\,
	combout => \inst1|shift_reg~120_combout\);

-- Location: FF_X116_Y53_N23
\inst1|shift_reg[261]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(261));

-- Location: LCCOMB_X116_Y53_N4
\inst1|shift_reg~121\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~121_combout\ = (\load~input_o\ & ((\parallel_in[262]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(261)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(261),
	datab => \parallel_in[262]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~121_combout\);

-- Location: FF_X116_Y53_N17
\inst1|shift_reg[260]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(260));

-- Location: LCCOMB_X116_Y53_N22
\inst1|shift_reg~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~122_combout\ = (\load~input_o\ & (\parallel_in[261]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(260))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[261]~input_o\,
	datab => \inst1|shift_reg\(260),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~122_combout\);

-- Location: FF_X116_Y53_N27
\inst1|shift_reg[259]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(259));

-- Location: LCCOMB_X116_Y53_N16
\inst1|shift_reg~123\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~123_combout\ = (\load~input_o\ & ((\parallel_in[260]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(259)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(259),
	datab => \parallel_in[260]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~123_combout\);

-- Location: FF_X116_Y53_N21
\inst1|shift_reg[258]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(258));

-- Location: LCCOMB_X116_Y53_N26
\inst1|shift_reg~124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~124_combout\ = (\load~input_o\ & ((\parallel_in[259]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(258)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(258),
	datac => \load~input_o\,
	datad => \parallel_in[259]~input_o\,
	combout => \inst1|shift_reg~124_combout\);

-- Location: FF_X116_Y53_N15
\inst1|shift_reg[257]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(257));

-- Location: LCCOMB_X116_Y53_N20
\inst1|shift_reg~125\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~125_combout\ = (\load~input_o\ & ((\parallel_in[258]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(257)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(257),
	datad => \parallel_in[258]~input_o\,
	combout => \inst1|shift_reg~125_combout\);

-- Location: FF_X116_Y53_N25
\inst1|shift_reg[256]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(256));

-- Location: LCCOMB_X116_Y53_N14
\inst1|shift_reg~126\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~126_combout\ = (\load~input_o\ & ((\parallel_in[257]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(256)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(256),
	datac => \load~input_o\,
	datad => \parallel_in[257]~input_o\,
	combout => \inst1|shift_reg~126_combout\);

-- Location: FF_X116_Y53_N19
\inst1|shift_reg[255]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(255));

-- Location: LCCOMB_X116_Y53_N24
\inst1|shift_reg~127\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~127_combout\ = (\load~input_o\ & ((\parallel_in[256]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(255)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(255),
	datac => \load~input_o\,
	datad => \parallel_in[256]~input_o\,
	combout => \inst1|shift_reg~127_combout\);

-- Location: FF_X116_Y53_N29
\inst1|shift_reg[254]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(254));

-- Location: LCCOMB_X116_Y53_N18
\inst1|shift_reg~128\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~128_combout\ = (\load~input_o\ & (\parallel_in[255]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(254))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[255]~input_o\,
	datab => \inst1|shift_reg\(254),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~128_combout\);

-- Location: FF_X116_Y53_N31
\inst1|shift_reg[253]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(253));

-- Location: LCCOMB_X116_Y53_N28
\inst1|shift_reg~129\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~129_combout\ = (\load~input_o\ & ((\parallel_in[254]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(253)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(253),
	datad => \parallel_in[254]~input_o\,
	combout => \inst1|shift_reg~129_combout\);

-- Location: FF_X116_Y45_N17
\inst1|shift_reg[252]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(252));

-- Location: LCCOMB_X116_Y53_N30
\inst1|shift_reg~130\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~130_combout\ = (\load~input_o\ & ((\parallel_in[253]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(252)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(252),
	datad => \parallel_in[253]~input_o\,
	combout => \inst1|shift_reg~130_combout\);

-- Location: FF_X116_Y45_N3
\inst1|shift_reg[251]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(251));

-- Location: LCCOMB_X116_Y45_N16
\inst1|shift_reg~131\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~131_combout\ = (\load~input_o\ & (\parallel_in[252]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(251))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \parallel_in[252]~input_o\,
	datad => \inst1|shift_reg\(251),
	combout => \inst1|shift_reg~131_combout\);

-- Location: FF_X116_Y45_N13
\inst1|shift_reg[250]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(250));

-- Location: LCCOMB_X116_Y45_N2
\inst1|shift_reg~132\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~132_combout\ = (\load~input_o\ & ((\parallel_in[251]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(250)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(250),
	datab => \load~input_o\,
	datad => \parallel_in[251]~input_o\,
	combout => \inst1|shift_reg~132_combout\);

-- Location: FF_X116_Y45_N7
\inst1|shift_reg[249]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(249));

-- Location: LCCOMB_X116_Y45_N12
\inst1|shift_reg~133\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~133_combout\ = (\load~input_o\ & ((\parallel_in[250]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(249)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(249),
	datab => \load~input_o\,
	datad => \parallel_in[250]~input_o\,
	combout => \inst1|shift_reg~133_combout\);

-- Location: FF_X116_Y45_N1
\inst1|shift_reg[248]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(248));

-- Location: LCCOMB_X116_Y45_N6
\inst1|shift_reg~134\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~134_combout\ = (\load~input_o\ & (\parallel_in[249]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(248))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \parallel_in[249]~input_o\,
	datad => \inst1|shift_reg\(248),
	combout => \inst1|shift_reg~134_combout\);

-- Location: FF_X116_Y45_N19
\inst1|shift_reg[247]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(247));

-- Location: LCCOMB_X116_Y45_N0
\inst1|shift_reg~135\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~135_combout\ = (\load~input_o\ & ((\parallel_in[248]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(247)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(247),
	datac => \load~input_o\,
	datad => \parallel_in[248]~input_o\,
	combout => \inst1|shift_reg~135_combout\);

-- Location: FF_X116_Y45_N21
\inst1|shift_reg[246]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(246));

-- Location: LCCOMB_X116_Y45_N18
\inst1|shift_reg~136\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~136_combout\ = (\load~input_o\ & (\parallel_in[247]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(246))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \parallel_in[247]~input_o\,
	datad => \inst1|shift_reg\(246),
	combout => \inst1|shift_reg~136_combout\);

-- Location: FF_X116_Y45_N23
\inst1|shift_reg[245]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(245));

-- Location: LCCOMB_X116_Y45_N20
\inst1|shift_reg~137\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~137_combout\ = (\load~input_o\ & ((\parallel_in[246]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(245)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(245),
	datac => \parallel_in[246]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~137_combout\);

-- Location: FF_X116_Y45_N25
\inst1|shift_reg[244]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(244));

-- Location: LCCOMB_X116_Y45_N22
\inst1|shift_reg~138\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~138_combout\ = (\load~input_o\ & (\parallel_in[245]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(244))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[245]~input_o\,
	datab => \load~input_o\,
	datad => \inst1|shift_reg\(244),
	combout => \inst1|shift_reg~138_combout\);

-- Location: FF_X116_Y45_N27
\inst1|shift_reg[243]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(243));

-- Location: LCCOMB_X116_Y45_N24
\inst1|shift_reg~139\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~139_combout\ = (\load~input_o\ & ((\parallel_in[244]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(243)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(243),
	datad => \parallel_in[244]~input_o\,
	combout => \inst1|shift_reg~139_combout\);

-- Location: FF_X116_Y45_N29
\inst1|shift_reg[242]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(242));

-- Location: LCCOMB_X116_Y45_N26
\inst1|shift_reg~140\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~140_combout\ = (\load~input_o\ & (\parallel_in[243]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(242))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[243]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(242),
	combout => \inst1|shift_reg~140_combout\);

-- Location: FF_X116_Y45_N15
\inst1|shift_reg[241]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(241));

-- Location: LCCOMB_X116_Y45_N28
\inst1|shift_reg~141\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~141_combout\ = (\load~input_o\ & (\parallel_in[242]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(241))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[242]~input_o\,
	datac => \inst1|shift_reg\(241),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~141_combout\);

-- Location: FF_X116_Y45_N9
\inst1|shift_reg[240]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(240));

-- Location: LCCOMB_X116_Y45_N14
\inst1|shift_reg~142\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~142_combout\ = (\load~input_o\ & ((\parallel_in[241]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(240)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(240),
	datad => \parallel_in[241]~input_o\,
	combout => \inst1|shift_reg~142_combout\);

-- Location: FF_X116_Y45_N11
\inst1|shift_reg[239]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(239));

-- Location: LCCOMB_X116_Y45_N8
\inst1|shift_reg~143\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~143_combout\ = (\load~input_o\ & ((\parallel_in[240]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(239)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(239),
	datac => \parallel_in[240]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~143_combout\);

-- Location: FF_X116_Y45_N5
\inst1|shift_reg[238]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(238));

-- Location: LCCOMB_X116_Y45_N10
\inst1|shift_reg~144\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~144_combout\ = (\load~input_o\ & ((\parallel_in[239]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(238)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(238),
	datad => \parallel_in[239]~input_o\,
	combout => \inst1|shift_reg~144_combout\);

-- Location: FF_X116_Y45_N31
\inst1|shift_reg[237]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(237));

-- Location: LCCOMB_X116_Y45_N4
\inst1|shift_reg~145\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~145_combout\ = (\load~input_o\ & ((\parallel_in[238]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(237)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(237),
	datac => \parallel_in[238]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~145_combout\);

-- Location: FF_X116_Y26_N17
\inst1|shift_reg[236]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(236));

-- Location: LCCOMB_X116_Y45_N30
\inst1|shift_reg~146\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~146_combout\ = (\load~input_o\ & ((\parallel_in[237]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(236)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(236),
	datac => \parallel_in[237]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~146_combout\);

-- Location: FF_X116_Y26_N3
\inst1|shift_reg[235]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(235));

-- Location: LCCOMB_X116_Y26_N16
\inst1|shift_reg~147\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~147_combout\ = (\load~input_o\ & ((\parallel_in[236]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(235)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(235),
	datac => \parallel_in[236]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~147_combout\);

-- Location: FF_X116_Y26_N13
\inst1|shift_reg[234]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(234));

-- Location: LCCOMB_X116_Y26_N2
\inst1|shift_reg~148\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~148_combout\ = (\load~input_o\ & ((\parallel_in[235]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(234)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(234),
	datab => \load~input_o\,
	datad => \parallel_in[235]~input_o\,
	combout => \inst1|shift_reg~148_combout\);

-- Location: FF_X116_Y26_N7
\inst1|shift_reg[233]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(233));

-- Location: LCCOMB_X116_Y26_N12
\inst1|shift_reg~149\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~149_combout\ = (\load~input_o\ & ((\parallel_in[234]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(233)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(233),
	datac => \parallel_in[234]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~149_combout\);

-- Location: FF_X116_Y26_N1
\inst1|shift_reg[232]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(232));

-- Location: LCCOMB_X116_Y26_N6
\inst1|shift_reg~150\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~150_combout\ = (\load~input_o\ & (\parallel_in[233]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(232))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[233]~input_o\,
	datab => \inst1|shift_reg\(232),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~150_combout\);

-- Location: FF_X116_Y26_N19
\inst1|shift_reg[231]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(231));

-- Location: LCCOMB_X116_Y26_N0
\inst1|shift_reg~151\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~151_combout\ = (\load~input_o\ & (\parallel_in[232]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(231))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \parallel_in[232]~input_o\,
	datad => \inst1|shift_reg\(231),
	combout => \inst1|shift_reg~151_combout\);

-- Location: FF_X116_Y26_N21
\inst1|shift_reg[230]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(230));

-- Location: LCCOMB_X116_Y26_N18
\inst1|shift_reg~152\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~152_combout\ = (\load~input_o\ & (\parallel_in[231]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(230))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \parallel_in[231]~input_o\,
	datad => \inst1|shift_reg\(230),
	combout => \inst1|shift_reg~152_combout\);

-- Location: FF_X116_Y26_N23
\inst1|shift_reg[229]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(229));

-- Location: LCCOMB_X116_Y26_N20
\inst1|shift_reg~153\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~153_combout\ = (\load~input_o\ & (\parallel_in[230]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(229))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[230]~input_o\,
	datac => \inst1|shift_reg\(229),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~153_combout\);

-- Location: FF_X116_Y26_N25
\inst1|shift_reg[228]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(228));

-- Location: LCCOMB_X116_Y26_N22
\inst1|shift_reg~154\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~154_combout\ = (\load~input_o\ & (\parallel_in[229]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(228))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \parallel_in[229]~input_o\,
	datad => \inst1|shift_reg\(228),
	combout => \inst1|shift_reg~154_combout\);

-- Location: FF_X116_Y26_N27
\inst1|shift_reg[227]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(227));

-- Location: LCCOMB_X116_Y26_N24
\inst1|shift_reg~155\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~155_combout\ = (\load~input_o\ & (\parallel_in[228]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(227))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[228]~input_o\,
	datac => \inst1|shift_reg\(227),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~155_combout\);

-- Location: FF_X116_Y26_N29
\inst1|shift_reg[226]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(226));

-- Location: LCCOMB_X116_Y26_N26
\inst1|shift_reg~156\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~156_combout\ = (\load~input_o\ & (\parallel_in[227]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(226))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \parallel_in[227]~input_o\,
	datad => \inst1|shift_reg\(226),
	combout => \inst1|shift_reg~156_combout\);

-- Location: FF_X116_Y26_N15
\inst1|shift_reg[225]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(225));

-- Location: LCCOMB_X116_Y26_N28
\inst1|shift_reg~157\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~157_combout\ = (\load~input_o\ & ((\parallel_in[226]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(225)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(225),
	datac => \parallel_in[226]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~157_combout\);

-- Location: FF_X116_Y26_N9
\inst1|shift_reg[224]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(224));

-- Location: LCCOMB_X116_Y26_N14
\inst1|shift_reg~158\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~158_combout\ = (\load~input_o\ & ((\parallel_in[225]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(224)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(224),
	datad => \parallel_in[225]~input_o\,
	combout => \inst1|shift_reg~158_combout\);

-- Location: FF_X116_Y26_N11
\inst1|shift_reg[223]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(223));

-- Location: LCCOMB_X116_Y26_N8
\inst1|shift_reg~159\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~159_combout\ = (\load~input_o\ & ((\parallel_in[224]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(223)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(223),
	datac => \parallel_in[224]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~159_combout\);

-- Location: FF_X116_Y26_N5
\inst1|shift_reg[222]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(222));

-- Location: LCCOMB_X116_Y26_N10
\inst1|shift_reg~160\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~160_combout\ = (\load~input_o\ & (\parallel_in[223]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(222))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[223]~input_o\,
	datac => \inst1|shift_reg\(222),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~160_combout\);

-- Location: FF_X116_Y26_N31
\inst1|shift_reg[221]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(221));

-- Location: LCCOMB_X116_Y26_N4
\inst1|shift_reg~161\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~161_combout\ = (\load~input_o\ & ((\parallel_in[222]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(221)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(221),
	datad => \parallel_in[222]~input_o\,
	combout => \inst1|shift_reg~161_combout\);

-- Location: FF_X116_Y70_N25
\inst1|shift_reg[220]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(220));

-- Location: LCCOMB_X116_Y26_N30
\inst1|shift_reg~162\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~162_combout\ = (\load~input_o\ & ((\parallel_in[221]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(220)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(220),
	datad => \parallel_in[221]~input_o\,
	combout => \inst1|shift_reg~162_combout\);

-- Location: FF_X116_Y70_N3
\inst1|shift_reg[219]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(219));

-- Location: LCCOMB_X116_Y70_N24
\inst1|shift_reg~163\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~163_combout\ = (\load~input_o\ & (\parallel_in[220]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(219))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[220]~input_o\,
	datab => \inst1|shift_reg\(219),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~163_combout\);

-- Location: FF_X116_Y70_N13
\inst1|shift_reg[218]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(218));

-- Location: LCCOMB_X116_Y70_N2
\inst1|shift_reg~164\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~164_combout\ = (\load~input_o\ & ((\parallel_in[219]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(218)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(218),
	datac => \parallel_in[219]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~164_combout\);

-- Location: FF_X116_Y70_N7
\inst1|shift_reg[217]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(217));

-- Location: LCCOMB_X116_Y70_N12
\inst1|shift_reg~165\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~165_combout\ = (\load~input_o\ & ((\parallel_in[218]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(217)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(217),
	datab => \parallel_in[218]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~165_combout\);

-- Location: FF_X116_Y70_N1
\inst1|shift_reg[216]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(216));

-- Location: LCCOMB_X116_Y70_N6
\inst1|shift_reg~166\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~166_combout\ = (\load~input_o\ & (\parallel_in[217]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(216))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[217]~input_o\,
	datab => \inst1|shift_reg\(216),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~166_combout\);

-- Location: FF_X116_Y70_N27
\inst1|shift_reg[215]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(215));

-- Location: LCCOMB_X116_Y70_N0
\inst1|shift_reg~167\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~167_combout\ = (\load~input_o\ & ((\parallel_in[216]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(215)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(215),
	datab => \parallel_in[216]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~167_combout\);

-- Location: FF_X116_Y70_N5
\inst1|shift_reg[214]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(214));

-- Location: LCCOMB_X116_Y70_N26
\inst1|shift_reg~168\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~168_combout\ = (\load~input_o\ & (\parallel_in[215]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(214))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[215]~input_o\,
	datab => \inst1|shift_reg\(214),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~168_combout\);

-- Location: FF_X116_Y70_N23
\inst1|shift_reg[213]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(213));

-- Location: LCCOMB_X116_Y70_N4
\inst1|shift_reg~169\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~169_combout\ = (\load~input_o\ & ((\parallel_in[214]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(213)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(213),
	datab => \load~input_o\,
	datad => \parallel_in[214]~input_o\,
	combout => \inst1|shift_reg~169_combout\);

-- Location: FF_X116_Y70_N9
\inst1|shift_reg[212]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(212));

-- Location: LCCOMB_X116_Y70_N22
\inst1|shift_reg~170\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~170_combout\ = (\load~input_o\ & (\parallel_in[213]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(212))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[213]~input_o\,
	datab => \inst1|shift_reg\(212),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~170_combout\);

-- Location: FF_X116_Y70_N19
\inst1|shift_reg[211]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(211));

-- Location: LCCOMB_X116_Y70_N8
\inst1|shift_reg~171\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~171_combout\ = (\load~input_o\ & ((\parallel_in[212]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(211)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(211),
	datac => \load~input_o\,
	datad => \parallel_in[212]~input_o\,
	combout => \inst1|shift_reg~171_combout\);

-- Location: FF_X116_Y70_N21
\inst1|shift_reg[210]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(210));

-- Location: LCCOMB_X116_Y70_N18
\inst1|shift_reg~172\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~172_combout\ = (\load~input_o\ & ((\parallel_in[211]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(210)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(210),
	datac => \parallel_in[211]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~172_combout\);

-- Location: FF_X116_Y70_N15
\inst1|shift_reg[209]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(209));

-- Location: LCCOMB_X116_Y70_N20
\inst1|shift_reg~173\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~173_combout\ = (\load~input_o\ & ((\parallel_in[210]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(209)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(209),
	datac => \parallel_in[210]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~173_combout\);

-- Location: FF_X116_Y70_N17
\inst1|shift_reg[208]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(208));

-- Location: LCCOMB_X116_Y70_N14
\inst1|shift_reg~174\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~174_combout\ = (\load~input_o\ & ((\parallel_in[209]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(208)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(208),
	datac => \parallel_in[209]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~174_combout\);

-- Location: FF_X116_Y70_N11
\inst1|shift_reg[207]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(207));

-- Location: LCCOMB_X116_Y70_N16
\inst1|shift_reg~175\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~175_combout\ = (\load~input_o\ & ((\parallel_in[208]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(207)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(207),
	datab => \load~input_o\,
	datad => \parallel_in[208]~input_o\,
	combout => \inst1|shift_reg~175_combout\);

-- Location: FF_X116_Y70_N29
\inst1|shift_reg[206]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(206));

-- Location: LCCOMB_X116_Y70_N10
\inst1|shift_reg~176\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~176_combout\ = (\load~input_o\ & ((\parallel_in[207]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(206)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(206),
	datac => \load~input_o\,
	datad => \parallel_in[207]~input_o\,
	combout => \inst1|shift_reg~176_combout\);

-- Location: FF_X116_Y70_N31
\inst1|shift_reg[205]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(205));

-- Location: LCCOMB_X116_Y70_N28
\inst1|shift_reg~177\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~177_combout\ = (\load~input_o\ & ((\parallel_in[206]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(205)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(205),
	datab => \parallel_in[206]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~177_combout\);

-- Location: FF_X71_Y1_N9
\inst1|shift_reg[204]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(204));

-- Location: LCCOMB_X116_Y70_N30
\inst1|shift_reg~178\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~178_combout\ = (\load~input_o\ & (\parallel_in[205]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(204))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[205]~input_o\,
	datab => \inst1|shift_reg\(204),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~178_combout\);

-- Location: FF_X71_Y1_N3
\inst1|shift_reg[203]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(203));

-- Location: LCCOMB_X71_Y1_N8
\inst1|shift_reg~179\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~179_combout\ = (\load~input_o\ & (\parallel_in[204]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(203))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[204]~input_o\,
	datab => \inst1|shift_reg\(203),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~179_combout\);

-- Location: FF_X71_Y1_N13
\inst1|shift_reg[202]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(202));

-- Location: LCCOMB_X71_Y1_N2
\inst1|shift_reg~180\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~180_combout\ = (\load~input_o\ & ((\parallel_in[203]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(202)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(202),
	datab => \parallel_in[203]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~180_combout\);

-- Location: FF_X71_Y1_N7
\inst1|shift_reg[201]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(201));

-- Location: LCCOMB_X71_Y1_N12
\inst1|shift_reg~181\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~181_combout\ = (\load~input_o\ & ((\parallel_in[202]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(201)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(201),
	datac => \parallel_in[202]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~181_combout\);

-- Location: FF_X71_Y1_N25
\inst1|shift_reg[200]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(200));

-- Location: LCCOMB_X71_Y1_N6
\inst1|shift_reg~182\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~182_combout\ = (\load~input_o\ & ((\parallel_in[201]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(200)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(200),
	datac => \parallel_in[201]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~182_combout\);

-- Location: FF_X71_Y1_N27
\inst1|shift_reg[199]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(199));

-- Location: LCCOMB_X71_Y1_N24
\inst1|shift_reg~183\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~183_combout\ = (\load~input_o\ & ((\parallel_in[200]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(199)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(199),
	datac => \parallel_in[200]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~183_combout\);

-- Location: FF_X71_Y1_N5
\inst1|shift_reg[198]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(198));

-- Location: LCCOMB_X71_Y1_N26
\inst1|shift_reg~184\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~184_combout\ = (\load~input_o\ & (\parallel_in[199]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(198))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[199]~input_o\,
	datac => \inst1|shift_reg\(198),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~184_combout\);

-- Location: FF_X71_Y1_N23
\inst1|shift_reg[197]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(197));

-- Location: LCCOMB_X71_Y1_N4
\inst1|shift_reg~185\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~185_combout\ = (\load~input_o\ & ((\parallel_in[198]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(197)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(197),
	datac => \parallel_in[198]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~185_combout\);

-- Location: FF_X71_Y1_N17
\inst1|shift_reg[196]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(196));

-- Location: LCCOMB_X71_Y1_N22
\inst1|shift_reg~186\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~186_combout\ = (\load~input_o\ & ((\parallel_in[197]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(196)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(196),
	datac => \parallel_in[197]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~186_combout\);

-- Location: FF_X71_Y1_N19
\inst1|shift_reg[195]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(195));

-- Location: LCCOMB_X71_Y1_N16
\inst1|shift_reg~187\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~187_combout\ = (\load~input_o\ & ((\parallel_in[196]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(195)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(195),
	datac => \parallel_in[196]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~187_combout\);

-- Location: FF_X71_Y1_N21
\inst1|shift_reg[194]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(194));

-- Location: LCCOMB_X71_Y1_N18
\inst1|shift_reg~188\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~188_combout\ = (\load~input_o\ & ((\parallel_in[195]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(194)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(194),
	datac => \parallel_in[195]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~188_combout\);

-- Location: FF_X71_Y1_N15
\inst1|shift_reg[193]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(193));

-- Location: LCCOMB_X71_Y1_N20
\inst1|shift_reg~189\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~189_combout\ = (\load~input_o\ & (\parallel_in[194]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(193))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[194]~input_o\,
	datac => \inst1|shift_reg\(193),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~189_combout\);

-- Location: FF_X71_Y1_N1
\inst1|shift_reg[192]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(192));

-- Location: LCCOMB_X71_Y1_N14
\inst1|shift_reg~190\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~190_combout\ = (\load~input_o\ & ((\parallel_in[193]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(192)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(192),
	datac => \parallel_in[193]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~190_combout\);

-- Location: FF_X71_Y1_N11
\inst1|shift_reg[191]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(191));

-- Location: LCCOMB_X71_Y1_N0
\inst1|shift_reg~191\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~191_combout\ = (\load~input_o\ & ((\parallel_in[192]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(191)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(191),
	datab => \parallel_in[192]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~191_combout\);

-- Location: FF_X71_Y1_N29
\inst1|shift_reg[190]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(190));

-- Location: LCCOMB_X71_Y1_N10
\inst1|shift_reg~192\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~192_combout\ = (\load~input_o\ & ((\parallel_in[191]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(190)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(190),
	datac => \parallel_in[191]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~192_combout\);

-- Location: FF_X71_Y1_N31
\inst1|shift_reg[189]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(189));

-- Location: LCCOMB_X71_Y1_N28
\inst1|shift_reg~193\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~193_combout\ = (\load~input_o\ & (\parallel_in[190]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(189))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[190]~input_o\,
	datac => \inst1|shift_reg\(189),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~193_combout\);

-- Location: FF_X116_Y61_N25
\inst1|shift_reg[188]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(188));

-- Location: LCCOMB_X71_Y1_N30
\inst1|shift_reg~194\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~194_combout\ = (\load~input_o\ & ((\parallel_in[189]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(188)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(188),
	datab => \parallel_in[189]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~194_combout\);

-- Location: FF_X116_Y61_N3
\inst1|shift_reg[187]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(187));

-- Location: LCCOMB_X116_Y61_N24
\inst1|shift_reg~195\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~195_combout\ = (\load~input_o\ & (\parallel_in[188]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(187))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \parallel_in[188]~input_o\,
	datad => \inst1|shift_reg\(187),
	combout => \inst1|shift_reg~195_combout\);

-- Location: FF_X116_Y61_N13
\inst1|shift_reg[186]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(186));

-- Location: LCCOMB_X116_Y61_N2
\inst1|shift_reg~196\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~196_combout\ = (\load~input_o\ & ((\parallel_in[187]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(186)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(186),
	datac => \load~input_o\,
	datad => \parallel_in[187]~input_o\,
	combout => \inst1|shift_reg~196_combout\);

-- Location: FF_X116_Y61_N7
\inst1|shift_reg[185]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(185));

-- Location: LCCOMB_X116_Y61_N12
\inst1|shift_reg~197\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~197_combout\ = (\load~input_o\ & ((\parallel_in[186]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(185)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(185),
	datac => \load~input_o\,
	datad => \parallel_in[186]~input_o\,
	combout => \inst1|shift_reg~197_combout\);

-- Location: FF_X116_Y61_N1
\inst1|shift_reg[184]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(184));

-- Location: LCCOMB_X116_Y61_N6
\inst1|shift_reg~198\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~198_combout\ = (\load~input_o\ & ((\parallel_in[185]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(184)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(184),
	datac => \load~input_o\,
	datad => \parallel_in[185]~input_o\,
	combout => \inst1|shift_reg~198_combout\);

-- Location: FF_X116_Y61_N27
\inst1|shift_reg[183]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(183));

-- Location: LCCOMB_X116_Y61_N0
\inst1|shift_reg~199\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~199_combout\ = (\load~input_o\ & ((\parallel_in[184]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(183)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(183),
	datab => \parallel_in[184]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~199_combout\);

-- Location: FF_X116_Y61_N5
\inst1|shift_reg[182]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(182));

-- Location: LCCOMB_X116_Y61_N26
\inst1|shift_reg~200\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~200_combout\ = (\load~input_o\ & ((\parallel_in[183]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(182)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(182),
	datac => \load~input_o\,
	datad => \parallel_in[183]~input_o\,
	combout => \inst1|shift_reg~200_combout\);

-- Location: FF_X116_Y61_N23
\inst1|shift_reg[181]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(181));

-- Location: LCCOMB_X116_Y61_N4
\inst1|shift_reg~201\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~201_combout\ = (\load~input_o\ & ((\parallel_in[182]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(181)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(181),
	datab => \load~input_o\,
	datac => \parallel_in[182]~input_o\,
	combout => \inst1|shift_reg~201_combout\);

-- Location: FF_X116_Y61_N9
\inst1|shift_reg[180]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(180));

-- Location: LCCOMB_X116_Y61_N22
\inst1|shift_reg~202\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~202_combout\ = (\load~input_o\ & ((\parallel_in[181]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(180)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(180),
	datac => \load~input_o\,
	datad => \parallel_in[181]~input_o\,
	combout => \inst1|shift_reg~202_combout\);

-- Location: FF_X116_Y61_N19
\inst1|shift_reg[179]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(179));

-- Location: LCCOMB_X116_Y61_N8
\inst1|shift_reg~203\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~203_combout\ = (\load~input_o\ & ((\parallel_in[180]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(179)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(179),
	datac => \load~input_o\,
	datad => \parallel_in[180]~input_o\,
	combout => \inst1|shift_reg~203_combout\);

-- Location: FF_X116_Y61_N21
\inst1|shift_reg[178]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~205_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(178));

-- Location: LCCOMB_X116_Y61_N18
\inst1|shift_reg~204\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~204_combout\ = (\load~input_o\ & ((\parallel_in[179]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(178)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(178),
	datac => \load~input_o\,
	datad => \parallel_in[179]~input_o\,
	combout => \inst1|shift_reg~204_combout\);

-- Location: FF_X116_Y61_N15
\inst1|shift_reg[177]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(177));

-- Location: LCCOMB_X116_Y61_N20
\inst1|shift_reg~205\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~205_combout\ = (\load~input_o\ & ((\parallel_in[178]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(177)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(177),
	datac => \load~input_o\,
	datad => \parallel_in[178]~input_o\,
	combout => \inst1|shift_reg~205_combout\);

-- Location: FF_X116_Y61_N17
\inst1|shift_reg[176]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(176));

-- Location: LCCOMB_X116_Y61_N14
\inst1|shift_reg~206\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~206_combout\ = (\load~input_o\ & (\parallel_in[177]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(176))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[177]~input_o\,
	datab => \inst1|shift_reg\(176),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~206_combout\);

-- Location: FF_X116_Y61_N11
\inst1|shift_reg[175]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(175));

-- Location: LCCOMB_X116_Y61_N16
\inst1|shift_reg~207\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~207_combout\ = (\load~input_o\ & ((\parallel_in[176]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(175)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(175),
	datab => \parallel_in[176]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~207_combout\);

-- Location: FF_X116_Y61_N29
\inst1|shift_reg[174]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(174));

-- Location: LCCOMB_X116_Y61_N10
\inst1|shift_reg~208\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~208_combout\ = (\load~input_o\ & ((\parallel_in[175]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(174)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(174),
	datac => \load~input_o\,
	datad => \parallel_in[175]~input_o\,
	combout => \inst1|shift_reg~208_combout\);

-- Location: FF_X116_Y61_N31
\inst1|shift_reg[173]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(173));

-- Location: LCCOMB_X116_Y61_N28
\inst1|shift_reg~209\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~209_combout\ = (\load~input_o\ & ((\parallel_in[174]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(173)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(173),
	datac => \load~input_o\,
	datad => \parallel_in[174]~input_o\,
	combout => \inst1|shift_reg~209_combout\);

-- Location: FF_X116_Y15_N9
\inst1|shift_reg[172]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(172));

-- Location: LCCOMB_X116_Y61_N30
\inst1|shift_reg~210\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~210_combout\ = (\load~input_o\ & (\parallel_in[173]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(172))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[173]~input_o\,
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(172),
	combout => \inst1|shift_reg~210_combout\);

-- Location: FF_X116_Y15_N3
\inst1|shift_reg[171]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(171));

-- Location: LCCOMB_X116_Y15_N8
\inst1|shift_reg~211\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~211_combout\ = (\load~input_o\ & ((\parallel_in[172]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(171)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(171),
	datad => \parallel_in[172]~input_o\,
	combout => \inst1|shift_reg~211_combout\);

-- Location: FF_X116_Y15_N13
\inst1|shift_reg[170]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(170));

-- Location: LCCOMB_X116_Y15_N2
\inst1|shift_reg~212\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~212_combout\ = (\load~input_o\ & ((\parallel_in[171]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(170)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(170),
	datac => \load~input_o\,
	datad => \parallel_in[171]~input_o\,
	combout => \inst1|shift_reg~212_combout\);

-- Location: FF_X116_Y15_N7
\inst1|shift_reg[169]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(169));

-- Location: LCCOMB_X116_Y15_N12
\inst1|shift_reg~213\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~213_combout\ = (\load~input_o\ & ((\parallel_in[170]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(169)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(169),
	datac => \load~input_o\,
	datad => \parallel_in[170]~input_o\,
	combout => \inst1|shift_reg~213_combout\);

-- Location: FF_X116_Y15_N1
\inst1|shift_reg[168]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(168));

-- Location: LCCOMB_X116_Y15_N6
\inst1|shift_reg~214\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~214_combout\ = (\load~input_o\ & ((\parallel_in[169]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(168)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(168),
	datad => \parallel_in[169]~input_o\,
	combout => \inst1|shift_reg~214_combout\);

-- Location: FF_X116_Y15_N27
\inst1|shift_reg[167]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(167));

-- Location: LCCOMB_X116_Y15_N0
\inst1|shift_reg~215\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~215_combout\ = (\load~input_o\ & ((\parallel_in[168]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(167)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(167),
	datac => \load~input_o\,
	datad => \parallel_in[168]~input_o\,
	combout => \inst1|shift_reg~215_combout\);

-- Location: FF_X116_Y15_N5
\inst1|shift_reg[166]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(166));

-- Location: LCCOMB_X116_Y15_N26
\inst1|shift_reg~216\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~216_combout\ = (\load~input_o\ & ((\parallel_in[167]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(166)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(166),
	datad => \parallel_in[167]~input_o\,
	combout => \inst1|shift_reg~216_combout\);

-- Location: FF_X116_Y15_N23
\inst1|shift_reg[165]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(165));

-- Location: LCCOMB_X116_Y15_N4
\inst1|shift_reg~217\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~217_combout\ = (\load~input_o\ & ((\parallel_in[166]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(165)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(165),
	datab => \parallel_in[166]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~217_combout\);

-- Location: FF_X116_Y15_N17
\inst1|shift_reg[164]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(164));

-- Location: LCCOMB_X116_Y15_N22
\inst1|shift_reg~218\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~218_combout\ = (\load~input_o\ & ((\parallel_in[165]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(164)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(164),
	datad => \parallel_in[165]~input_o\,
	combout => \inst1|shift_reg~218_combout\);

-- Location: FF_X116_Y15_N19
\inst1|shift_reg[163]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~220_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(163));

-- Location: LCCOMB_X116_Y15_N16
\inst1|shift_reg~219\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~219_combout\ = (\load~input_o\ & ((\parallel_in[164]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(163)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(163),
	datad => \parallel_in[164]~input_o\,
	combout => \inst1|shift_reg~219_combout\);

-- Location: FF_X116_Y15_N21
\inst1|shift_reg[162]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(162));

-- Location: LCCOMB_X116_Y15_N18
\inst1|shift_reg~220\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~220_combout\ = (\load~input_o\ & (\parallel_in[163]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(162))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \parallel_in[163]~input_o\,
	datad => \inst1|shift_reg\(162),
	combout => \inst1|shift_reg~220_combout\);

-- Location: FF_X116_Y15_N15
\inst1|shift_reg[161]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(161));

-- Location: LCCOMB_X116_Y15_N20
\inst1|shift_reg~221\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~221_combout\ = (\load~input_o\ & ((\parallel_in[162]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(161)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(161),
	datac => \parallel_in[162]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~221_combout\);

-- Location: FF_X116_Y15_N25
\inst1|shift_reg[160]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(160));

-- Location: LCCOMB_X116_Y15_N14
\inst1|shift_reg~222\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~222_combout\ = (\load~input_o\ & (\parallel_in[161]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(160))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[161]~input_o\,
	datab => \load~input_o\,
	datad => \inst1|shift_reg\(160),
	combout => \inst1|shift_reg~222_combout\);

-- Location: FF_X116_Y15_N11
\inst1|shift_reg[159]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(159));

-- Location: LCCOMB_X116_Y15_N24
\inst1|shift_reg~223\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~223_combout\ = (\load~input_o\ & ((\parallel_in[160]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(159)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(159),
	datac => \load~input_o\,
	datad => \parallel_in[160]~input_o\,
	combout => \inst1|shift_reg~223_combout\);

-- Location: FF_X116_Y15_N29
\inst1|shift_reg[158]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(158));

-- Location: LCCOMB_X116_Y15_N10
\inst1|shift_reg~224\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~224_combout\ = (\load~input_o\ & (\parallel_in[159]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(158))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[159]~input_o\,
	datab => \inst1|shift_reg\(158),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~224_combout\);

-- Location: FF_X116_Y15_N31
\inst1|shift_reg[157]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(157));

-- Location: LCCOMB_X116_Y15_N28
\inst1|shift_reg~225\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~225_combout\ = (\load~input_o\ & ((\parallel_in[158]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(157)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(157),
	datab => \parallel_in[158]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~225_combout\);

-- Location: FF_X96_Y1_N25
\inst1|shift_reg[156]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(156));

-- Location: LCCOMB_X116_Y15_N30
\inst1|shift_reg~226\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~226_combout\ = (\load~input_o\ & ((\parallel_in[157]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(156)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(156),
	datab => \parallel_in[157]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~226_combout\);

-- Location: FF_X96_Y1_N27
\inst1|shift_reg[155]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(155));

-- Location: LCCOMB_X96_Y1_N24
\inst1|shift_reg~227\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~227_combout\ = (\load~input_o\ & ((\parallel_in[156]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(155)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \inst1|shift_reg\(155),
	datad => \parallel_in[156]~input_o\,
	combout => \inst1|shift_reg~227_combout\);

-- Location: FF_X96_Y1_N5
\inst1|shift_reg[154]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(154));

-- Location: LCCOMB_X96_Y1_N26
\inst1|shift_reg~228\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~228_combout\ = (\load~input_o\ & ((\parallel_in[155]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(154)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(154),
	datac => \parallel_in[155]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~228_combout\);

-- Location: FF_X96_Y1_N23
\inst1|shift_reg[153]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(153));

-- Location: LCCOMB_X96_Y1_N4
\inst1|shift_reg~229\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~229_combout\ = (\load~input_o\ & (\parallel_in[154]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(153))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[154]~input_o\,
	datac => \inst1|shift_reg\(153),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~229_combout\);

-- Location: FF_X96_Y1_N9
\inst1|shift_reg[152]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(152));

-- Location: LCCOMB_X96_Y1_N22
\inst1|shift_reg~230\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~230_combout\ = (\load~input_o\ & ((\parallel_in[153]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(152)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \inst1|shift_reg\(152),
	datad => \parallel_in[153]~input_o\,
	combout => \inst1|shift_reg~230_combout\);

-- Location: FF_X96_Y1_N11
\inst1|shift_reg[151]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(151));

-- Location: LCCOMB_X96_Y1_N8
\inst1|shift_reg~231\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~231_combout\ = (\load~input_o\ & (\parallel_in[152]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(151))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \parallel_in[152]~input_o\,
	datad => \inst1|shift_reg\(151),
	combout => \inst1|shift_reg~231_combout\);

-- Location: FF_X96_Y1_N21
\inst1|shift_reg[150]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(150));

-- Location: LCCOMB_X96_Y1_N10
\inst1|shift_reg~232\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~232_combout\ = (\load~input_o\ & ((\parallel_in[151]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(150)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(150),
	datac => \parallel_in[151]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~232_combout\);

-- Location: FF_X96_Y1_N15
\inst1|shift_reg[149]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(149));

-- Location: LCCOMB_X96_Y1_N20
\inst1|shift_reg~233\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~233_combout\ = (\load~input_o\ & ((\parallel_in[150]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(149)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \inst1|shift_reg\(149),
	datad => \parallel_in[150]~input_o\,
	combout => \inst1|shift_reg~233_combout\);

-- Location: FF_X96_Y1_N1
\inst1|shift_reg[148]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(148));

-- Location: LCCOMB_X96_Y1_N14
\inst1|shift_reg~234\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~234_combout\ = (\load~input_o\ & ((\parallel_in[149]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(148)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(148),
	datac => \parallel_in[149]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~234_combout\);

-- Location: FF_X96_Y1_N19
\inst1|shift_reg[147]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(147));

-- Location: LCCOMB_X96_Y1_N0
\inst1|shift_reg~235\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~235_combout\ = (\load~input_o\ & (\parallel_in[148]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(147))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \parallel_in[148]~input_o\,
	datad => \inst1|shift_reg\(147),
	combout => \inst1|shift_reg~235_combout\);

-- Location: FF_X96_Y1_N29
\inst1|shift_reg[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(146));

-- Location: LCCOMB_X96_Y1_N18
\inst1|shift_reg~236\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~236_combout\ = (\load~input_o\ & ((\parallel_in[147]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(146)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(146),
	datad => \parallel_in[147]~input_o\,
	combout => \inst1|shift_reg~236_combout\);

-- Location: FF_X96_Y1_N31
\inst1|shift_reg[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(145));

-- Location: LCCOMB_X96_Y1_N28
\inst1|shift_reg~237\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~237_combout\ = (\load~input_o\ & (\parallel_in[146]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(145))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[146]~input_o\,
	datac => \inst1|shift_reg\(145),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~237_combout\);

-- Location: FF_X96_Y1_N17
\inst1|shift_reg[144]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(144));

-- Location: LCCOMB_X96_Y1_N30
\inst1|shift_reg~238\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~238_combout\ = (\load~input_o\ & ((\parallel_in[145]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(144)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(144),
	datad => \parallel_in[145]~input_o\,
	combout => \inst1|shift_reg~238_combout\);

-- Location: FF_X96_Y1_N3
\inst1|shift_reg[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(143));

-- Location: LCCOMB_X96_Y1_N16
\inst1|shift_reg~239\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~239_combout\ = (\load~input_o\ & (\parallel_in[144]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(143))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \parallel_in[144]~input_o\,
	datad => \inst1|shift_reg\(143),
	combout => \inst1|shift_reg~239_combout\);

-- Location: FF_X96_Y1_N13
\inst1|shift_reg[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~241_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(142));

-- Location: LCCOMB_X96_Y1_N2
\inst1|shift_reg~240\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~240_combout\ = (\load~input_o\ & (\parallel_in[143]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(142))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \parallel_in[143]~input_o\,
	datad => \inst1|shift_reg\(142),
	combout => \inst1|shift_reg~240_combout\);

-- Location: FF_X96_Y1_N7
\inst1|shift_reg[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(141));

-- Location: LCCOMB_X96_Y1_N12
\inst1|shift_reg~241\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~241_combout\ = (\load~input_o\ & (\parallel_in[142]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(141))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \parallel_in[142]~input_o\,
	datad => \inst1|shift_reg\(141),
	combout => \inst1|shift_reg~241_combout\);

-- Location: FF_X29_Y90_N25
\inst1|shift_reg[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~243_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(140));

-- Location: LCCOMB_X96_Y1_N6
\inst1|shift_reg~242\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~242_combout\ = (\load~input_o\ & ((\parallel_in[141]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(140)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(140),
	datad => \parallel_in[141]~input_o\,
	combout => \inst1|shift_reg~242_combout\);

-- Location: FF_X29_Y90_N19
\inst1|shift_reg[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(139));

-- Location: LCCOMB_X29_Y90_N24
\inst1|shift_reg~243\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~243_combout\ = (\load~input_o\ & (\parallel_in[140]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(139))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[140]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(139),
	combout => \inst1|shift_reg~243_combout\);

-- Location: FF_X29_Y90_N21
\inst1|shift_reg[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~245_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(138));

-- Location: LCCOMB_X29_Y90_N18
\inst1|shift_reg~244\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~244_combout\ = (\load~input_o\ & (\parallel_in[139]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(138))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[139]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(138),
	combout => \inst1|shift_reg~244_combout\);

-- Location: FF_X29_Y90_N23
\inst1|shift_reg[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(137));

-- Location: LCCOMB_X29_Y90_N20
\inst1|shift_reg~245\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~245_combout\ = (\load~input_o\ & ((\parallel_in[138]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(137)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(137),
	datab => \load~input_o\,
	datac => \parallel_in[138]~input_o\,
	combout => \inst1|shift_reg~245_combout\);

-- Location: FF_X29_Y90_N1
\inst1|shift_reg[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~247_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(136));

-- Location: LCCOMB_X29_Y90_N22
\inst1|shift_reg~246\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~246_combout\ = (\load~input_o\ & (\parallel_in[137]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(136))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[137]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(136),
	combout => \inst1|shift_reg~246_combout\);

-- Location: FF_X29_Y90_N3
\inst1|shift_reg[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(135));

-- Location: LCCOMB_X29_Y90_N0
\inst1|shift_reg~247\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~247_combout\ = (\load~input_o\ & (\parallel_in[136]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(135))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[136]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(135),
	combout => \inst1|shift_reg~247_combout\);

-- Location: FF_X29_Y90_N29
\inst1|shift_reg[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~249_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(134));

-- Location: LCCOMB_X29_Y90_N2
\inst1|shift_reg~248\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~248_combout\ = (\load~input_o\ & (\parallel_in[135]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(134))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[135]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(134),
	combout => \inst1|shift_reg~248_combout\);

-- Location: FF_X29_Y90_N7
\inst1|shift_reg[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(133));

-- Location: LCCOMB_X29_Y90_N28
\inst1|shift_reg~249\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~249_combout\ = (\load~input_o\ & ((\parallel_in[134]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(133)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(133),
	datac => \load~input_o\,
	datad => \parallel_in[134]~input_o\,
	combout => \inst1|shift_reg~249_combout\);

-- Location: FF_X29_Y90_N9
\inst1|shift_reg[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~251_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(132));

-- Location: LCCOMB_X29_Y90_N6
\inst1|shift_reg~250\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~250_combout\ = (\load~input_o\ & (\parallel_in[133]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(132))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[133]~input_o\,
	datab => \inst1|shift_reg\(132),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~250_combout\);

-- Location: FF_X29_Y90_N11
\inst1|shift_reg[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(131));

-- Location: LCCOMB_X29_Y90_N8
\inst1|shift_reg~251\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~251_combout\ = (\load~input_o\ & ((\parallel_in[132]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(131)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(131),
	datac => \load~input_o\,
	datad => \parallel_in[132]~input_o\,
	combout => \inst1|shift_reg~251_combout\);

-- Location: FF_X29_Y90_N5
\inst1|shift_reg[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(130));

-- Location: LCCOMB_X29_Y90_N10
\inst1|shift_reg~252\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~252_combout\ = (\load~input_o\ & ((\parallel_in[131]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(130)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(130),
	datac => \load~input_o\,
	datad => \parallel_in[131]~input_o\,
	combout => \inst1|shift_reg~252_combout\);

-- Location: FF_X29_Y90_N31
\inst1|shift_reg[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(129));

-- Location: LCCOMB_X29_Y90_N4
\inst1|shift_reg~253\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~253_combout\ = (\load~input_o\ & ((\parallel_in[130]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(129)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(129),
	datac => \load~input_o\,
	datad => \parallel_in[130]~input_o\,
	combout => \inst1|shift_reg~253_combout\);

-- Location: FF_X29_Y90_N17
\inst1|shift_reg[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(128));

-- Location: LCCOMB_X29_Y90_N30
\inst1|shift_reg~254\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~254_combout\ = (\load~input_o\ & (\parallel_in[129]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(128))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[129]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(128),
	combout => \inst1|shift_reg~254_combout\);

-- Location: FF_X29_Y90_N27
\inst1|shift_reg[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(127));

-- Location: LCCOMB_X29_Y90_N16
\inst1|shift_reg~255\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~255_combout\ = (\load~input_o\ & ((\parallel_in[128]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(127)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(127),
	datab => \parallel_in[128]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~255_combout\);

-- Location: FF_X29_Y90_N13
\inst1|shift_reg[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(126));

-- Location: LCCOMB_X29_Y90_N26
\inst1|shift_reg~256\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~256_combout\ = (\load~input_o\ & ((\parallel_in[127]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(126),
	datac => \load~input_o\,
	datad => \parallel_in[127]~input_o\,
	combout => \inst1|shift_reg~256_combout\);

-- Location: FF_X29_Y90_N15
\inst1|shift_reg[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(125));

-- Location: LCCOMB_X29_Y90_N12
\inst1|shift_reg~257\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~257_combout\ = (\load~input_o\ & ((\parallel_in[126]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(125)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(125),
	datac => \load~input_o\,
	datad => \parallel_in[126]~input_o\,
	combout => \inst1|shift_reg~257_combout\);

-- Location: FF_X18_Y90_N9
\inst1|shift_reg[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(124));

-- Location: LCCOMB_X29_Y90_N14
\inst1|shift_reg~258\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~258_combout\ = (\load~input_o\ & ((\parallel_in[125]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(124)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(124),
	datac => \load~input_o\,
	datad => \parallel_in[125]~input_o\,
	combout => \inst1|shift_reg~258_combout\);

-- Location: FF_X18_Y90_N27
\inst1|shift_reg[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(123));

-- Location: LCCOMB_X18_Y90_N8
\inst1|shift_reg~259\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~259_combout\ = (\load~input_o\ & (\parallel_in[124]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(123))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[124]~input_o\,
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(123),
	combout => \inst1|shift_reg~259_combout\);

-- Location: FF_X18_Y90_N5
\inst1|shift_reg[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(122));

-- Location: LCCOMB_X18_Y90_N26
\inst1|shift_reg~260\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~260_combout\ = (\load~input_o\ & ((\parallel_in[123]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(122)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(122),
	datac => \load~input_o\,
	datad => \parallel_in[123]~input_o\,
	combout => \inst1|shift_reg~260_combout\);

-- Location: FF_X18_Y90_N7
\inst1|shift_reg[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(121));

-- Location: LCCOMB_X18_Y90_N4
\inst1|shift_reg~261\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~261_combout\ = (\load~input_o\ & ((\parallel_in[122]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(121)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(121),
	datac => \load~input_o\,
	datad => \parallel_in[122]~input_o\,
	combout => \inst1|shift_reg~261_combout\);

-- Location: FF_X18_Y90_N1
\inst1|shift_reg[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(120));

-- Location: LCCOMB_X18_Y90_N6
\inst1|shift_reg~262\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~262_combout\ = (\load~input_o\ & (\parallel_in[121]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(120))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[121]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(120),
	combout => \inst1|shift_reg~262_combout\);

-- Location: FF_X18_Y90_N19
\inst1|shift_reg[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(119));

-- Location: LCCOMB_X18_Y90_N0
\inst1|shift_reg~263\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~263_combout\ = (\load~input_o\ & (\parallel_in[120]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(119))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[120]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(119),
	combout => \inst1|shift_reg~263_combout\);

-- Location: FF_X18_Y90_N29
\inst1|shift_reg[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(118));

-- Location: LCCOMB_X18_Y90_N18
\inst1|shift_reg~264\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~264_combout\ = (\load~input_o\ & (\parallel_in[119]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(118))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[119]~input_o\,
	datab => \inst1|shift_reg\(118),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~264_combout\);

-- Location: FF_X18_Y90_N15
\inst1|shift_reg[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(117));

-- Location: LCCOMB_X18_Y90_N28
\inst1|shift_reg~265\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~265_combout\ = (\load~input_o\ & (\parallel_in[118]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(117))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[118]~input_o\,
	datab => \inst1|shift_reg\(117),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~265_combout\);

-- Location: FF_X18_Y90_N25
\inst1|shift_reg[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(116));

-- Location: LCCOMB_X18_Y90_N14
\inst1|shift_reg~266\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~266_combout\ = (\load~input_o\ & (\parallel_in[117]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(116))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[117]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(116),
	combout => \inst1|shift_reg~266_combout\);

-- Location: FF_X18_Y90_N3
\inst1|shift_reg[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(115));

-- Location: LCCOMB_X18_Y90_N24
\inst1|shift_reg~267\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~267_combout\ = (\load~input_o\ & ((\parallel_in[116]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(115)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(115),
	datac => \load~input_o\,
	datad => \parallel_in[116]~input_o\,
	combout => \inst1|shift_reg~267_combout\);

-- Location: FF_X18_Y90_N21
\inst1|shift_reg[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~269_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(114));

-- Location: LCCOMB_X18_Y90_N2
\inst1|shift_reg~268\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~268_combout\ = (\load~input_o\ & (\parallel_in[115]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(114))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[115]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(114),
	combout => \inst1|shift_reg~268_combout\);

-- Location: FF_X18_Y90_N31
\inst1|shift_reg[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(113));

-- Location: LCCOMB_X18_Y90_N20
\inst1|shift_reg~269\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~269_combout\ = (\load~input_o\ & ((\parallel_in[114]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(113)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(113),
	datac => \load~input_o\,
	datad => \parallel_in[114]~input_o\,
	combout => \inst1|shift_reg~269_combout\);

-- Location: FF_X18_Y90_N17
\inst1|shift_reg[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(112));

-- Location: LCCOMB_X18_Y90_N30
\inst1|shift_reg~270\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~270_combout\ = (\load~input_o\ & (\parallel_in[113]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(112))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[113]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(112),
	combout => \inst1|shift_reg~270_combout\);

-- Location: FF_X18_Y90_N11
\inst1|shift_reg[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(111));

-- Location: LCCOMB_X18_Y90_N16
\inst1|shift_reg~271\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~271_combout\ = (\load~input_o\ & ((\parallel_in[112]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(111)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(111),
	datab => \parallel_in[112]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~271_combout\);

-- Location: FF_X18_Y90_N13
\inst1|shift_reg[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(110));

-- Location: LCCOMB_X18_Y90_N10
\inst1|shift_reg~272\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~272_combout\ = (\load~input_o\ & (\parallel_in[111]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(110))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[111]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(110),
	combout => \inst1|shift_reg~272_combout\);

-- Location: FF_X18_Y90_N23
\inst1|shift_reg[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(109));

-- Location: LCCOMB_X18_Y90_N12
\inst1|shift_reg~273\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~273_combout\ = (\load~input_o\ & ((\parallel_in[110]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(109)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(109),
	datab => \parallel_in[110]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~273_combout\);

-- Location: FF_X116_Y4_N25
\inst1|shift_reg[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(108));

-- Location: LCCOMB_X18_Y90_N22
\inst1|shift_reg~274\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~274_combout\ = (\load~input_o\ & (\parallel_in[109]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(108))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[109]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(108),
	combout => \inst1|shift_reg~274_combout\);

-- Location: FF_X116_Y4_N3
\inst1|shift_reg[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~276_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(107));

-- Location: LCCOMB_X116_Y4_N24
\inst1|shift_reg~275\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~275_combout\ = (\load~input_o\ & (\parallel_in[108]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \parallel_in[108]~input_o\,
	datad => \inst1|shift_reg\(107),
	combout => \inst1|shift_reg~275_combout\);

-- Location: FF_X116_Y4_N13
\inst1|shift_reg[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(106));

-- Location: LCCOMB_X116_Y4_N2
\inst1|shift_reg~276\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~276_combout\ = (\load~input_o\ & (\parallel_in[107]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \parallel_in[107]~input_o\,
	datad => \inst1|shift_reg\(106),
	combout => \inst1|shift_reg~276_combout\);

-- Location: FF_X116_Y4_N23
\inst1|shift_reg[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(105));

-- Location: LCCOMB_X116_Y4_N12
\inst1|shift_reg~277\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~277_combout\ = (\load~input_o\ & ((\parallel_in[106]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \inst1|shift_reg\(105),
	datad => \parallel_in[106]~input_o\,
	combout => \inst1|shift_reg~277_combout\);

-- Location: FF_X116_Y4_N17
\inst1|shift_reg[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~279_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(104));

-- Location: LCCOMB_X116_Y4_N22
\inst1|shift_reg~278\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~278_combout\ = (\load~input_o\ & ((\parallel_in[105]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(104)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(104),
	datac => \parallel_in[105]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~278_combout\);

-- Location: FF_X116_Y4_N11
\inst1|shift_reg[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(103));

-- Location: LCCOMB_X116_Y4_N16
\inst1|shift_reg~279\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~279_combout\ = (\load~input_o\ & (\parallel_in[104]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(103))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \parallel_in[104]~input_o\,
	datad => \inst1|shift_reg\(103),
	combout => \inst1|shift_reg~279_combout\);

-- Location: FF_X116_Y4_N5
\inst1|shift_reg[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(102));

-- Location: LCCOMB_X116_Y4_N10
\inst1|shift_reg~280\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~280_combout\ = (\load~input_o\ & ((\parallel_in[103]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(102)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(102),
	datac => \parallel_in[103]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~280_combout\);

-- Location: FF_X116_Y4_N15
\inst1|shift_reg[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(101));

-- Location: LCCOMB_X116_Y4_N4
\inst1|shift_reg~281\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~281_combout\ = (\load~input_o\ & ((\parallel_in[102]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(101),
	datac => \parallel_in[102]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~281_combout\);

-- Location: FF_X116_Y4_N9
\inst1|shift_reg[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(100));

-- Location: LCCOMB_X116_Y4_N14
\inst1|shift_reg~282\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~282_combout\ = (\load~input_o\ & ((\parallel_in[101]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(100)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(100),
	datac => \parallel_in[101]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~282_combout\);

-- Location: FF_X116_Y4_N27
\inst1|shift_reg[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(99));

-- Location: LCCOMB_X116_Y4_N8
\inst1|shift_reg~283\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~283_combout\ = (\load~input_o\ & (\parallel_in[100]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(99))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[100]~input_o\,
	datac => \inst1|shift_reg\(99),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~283_combout\);

-- Location: FF_X116_Y4_N21
\inst1|shift_reg[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(98));

-- Location: LCCOMB_X116_Y4_N26
\inst1|shift_reg~284\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~284_combout\ = (\load~input_o\ & ((\parallel_in[99]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(98)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(98),
	datad => \parallel_in[99]~input_o\,
	combout => \inst1|shift_reg~284_combout\);

-- Location: FF_X116_Y4_N31
\inst1|shift_reg[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(97));

-- Location: LCCOMB_X116_Y4_N20
\inst1|shift_reg~285\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~285_combout\ = (\load~input_o\ & ((\parallel_in[98]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(97)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \inst1|shift_reg\(97),
	datad => \parallel_in[98]~input_o\,
	combout => \inst1|shift_reg~285_combout\);

-- Location: FF_X116_Y4_N1
\inst1|shift_reg[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~287_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(96));

-- Location: LCCOMB_X116_Y4_N30
\inst1|shift_reg~286\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~286_combout\ = (\load~input_o\ & (\parallel_in[97]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(96))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \parallel_in[97]~input_o\,
	datad => \inst1|shift_reg\(96),
	combout => \inst1|shift_reg~286_combout\);

-- Location: FF_X116_Y4_N19
\inst1|shift_reg[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~288_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(95));

-- Location: LCCOMB_X116_Y4_N0
\inst1|shift_reg~287\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~287_combout\ = (\load~input_o\ & ((\parallel_in[96]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(95)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(95),
	datad => \parallel_in[96]~input_o\,
	combout => \inst1|shift_reg~287_combout\);

-- Location: FF_X116_Y4_N29
\inst1|shift_reg[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~289_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(94));

-- Location: LCCOMB_X116_Y4_N18
\inst1|shift_reg~288\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~288_combout\ = (\load~input_o\ & (\parallel_in[95]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(94))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \parallel_in[95]~input_o\,
	datad => \inst1|shift_reg\(94),
	combout => \inst1|shift_reg~288_combout\);

-- Location: FF_X116_Y4_N7
\inst1|shift_reg[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(93));

-- Location: LCCOMB_X116_Y4_N28
\inst1|shift_reg~289\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~289_combout\ = (\load~input_o\ & (\parallel_in[94]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(93))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \parallel_in[94]~input_o\,
	datad => \inst1|shift_reg\(93),
	combout => \inst1|shift_reg~289_combout\);

-- Location: FF_X116_Y35_N9
\inst1|shift_reg[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~291_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(92));

-- Location: LCCOMB_X116_Y4_N6
\inst1|shift_reg~290\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~290_combout\ = (\load~input_o\ & (\parallel_in[93]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(92))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \parallel_in[93]~input_o\,
	datad => \inst1|shift_reg\(92),
	combout => \inst1|shift_reg~290_combout\);

-- Location: FF_X116_Y35_N3
\inst1|shift_reg[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(91));

-- Location: LCCOMB_X116_Y35_N8
\inst1|shift_reg~291\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~291_combout\ = (\load~input_o\ & (\parallel_in[92]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(91))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \parallel_in[92]~input_o\,
	datad => \inst1|shift_reg\(91),
	combout => \inst1|shift_reg~291_combout\);

-- Location: FF_X116_Y35_N29
\inst1|shift_reg[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(90));

-- Location: LCCOMB_X116_Y35_N2
\inst1|shift_reg~292\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~292_combout\ = (\load~input_o\ & ((\parallel_in[91]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(90)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(90),
	datac => \load~input_o\,
	datad => \parallel_in[91]~input_o\,
	combout => \inst1|shift_reg~292_combout\);

-- Location: FF_X116_Y35_N31
\inst1|shift_reg[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(89));

-- Location: LCCOMB_X116_Y35_N28
\inst1|shift_reg~293\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~293_combout\ = (\load~input_o\ & ((\parallel_in[90]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(89),
	datab => \parallel_in[90]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~293_combout\);

-- Location: FF_X116_Y35_N25
\inst1|shift_reg[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(88));

-- Location: LCCOMB_X116_Y35_N30
\inst1|shift_reg~294\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~294_combout\ = (\load~input_o\ & ((\parallel_in[89]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(88)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(88),
	datac => \load~input_o\,
	datad => \parallel_in[89]~input_o\,
	combout => \inst1|shift_reg~294_combout\);

-- Location: FF_X116_Y35_N27
\inst1|shift_reg[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(87));

-- Location: LCCOMB_X116_Y35_N24
\inst1|shift_reg~295\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~295_combout\ = (\load~input_o\ & ((\parallel_in[88]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(87)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(87),
	datab => \load~input_o\,
	datad => \parallel_in[88]~input_o\,
	combout => \inst1|shift_reg~295_combout\);

-- Location: FF_X116_Y35_N21
\inst1|shift_reg[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(86));

-- Location: LCCOMB_X116_Y35_N26
\inst1|shift_reg~296\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~296_combout\ = (\load~input_o\ & ((\parallel_in[87]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(86)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(86),
	datac => \load~input_o\,
	datad => \parallel_in[87]~input_o\,
	combout => \inst1|shift_reg~296_combout\);

-- Location: FF_X116_Y35_N7
\inst1|shift_reg[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(85));

-- Location: LCCOMB_X116_Y35_N20
\inst1|shift_reg~297\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~297_combout\ = (\load~input_o\ & ((\parallel_in[86]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(85),
	datab => \load~input_o\,
	datad => \parallel_in[86]~input_o\,
	combout => \inst1|shift_reg~297_combout\);

-- Location: FF_X116_Y35_N17
\inst1|shift_reg[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(84));

-- Location: LCCOMB_X116_Y35_N6
\inst1|shift_reg~298\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~298_combout\ = (\load~input_o\ & ((\parallel_in[85]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(84)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(84),
	datac => \load~input_o\,
	datad => \parallel_in[85]~input_o\,
	combout => \inst1|shift_reg~298_combout\);

-- Location: FF_X116_Y35_N19
\inst1|shift_reg[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(83));

-- Location: LCCOMB_X116_Y35_N16
\inst1|shift_reg~299\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~299_combout\ = (\load~input_o\ & ((\parallel_in[84]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(83)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(83),
	datac => \load~input_o\,
	datad => \parallel_in[84]~input_o\,
	combout => \inst1|shift_reg~299_combout\);

-- Location: FF_X116_Y35_N5
\inst1|shift_reg[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~301_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(82));

-- Location: LCCOMB_X116_Y35_N18
\inst1|shift_reg~300\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~300_combout\ = (\load~input_o\ & ((\parallel_in[83]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(82)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(82),
	datac => \parallel_in[83]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~300_combout\);

-- Location: FF_X116_Y35_N15
\inst1|shift_reg[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(81));

-- Location: LCCOMB_X116_Y35_N4
\inst1|shift_reg~301\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~301_combout\ = (\load~input_o\ & (\parallel_in[82]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(81))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[82]~input_o\,
	datab => \inst1|shift_reg\(81),
	datad => \load~input_o\,
	combout => \inst1|shift_reg~301_combout\);

-- Location: FF_X116_Y35_N1
\inst1|shift_reg[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~303_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(80));

-- Location: LCCOMB_X116_Y35_N14
\inst1|shift_reg~302\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~302_combout\ = (\load~input_o\ & (\parallel_in[81]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(80))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \parallel_in[81]~input_o\,
	datad => \inst1|shift_reg\(80),
	combout => \inst1|shift_reg~302_combout\);

-- Location: FF_X116_Y35_N11
\inst1|shift_reg[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~304_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(79));

-- Location: LCCOMB_X116_Y35_N0
\inst1|shift_reg~303\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~303_combout\ = (\load~input_o\ & ((\parallel_in[80]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(79),
	datab => \load~input_o\,
	datad => \parallel_in[80]~input_o\,
	combout => \inst1|shift_reg~303_combout\);

-- Location: FF_X116_Y35_N13
\inst1|shift_reg[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~305_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(78));

-- Location: LCCOMB_X116_Y35_N10
\inst1|shift_reg~304\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~304_combout\ = (\load~input_o\ & ((\parallel_in[79]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(78)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(78),
	datab => \parallel_in[79]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~304_combout\);

-- Location: FF_X116_Y35_N23
\inst1|shift_reg[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~306_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(77));

-- Location: LCCOMB_X116_Y35_N12
\inst1|shift_reg~305\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~305_combout\ = (\load~input_o\ & ((\parallel_in[78]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(77)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(77),
	datab => \load~input_o\,
	datad => \parallel_in[78]~input_o\,
	combout => \inst1|shift_reg~305_combout\);

-- Location: FF_X112_Y90_N25
\inst1|shift_reg[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~307_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(76));

-- Location: LCCOMB_X116_Y35_N22
\inst1|shift_reg~306\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~306_combout\ = (\load~input_o\ & ((\parallel_in[77]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(76)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(76),
	datab => \parallel_in[77]~input_o\,
	datad => \load~input_o\,
	combout => \inst1|shift_reg~306_combout\);

-- Location: FF_X112_Y90_N19
\inst1|shift_reg[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~308_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(75));

-- Location: LCCOMB_X112_Y90_N24
\inst1|shift_reg~307\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~307_combout\ = (\load~input_o\ & (\parallel_in[76]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(75))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[76]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(75),
	combout => \inst1|shift_reg~307_combout\);

-- Location: FF_X112_Y90_N13
\inst1|shift_reg[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~309_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(74));

-- Location: LCCOMB_X112_Y90_N18
\inst1|shift_reg~308\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~308_combout\ = (\load~input_o\ & (\parallel_in[75]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(74))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[75]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(74),
	combout => \inst1|shift_reg~308_combout\);

-- Location: FF_X112_Y90_N7
\inst1|shift_reg[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(73));

-- Location: LCCOMB_X112_Y90_N12
\inst1|shift_reg~309\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~309_combout\ = (\load~input_o\ & (\parallel_in[74]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(73))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[74]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(73),
	combout => \inst1|shift_reg~309_combout\);

-- Location: FF_X112_Y90_N1
\inst1|shift_reg[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(72));

-- Location: LCCOMB_X112_Y90_N6
\inst1|shift_reg~310\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~310_combout\ = (\load~input_o\ & (\parallel_in[73]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[73]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(72),
	combout => \inst1|shift_reg~310_combout\);

-- Location: FF_X112_Y90_N3
\inst1|shift_reg[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(71));

-- Location: LCCOMB_X112_Y90_N0
\inst1|shift_reg~311\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~311_combout\ = (\load~input_o\ & (\parallel_in[72]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(71))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[72]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(71),
	combout => \inst1|shift_reg~311_combout\);

-- Location: FF_X112_Y90_N5
\inst1|shift_reg[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~313_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(70));

-- Location: LCCOMB_X112_Y90_N2
\inst1|shift_reg~312\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~312_combout\ = (\load~input_o\ & ((\parallel_in[71]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(70)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(70),
	datad => \parallel_in[71]~input_o\,
	combout => \inst1|shift_reg~312_combout\);

-- Location: FF_X112_Y90_N15
\inst1|shift_reg[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~314_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(69));

-- Location: LCCOMB_X112_Y90_N4
\inst1|shift_reg~313\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~313_combout\ = (\load~input_o\ & ((\parallel_in[70]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(69),
	datac => \load~input_o\,
	datad => \parallel_in[70]~input_o\,
	combout => \inst1|shift_reg~313_combout\);

-- Location: FF_X112_Y90_N9
\inst1|shift_reg[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~315_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(68));

-- Location: LCCOMB_X112_Y90_N14
\inst1|shift_reg~314\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~314_combout\ = (\load~input_o\ & ((\parallel_in[69]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(68)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(68),
	datac => \load~input_o\,
	datad => \parallel_in[69]~input_o\,
	combout => \inst1|shift_reg~314_combout\);

-- Location: FF_X112_Y90_N11
\inst1|shift_reg[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(67));

-- Location: LCCOMB_X112_Y90_N8
\inst1|shift_reg~315\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~315_combout\ = (\load~input_o\ & (\parallel_in[68]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[68]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(67),
	combout => \inst1|shift_reg~315_combout\);

-- Location: FF_X112_Y90_N21
\inst1|shift_reg[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~317_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(66));

-- Location: LCCOMB_X112_Y90_N10
\inst1|shift_reg~316\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~316_combout\ = (\load~input_o\ & ((\parallel_in[67]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(66)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(66),
	datac => \load~input_o\,
	datad => \parallel_in[67]~input_o\,
	combout => \inst1|shift_reg~316_combout\);

-- Location: FF_X112_Y90_N23
\inst1|shift_reg[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(65));

-- Location: LCCOMB_X112_Y90_N20
\inst1|shift_reg~317\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~317_combout\ = (\load~input_o\ & ((\parallel_in[66]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(65),
	datac => \load~input_o\,
	datad => \parallel_in[66]~input_o\,
	combout => \inst1|shift_reg~317_combout\);

-- Location: FF_X112_Y90_N17
\inst1|shift_reg[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~319_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(64));

-- Location: LCCOMB_X112_Y90_N22
\inst1|shift_reg~318\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~318_combout\ = (\load~input_o\ & ((\parallel_in[65]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(64)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(64),
	datac => \load~input_o\,
	datad => \parallel_in[65]~input_o\,
	combout => \inst1|shift_reg~318_combout\);

-- Location: FF_X112_Y90_N27
\inst1|shift_reg[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(63));

-- Location: LCCOMB_X112_Y90_N16
\inst1|shift_reg~319\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~319_combout\ = (\load~input_o\ & ((\parallel_in[64]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(63),
	datac => \load~input_o\,
	datad => \parallel_in[64]~input_o\,
	combout => \inst1|shift_reg~319_combout\);

-- Location: FF_X112_Y90_N29
\inst1|shift_reg[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(62));

-- Location: LCCOMB_X112_Y90_N26
\inst1|shift_reg~320\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~320_combout\ = (\load~input_o\ & (\parallel_in[63]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[63]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(62),
	combout => \inst1|shift_reg~320_combout\);

-- Location: FF_X53_Y90_N25
\inst1|shift_reg[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~322_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(61));

-- Location: LCCOMB_X112_Y90_N28
\inst1|shift_reg~321\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~321_combout\ = (\load~input_o\ & ((\parallel_in[62]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(61),
	datab => \load~input_o\,
	datac => \parallel_in[62]~input_o\,
	combout => \inst1|shift_reg~321_combout\);

-- Location: FF_X53_Y90_N3
\inst1|shift_reg[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~323_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(60));

-- Location: LCCOMB_X53_Y90_N24
\inst1|shift_reg~322\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~322_combout\ = (\load~input_o\ & ((\parallel_in[61]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(60),
	datac => \load~input_o\,
	datad => \parallel_in[61]~input_o\,
	combout => \inst1|shift_reg~322_combout\);

-- Location: FF_X53_Y90_N29
\inst1|shift_reg[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~324_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(59));

-- Location: LCCOMB_X53_Y90_N2
\inst1|shift_reg~323\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~323_combout\ = (\load~input_o\ & (\parallel_in[60]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[60]~input_o\,
	datab => \inst1|shift_reg\(59),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~323_combout\);

-- Location: FF_X53_Y90_N7
\inst1|shift_reg[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(58));

-- Location: LCCOMB_X53_Y90_N28
\inst1|shift_reg~324\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~324_combout\ = (\load~input_o\ & ((\parallel_in[59]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(58),
	datab => \parallel_in[59]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~324_combout\);

-- Location: FF_X53_Y90_N9
\inst1|shift_reg[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(57));

-- Location: LCCOMB_X53_Y90_N6
\inst1|shift_reg~325\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~325_combout\ = (\load~input_o\ & (\parallel_in[58]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[58]~input_o\,
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(57),
	combout => \inst1|shift_reg~325_combout\);

-- Location: FF_X53_Y90_N27
\inst1|shift_reg[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(56));

-- Location: LCCOMB_X53_Y90_N8
\inst1|shift_reg~326\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~326_combout\ = (\load~input_o\ & ((\parallel_in[57]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(56),
	datab => \parallel_in[57]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~326_combout\);

-- Location: FF_X53_Y90_N5
\inst1|shift_reg[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(55));

-- Location: LCCOMB_X53_Y90_N26
\inst1|shift_reg~327\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~327_combout\ = (\load~input_o\ & ((\parallel_in[56]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(55),
	datac => \load~input_o\,
	datad => \parallel_in[56]~input_o\,
	combout => \inst1|shift_reg~327_combout\);

-- Location: FF_X53_Y90_N23
\inst1|shift_reg[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(54));

-- Location: LCCOMB_X53_Y90_N4
\inst1|shift_reg~328\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~328_combout\ = (\load~input_o\ & ((\parallel_in[55]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(54),
	datab => \parallel_in[55]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~328_combout\);

-- Location: FF_X53_Y90_N1
\inst1|shift_reg[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(53));

-- Location: LCCOMB_X53_Y90_N22
\inst1|shift_reg~329\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~329_combout\ = (\load~input_o\ & ((\parallel_in[54]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(53),
	datac => \load~input_o\,
	datad => \parallel_in[54]~input_o\,
	combout => \inst1|shift_reg~329_combout\);

-- Location: FF_X53_Y90_N19
\inst1|shift_reg[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(52));

-- Location: LCCOMB_X53_Y90_N0
\inst1|shift_reg~330\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~330_combout\ = (\load~input_o\ & (\parallel_in[53]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[53]~input_o\,
	datab => \inst1|shift_reg\(52),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~330_combout\);

-- Location: FF_X53_Y90_N21
\inst1|shift_reg[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(51));

-- Location: LCCOMB_X53_Y90_N18
\inst1|shift_reg~331\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~331_combout\ = (\load~input_o\ & (\parallel_in[52]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[52]~input_o\,
	datab => \inst1|shift_reg\(51),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~331_combout\);

-- Location: FF_X53_Y90_N15
\inst1|shift_reg[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~333_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(50));

-- Location: LCCOMB_X53_Y90_N20
\inst1|shift_reg~332\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~332_combout\ = (\load~input_o\ & (\parallel_in[51]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[51]~input_o\,
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(50),
	combout => \inst1|shift_reg~332_combout\);

-- Location: FF_X53_Y90_N17
\inst1|shift_reg[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~334_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(49));

-- Location: LCCOMB_X53_Y90_N14
\inst1|shift_reg~333\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~333_combout\ = (\load~input_o\ & ((\parallel_in[50]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(49),
	datac => \load~input_o\,
	datad => \parallel_in[50]~input_o\,
	combout => \inst1|shift_reg~333_combout\);

-- Location: FF_X53_Y90_N11
\inst1|shift_reg[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(48));

-- Location: LCCOMB_X53_Y90_N16
\inst1|shift_reg~334\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~334_combout\ = (\load~input_o\ & ((\parallel_in[49]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(48),
	datab => \load~input_o\,
	datac => \parallel_in[49]~input_o\,
	combout => \inst1|shift_reg~334_combout\);

-- Location: FF_X53_Y90_N13
\inst1|shift_reg[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(47));

-- Location: LCCOMB_X53_Y90_N10
\inst1|shift_reg~335\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~335_combout\ = (\load~input_o\ & (\parallel_in[48]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[48]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(47),
	combout => \inst1|shift_reg~335_combout\);

-- Location: FF_X53_Y90_N31
\inst1|shift_reg[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~337_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(46));

-- Location: LCCOMB_X53_Y90_N12
\inst1|shift_reg~336\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~336_combout\ = (\load~input_o\ & ((\parallel_in[47]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(46),
	datab => \load~input_o\,
	datac => \parallel_in[47]~input_o\,
	combout => \inst1|shift_reg~336_combout\);

-- Location: FF_X69_Y90_N1
\inst1|shift_reg[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(45));

-- Location: LCCOMB_X53_Y90_N30
\inst1|shift_reg~337\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~337_combout\ = (\load~input_o\ & ((\parallel_in[46]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(45),
	datab => \parallel_in[46]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~337_combout\);

-- Location: FF_X69_Y90_N19
\inst1|shift_reg[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(44));

-- Location: LCCOMB_X69_Y90_N0
\inst1|shift_reg~338\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~338_combout\ = (\load~input_o\ & ((\parallel_in[45]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(44),
	datac => \parallel_in[45]~input_o\,
	combout => \inst1|shift_reg~338_combout\);

-- Location: FF_X69_Y90_N29
\inst1|shift_reg[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~340_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(43));

-- Location: LCCOMB_X69_Y90_N18
\inst1|shift_reg~339\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~339_combout\ = (\load~input_o\ & ((\parallel_in[44]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(43),
	datac => \parallel_in[44]~input_o\,
	combout => \inst1|shift_reg~339_combout\);

-- Location: FF_X69_Y90_N7
\inst1|shift_reg[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~341_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(42));

-- Location: LCCOMB_X69_Y90_N28
\inst1|shift_reg~340\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~340_combout\ = (\load~input_o\ & ((\parallel_in[43]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(42),
	datac => \load~input_o\,
	datad => \parallel_in[43]~input_o\,
	combout => \inst1|shift_reg~340_combout\);

-- Location: FF_X69_Y90_N9
\inst1|shift_reg[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~342_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(41));

-- Location: LCCOMB_X69_Y90_N6
\inst1|shift_reg~341\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~341_combout\ = (\load~input_o\ & (\parallel_in[42]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[42]~input_o\,
	datab => \inst1|shift_reg\(41),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~341_combout\);

-- Location: FF_X69_Y90_N27
\inst1|shift_reg[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~343_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(40));

-- Location: LCCOMB_X69_Y90_N8
\inst1|shift_reg~342\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~342_combout\ = (\load~input_o\ & ((\parallel_in[41]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(40),
	datac => \load~input_o\,
	datad => \parallel_in[41]~input_o\,
	combout => \inst1|shift_reg~342_combout\);

-- Location: FF_X69_Y90_N21
\inst1|shift_reg[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(39));

-- Location: LCCOMB_X69_Y90_N26
\inst1|shift_reg~343\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~343_combout\ = (\load~input_o\ & ((\parallel_in[40]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(39),
	datac => \parallel_in[40]~input_o\,
	combout => \inst1|shift_reg~343_combout\);

-- Location: FF_X69_Y90_N23
\inst1|shift_reg[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(38));

-- Location: LCCOMB_X69_Y90_N20
\inst1|shift_reg~344\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~344_combout\ = (\load~input_o\ & ((\parallel_in[39]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(38),
	datab => \parallel_in[39]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~344_combout\);

-- Location: FF_X69_Y90_N25
\inst1|shift_reg[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~346_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(37));

-- Location: LCCOMB_X69_Y90_N22
\inst1|shift_reg~345\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~345_combout\ = (\load~input_o\ & ((\parallel_in[38]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(37),
	datac => \parallel_in[38]~input_o\,
	combout => \inst1|shift_reg~345_combout\);

-- Location: FF_X69_Y90_N3
\inst1|shift_reg[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(36));

-- Location: LCCOMB_X69_Y90_N24
\inst1|shift_reg~346\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~346_combout\ = (\load~input_o\ & ((\parallel_in[37]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(36),
	datac => \parallel_in[37]~input_o\,
	combout => \inst1|shift_reg~346_combout\);

-- Location: FF_X69_Y90_N5
\inst1|shift_reg[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(35));

-- Location: LCCOMB_X69_Y90_N2
\inst1|shift_reg~347\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~347_combout\ = (\load~input_o\ & (\parallel_in[36]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \parallel_in[36]~input_o\,
	datac => \inst1|shift_reg\(35),
	combout => \inst1|shift_reg~347_combout\);

-- Location: FF_X69_Y90_N15
\inst1|shift_reg[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(34));

-- Location: LCCOMB_X69_Y90_N4
\inst1|shift_reg~348\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~348_combout\ = (\load~input_o\ & (\parallel_in[35]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[35]~input_o\,
	datab => \inst1|shift_reg\(34),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~348_combout\);

-- Location: FF_X69_Y90_N17
\inst1|shift_reg[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~350_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(33));

-- Location: LCCOMB_X69_Y90_N14
\inst1|shift_reg~349\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~349_combout\ = (\load~input_o\ & (\parallel_in[34]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[34]~input_o\,
	datab => \inst1|shift_reg\(33),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~349_combout\);

-- Location: FF_X69_Y90_N11
\inst1|shift_reg[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~351_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(32));

-- Location: LCCOMB_X69_Y90_N16
\inst1|shift_reg~350\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~350_combout\ = (\load~input_o\ & ((\parallel_in[33]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(32),
	datab => \parallel_in[33]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~350_combout\);

-- Location: FF_X69_Y90_N13
\inst1|shift_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~352_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(31));

-- Location: LCCOMB_X69_Y90_N10
\inst1|shift_reg~351\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~351_combout\ = (\load~input_o\ & ((\parallel_in[32]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(31),
	datac => \load~input_o\,
	datad => \parallel_in[32]~input_o\,
	combout => \inst1|shift_reg~351_combout\);

-- Location: FF_X69_Y90_N31
\inst1|shift_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~353_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(30));

-- Location: LCCOMB_X69_Y90_N12
\inst1|shift_reg~352\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~352_combout\ = (\load~input_o\ & ((\parallel_in[31]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \inst1|shift_reg\(30),
	datad => \parallel_in[31]~input_o\,
	combout => \inst1|shift_reg~352_combout\);

-- Location: FF_X86_Y90_N17
\inst1|shift_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~354_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(29));

-- Location: LCCOMB_X69_Y90_N30
\inst1|shift_reg~353\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~353_combout\ = (\load~input_o\ & ((\parallel_in[30]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(29),
	datac => \parallel_in[30]~input_o\,
	combout => \inst1|shift_reg~353_combout\);

-- Location: FF_X86_Y90_N3
\inst1|shift_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~355_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(28));

-- Location: LCCOMB_X86_Y90_N16
\inst1|shift_reg~354\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~354_combout\ = (\load~input_o\ & ((\parallel_in[29]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(28),
	datac => \load~input_o\,
	datad => \parallel_in[29]~input_o\,
	combout => \inst1|shift_reg~354_combout\);

-- Location: FF_X86_Y90_N13
\inst1|shift_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(27));

-- Location: LCCOMB_X86_Y90_N2
\inst1|shift_reg~355\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~355_combout\ = (\load~input_o\ & ((\parallel_in[28]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(27),
	datab => \load~input_o\,
	datac => \parallel_in[28]~input_o\,
	combout => \inst1|shift_reg~355_combout\);

-- Location: FF_X86_Y90_N7
\inst1|shift_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~357_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(26));

-- Location: LCCOMB_X86_Y90_N12
\inst1|shift_reg~356\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~356_combout\ = (\load~input_o\ & ((\parallel_in[27]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(26),
	datab => \parallel_in[27]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~356_combout\);

-- Location: FF_X86_Y90_N1
\inst1|shift_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~358_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(25));

-- Location: LCCOMB_X86_Y90_N6
\inst1|shift_reg~357\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~357_combout\ = (\load~input_o\ & (\parallel_in[26]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[26]~input_o\,
	datab => \inst1|shift_reg\(25),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~357_combout\);

-- Location: FF_X86_Y90_N27
\inst1|shift_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~359_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(24));

-- Location: LCCOMB_X86_Y90_N0
\inst1|shift_reg~358\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~358_combout\ = (\load~input_o\ & ((\parallel_in[25]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(24),
	datad => \parallel_in[25]~input_o\,
	combout => \inst1|shift_reg~358_combout\);

-- Location: FF_X86_Y90_N21
\inst1|shift_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~360_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(23));

-- Location: LCCOMB_X86_Y90_N26
\inst1|shift_reg~359\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~359_combout\ = (\load~input_o\ & (\parallel_in[24]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[24]~input_o\,
	datab => \inst1|shift_reg\(23),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~359_combout\);

-- Location: FF_X86_Y90_N15
\inst1|shift_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~361_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(22));

-- Location: LCCOMB_X86_Y90_N20
\inst1|shift_reg~360\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~360_combout\ = (\load~input_o\ & ((\parallel_in[23]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(22),
	datac => \load~input_o\,
	datad => \parallel_in[23]~input_o\,
	combout => \inst1|shift_reg~360_combout\);

-- Location: FF_X86_Y90_N9
\inst1|shift_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~362_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(21));

-- Location: LCCOMB_X86_Y90_N14
\inst1|shift_reg~361\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~361_combout\ = (\load~input_o\ & (\parallel_in[22]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[22]~input_o\,
	datab => \load~input_o\,
	datac => \inst1|shift_reg\(21),
	combout => \inst1|shift_reg~361_combout\);

-- Location: FF_X86_Y90_N19
\inst1|shift_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~363_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(20));

-- Location: LCCOMB_X86_Y90_N8
\inst1|shift_reg~362\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~362_combout\ = (\load~input_o\ & (\parallel_in[21]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[21]~input_o\,
	datab => \inst1|shift_reg\(20),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~362_combout\);

-- Location: FF_X86_Y90_N5
\inst1|shift_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~364_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(19));

-- Location: LCCOMB_X86_Y90_N18
\inst1|shift_reg~363\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~363_combout\ = (\load~input_o\ & ((\parallel_in[20]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(19),
	datac => \load~input_o\,
	datad => \parallel_in[20]~input_o\,
	combout => \inst1|shift_reg~363_combout\);

-- Location: FF_X86_Y90_N23
\inst1|shift_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~365_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(18));

-- Location: LCCOMB_X86_Y90_N4
\inst1|shift_reg~364\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~364_combout\ = (\load~input_o\ & ((\parallel_in[19]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(18),
	datab => \parallel_in[19]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~364_combout\);

-- Location: FF_X86_Y90_N25
\inst1|shift_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~366_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(17));

-- Location: LCCOMB_X86_Y90_N22
\inst1|shift_reg~365\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~365_combout\ = (\load~input_o\ & (\parallel_in[18]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[18]~input_o\,
	datab => \inst1|shift_reg\(17),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~365_combout\);

-- Location: FF_X86_Y90_N11
\inst1|shift_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~367_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(16));

-- Location: LCCOMB_X86_Y90_N24
\inst1|shift_reg~366\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~366_combout\ = (\load~input_o\ & ((\parallel_in[17]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(16),
	datab => \load~input_o\,
	datac => \parallel_in[17]~input_o\,
	combout => \inst1|shift_reg~366_combout\);

-- Location: FF_X86_Y90_N29
\inst1|shift_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~368_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(15));

-- Location: LCCOMB_X86_Y90_N10
\inst1|shift_reg~367\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~367_combout\ = (\load~input_o\ & ((\parallel_in[16]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(15),
	datac => \load~input_o\,
	datad => \parallel_in[16]~input_o\,
	combout => \inst1|shift_reg~367_combout\);

-- Location: FF_X98_Y90_N1
\inst1|shift_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~369_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(14));

-- Location: LCCOMB_X86_Y90_N28
\inst1|shift_reg~368\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~368_combout\ = (\load~input_o\ & (\parallel_in[15]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \parallel_in[15]~input_o\,
	datad => \inst1|shift_reg\(14),
	combout => \inst1|shift_reg~368_combout\);

-- Location: FF_X98_Y90_N3
\inst1|shift_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~370_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(13));

-- Location: LCCOMB_X98_Y90_N0
\inst1|shift_reg~369\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~369_combout\ = (\load~input_o\ & (\parallel_in[14]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \parallel_in[14]~input_o\,
	datad => \inst1|shift_reg\(13),
	combout => \inst1|shift_reg~369_combout\);

-- Location: FF_X98_Y90_N13
\inst1|shift_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~371_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(12));

-- Location: LCCOMB_X98_Y90_N2
\inst1|shift_reg~370\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~370_combout\ = (\load~input_o\ & (\parallel_in[13]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[13]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(12),
	combout => \inst1|shift_reg~370_combout\);

-- Location: FF_X98_Y90_N15
\inst1|shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~372_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(11));

-- Location: LCCOMB_X98_Y90_N12
\inst1|shift_reg~371\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~371_combout\ = (\load~input_o\ & ((\parallel_in[12]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst1|shift_reg\(11),
	datac => \parallel_in[12]~input_o\,
	combout => \inst1|shift_reg~371_combout\);

-- Location: FF_X98_Y90_N9
\inst1|shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~373_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(10));

-- Location: LCCOMB_X98_Y90_N14
\inst1|shift_reg~372\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~372_combout\ = (\load~input_o\ & ((\parallel_in[11]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(10),
	datac => \load~input_o\,
	datad => \parallel_in[11]~input_o\,
	combout => \inst1|shift_reg~372_combout\);

-- Location: FF_X98_Y90_N27
\inst1|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(9));

-- Location: LCCOMB_X98_Y90_N8
\inst1|shift_reg~373\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~373_combout\ = (\load~input_o\ & ((\parallel_in[10]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(9),
	datac => \load~input_o\,
	datad => \parallel_in[10]~input_o\,
	combout => \inst1|shift_reg~373_combout\);

-- Location: FF_X98_Y90_N5
\inst1|shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(8));

-- Location: LCCOMB_X98_Y90_N26
\inst1|shift_reg~374\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~374_combout\ = (\load~input_o\ & (\parallel_in[9]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[9]~input_o\,
	datab => \inst1|shift_reg\(8),
	datac => \load~input_o\,
	combout => \inst1|shift_reg~374_combout\);

-- Location: FF_X98_Y90_N7
\inst1|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(7));

-- Location: LCCOMB_X98_Y90_N4
\inst1|shift_reg~375\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~375_combout\ = (\load~input_o\ & (\parallel_in[8]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[8]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(7),
	combout => \inst1|shift_reg~375_combout\);

-- Location: FF_X98_Y90_N17
\inst1|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(6));

-- Location: LCCOMB_X98_Y90_N6
\inst1|shift_reg~376\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~376_combout\ = (\load~input_o\ & (\parallel_in[7]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[7]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(6),
	combout => \inst1|shift_reg~376_combout\);

-- Location: FF_X98_Y90_N11
\inst1|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(5));

-- Location: LCCOMB_X98_Y90_N16
\inst1|shift_reg~377\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~377_combout\ = (\load~input_o\ & (\parallel_in[6]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[6]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(5),
	combout => \inst1|shift_reg~377_combout\);

-- Location: FF_X98_Y90_N21
\inst1|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(4));

-- Location: LCCOMB_X98_Y90_N10
\inst1|shift_reg~378\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~378_combout\ = (\load~input_o\ & (\parallel_in[5]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \parallel_in[5]~input_o\,
	datad => \inst1|shift_reg\(4),
	combout => \inst1|shift_reg~378_combout\);

-- Location: FF_X98_Y90_N23
\inst1|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(3));

-- Location: LCCOMB_X98_Y90_N20
\inst1|shift_reg~379\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~379_combout\ = (\load~input_o\ & ((\parallel_in[4]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(3),
	datab => \parallel_in[4]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~379_combout\);

-- Location: FF_X98_Y90_N25
\inst1|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(2));

-- Location: LCCOMB_X98_Y90_N22
\inst1|shift_reg~380\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~380_combout\ = (\load~input_o\ & (\parallel_in[3]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parallel_in[3]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(2),
	combout => \inst1|shift_reg~380_combout\);

-- Location: FF_X98_Y90_N19
\inst1|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(1));

-- Location: LCCOMB_X98_Y90_N24
\inst1|shift_reg~381\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~381_combout\ = (\load~input_o\ & (\parallel_in[2]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \parallel_in[2]~input_o\,
	datac => \load~input_o\,
	datad => \inst1|shift_reg\(1),
	combout => \inst1|shift_reg~381_combout\);

-- Location: FF_X98_Y90_N29
\inst1|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(0));

-- Location: LCCOMB_X98_Y90_N18
\inst1|shift_reg~382\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~382_combout\ = (\load~input_o\ & ((\parallel_in[1]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shift_reg\(0),
	datac => \load~input_o\,
	datad => \parallel_in[1]~input_o\,
	combout => \inst1|shift_reg~382_combout\);

-- Location: LCCOMB_X98_Y90_N28
\inst1|shift_reg~383\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~383_combout\ = (\load~input_o\ & \parallel_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \load~input_o\,
	datad => \parallel_in[0]~input_o\,
	combout => \inst1|shift_reg~383_combout\);

-- Location: IOIBUF_X39_Y0_N15
\parallel_in[381]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(381),
	o => \parallel_in[381]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\parallel_in[380]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(380),
	o => \parallel_in[380]~input_o\);

-- Location: IOIBUF_X39_Y0_N8
\parallel_in[379]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(379),
	o => \parallel_in[379]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\parallel_in[378]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(378),
	o => \parallel_in[378]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\parallel_in[377]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(377),
	o => \parallel_in[377]~input_o\);

-- Location: IOIBUF_X41_Y0_N22
\parallel_in[376]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(376),
	o => \parallel_in[376]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\parallel_in[375]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(375),
	o => \parallel_in[375]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\parallel_in[374]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(374),
	o => \parallel_in[374]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\parallel_in[373]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(373),
	o => \parallel_in[373]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\parallel_in[372]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(372),
	o => \parallel_in[372]~input_o\);

-- Location: IOIBUF_X39_Y0_N22
\parallel_in[371]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(371),
	o => \parallel_in[371]~input_o\);

-- Location: IOIBUF_X39_Y0_N1
\parallel_in[370]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(370),
	o => \parallel_in[370]~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\parallel_in[369]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(369),
	o => \parallel_in[369]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\parallel_in[368]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(368),
	o => \parallel_in[368]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\parallel_in[367]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(367),
	o => \parallel_in[367]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\parallel_in[366]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(366),
	o => \parallel_in[366]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\parallel_in[365]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(365),
	o => \parallel_in[365]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\parallel_in[364]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(364),
	o => \parallel_in[364]~input_o\);

-- Location: IOIBUF_X24_Y91_N8
\parallel_in[363]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(363),
	o => \parallel_in[363]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\parallel_in[362]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(362),
	o => \parallel_in[362]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\parallel_in[361]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(361),
	o => \parallel_in[361]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\parallel_in[360]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(360),
	o => \parallel_in[360]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\parallel_in[359]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(359),
	o => \parallel_in[359]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\parallel_in[358]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(358),
	o => \parallel_in[358]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\parallel_in[357]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(357),
	o => \parallel_in[357]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\parallel_in[356]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(356),
	o => \parallel_in[356]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\parallel_in[355]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(355),
	o => \parallel_in[355]~input_o\);

-- Location: IOIBUF_X24_Y0_N15
\parallel_in[354]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(354),
	o => \parallel_in[354]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\parallel_in[353]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(353),
	o => \parallel_in[353]~input_o\);

-- Location: IOIBUF_X46_Y0_N22
\parallel_in[352]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(352),
	o => \parallel_in[352]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\parallel_in[351]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(351),
	o => \parallel_in[351]~input_o\);

-- Location: IOIBUF_X46_Y0_N15
\parallel_in[350]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(350),
	o => \parallel_in[350]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\parallel_in[349]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(349),
	o => \parallel_in[349]~input_o\);

-- Location: IOIBUF_X61_Y0_N8
\parallel_in[348]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(348),
	o => \parallel_in[348]~input_o\);

-- Location: IOIBUF_X63_Y0_N15
\parallel_in[347]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(347),
	o => \parallel_in[347]~input_o\);

-- Location: IOIBUF_X61_Y0_N1
\parallel_in[346]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(346),
	o => \parallel_in[346]~input_o\);

-- Location: IOIBUF_X53_Y0_N22
\parallel_in[345]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(345),
	o => \parallel_in[345]~input_o\);

-- Location: IOIBUF_X53_Y0_N15
\parallel_in[344]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(344),
	o => \parallel_in[344]~input_o\);

-- Location: IOIBUF_X61_Y0_N15
\parallel_in[343]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(343),
	o => \parallel_in[343]~input_o\);

-- Location: IOIBUF_X50_Y0_N15
\parallel_in[342]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(342),
	o => \parallel_in[342]~input_o\);

-- Location: IOIBUF_X63_Y0_N22
\parallel_in[341]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(341),
	o => \parallel_in[341]~input_o\);

-- Location: IOIBUF_X61_Y0_N22
\parallel_in[340]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(340),
	o => \parallel_in[340]~input_o\);

-- Location: IOIBUF_X63_Y0_N1
\parallel_in[339]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(339),
	o => \parallel_in[339]~input_o\);

-- Location: IOIBUF_X66_Y0_N22
\parallel_in[338]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(338),
	o => \parallel_in[338]~input_o\);

-- Location: IOIBUF_X48_Y0_N1
\parallel_in[337]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(337),
	o => \parallel_in[337]~input_o\);

-- Location: IOIBUF_X66_Y0_N1
\parallel_in[336]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(336),
	o => \parallel_in[336]~input_o\);

-- Location: IOIBUF_X63_Y0_N8
\parallel_in[335]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(335),
	o => \parallel_in[335]~input_o\);

-- Location: IOIBUF_X53_Y0_N1
\parallel_in[334]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(334),
	o => \parallel_in[334]~input_o\);

-- Location: IOIBUF_X53_Y0_N8
\parallel_in[333]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(333),
	o => \parallel_in[333]~input_o\);

-- Location: IOIBUF_X86_Y0_N1
\parallel_in[332]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(332),
	o => \parallel_in[332]~input_o\);

-- Location: IOIBUF_X84_Y0_N15
\parallel_in[331]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(331),
	o => \parallel_in[331]~input_o\);

-- Location: IOIBUF_X84_Y0_N22
\parallel_in[330]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(330),
	o => \parallel_in[330]~input_o\);

-- Location: IOIBUF_X88_Y0_N8
\parallel_in[329]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(329),
	o => \parallel_in[329]~input_o\);

-- Location: IOIBUF_X82_Y0_N1
\parallel_in[328]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(328),
	o => \parallel_in[328]~input_o\);

-- Location: IOIBUF_X82_Y0_N8
\parallel_in[327]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(327),
	o => \parallel_in[327]~input_o\);

-- Location: IOIBUF_X88_Y0_N1
\parallel_in[326]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(326),
	o => \parallel_in[326]~input_o\);

-- Location: IOIBUF_X86_Y0_N15
\parallel_in[325]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(325),
	o => \parallel_in[325]~input_o\);

-- Location: IOIBUF_X84_Y0_N1
\parallel_in[324]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(324),
	o => \parallel_in[324]~input_o\);

-- Location: IOIBUF_X88_Y0_N15
\parallel_in[323]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(323),
	o => \parallel_in[323]~input_o\);

-- Location: IOIBUF_X82_Y0_N22
\parallel_in[322]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(322),
	o => \parallel_in[322]~input_o\);

-- Location: IOIBUF_X82_Y0_N15
\parallel_in[321]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(321),
	o => \parallel_in[321]~input_o\);

-- Location: IOIBUF_X86_Y0_N8
\parallel_in[320]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(320),
	o => \parallel_in[320]~input_o\);

-- Location: IOIBUF_X88_Y0_N22
\parallel_in[319]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(319),
	o => \parallel_in[319]~input_o\);

-- Location: IOIBUF_X86_Y0_N22
\parallel_in[318]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(318),
	o => \parallel_in[318]~input_o\);

-- Location: IOIBUF_X84_Y0_N8
\parallel_in[317]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(317),
	o => \parallel_in[317]~input_o\);

-- Location: IOIBUF_X44_Y0_N15
\parallel_in[316]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(316),
	o => \parallel_in[316]~input_o\);

-- Location: IOIBUF_X41_Y91_N1
\parallel_in[315]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(315),
	o => \parallel_in[315]~input_o\);

-- Location: IOIBUF_X46_Y91_N1
\parallel_in[314]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(314),
	o => \parallel_in[314]~input_o\);

-- Location: IOIBUF_X44_Y91_N1
\parallel_in[313]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(313),
	o => \parallel_in[313]~input_o\);

-- Location: IOIBUF_X44_Y0_N1
\parallel_in[312]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(312),
	o => \parallel_in[312]~input_o\);

-- Location: IOIBUF_X41_Y91_N15
\parallel_in[311]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(311),
	o => \parallel_in[311]~input_o\);

-- Location: IOIBUF_X44_Y91_N22
\parallel_in[310]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(310),
	o => \parallel_in[310]~input_o\);

-- Location: IOIBUF_X44_Y0_N8
\parallel_in[309]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(309),
	o => \parallel_in[309]~input_o\);

-- Location: IOIBUF_X44_Y0_N22
\parallel_in[308]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(308),
	o => \parallel_in[308]~input_o\);

-- Location: IOIBUF_X46_Y91_N15
\parallel_in[307]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(307),
	o => \parallel_in[307]~input_o\);

-- Location: IOIBUF_X48_Y91_N8
\parallel_in[306]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(306),
	o => \parallel_in[306]~input_o\);

-- Location: IOIBUF_X46_Y91_N8
\parallel_in[305]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(305),
	o => \parallel_in[305]~input_o\);

-- Location: IOIBUF_X46_Y91_N22
\parallel_in[304]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(304),
	o => \parallel_in[304]~input_o\);

-- Location: IOIBUF_X44_Y91_N15
\parallel_in[303]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(303),
	o => \parallel_in[303]~input_o\);

-- Location: IOIBUF_X41_Y91_N8
\parallel_in[302]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(302),
	o => \parallel_in[302]~input_o\);

-- Location: IOIBUF_X44_Y91_N8
\parallel_in[301]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(301),
	o => \parallel_in[301]~input_o\);

-- Location: IOIBUF_X34_Y91_N15
\parallel_in[300]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(300),
	o => \parallel_in[300]~input_o\);

-- Location: IOIBUF_X37_Y91_N1
\parallel_in[299]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(299),
	o => \parallel_in[299]~input_o\);

-- Location: IOIBUF_X39_Y91_N1
\parallel_in[298]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(298),
	o => \parallel_in[298]~input_o\);

-- Location: IOIBUF_X34_Y91_N1
\parallel_in[297]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(297),
	o => \parallel_in[297]~input_o\);

-- Location: IOIBUF_X39_Y91_N8
\parallel_in[296]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(296),
	o => \parallel_in[296]~input_o\);

-- Location: IOIBUF_X34_Y91_N8
\parallel_in[295]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(295),
	o => \parallel_in[295]~input_o\);

-- Location: IOIBUF_X41_Y91_N22
\parallel_in[294]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(294),
	o => \parallel_in[294]~input_o\);

-- Location: IOIBUF_X32_Y91_N1
\parallel_in[293]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(293),
	o => \parallel_in[293]~input_o\);

-- Location: IOIBUF_X41_Y0_N8
\parallel_in[292]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(292),
	o => \parallel_in[292]~input_o\);

-- Location: IOIBUF_X32_Y91_N22
\parallel_in[291]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(291),
	o => \parallel_in[291]~input_o\);

-- Location: IOIBUF_X39_Y91_N22
\parallel_in[290]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(290),
	o => \parallel_in[290]~input_o\);

-- Location: IOIBUF_X37_Y91_N15
\parallel_in[289]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(289),
	o => \parallel_in[289]~input_o\);

-- Location: IOIBUF_X39_Y91_N15
\parallel_in[288]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(288),
	o => \parallel_in[288]~input_o\);

-- Location: IOIBUF_X37_Y91_N8
\parallel_in[287]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(287),
	o => \parallel_in[287]~input_o\);

-- Location: IOIBUF_X37_Y91_N22
\parallel_in[286]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(286),
	o => \parallel_in[286]~input_o\);

-- Location: IOIBUF_X34_Y91_N22
\parallel_in[285]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(285),
	o => \parallel_in[285]~input_o\);

-- Location: IOIBUF_X117_Y79_N8
\parallel_in[284]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(284),
	o => \parallel_in[284]~input_o\);

-- Location: IOIBUF_X117_Y77_N1
\parallel_in[283]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(283),
	o => \parallel_in[283]~input_o\);

-- Location: IOIBUF_X117_Y80_N1
\parallel_in[282]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(282),
	o => \parallel_in[282]~input_o\);

-- Location: IOIBUF_X117_Y84_N1
\parallel_in[281]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(281),
	o => \parallel_in[281]~input_o\);

-- Location: IOIBUF_X117_Y81_N8
\parallel_in[280]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(280),
	o => \parallel_in[280]~input_o\);

-- Location: IOIBUF_X117_Y86_N1
\parallel_in[279]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(279),
	o => \parallel_in[279]~input_o\);

-- Location: IOIBUF_X117_Y81_N1
\parallel_in[278]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(278),
	o => \parallel_in[278]~input_o\);

-- Location: IOIBUF_X117_Y79_N1
\parallel_in[277]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(277),
	o => \parallel_in[277]~input_o\);

-- Location: IOIBUF_X117_Y83_N1
\parallel_in[276]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(276),
	o => \parallel_in[276]~input_o\);

-- Location: IOIBUF_X117_Y77_N8
\parallel_in[275]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(275),
	o => \parallel_in[275]~input_o\);

-- Location: IOIBUF_X117_Y84_N8
\parallel_in[274]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(274),
	o => \parallel_in[274]~input_o\);

-- Location: IOIBUF_X117_Y80_N8
\parallel_in[273]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(273),
	o => \parallel_in[273]~input_o\);

-- Location: IOIBUF_X117_Y86_N8
\parallel_in[272]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(272),
	o => \parallel_in[272]~input_o\);

-- Location: IOIBUF_X117_Y78_N1
\parallel_in[271]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(271),
	o => \parallel_in[271]~input_o\);

-- Location: IOIBUF_X115_Y91_N8
\parallel_in[270]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(270),
	o => \parallel_in[270]~input_o\);

-- Location: IOIBUF_X117_Y83_N8
\parallel_in[269]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(269),
	o => \parallel_in[269]~input_o\);

-- Location: IOIBUF_X117_Y52_N8
\parallel_in[268]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(268),
	o => \parallel_in[268]~input_o\);

-- Location: IOIBUF_X117_Y56_N8
\parallel_in[267]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(267),
	o => \parallel_in[267]~input_o\);

-- Location: IOIBUF_X117_Y57_N1
\parallel_in[266]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(266),
	o => \parallel_in[266]~input_o\);

-- Location: IOIBUF_X117_Y50_N8
\parallel_in[265]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(265),
	o => \parallel_in[265]~input_o\);

-- Location: IOIBUF_X117_Y55_N8
\parallel_in[264]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(264),
	o => \parallel_in[264]~input_o\);

-- Location: IOIBUF_X117_Y50_N1
\parallel_in[263]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(263),
	o => \parallel_in[263]~input_o\);

-- Location: IOIBUF_X117_Y52_N1
\parallel_in[262]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(262),
	o => \parallel_in[262]~input_o\);

-- Location: IOIBUF_X117_Y51_N1
\parallel_in[261]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(261),
	o => \parallel_in[261]~input_o\);

-- Location: IOIBUF_X117_Y51_N8
\parallel_in[260]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(260),
	o => \parallel_in[260]~input_o\);

-- Location: IOIBUF_X117_Y57_N8
\parallel_in[259]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(259),
	o => \parallel_in[259]~input_o\);

-- Location: IOIBUF_X117_Y53_N8
\parallel_in[258]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(258),
	o => \parallel_in[258]~input_o\);

-- Location: IOIBUF_X117_Y53_N1
\parallel_in[257]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(257),
	o => \parallel_in[257]~input_o\);

-- Location: IOIBUF_X117_Y55_N1
\parallel_in[256]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(256),
	o => \parallel_in[256]~input_o\);

-- Location: IOIBUF_X117_Y54_N8
\parallel_in[255]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(255),
	o => \parallel_in[255]~input_o\);

-- Location: IOIBUF_X117_Y56_N1
\parallel_in[254]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(254),
	o => \parallel_in[254]~input_o\);

-- Location: IOIBUF_X117_Y54_N1
\parallel_in[253]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(253),
	o => \parallel_in[253]~input_o\);

-- Location: IOIBUF_X117_Y43_N1
\parallel_in[252]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(252),
	o => \parallel_in[252]~input_o\);

-- Location: IOIBUF_X117_Y49_N8
\parallel_in[251]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(251),
	o => \parallel_in[251]~input_o\);

-- Location: IOIBUF_X117_Y43_N8
\parallel_in[250]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(250),
	o => \parallel_in[250]~input_o\);

-- Location: IOIBUF_X117_Y41_N8
\parallel_in[249]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(249),
	o => \parallel_in[249]~input_o\);

-- Location: IOIBUF_X117_Y46_N22
\parallel_in[248]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(248),
	o => \parallel_in[248]~input_o\);

-- Location: IOIBUF_X117_Y46_N15
\parallel_in[247]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(247),
	o => \parallel_in[247]~input_o\);

-- Location: IOIBUF_X117_Y44_N1
\parallel_in[246]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(246),
	o => \parallel_in[246]~input_o\);

-- Location: IOIBUF_X117_Y42_N1
\parallel_in[245]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(245),
	o => \parallel_in[245]~input_o\);

-- Location: IOIBUF_X117_Y42_N8
\parallel_in[244]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(244),
	o => \parallel_in[244]~input_o\);

-- Location: IOIBUF_X57_Y0_N8
\parallel_in[243]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(243),
	o => \parallel_in[243]~input_o\);

-- Location: IOIBUF_X57_Y0_N1
\parallel_in[242]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(242),
	o => \parallel_in[242]~input_o\);

-- Location: IOIBUF_X117_Y49_N1
\parallel_in[241]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(241),
	o => \parallel_in[241]~input_o\);

-- Location: IOIBUF_X117_Y41_N1
\parallel_in[240]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(240),
	o => \parallel_in[240]~input_o\);

-- Location: IOIBUF_X117_Y48_N1
\parallel_in[239]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(239),
	o => \parallel_in[239]~input_o\);

-- Location: IOIBUF_X117_Y48_N8
\parallel_in[238]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(238),
	o => \parallel_in[238]~input_o\);

-- Location: IOIBUF_X117_Y44_N8
\parallel_in[237]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(237),
	o => \parallel_in[237]~input_o\);

-- Location: IOIBUF_X117_Y27_N1
\parallel_in[236]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(236),
	o => \parallel_in[236]~input_o\);

-- Location: IOIBUF_X117_Y23_N1
\parallel_in[235]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(235),
	o => \parallel_in[235]~input_o\);

-- Location: IOIBUF_X117_Y21_N1
\parallel_in[234]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(234),
	o => \parallel_in[234]~input_o\);

-- Location: IOIBUF_X117_Y28_N8
\parallel_in[233]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(233),
	o => \parallel_in[233]~input_o\);

-- Location: IOIBUF_X117_Y21_N8
\parallel_in[232]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(232),
	o => \parallel_in[232]~input_o\);

-- Location: IOIBUF_X117_Y22_N1
\parallel_in[231]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(231),
	o => \parallel_in[231]~input_o\);

-- Location: IOIBUF_X117_Y24_N1
\parallel_in[230]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(230),
	o => \parallel_in[230]~input_o\);

-- Location: IOIBUF_X117_Y26_N8
\parallel_in[229]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(229),
	o => \parallel_in[229]~input_o\);

-- Location: IOIBUF_X117_Y23_N8
\parallel_in[228]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(228),
	o => \parallel_in[228]~input_o\);

-- Location: IOIBUF_X117_Y28_N1
\parallel_in[227]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(227),
	o => \parallel_in[227]~input_o\);

-- Location: IOIBUF_X117_Y26_N1
\parallel_in[226]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(226),
	o => \parallel_in[226]~input_o\);

-- Location: IOIBUF_X117_Y29_N1
\parallel_in[225]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(225),
	o => \parallel_in[225]~input_o\);

-- Location: IOIBUF_X117_Y24_N8
\parallel_in[224]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(224),
	o => \parallel_in[224]~input_o\);

-- Location: IOIBUF_X117_Y22_N8
\parallel_in[223]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(223),
	o => \parallel_in[223]~input_o\);

-- Location: IOIBUF_X117_Y29_N8
\parallel_in[222]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(222),
	o => \parallel_in[222]~input_o\);

-- Location: IOIBUF_X117_Y27_N8
\parallel_in[221]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(221),
	o => \parallel_in[221]~input_o\);

-- Location: IOIBUF_X117_Y70_N8
\parallel_in[220]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(220),
	o => \parallel_in[220]~input_o\);

-- Location: IOIBUF_X117_Y76_N1
\parallel_in[219]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(219),
	o => \parallel_in[219]~input_o\);

-- Location: IOIBUF_X117_Y66_N8
\parallel_in[218]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(218),
	o => \parallel_in[218]~input_o\);

-- Location: IOIBUF_X117_Y74_N8
\parallel_in[217]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(217),
	o => \parallel_in[217]~input_o\);

-- Location: IOIBUF_X117_Y73_N8
\parallel_in[216]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(216),
	o => \parallel_in[216]~input_o\);

-- Location: IOIBUF_X117_Y74_N1
\parallel_in[215]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(215),
	o => \parallel_in[215]~input_o\);

-- Location: IOIBUF_X117_Y72_N1
\parallel_in[214]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(214),
	o => \parallel_in[214]~input_o\);

-- Location: IOIBUF_X117_Y68_N1
\parallel_in[213]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(213),
	o => \parallel_in[213]~input_o\);

-- Location: IOIBUF_X117_Y72_N8
\parallel_in[212]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(212),
	o => \parallel_in[212]~input_o\);

-- Location: IOIBUF_X117_Y67_N1
\parallel_in[211]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(211),
	o => \parallel_in[211]~input_o\);

-- Location: IOIBUF_X117_Y69_N8
\parallel_in[210]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(210),
	o => \parallel_in[210]~input_o\);

-- Location: IOIBUF_X117_Y73_N1
\parallel_in[209]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(209),
	o => \parallel_in[209]~input_o\);

-- Location: IOIBUF_X117_Y76_N8
\parallel_in[208]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(208),
	o => \parallel_in[208]~input_o\);

-- Location: IOIBUF_X117_Y70_N1
\parallel_in[207]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(207),
	o => \parallel_in[207]~input_o\);

-- Location: IOIBUF_X117_Y69_N1
\parallel_in[206]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(206),
	o => \parallel_in[206]~input_o\);

-- Location: IOIBUF_X117_Y67_N8
\parallel_in[205]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(205),
	o => \parallel_in[205]~input_o\);

-- Location: IOIBUF_X70_Y0_N22
\parallel_in[204]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(204),
	o => \parallel_in[204]~input_o\);

-- Location: IOIBUF_X77_Y0_N22
\parallel_in[203]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(203),
	o => \parallel_in[203]~input_o\);

-- Location: IOIBUF_X77_Y0_N1
\parallel_in[202]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(202),
	o => \parallel_in[202]~input_o\);

-- Location: IOIBUF_X75_Y0_N8
\parallel_in[201]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(201),
	o => \parallel_in[201]~input_o\);

-- Location: IOIBUF_X70_Y0_N8
\parallel_in[200]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(200),
	o => \parallel_in[200]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\parallel_in[199]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(199),
	o => \parallel_in[199]~input_o\);

-- Location: IOIBUF_X75_Y0_N15
\parallel_in[198]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(198),
	o => \parallel_in[198]~input_o\);

-- Location: IOIBUF_X68_Y0_N8
\parallel_in[197]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(197),
	o => \parallel_in[197]~input_o\);

-- Location: IOIBUF_X77_Y0_N8
\parallel_in[196]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(196),
	o => \parallel_in[196]~input_o\);

-- Location: IOIBUF_X75_Y0_N22
\parallel_in[195]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(195),
	o => \parallel_in[195]~input_o\);

-- Location: IOIBUF_X77_Y0_N15
\parallel_in[194]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(194),
	o => \parallel_in[194]~input_o\);

-- Location: IOIBUF_X68_Y0_N22
\parallel_in[193]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(193),
	o => \parallel_in[193]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\parallel_in[192]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(192),
	o => \parallel_in[192]~input_o\);

-- Location: IOIBUF_X68_Y0_N15
\parallel_in[191]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(191),
	o => \parallel_in[191]~input_o\);

-- Location: IOIBUF_X70_Y0_N15
\parallel_in[190]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(190),
	o => \parallel_in[190]~input_o\);

-- Location: IOIBUF_X75_Y0_N1
\parallel_in[189]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(189),
	o => \parallel_in[189]~input_o\);

-- Location: IOIBUF_X117_Y58_N1
\parallel_in[188]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(188),
	o => \parallel_in[188]~input_o\);

-- Location: IOIBUF_X117_Y66_N1
\parallel_in[187]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(187),
	o => \parallel_in[187]~input_o\);

-- Location: IOIBUF_X117_Y62_N8
\parallel_in[186]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(186),
	o => \parallel_in[186]~input_o\);

-- Location: IOIBUF_X117_Y61_N8
\parallel_in[185]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(185),
	o => \parallel_in[185]~input_o\);

-- Location: IOIBUF_X117_Y59_N8
\parallel_in[184]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(184),
	o => \parallel_in[184]~input_o\);

-- Location: IOIBUF_X117_Y58_N8
\parallel_in[183]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(183),
	o => \parallel_in[183]~input_o\);

-- Location: IOIBUF_X117_Y60_N1
\parallel_in[182]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(182),
	o => \parallel_in[182]~input_o\);

-- Location: IOIBUF_X117_Y60_N8
\parallel_in[181]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(181),
	o => \parallel_in[181]~input_o\);

-- Location: IOIBUF_X117_Y65_N1
\parallel_in[180]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(180),
	o => \parallel_in[180]~input_o\);

-- Location: IOIBUF_X117_Y64_N1
\parallel_in[179]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(179),
	o => \parallel_in[179]~input_o\);

-- Location: IOIBUF_X117_Y60_N15
\parallel_in[178]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(178),
	o => \parallel_in[178]~input_o\);

-- Location: IOIBUF_X117_Y62_N1
\parallel_in[177]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(177),
	o => \parallel_in[177]~input_o\);

-- Location: IOIBUF_X117_Y64_N8
\parallel_in[176]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(176),
	o => \parallel_in[176]~input_o\);

-- Location: IOIBUF_X117_Y61_N1
\parallel_in[175]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(175),
	o => \parallel_in[175]~input_o\);

-- Location: IOIBUF_X117_Y65_N8
\parallel_in[174]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(174),
	o => \parallel_in[174]~input_o\);

-- Location: IOIBUF_X117_Y59_N1
\parallel_in[173]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(173),
	o => \parallel_in[173]~input_o\);

-- Location: IOIBUF_X117_Y17_N8
\parallel_in[172]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(172),
	o => \parallel_in[172]~input_o\);

-- Location: IOIBUF_X117_Y18_N1
\parallel_in[171]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(171),
	o => \parallel_in[171]~input_o\);

-- Location: IOIBUF_X117_Y19_N8
\parallel_in[170]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(170),
	o => \parallel_in[170]~input_o\);

-- Location: IOIBUF_X117_Y11_N8
\parallel_in[169]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(169),
	o => \parallel_in[169]~input_o\);

-- Location: IOIBUF_X117_Y14_N8
\parallel_in[168]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(168),
	o => \parallel_in[168]~input_o\);

-- Location: IOIBUF_X117_Y18_N8
\parallel_in[167]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(167),
	o => \parallel_in[167]~input_o\);

-- Location: IOIBUF_X117_Y10_N8
\parallel_in[166]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(166),
	o => \parallel_in[166]~input_o\);

-- Location: IOIBUF_X117_Y19_N1
\parallel_in[165]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(165),
	o => \parallel_in[165]~input_o\);

-- Location: IOIBUF_X117_Y15_N1
\parallel_in[164]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(164),
	o => \parallel_in[164]~input_o\);

-- Location: IOIBUF_X117_Y14_N1
\parallel_in[163]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(163),
	o => \parallel_in[163]~input_o\);

-- Location: IOIBUF_X117_Y15_N8
\parallel_in[162]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(162),
	o => \parallel_in[162]~input_o\);

-- Location: IOIBUF_X117_Y11_N1
\parallel_in[161]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(161),
	o => \parallel_in[161]~input_o\);

-- Location: IOIBUF_X117_Y13_N1
\parallel_in[160]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(160),
	o => \parallel_in[160]~input_o\);

-- Location: IOIBUF_X117_Y17_N1
\parallel_in[159]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(159),
	o => \parallel_in[159]~input_o\);

-- Location: IOIBUF_X117_Y13_N8
\parallel_in[158]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(158),
	o => \parallel_in[158]~input_o\);

-- Location: IOIBUF_X117_Y10_N1
\parallel_in[157]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(157),
	o => \parallel_in[157]~input_o\);

-- Location: IOIBUF_X106_Y0_N15
\parallel_in[156]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(156),
	o => \parallel_in[156]~input_o\);

-- Location: IOIBUF_X92_Y0_N22
\parallel_in[155]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(155),
	o => \parallel_in[155]~input_o\);

-- Location: IOIBUF_X97_Y0_N1
\parallel_in[154]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(154),
	o => \parallel_in[154]~input_o\);

-- Location: IOIBUF_X99_Y0_N15
\parallel_in[153]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(153),
	o => \parallel_in[153]~input_o\);

-- Location: IOIBUF_X95_Y0_N15
\parallel_in[152]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(152),
	o => \parallel_in[152]~input_o\);

-- Location: IOIBUF_X99_Y0_N8
\parallel_in[151]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(151),
	o => \parallel_in[151]~input_o\);

-- Location: IOIBUF_X104_Y0_N8
\parallel_in[150]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(150),
	o => \parallel_in[150]~input_o\);

-- Location: IOIBUF_X104_Y0_N15
\parallel_in[149]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(149),
	o => \parallel_in[149]~input_o\);

-- Location: IOIBUF_X95_Y0_N8
\parallel_in[148]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(148),
	o => \parallel_in[148]~input_o\);

-- Location: IOIBUF_X104_Y0_N22
\parallel_in[147]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(147),
	o => \parallel_in[147]~input_o\);

-- Location: IOIBUF_X99_Y0_N1
\parallel_in[146]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(146),
	o => \parallel_in[146]~input_o\);

-- Location: IOIBUF_X104_Y0_N1
\parallel_in[145]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(145),
	o => \parallel_in[145]~input_o\);

-- Location: IOIBUF_X92_Y0_N1
\parallel_in[144]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(144),
	o => \parallel_in[144]~input_o\);

-- Location: IOIBUF_X95_Y0_N1
\parallel_in[143]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(143),
	o => \parallel_in[143]~input_o\);

-- Location: IOIBUF_X92_Y0_N8
\parallel_in[142]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(142),
	o => \parallel_in[142]~input_o\);

-- Location: IOIBUF_X97_Y0_N8
\parallel_in[141]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(141),
	o => \parallel_in[141]~input_o\);

-- Location: IOIBUF_X28_Y91_N8
\parallel_in[140]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(140),
	o => \parallel_in[140]~input_o\);

-- Location: IOIBUF_X28_Y91_N15
\parallel_in[139]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(139),
	o => \parallel_in[139]~input_o\);

-- Location: IOIBUF_X30_Y91_N15
\parallel_in[138]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(138),
	o => \parallel_in[138]~input_o\);

-- Location: IOIBUF_X21_Y91_N22
\parallel_in[137]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(137),
	o => \parallel_in[137]~input_o\);

-- Location: IOIBUF_X26_Y91_N8
\parallel_in[136]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(136),
	o => \parallel_in[136]~input_o\);

-- Location: IOIBUF_X28_Y91_N1
\parallel_in[135]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(135),
	o => \parallel_in[135]~input_o\);

-- Location: IOIBUF_X30_Y91_N8
\parallel_in[134]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(134),
	o => \parallel_in[134]~input_o\);

-- Location: IOIBUF_X26_Y91_N1
\parallel_in[133]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(133),
	o => \parallel_in[133]~input_o\);

-- Location: IOIBUF_X32_Y91_N8
\parallel_in[132]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(132),
	o => \parallel_in[132]~input_o\);

-- Location: IOIBUF_X21_Y91_N1
\parallel_in[131]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(131),
	o => \parallel_in[131]~input_o\);

-- Location: IOIBUF_X30_Y91_N22
\parallel_in[130]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(130),
	o => \parallel_in[130]~input_o\);

-- Location: IOIBUF_X26_Y91_N15
\parallel_in[129]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(129),
	o => \parallel_in[129]~input_o\);

-- Location: IOIBUF_X28_Y91_N22
\parallel_in[128]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(128),
	o => \parallel_in[128]~input_o\);

-- Location: IOIBUF_X32_Y91_N15
\parallel_in[127]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(127),
	o => \parallel_in[127]~input_o\);

-- Location: IOIBUF_X30_Y91_N1
\parallel_in[126]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(126),
	o => \parallel_in[126]~input_o\);

-- Location: IOIBUF_X24_Y91_N1
\parallel_in[125]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(125),
	o => \parallel_in[125]~input_o\);

-- Location: IOIBUF_X12_Y91_N1
\parallel_in[124]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(124),
	o => \parallel_in[124]~input_o\);

-- Location: IOIBUF_X15_Y91_N15
\parallel_in[123]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(123),
	o => \parallel_in[123]~input_o\);

-- Location: IOIBUF_X21_Y91_N8
\parallel_in[122]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(122),
	o => \parallel_in[122]~input_o\);

-- Location: IOIBUF_X12_Y91_N8
\parallel_in[121]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(121),
	o => \parallel_in[121]~input_o\);

-- Location: IOIBUF_X17_Y91_N15
\parallel_in[120]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(120),
	o => \parallel_in[120]~input_o\);

-- Location: IOIBUF_X19_Y91_N15
\parallel_in[119]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(119),
	o => \parallel_in[119]~input_o\);

-- Location: IOIBUF_X17_Y91_N1
\parallel_in[118]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(118),
	o => \parallel_in[118]~input_o\);

-- Location: IOIBUF_X17_Y91_N8
\parallel_in[117]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(117),
	o => \parallel_in[117]~input_o\);

-- Location: IOIBUF_X19_Y91_N1
\parallel_in[116]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(116),
	o => \parallel_in[116]~input_o\);

-- Location: IOIBUF_X10_Y91_N1
\parallel_in[115]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(115),
	o => \parallel_in[115]~input_o\);

-- Location: IOIBUF_X21_Y91_N15
\parallel_in[114]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(114),
	o => \parallel_in[114]~input_o\);

-- Location: IOIBUF_X17_Y0_N15
\parallel_in[113]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(113),
	o => \parallel_in[113]~input_o\);

-- Location: IOIBUF_X19_Y91_N22
\parallel_in[112]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(112),
	o => \parallel_in[112]~input_o\);

-- Location: IOIBUF_X15_Y91_N1
\parallel_in[111]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(111),
	o => \parallel_in[111]~input_o\);

-- Location: IOIBUF_X15_Y91_N8
\parallel_in[110]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(110),
	o => \parallel_in[110]~input_o\);

-- Location: IOIBUF_X19_Y91_N8
\parallel_in[109]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(109),
	o => \parallel_in[109]~input_o\);

-- Location: IOIBUF_X113_Y0_N22
\parallel_in[108]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(108),
	o => \parallel_in[108]~input_o\);

-- Location: IOIBUF_X117_Y6_N8
\parallel_in[107]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(107),
	o => \parallel_in[107]~input_o\);

-- Location: IOIBUF_X117_Y5_N8
\parallel_in[106]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(106),
	o => \parallel_in[106]~input_o\);

-- Location: IOIBUF_X117_Y8_N8
\parallel_in[105]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(105),
	o => \parallel_in[105]~input_o\);

-- Location: IOIBUF_X113_Y0_N15
\parallel_in[104]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(104),
	o => \parallel_in[104]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\parallel_in[103]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(103),
	o => \parallel_in[103]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\parallel_in[102]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(102),
	o => \parallel_in[102]~input_o\);

-- Location: IOIBUF_X115_Y0_N8
\parallel_in[101]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(101),
	o => \parallel_in[101]~input_o\);

-- Location: IOIBUF_X117_Y7_N8
\parallel_in[100]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(100),
	o => \parallel_in[100]~input_o\);

-- Location: IOIBUF_X117_Y5_N1
\parallel_in[99]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(99),
	o => \parallel_in[99]~input_o\);

-- Location: IOIBUF_X117_Y6_N1
\parallel_in[98]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(98),
	o => \parallel_in[98]~input_o\);

-- Location: IOIBUF_X115_Y0_N1
\parallel_in[97]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(97),
	o => \parallel_in[97]~input_o\);

-- Location: IOIBUF_X117_Y7_N1
\parallel_in[96]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(96),
	o => \parallel_in[96]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\parallel_in[95]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(95),
	o => \parallel_in[95]~input_o\);

-- Location: IOIBUF_X115_Y0_N15
\parallel_in[94]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(94),
	o => \parallel_in[94]~input_o\);

-- Location: IOIBUF_X115_Y0_N22
\parallel_in[93]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(93),
	o => \parallel_in[93]~input_o\);

-- Location: IOIBUF_X117_Y36_N8
\parallel_in[92]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(92),
	o => \parallel_in[92]~input_o\);

-- Location: IOIBUF_X117_Y38_N1
\parallel_in[91]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(91),
	o => \parallel_in[91]~input_o\);

-- Location: IOIBUF_X117_Y35_N8
\parallel_in[90]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(90),
	o => \parallel_in[90]~input_o\);

-- Location: IOIBUF_X117_Y33_N1
\parallel_in[89]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(89),
	o => \parallel_in[89]~input_o\);

-- Location: IOIBUF_X117_Y39_N8
\parallel_in[88]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(88),
	o => \parallel_in[88]~input_o\);

-- Location: IOIBUF_X117_Y38_N8
\parallel_in[87]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(87),
	o => \parallel_in[87]~input_o\);

-- Location: IOIBUF_X117_Y34_N8
\parallel_in[86]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(86),
	o => \parallel_in[86]~input_o\);

-- Location: IOIBUF_X117_Y39_N1
\parallel_in[85]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(85),
	o => \parallel_in[85]~input_o\);

-- Location: IOIBUF_X117_Y32_N8
\parallel_in[84]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(84),
	o => \parallel_in[84]~input_o\);

-- Location: IOIBUF_X117_Y34_N1
\parallel_in[83]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(83),
	o => \parallel_in[83]~input_o\);

-- Location: IOIBUF_X117_Y36_N1
\parallel_in[82]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(82),
	o => \parallel_in[82]~input_o\);

-- Location: IOIBUF_X117_Y31_N1
\parallel_in[81]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(81),
	o => \parallel_in[81]~input_o\);

-- Location: IOIBUF_X117_Y35_N1
\parallel_in[80]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(80),
	o => \parallel_in[80]~input_o\);

-- Location: IOIBUF_X117_Y32_N1
\parallel_in[79]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(79),
	o => \parallel_in[79]~input_o\);

-- Location: IOIBUF_X117_Y31_N8
\parallel_in[78]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(78),
	o => \parallel_in[78]~input_o\);

-- Location: IOIBUF_X117_Y33_N8
\parallel_in[77]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(77),
	o => \parallel_in[77]~input_o\);

-- Location: IOIBUF_X111_Y91_N22
\parallel_in[76]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(76),
	o => \parallel_in[76]~input_o\);

-- Location: IOIBUF_X111_Y91_N1
\parallel_in[75]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(75),
	o => \parallel_in[75]~input_o\);

-- Location: IOIBUF_X111_Y91_N15
\parallel_in[74]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(74),
	o => \parallel_in[74]~input_o\);

-- Location: IOIBUF_X111_Y91_N8
\parallel_in[73]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(73),
	o => \parallel_in[73]~input_o\);

-- Location: IOIBUF_X108_Y91_N8
\parallel_in[72]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(72),
	o => \parallel_in[72]~input_o\);

-- Location: IOIBUF_X108_Y91_N15
\parallel_in[71]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(71),
	o => \parallel_in[71]~input_o\);

-- Location: IOIBUF_X113_Y91_N8
\parallel_in[70]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(70),
	o => \parallel_in[70]~input_o\);

-- Location: IOIBUF_X113_Y91_N1
\parallel_in[69]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(69),
	o => \parallel_in[69]~input_o\);

-- Location: IOIBUF_X108_Y91_N22
\parallel_in[68]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(68),
	o => \parallel_in[68]~input_o\);

-- Location: IOIBUF_X115_Y91_N22
\parallel_in[67]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(67),
	o => \parallel_in[67]~input_o\);

-- Location: IOIBUF_X115_Y91_N1
\parallel_in[66]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(66),
	o => \parallel_in[66]~input_o\);

-- Location: IOIBUF_X113_Y91_N22
\parallel_in[65]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(65),
	o => \parallel_in[65]~input_o\);

-- Location: IOIBUF_X115_Y91_N15
\parallel_in[64]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(64),
	o => \parallel_in[64]~input_o\);

-- Location: IOIBUF_X108_Y91_N1
\parallel_in[63]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(63),
	o => \parallel_in[63]~input_o\);

-- Location: IOIBUF_X113_Y91_N15
\parallel_in[62]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(62),
	o => \parallel_in[62]~input_o\);

-- Location: IOIBUF_X61_Y91_N15
\parallel_in[61]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(61),
	o => \parallel_in[61]~input_o\);

-- Location: IOIBUF_X53_Y91_N15
\parallel_in[60]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(60),
	o => \parallel_in[60]~input_o\);

-- Location: IOIBUF_X53_Y91_N8
\parallel_in[59]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(59),
	o => \parallel_in[59]~input_o\);

-- Location: IOIBUF_X50_Y91_N15
\parallel_in[58]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(58),
	o => \parallel_in[58]~input_o\);

-- Location: IOIBUF_X48_Y91_N15
\parallel_in[57]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(57),
	o => \parallel_in[57]~input_o\);

-- Location: IOIBUF_X61_Y91_N8
\parallel_in[56]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(56),
	o => \parallel_in[56]~input_o\);

-- Location: IOIBUF_X48_Y91_N1
\parallel_in[55]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(55),
	o => \parallel_in[55]~input_o\);

-- Location: IOIBUF_X53_Y91_N1
\parallel_in[54]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(54),
	o => \parallel_in[54]~input_o\);

-- Location: IOIBUF_X63_Y91_N8
\parallel_in[53]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(53),
	o => \parallel_in[53]~input_o\);

-- Location: IOIBUF_X61_Y91_N1
\parallel_in[52]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(52),
	o => \parallel_in[52]~input_o\);

-- Location: IOIBUF_X53_Y91_N22
\parallel_in[51]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(51),
	o => \parallel_in[51]~input_o\);

-- Location: IOIBUF_X50_Y91_N22
\parallel_in[50]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(50),
	o => \parallel_in[50]~input_o\);

-- Location: IOIBUF_X50_Y91_N8
\parallel_in[49]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(49),
	o => \parallel_in[49]~input_o\);

-- Location: IOIBUF_X50_Y0_N8
\parallel_in[48]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(48),
	o => \parallel_in[48]~input_o\);

-- Location: IOIBUF_X50_Y91_N1
\parallel_in[47]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(47),
	o => \parallel_in[47]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\parallel_in[46]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(46),
	o => \parallel_in[46]~input_o\);

-- Location: IOIBUF_X75_Y91_N1
\parallel_in[45]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(45),
	o => \parallel_in[45]~input_o\);

-- Location: IOIBUF_X75_Y91_N8
\parallel_in[44]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(44),
	o => \parallel_in[44]~input_o\);

-- Location: IOIBUF_X72_Y91_N1
\parallel_in[43]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(43),
	o => \parallel_in[43]~input_o\);

-- Location: IOIBUF_X66_Y91_N1
\parallel_in[42]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(42),
	o => \parallel_in[42]~input_o\);

-- Location: IOIBUF_X63_Y91_N15
\parallel_in[41]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(41),
	o => \parallel_in[41]~input_o\);

-- Location: IOIBUF_X72_Y91_N8
\parallel_in[40]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(40),
	o => \parallel_in[40]~input_o\);

-- Location: IOIBUF_X66_Y91_N22
\parallel_in[39]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(39),
	o => \parallel_in[39]~input_o\);

-- Location: IOIBUF_X70_Y91_N8
\parallel_in[38]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(38),
	o => \parallel_in[38]~input_o\);

-- Location: IOIBUF_X70_Y91_N1
\parallel_in[37]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(37),
	o => \parallel_in[37]~input_o\);

-- Location: IOIBUF_X77_Y91_N15
\parallel_in[36]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(36),
	o => \parallel_in[36]~input_o\);

-- Location: IOIBUF_X68_Y91_N1
\parallel_in[35]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(35),
	o => \parallel_in[35]~input_o\);

-- Location: IOIBUF_X66_Y91_N15
\parallel_in[34]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(34),
	o => \parallel_in[34]~input_o\);

-- Location: IOIBUF_X68_Y91_N15
\parallel_in[33]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(33),
	o => \parallel_in[33]~input_o\);

-- Location: IOIBUF_X66_Y91_N8
\parallel_in[32]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(32),
	o => \parallel_in[32]~input_o\);

-- Location: IOIBUF_X68_Y91_N8
\parallel_in[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(31),
	o => \parallel_in[31]~input_o\);

-- Location: IOIBUF_X63_Y91_N1
\parallel_in[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(30),
	o => \parallel_in[30]~input_o\);

-- Location: IOIBUF_X86_Y91_N1
\parallel_in[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(29),
	o => \parallel_in[29]~input_o\);

-- Location: IOIBUF_X88_Y91_N1
\parallel_in[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(28),
	o => \parallel_in[28]~input_o\);

-- Location: IOIBUF_X88_Y91_N8
\parallel_in[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(27),
	o => \parallel_in[27]~input_o\);

-- Location: IOIBUF_X84_Y91_N1
\parallel_in[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(26),
	o => \parallel_in[26]~input_o\);

-- Location: IOIBUF_X90_Y91_N8
\parallel_in[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(25),
	o => \parallel_in[25]~input_o\);

-- Location: IOIBUF_X90_Y91_N15
\parallel_in[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(24),
	o => \parallel_in[24]~input_o\);

-- Location: IOIBUF_X82_Y91_N1
\parallel_in[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(23),
	o => \parallel_in[23]~input_o\);

-- Location: IOIBUF_X90_Y91_N1
\parallel_in[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(22),
	o => \parallel_in[22]~input_o\);

-- Location: IOIBUF_X82_Y91_N8
\parallel_in[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(21),
	o => \parallel_in[21]~input_o\);

-- Location: IOIBUF_X79_Y91_N1
\parallel_in[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(20),
	o => \parallel_in[20]~input_o\);

-- Location: IOIBUF_X86_Y91_N8
\parallel_in[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(19),
	o => \parallel_in[19]~input_o\);

-- Location: IOIBUF_X86_Y91_N15
\parallel_in[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(18),
	o => \parallel_in[18]~input_o\);

-- Location: IOIBUF_X84_Y91_N8
\parallel_in[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(17),
	o => \parallel_in[17]~input_o\);

-- Location: IOIBUF_X90_Y91_N22
\parallel_in[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(16),
	o => \parallel_in[16]~input_o\);

-- Location: IOIBUF_X79_Y91_N8
\parallel_in[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(15),
	o => \parallel_in[15]~input_o\);

-- Location: IOIBUF_X101_Y91_N8
\parallel_in[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(14),
	o => \parallel_in[14]~input_o\);

-- Location: IOIBUF_X95_Y91_N1
\parallel_in[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(13),
	o => \parallel_in[13]~input_o\);

-- Location: IOIBUF_X99_Y91_N1
\parallel_in[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(12),
	o => \parallel_in[12]~input_o\);

-- Location: IOIBUF_X101_Y91_N1
\parallel_in[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(11),
	o => \parallel_in[11]~input_o\);

-- Location: IOIBUF_X99_Y91_N8
\parallel_in[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(10),
	o => \parallel_in[10]~input_o\);

-- Location: IOIBUF_X99_Y91_N15
\parallel_in[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(9),
	o => \parallel_in[9]~input_o\);

-- Location: IOIBUF_X95_Y91_N22
\parallel_in[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(8),
	o => \parallel_in[8]~input_o\);

-- Location: IOIBUF_X97_Y91_N1
\parallel_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(7),
	o => \parallel_in[7]~input_o\);

-- Location: IOIBUF_X97_Y91_N8
\parallel_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(6),
	o => \parallel_in[6]~input_o\);

-- Location: IOIBUF_X57_Y91_N1
\parallel_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(5),
	o => \parallel_in[5]~input_o\);

-- Location: IOIBUF_X57_Y91_N8
\parallel_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(4),
	o => \parallel_in[4]~input_o\);

-- Location: IOIBUF_X95_Y91_N8
\parallel_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(3),
	o => \parallel_in[3]~input_o\);

-- Location: IOIBUF_X95_Y91_N15
\parallel_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(2),
	o => \parallel_in[2]~input_o\);

-- Location: IOIBUF_X99_Y91_N22
\parallel_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(1),
	o => \parallel_in[1]~input_o\);

-- Location: IOIBUF_X117_Y46_N8
\parallel_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(0),
	o => \parallel_in[0]~input_o\);

-- Location: CLKCTRL_G29
\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOOBUF_X5_Y0_N9
\locked~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altpll_component|auto_generated|wire_pll1_locked\,
	devoe => ww_devoe,
	o => ww_locked);

-- Location: IOOBUF_X41_Y0_N16
\Y~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~1_combout\,
	devoe => ww_devoe,
	o => ww_Y);

-- Location: IOOBUF_X3_Y0_N23
\CERO~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CERO_outclk\,
	devoe => ww_devoe,
	o => ww_CERO);

-- Location: IOOBUF_X5_Y0_N23
\UNO~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_UNO);

-- Location: IOOBUF_X8_Y0_N9
\frecuencialed~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_frecuencialed);

-- Location: IOIBUF_X1_Y0_N15
\areset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_areset,
	o => \areset~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\inclk0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inclk0,
	o => \inclk0~input_o\);

-- Location: PLL_1
\inst|altpll_component|auto_generated|pll1\ : cycloneiv_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 120,
	c0_initial => 1,
	c0_low => 255,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 240,
	c1_initial => 1,
	c1_low => 135,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 150,
	c2_initial => 1,
	c2_low => 150,
	c2_mode => "even",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 250,
	c3_initial => 1,
	c3_low => 250,
	c3_mode => "even",
	c3_ph => 0,
	c3_use_casc_in => "on",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 125,
	clk0_duty_cycle => 32,
	clk0_multiply_by => 2,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 125,
	clk1_duty_cycle => 64,
	clk1_multiply_by => 2,
	clk1_phase_shift => "0",
	clk2_counter => "c3",
	clk2_divide_by => 25000,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 1,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	dpa_divide_by => 0,
	dpa_divider => 1,
	dpa_multiply_by => 0,
	feedback_external_loop_divider => "false",
	feedback_source => -1,
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 6,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 7784,
	pll_type => "mpll",
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1250,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1250,
	vco_multiply_by => 0,
	vco_phase_shift_step => 416,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \areset~input_o\,
	fbin => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \inst|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: IOIBUF_X37_Y0_N1
\parallel_in[383]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(383),
	o => \parallel_in[383]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\parallel_in[382]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_in(382),
	o => \parallel_in[382]~input_o\);

-- Location: IOIBUF_X90_Y0_N1
\load~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: LCCOMB_X38_Y1_N8
\inst1|shift_reg~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~1_combout\ = (\load~input_o\ & ((\parallel_in[382]~input_o\))) # (!\load~input_o\ & (\inst1|shift_reg\(381)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_reg\(381),
	datab => \parallel_in[382]~input_o\,
	datac => \load~input_o\,
	combout => \inst1|shift_reg~1_combout\);

-- Location: FF_X38_Y1_N9
\inst1|shift_reg[382]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(382));

-- Location: LCCOMB_X38_Y1_N26
\inst1|shift_reg~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|shift_reg~0_combout\ = (\load~input_o\ & (\parallel_in[383]~input_o\)) # (!\load~input_o\ & ((\inst1|shift_reg\(382))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \parallel_in[383]~input_o\,
	datac => \inst1|shift_reg\(382),
	combout => \inst1|shift_reg~0_combout\);

-- Location: FF_X38_Y1_N27
\inst1|shift_reg[383]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|shift_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_reg\(383));

-- Location: FF_X38_Y1_N1
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|shift_reg\(383),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: CLKCTRL_G28
\inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y1_N0
\inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (\inst|altpll_component|auto_generated|wire_pll1_locked\ & ((\inst7~q\ & ((GLOBAL(\inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\)))) # (!\inst7~q\ & 
-- (GLOBAL(\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	datab => \inst|altpll_component|auto_generated|wire_pll1_locked\,
	datac => \inst7~q\,
	datad => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	combout => \inst2~0_combout\);

-- Location: LCCOMB_X41_Y1_N4
\inst12|count[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|count[0]~9_combout\ = \inst12|count\(0) $ (VCC)
-- \inst12|count[0]~10\ = CARRY(\inst12|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count\(0),
	datad => VCC,
	combout => \inst12|count[0]~9_combout\,
	cout => \inst12|count[0]~10\);

-- Location: LCCOMB_X41_Y1_N16
\inst12|count[6]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|count[6]~22_combout\ = (\inst12|count\(6) & (\inst12|count[5]~21\ $ (GND))) # (!\inst12|count\(6) & (!\inst12|count[5]~21\ & VCC))
-- \inst12|count[6]~23\ = CARRY((\inst12|count\(6) & !\inst12|count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count\(6),
	datad => VCC,
	cin => \inst12|count[5]~21\,
	combout => \inst12|count[6]~22_combout\,
	cout => \inst12|count[6]~23\);

-- Location: LCCOMB_X41_Y1_N18
\inst12|count[7]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|count[7]~24_combout\ = (\inst12|count\(7) & (!\inst12|count[6]~23\)) # (!\inst12|count\(7) & ((\inst12|count[6]~23\) # (GND)))
-- \inst12|count[7]~25\ = CARRY((!\inst12|count[6]~23\) # (!\inst12|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count\(7),
	datad => VCC,
	cin => \inst12|count[6]~23\,
	combout => \inst12|count[7]~24_combout\,
	cout => \inst12|count[7]~25\);

-- Location: FF_X41_Y1_N19
\inst12|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst12|count[7]~24_combout\,
	sclr => \inst12|ALT_INV_activo~q\,
	ena => \inst12|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count\(7));

-- Location: LCCOMB_X41_Y1_N20
\inst12|count[8]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|count[8]~26_combout\ = \inst12|count[7]~25\ $ (!\inst12|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst12|count\(8),
	cin => \inst12|count[7]~25\,
	combout => \inst12|count[8]~26_combout\);

-- Location: FF_X41_Y1_N21
\inst12|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst12|count[8]~26_combout\,
	sclr => \inst12|ALT_INV_activo~q\,
	ena => \inst12|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count\(8));

-- Location: LCCOMB_X41_Y1_N28
\inst12|count[8]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|count[8]~11_combout\ = (\inst12|activo~q\ & ((\inst12|LessThan0~2_combout\) # ((!\inst12|count\(8))))) # (!\inst12|activo~q\ & (((\load~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|LessThan0~2_combout\,
	datab => \inst12|activo~q\,
	datac => \load~input_o\,
	datad => \inst12|count\(8),
	combout => \inst12|count[8]~11_combout\);

-- Location: FF_X41_Y1_N5
\inst12|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst12|count[0]~9_combout\,
	sclr => \inst12|ALT_INV_activo~q\,
	ena => \inst12|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count\(0));

-- Location: LCCOMB_X41_Y1_N8
\inst12|count[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|count[2]~14_combout\ = (\inst12|count\(2) & (\inst12|count[1]~13\ $ (GND))) # (!\inst12|count\(2) & (!\inst12|count[1]~13\ & VCC))
-- \inst12|count[2]~15\ = CARRY((\inst12|count\(2) & !\inst12|count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count\(2),
	datad => VCC,
	cin => \inst12|count[1]~13\,
	combout => \inst12|count[2]~14_combout\,
	cout => \inst12|count[2]~15\);

-- Location: FF_X41_Y1_N9
\inst12|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst12|count[2]~14_combout\,
	sclr => \inst12|ALT_INV_activo~q\,
	ena => \inst12|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count\(2));

-- Location: LCCOMB_X41_Y1_N10
\inst12|count[3]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|count[3]~16_combout\ = (\inst12|count\(3) & (!\inst12|count[2]~15\)) # (!\inst12|count\(3) & ((\inst12|count[2]~15\) # (GND)))
-- \inst12|count[3]~17\ = CARRY((!\inst12|count[2]~15\) # (!\inst12|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count\(3),
	datad => VCC,
	cin => \inst12|count[2]~15\,
	combout => \inst12|count[3]~16_combout\,
	cout => \inst12|count[3]~17\);

-- Location: LCCOMB_X41_Y1_N12
\inst12|count[4]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|count[4]~18_combout\ = (\inst12|count\(4) & (\inst12|count[3]~17\ $ (GND))) # (!\inst12|count\(4) & (!\inst12|count[3]~17\ & VCC))
-- \inst12|count[4]~19\ = CARRY((\inst12|count\(4) & !\inst12|count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count\(4),
	datad => VCC,
	cin => \inst12|count[3]~17\,
	combout => \inst12|count[4]~18_combout\,
	cout => \inst12|count[4]~19\);

-- Location: LCCOMB_X41_Y1_N14
\inst12|count[5]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|count[5]~20_combout\ = (\inst12|count\(5) & (!\inst12|count[4]~19\)) # (!\inst12|count\(5) & ((\inst12|count[4]~19\) # (GND)))
-- \inst12|count[5]~21\ = CARRY((!\inst12|count[4]~19\) # (!\inst12|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count\(5),
	datad => VCC,
	cin => \inst12|count[4]~19\,
	combout => \inst12|count[5]~20_combout\,
	cout => \inst12|count[5]~21\);

-- Location: FF_X41_Y1_N15
\inst12|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst12|count[5]~20_combout\,
	sclr => \inst12|ALT_INV_activo~q\,
	ena => \inst12|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count\(5));

-- Location: FF_X41_Y1_N17
\inst12|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst12|count[6]~22_combout\,
	sclr => \inst12|ALT_INV_activo~q\,
	ena => \inst12|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count\(6));

-- Location: FF_X41_Y1_N13
\inst12|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst12|count[4]~18_combout\,
	sclr => \inst12|ALT_INV_activo~q\,
	ena => \inst12|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count\(4));

-- Location: LCCOMB_X41_Y1_N24
\inst12|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~1_combout\ = ((!\inst12|count\(4)) # (!\inst12|count\(5))) # (!\inst12|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|count\(6),
	datac => \inst12|count\(5),
	datad => \inst12|count\(4),
	combout => \inst12|LessThan0~1_combout\);

-- Location: FF_X41_Y1_N11
\inst12|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst12|count[3]~16_combout\,
	sclr => \inst12|ALT_INV_activo~q\,
	ena => \inst12|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count\(3));

-- Location: LCCOMB_X41_Y1_N30
\inst12|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~0_combout\ = (((!\inst12|count\(3)) # (!\inst12|count\(2))) # (!\inst12|count\(0))) # (!\inst12|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count\(1),
	datab => \inst12|count\(0),
	datac => \inst12|count\(2),
	datad => \inst12|count\(3),
	combout => \inst12|LessThan0~0_combout\);

-- Location: LCCOMB_X41_Y1_N2
\inst12|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~2_combout\ = (!\inst12|count\(7) & ((\inst12|LessThan0~1_combout\) # (\inst12|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|LessThan0~1_combout\,
	datac => \inst12|LessThan0~0_combout\,
	datad => \inst12|count\(7),
	combout => \inst12|LessThan0~2_combout\);

-- Location: LCCOMB_X41_Y1_N0
\inst12|pulso~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|pulso~0_combout\ = (\inst12|activo~q\ & (((\inst12|LessThan0~2_combout\) # (!\inst12|count\(8))))) # (!\inst12|activo~q\ & (\load~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \inst12|LessThan0~2_combout\,
	datac => \inst12|activo~q\,
	datad => \inst12|count\(8),
	combout => \inst12|pulso~0_combout\);

-- Location: FF_X41_Y1_N1
\inst12|activo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst12|pulso~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|activo~q\);

-- Location: LCCOMB_X41_Y1_N26
\inst2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2~1_combout\ = (\inst2~0_combout\ & \inst12|activo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~0_combout\,
	datad => \inst12|activo~q\,
	combout => \inst2~1_combout\);

-- Location: CLKCTRL_PLL1E0
\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CERO\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CERO_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CERO_outclk\);

-- Location: CLKCTRL_G27
\inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\);
END structure;


