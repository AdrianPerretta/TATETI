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

-- DATE "11/10/2025 17:21:22"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
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

ENTITY 	subsistema2esquematico IS
    PORT (
	inclk0 : IN std_logic;
	areset : IN std_logic;
	INICIO : IN std_logic;
	MV : IN std_logic;
	MINV : IN std_logic;
	TURNO : IN std_logic;
	VF : IN std_logic;
	VICTORIA : IN std_logic;
	EMPATE : IN std_logic;
	POSICION : IN std_logic_vector(3 DOWNTO 0);
	SC1 : IN std_logic_vector(2 DOWNTO 0);
	SC2 : IN std_logic_vector(2 DOWNTO 0);
	CERO : OUT std_logic;
	UNO : OUT std_logic;
	locked : OUT std_logic;
	Y : OUT std_logic
	);
END subsistema2esquematico;

-- Design Ports Information
-- CERO	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UNO	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- locked	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- areset	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inclk0	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VF	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INICIO	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TURNO	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- POSICION[1]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- POSICION[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MV	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- POSICION[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- POSICION[3]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EMPATE	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SC1[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SC1[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SC1[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SC2[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SC2[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SC2[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VICTORIA	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MINV	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF subsistema2esquematico IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inclk0 : std_logic;
SIGNAL ww_areset : std_logic;
SIGNAL ww_INICIO : std_logic;
SIGNAL ww_MV : std_logic;
SIGNAL ww_MINV : std_logic;
SIGNAL ww_TURNO : std_logic;
SIGNAL ww_VF : std_logic;
SIGNAL ww_VICTORIA : std_logic;
SIGNAL ww_EMPATE : std_logic;
SIGNAL ww_POSICION : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SC1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SC2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CERO : std_logic;
SIGNAL ww_UNO : std_logic;
SIGNAL ww_locked : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL \b2v_inst|inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst|inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INICIO~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CERO_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \b2v_inst|inst12|count[3]~15_combout\ : std_logic;
SIGNAL \b2v_inst|inst12|count[5]~19_combout\ : std_logic;
SIGNAL \b2v_inst|inst12|count[6]~21_combout\ : std_logic;
SIGNAL \b2v_inst1|bloqueo~q\ : std_logic;
SIGNAL \b2v_inst|inst12|pulso~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux40~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~4_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux23~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~5_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~55_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~56_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux24~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~6_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~57_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~58_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux25~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~7_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~59_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~60_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux26~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~8_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~61_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~62_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux27~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~9_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~63_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux28~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~10_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~64_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux29~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~11_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~65_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~66_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux30~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~12_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~67_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~68_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux31~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~13_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~69_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~70_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux32~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~14_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~71_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~72_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux33~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~15_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~73_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~74_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux34~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux11~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~16_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~75_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~76_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux35~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux12~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~17_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~77_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~78_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux36~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux13~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~18_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~79_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~80_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux37~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux14~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~19_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~81_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~82_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux38~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux15~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~20_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~83_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~84_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux39~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux8~1_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~21_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~85_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~86_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux40~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux17~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~22_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~87_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~88_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux18~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~23_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~89_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~90_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux37~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux19~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~24_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~91_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~92_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux43~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux20~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~25_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[344]~93_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[344]~94_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[344]~95_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux21~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~26_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~27_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~28_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~29_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~30_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~31_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~32_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~33_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~34_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~35_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~36_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~37_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~38_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~39_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~40_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~41_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~42_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~43_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~44_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~45_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~46_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~47_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~48_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~49_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[328]~96_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[328]~97_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~50_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~51_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~52_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~53_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~54_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~55_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~56_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~57_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~58_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~59_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~60_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~61_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~62_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~63_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~64_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~65_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~66_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~67_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~68_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~69_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~70_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~71_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~72_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~73_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~98_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[293]~99_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[102]~100_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[293]~101_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[293]~102_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[293]~103_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[293]~104_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~105_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[293]~106_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~107_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[293]~108_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[293]~109_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[293]~110_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~74_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~111_combout\ : std_logic;
SIGNAL \b2v_inst1|victoriacounter1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|victoriacounter1[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[102]~112_combout\ : std_logic;
SIGNAL \b2v_inst1|victoriacounter1~2_combout\ : std_logic;
SIGNAL \b2v_inst1|victoriacounter1~3_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~113_combout\ : std_logic;
SIGNAL \b2v_inst1|victoriacounter2~0_combout\ : std_logic;
SIGNAL \b2v_inst1|victoriacounter2~1_combout\ : std_logic;
SIGNAL \b2v_inst1|victoriacounter2[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|victoriacounter2~3_combout\ : std_logic;
SIGNAL \b2v_inst1|empatecounter1[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|bloqueo~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~75_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~114_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~76_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~115_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~77_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~116_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~78_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~117_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~79_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~118_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~80_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~119_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~81_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~120_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~121_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~82_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~122_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~123_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~124_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~83_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~125_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~84_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~126_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~85_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~127_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~86_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~128_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~87_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~129_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~88_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~130_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~89_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~131_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~90_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~132_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~91_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~133_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~92_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~134_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~93_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~135_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~94_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~136_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~95_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~137_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~96_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~138_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~97_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[277]~139_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[277]~140_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~98_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~99_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~100_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~101_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~102_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~103_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~104_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~105_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~106_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~107_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~108_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~109_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~110_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~111_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~112_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~113_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~114_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~115_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~116_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~117_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~118_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~119_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~120_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~121_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[246]~141_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[246]~142_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~122_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~123_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~124_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~125_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~126_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~127_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~128_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~129_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~130_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~131_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~132_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~133_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~134_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~135_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~136_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~137_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~138_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~139_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~140_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~141_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~142_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~143_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~144_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~145_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[227]~143_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[227]~144_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~146_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~147_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~148_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~149_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~150_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~151_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~152_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~153_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~154_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~155_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~156_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~157_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~158_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~159_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~160_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~161_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~162_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~163_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~164_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~165_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~166_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~167_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~168_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~169_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[198]~145_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[198]~146_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[198]~147_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[198]~148_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~149_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[198]~150_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[198]~151_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~170_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~152_combout\ : std_logic;
SIGNAL \b2v_inst1|empatecounter1~1_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~171_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~153_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~172_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~154_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~173_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~155_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~174_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~156_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~175_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~157_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~176_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~158_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~177_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~159_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~178_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~179_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~160_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~180_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~161_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~181_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~162_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~182_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~163_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~183_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~164_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~184_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~165_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~185_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~166_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~186_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~167_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~187_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~168_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~188_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~169_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~189_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~170_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~190_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~171_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~191_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~172_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~192_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~173_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~193_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[168]~174_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[168]~175_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~194_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~195_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~196_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~197_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~198_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~199_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~200_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~201_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~202_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~203_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~204_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~205_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~206_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~207_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~208_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~209_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~210_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~211_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~212_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~213_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~214_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~215_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~216_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~217_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[165]~176_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[165]~177_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~218_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~219_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~220_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~221_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~222_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~223_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~224_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~225_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~226_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~227_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~228_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~229_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~230_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~231_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~232_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~233_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~234_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~235_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~236_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~237_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~238_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~239_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~240_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~241_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[141]~178_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[141]~179_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~242_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~243_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~244_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~245_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~246_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~247_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~248_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~249_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~250_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~251_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~252_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~253_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~254_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~255_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~256_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~257_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~258_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~259_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~260_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~261_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~262_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~263_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~264_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~265_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~180_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[102]~181_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[102]~182_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[102]~183_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~184_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[102]~185_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~266_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~186_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~267_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~187_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~268_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~188_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[102]~189_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~190_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~269_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~191_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~270_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~192_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~271_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~193_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~272_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~194_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~273_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~195_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~196_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~274_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~197_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~198_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~275_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~199_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~276_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~200_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~277_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~201_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~278_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~202_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~279_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~203_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~280_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~204_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~281_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~205_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~282_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~206_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~283_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~207_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~284_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~208_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~285_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~209_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~286_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~210_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~287_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~211_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~288_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~212_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~289_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~213_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[88]~214_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[88]~215_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~216_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~290_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[88]~217_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[88]~218_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[88]~219_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[88]~220_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~221_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[88]~222_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[88]~223_combout\ : std_logic;
SIGNAL \b2v_inst1|empatecounter2[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~291_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~224_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~292_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~225_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~293_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~226_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~294_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~227_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~295_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~228_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~296_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~229_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~297_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~230_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~298_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~231_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~299_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~232_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~300_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~233_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~301_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~234_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~302_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~235_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~303_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~236_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~304_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~237_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~305_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~238_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~306_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~239_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~307_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~240_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~308_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~241_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~309_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~242_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~310_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~243_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~311_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~244_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~312_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~245_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~313_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[51]~246_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[51]~247_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~248_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~249_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~314_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[51]~250_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[51]~251_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~252_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[51]~253_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[51]~254_combout\ : std_logic;
SIGNAL \b2v_inst1|empatecounter2~1_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~315_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~255_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~316_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~256_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~257_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~317_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~258_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~318_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~259_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~319_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~260_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~320_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~261_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~321_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~262_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~322_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~263_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~323_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~264_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~324_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~265_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~325_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~266_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~326_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~267_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~327_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~268_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~328_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~269_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~329_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~270_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~330_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~271_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~331_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~272_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~332_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~273_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~333_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~274_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~334_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~275_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~335_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~276_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~336_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~277_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~337_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~278_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~279_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[24]~280_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~281_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~338_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[24]~282_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[24]~283_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[24]~284_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~285_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~339_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~286_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~340_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~287_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[24]~288_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~289_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~341_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~290_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~342_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~291_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~343_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~292_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~344_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~293_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~345_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~294_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~346_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~295_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~347_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~296_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~348_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~297_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~349_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~298_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~350_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~299_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~351_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~300_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~352_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~301_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~353_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~302_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~354_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~303_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~355_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~304_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~356_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~305_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~357_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~306_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~358_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~307_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~359_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~308_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~360_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~309_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~361_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~310_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~362_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~311_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~363_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~312_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~364_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~313_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~365_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~314_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~366_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~315_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~367_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~316_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~368_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~317_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~369_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~318_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~370_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~319_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~371_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~320_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~372_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~321_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~373_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~322_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~374_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~323_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~375_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~324_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~376_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~325_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~377_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~326_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~378_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~327_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~379_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~328_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~380_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~329_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~381_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~330_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~382_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~331_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~383_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~332_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~333_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~334_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[102]~335_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~336_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[88]~337_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~338_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[24]~339_combout\ : std_logic;
SIGNAL \TURNO~input_o\ : std_logic;
SIGNAL \POSICION[3]~input_o\ : std_logic;
SIGNAL \SC1[2]~input_o\ : std_logic;
SIGNAL \SC2[2]~input_o\ : std_logic;
SIGNAL \SC2[0]~input_o\ : std_logic;
SIGNAL \SC2[1]~input_o\ : std_logic;
SIGNAL \VICTORIA~input_o\ : std_logic;
SIGNAL \MINV~input_o\ : std_logic;
SIGNAL \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[287]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[191]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[335]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[263]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[359]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[167]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[239]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[286]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[334]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[190]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[358]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[262]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[166]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[261]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[357]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[141]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[165]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[189]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[356]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[260]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[164]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[332]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[188]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[236]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[355]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[187]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[331]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[163]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[283]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[162]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[282]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[378]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[186]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[330]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[329]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[137]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[353]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[257]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[161]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[185]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[352]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[328]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[184]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[256]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[255]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[351]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[375]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[327]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[279]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[183]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[159]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[135]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[350]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[278]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[326]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[230]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[158]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[182]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[181]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[229]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[349]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[277]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[325]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[157]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[156]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[276]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[348]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[180]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[324]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[323]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[227]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[179]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[275]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[155]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[347]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[371]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[370]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[178]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[274]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[226]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[346]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[154]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[345]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[225]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[153]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[273]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[321]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[176]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[224]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[272]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[368]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[320]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[344]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[152]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[151]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[343]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[367]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[223]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[271]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[175]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[319]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[247]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[150]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[342]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[318]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[270]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[174]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[221]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[317]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[245]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[173]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[149]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[269]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[341]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[365]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[316]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[340]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[220]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[172]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[268]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[148]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[364]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[219]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[267]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[171]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[339]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[243]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[147]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[315]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[338]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[266]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[170]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[218]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[146]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[314]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[337]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[145]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[361]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[217]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[265]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[169]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[313]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[264]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[360]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[312]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[216]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[168]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[336]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[144]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg[354]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|victoriacounter2[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg[221]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg[219]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg[190]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg[38]~feeder_combout\ : std_logic;
SIGNAL \inclk0~input_o\ : std_logic;
SIGNAL \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CERO_outclk\ : std_logic;
SIGNAL \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \areset~input_o\ : std_logic;
SIGNAL \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \b2v_inst|inst12|count[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst|inst12|count[0]~10\ : std_logic;
SIGNAL \b2v_inst|inst12|count[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst|inst12|count[1]~12\ : std_logic;
SIGNAL \b2v_inst|inst12|count[2]~13_combout\ : std_logic;
SIGNAL \b2v_inst|inst12|count[2]~14\ : std_logic;
SIGNAL \b2v_inst|inst12|count[3]~16\ : std_logic;
SIGNAL \b2v_inst|inst12|count[4]~17_combout\ : std_logic;
SIGNAL \b2v_inst|inst12|count[4]~18\ : std_logic;
SIGNAL \b2v_inst|inst12|count[5]~20\ : std_logic;
SIGNAL \b2v_inst|inst12|count[6]~22\ : std_logic;
SIGNAL \b2v_inst|inst12|count[7]~23_combout\ : std_logic;
SIGNAL \b2v_inst|inst12|pulso~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst12|pulso~2_combout\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \b2v_inst|inst12|count[7]~24\ : std_logic;
SIGNAL \b2v_inst|inst12|count[8]~25_combout\ : std_logic;
SIGNAL \b2v_inst|inst12|pulso~3_combout\ : std_logic;
SIGNAL \b2v_inst|inst12|pulso~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|inst12|pulso~q\ : std_logic;
SIGNAL \VF~input_o\ : std_logic;
SIGNAL \EMPATE~input_o\ : std_logic;
SIGNAL \b2v_inst1|empategeneral~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Add2~1_combout\ : std_logic;
SIGNAL \b2v_inst1|empategeneral[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Add2~0_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[383]~44_combout\ : std_logic;
SIGNAL \INICIO~input_o\ : std_logic;
SIGNAL \INICIO~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~45_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal2~0_combout\ : std_logic;
SIGNAL \POSICION[0]~input_o\ : std_logic;
SIGNAL \MV~input_o\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[383]~46_combout\ : std_logic;
SIGNAL \POSICION[1]~input_o\ : std_logic;
SIGNAL \POSICION[2]~input_o\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[383]~47_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ[383]~48_combout\ : std_logic;
SIGNAL \SC1[0]~input_o\ : std_logic;
SIGNAL \SC1[1]~input_o\ : std_logic;
SIGNAL \b2v_inst1|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~49_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~50_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~51_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~52_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~53_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ~54_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~3_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~2_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~1_combout\ : std_logic;
SIGNAL \b2v_inst|inst1|shift_reg~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst7~q\ : std_logic;
SIGNAL \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|inst2~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst2~1_combout\ : std_logic;
SIGNAL \b2v_inst1|MATRIZ\ : std_logic_vector(383 DOWNTO 0);
SIGNAL \b2v_inst1|victoriacounter2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b2v_inst1|CJ2\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \b2v_inst1|victoriacounter1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b2v_inst1|empategeneral\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b2v_inst1|empatecounter1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|inst1|shift_reg\ : std_logic_vector(383 DOWNTO 0);
SIGNAL \b2v_inst1|CJ1\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \b2v_inst|inst12|count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \b2v_inst1|empatecounter2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|inst12|ALT_INV_pulso~q\ : std_logic;

BEGIN

ww_inclk0 <= inclk0;
ww_areset <= areset;
ww_INICIO <= INICIO;
ww_MV <= MV;
ww_MINV <= MINV;
ww_TURNO <= TURNO;
ww_VF <= VF;
ww_VICTORIA <= VICTORIA;
ww_EMPATE <= EMPATE;
ww_POSICION <= POSICION;
ww_SC1 <= SC1;
ww_SC2 <= SC2;
CERO <= ww_CERO;
UNO <= ww_UNO;
locked <= ww_locked;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst|inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \inclk0~input_o\);

\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \b2v_inst|inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \b2v_inst|inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \b2v_inst|inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \b2v_inst|inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \b2v_inst|inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk\(2));

\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk\(1));

\INICIO~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INICIO~input_o\);

\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CERO_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk\(0));
\b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\b2v_inst|inst12|ALT_INV_pulso~q\ <= NOT \b2v_inst|inst12|pulso~q\;

-- Location: PLL_1
\b2v_inst|inst|altpll_component|auto_generated|pll1\ : cycloneiv_pll
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
	pll_compensation_delay => 3648,
	pll_type => "mpll",
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 416,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \areset~input_o\,
	fbin => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \b2v_inst|inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \b2v_inst|inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: FF_X11_Y5_N7
\b2v_inst|inst12|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst|inst12|count[3]~15_combout\,
	sclr => \b2v_inst|inst12|ALT_INV_pulso~q\,
	ena => \b2v_inst|inst12|pulso~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst12|count\(3));

-- Location: FF_X11_Y5_N11
\b2v_inst|inst12|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst|inst12|count[5]~19_combout\,
	sclr => \b2v_inst|inst12|ALT_INV_pulso~q\,
	ena => \b2v_inst|inst12|pulso~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst12|count\(5));

-- Location: FF_X11_Y5_N13
\b2v_inst|inst12|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst|inst12|count[6]~21_combout\,
	sclr => \b2v_inst|inst12|ALT_INV_pulso~q\,
	ena => \b2v_inst|inst12|pulso~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst12|count\(6));

-- Location: FF_X19_Y9_N13
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: FF_X19_Y9_N11
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X19_Y9_N10
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X19_Y9_N12
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X11_Y5_N6
\b2v_inst|inst12|count[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst12|count[3]~15_combout\ = (\b2v_inst|inst12|count\(3) & (!\b2v_inst|inst12|count[2]~14\)) # (!\b2v_inst|inst12|count\(3) & ((\b2v_inst|inst12|count[2]~14\) # (GND)))
-- \b2v_inst|inst12|count[3]~16\ = CARRY((!\b2v_inst|inst12|count[2]~14\) # (!\b2v_inst|inst12|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst12|count\(3),
	datad => VCC,
	cin => \b2v_inst|inst12|count[2]~14\,
	combout => \b2v_inst|inst12|count[3]~15_combout\,
	cout => \b2v_inst|inst12|count[3]~16\);

-- Location: LCCOMB_X11_Y5_N10
\b2v_inst|inst12|count[5]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst12|count[5]~19_combout\ = (\b2v_inst|inst12|count\(5) & (!\b2v_inst|inst12|count[4]~18\)) # (!\b2v_inst|inst12|count\(5) & ((\b2v_inst|inst12|count[4]~18\) # (GND)))
-- \b2v_inst|inst12|count[5]~20\ = CARRY((!\b2v_inst|inst12|count[4]~18\) # (!\b2v_inst|inst12|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst12|count\(5),
	datad => VCC,
	cin => \b2v_inst|inst12|count[4]~18\,
	combout => \b2v_inst|inst12|count[5]~19_combout\,
	cout => \b2v_inst|inst12|count[5]~20\);

-- Location: LCCOMB_X11_Y5_N12
\b2v_inst|inst12|count[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst12|count[6]~21_combout\ = (\b2v_inst|inst12|count\(6) & (\b2v_inst|inst12|count[5]~20\ $ (GND))) # (!\b2v_inst|inst12|count\(6) & (!\b2v_inst|inst12|count[5]~20\ & VCC))
-- \b2v_inst|inst12|count[6]~22\ = CARRY((\b2v_inst|inst12|count\(6) & !\b2v_inst|inst12|count[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst12|count\(6),
	datad => VCC,
	cin => \b2v_inst|inst12|count[5]~20\,
	combout => \b2v_inst|inst12|count[6]~21_combout\,
	cout => \b2v_inst|inst12|count[6]~22\);

-- Location: FF_X16_Y6_N25
\b2v_inst1|bloqueo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|bloqueo~0_combout\,
	sclr => \VF~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|bloqueo~q\);

-- Location: LCCOMB_X11_Y5_N22
\b2v_inst|inst12|pulso~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst12|pulso~1_combout\ = (\b2v_inst|inst12|count\(6) & \b2v_inst|inst12|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst12|count\(6),
	datad => \b2v_inst|inst12|count\(5),
	combout => \b2v_inst|inst12|pulso~1_combout\);

-- Location: LCCOMB_X21_Y7_N24
\b2v_inst1|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux0~0_combout\ = (\SC1[2]~input_o\ & (\SC1[0]~input_o\ & !\SC1[1]~input_o\)) # (!\SC1[2]~input_o\ & (!\SC1[0]~input_o\ & \SC1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[2]~input_o\,
	datab => \SC1[0]~input_o\,
	datac => \SC1[1]~input_o\,
	combout => \b2v_inst1|Mux0~0_combout\);

-- Location: FF_X15_Y9_N17
\b2v_inst|inst1|shift_reg[379]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(379));

-- Location: LCCOMB_X18_Y6_N30
\b2v_inst1|Mux40~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux40~0_combout\ = (\SC2[2]~input_o\ & !\SC2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC2[2]~input_o\,
	datad => \SC2[0]~input_o\,
	combout => \b2v_inst1|Mux40~0_combout\);

-- Location: FF_X15_Y9_N3
\b2v_inst|inst1|shift_reg[378]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(378));

-- Location: FF_X16_Y5_N19
\b2v_inst1|MATRIZ[379]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~56_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(379));

-- Location: LCCOMB_X15_Y9_N16
\b2v_inst|inst1|shift_reg~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~4_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(379))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(378))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(379),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(378),
	combout => \b2v_inst|inst1|shift_reg~4_combout\);

-- Location: LCCOMB_X15_Y5_N28
\b2v_inst1|Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux23~0_combout\ = (!\SC2[1]~input_o\ & (\SC2[0]~input_o\ & !\SC2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datac => \SC2[0]~input_o\,
	datad => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux23~0_combout\);

-- Location: LCCOMB_X21_Y7_N4
\b2v_inst1|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux2~0_combout\ = (\SC1[0]~input_o\ & ((!\SC1[1]~input_o\) # (!\SC1[2]~input_o\))) # (!\SC1[0]~input_o\ & ((\SC1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[2]~input_o\,
	datab => \SC1[0]~input_o\,
	datac => \SC1[1]~input_o\,
	combout => \b2v_inst1|Mux2~0_combout\);

-- Location: FF_X15_Y9_N1
\b2v_inst|inst1|shift_reg[377]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(377));

-- Location: FF_X18_Y6_N17
\b2v_inst1|MATRIZ[378]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[378]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(378));

-- Location: LCCOMB_X15_Y9_N2
\b2v_inst|inst1|shift_reg~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~5_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(378))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(377))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(378),
	datad => \b2v_inst|inst1|shift_reg\(377),
	combout => \b2v_inst|inst1|shift_reg~5_combout\);

-- Location: LCCOMB_X18_Y5_N28
\b2v_inst1|MATRIZ~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~55_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(19)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datac => \b2v_inst1|CJ2\(19),
	datad => \b2v_inst1|CJ1\(19),
	combout => \b2v_inst1|MATRIZ~55_combout\);

-- Location: LCCOMB_X18_Y5_N22
\b2v_inst1|MATRIZ~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~56_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~55_combout\,
	combout => \b2v_inst1|MATRIZ~56_combout\);

-- Location: LCCOMB_X16_Y5_N26
\b2v_inst1|Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux24~0_combout\ = \SC2[1]~input_o\ $ (((\SC2[0]~input_o\) # (\SC2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datab => \SC2[0]~input_o\,
	datad => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux24~0_combout\);

-- Location: FF_X15_Y9_N11
\b2v_inst|inst1|shift_reg[376]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(376));

-- Location: FF_X16_Y5_N13
\b2v_inst1|MATRIZ[377]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~60_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(377));

-- Location: LCCOMB_X15_Y9_N0
\b2v_inst|inst1|shift_reg~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~6_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(377)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(376)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(376),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(377),
	combout => \b2v_inst|inst1|shift_reg~6_combout\);

-- Location: LCCOMB_X18_Y5_N24
\b2v_inst1|MATRIZ~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~57_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(18)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datab => \b2v_inst1|CJ2\(18),
	datad => \b2v_inst1|CJ1\(18),
	combout => \b2v_inst1|MATRIZ~57_combout\);

-- Location: LCCOMB_X18_Y5_N10
\b2v_inst1|MATRIZ~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~58_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~57_combout\,
	combout => \b2v_inst1|MATRIZ~58_combout\);

-- Location: LCCOMB_X15_Y5_N22
\b2v_inst1|Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux25~0_combout\ = (\SC2[1]~input_o\ & (!\SC2[0]~input_o\)) # (!\SC2[1]~input_o\ & (\SC2[0]~input_o\ & \SC2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datac => \SC2[0]~input_o\,
	datad => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux25~0_combout\);

-- Location: LCCOMB_X16_Y7_N24
\b2v_inst1|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux4~0_combout\ = (\SC1[1]~input_o\ & ((\SC1[0]~input_o\) # (!\SC1[2]~input_o\))) # (!\SC1[1]~input_o\ & (\SC1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[1]~input_o\,
	datab => \SC1[2]~input_o\,
	datad => \SC1[0]~input_o\,
	combout => \b2v_inst1|Mux4~0_combout\);

-- Location: FF_X15_Y9_N9
\b2v_inst|inst1|shift_reg[375]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(375));

-- Location: FF_X16_Y5_N7
\b2v_inst1|MATRIZ[376]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~62_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(376));

-- Location: LCCOMB_X15_Y9_N10
\b2v_inst|inst1|shift_reg~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~7_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(376))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(375))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(376),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(375),
	combout => \b2v_inst|inst1|shift_reg~7_combout\);

-- Location: LCCOMB_X16_Y8_N16
\b2v_inst1|MATRIZ~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~59_combout\ = (\TURNO~input_o\ & (!\b2v_inst1|CJ1\(17))) # (!\TURNO~input_o\ & ((!\b2v_inst1|CJ2\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datac => \b2v_inst1|CJ1\(17),
	datad => \b2v_inst1|CJ2\(17),
	combout => \b2v_inst1|MATRIZ~59_combout\);

-- Location: LCCOMB_X16_Y8_N30
\b2v_inst1|MATRIZ~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~60_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~59_combout\,
	combout => \b2v_inst1|MATRIZ~60_combout\);

-- Location: LCCOMB_X15_Y5_N16
\b2v_inst1|Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux26~0_combout\ = (\SC2[1]~input_o\ & (\SC2[0]~input_o\)) # (!\SC2[1]~input_o\ & ((!\SC2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datac => \SC2[0]~input_o\,
	datad => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux26~0_combout\);

-- Location: LCCOMB_X16_Y7_N22
\b2v_inst1|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux5~0_combout\ = (\SC1[1]~input_o\ & (\SC1[2]~input_o\ $ (!\SC1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[1]~input_o\,
	datab => \SC1[2]~input_o\,
	datad => \SC1[0]~input_o\,
	combout => \b2v_inst1|Mux5~0_combout\);

-- Location: FF_X15_Y9_N23
\b2v_inst|inst1|shift_reg[374]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(374));

-- Location: FF_X16_Y5_N17
\b2v_inst1|MATRIZ[375]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[375]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(375));

-- Location: LCCOMB_X15_Y9_N8
\b2v_inst|inst1|shift_reg~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~8_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(375)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(374)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(374),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(375),
	combout => \b2v_inst|inst1|shift_reg~8_combout\);

-- Location: LCCOMB_X16_Y8_N12
\b2v_inst1|MATRIZ~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~61_combout\ = (\TURNO~input_o\ & (!\b2v_inst1|CJ1\(16))) # (!\TURNO~input_o\ & ((!\b2v_inst1|CJ2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(16),
	datab => \TURNO~input_o\,
	datad => \b2v_inst1|CJ2\(16),
	combout => \b2v_inst1|MATRIZ~61_combout\);

-- Location: LCCOMB_X16_Y8_N6
\b2v_inst1|MATRIZ~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~62_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~61_combout\,
	combout => \b2v_inst1|MATRIZ~62_combout\);

-- Location: LCCOMB_X16_Y5_N2
\b2v_inst1|Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux27~0_combout\ = (\SC2[1]~input_o\) # ((!\SC2[0]~input_o\ & !\SC2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datab => \SC2[0]~input_o\,
	datad => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux27~0_combout\);

-- Location: LCCOMB_X21_Y7_N0
\b2v_inst1|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux6~0_combout\ = ((!\SC1[2]~input_o\ & !\SC1[1]~input_o\)) # (!\SC1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[2]~input_o\,
	datab => \SC1[0]~input_o\,
	datac => \SC1[1]~input_o\,
	combout => \b2v_inst1|Mux6~0_combout\);

-- Location: FF_X15_Y9_N13
\b2v_inst|inst1|shift_reg[373]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(373));

-- Location: FF_X16_Y5_N25
\b2v_inst1|MATRIZ[374]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~64_combout\,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(374));

-- Location: LCCOMB_X15_Y9_N22
\b2v_inst|inst1|shift_reg~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~9_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(374)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(373)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(373),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(374),
	combout => \b2v_inst|inst1|shift_reg~9_combout\);

-- Location: LCCOMB_X18_Y5_N16
\b2v_inst1|MATRIZ~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~63_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((!\TURNO~input_o\ & (\INICIO~input_o\ & \b2v_inst1|CJ2\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datab => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|CJ2\(15),
	combout => \b2v_inst1|MATRIZ~63_combout\);

-- Location: LCCOMB_X15_Y5_N30
\b2v_inst1|Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux28~0_combout\ = (\SC2[1]~input_o\ $ (\SC2[2]~input_o\)) # (!\SC2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datac => \SC2[0]~input_o\,
	datad => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux28~0_combout\);

-- Location: LCCOMB_X21_Y7_N10
\b2v_inst1|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux7~0_combout\ = (\SC1[2]~input_o\ & \SC1[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[2]~input_o\,
	datac => \SC1[1]~input_o\,
	combout => \b2v_inst1|Mux7~0_combout\);

-- Location: FF_X15_Y9_N19
\b2v_inst|inst1|shift_reg[372]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(372));

-- Location: FF_X16_Y5_N23
\b2v_inst1|MATRIZ[373]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~66_combout\,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(373));

-- Location: LCCOMB_X15_Y9_N12
\b2v_inst|inst1|shift_reg~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~10_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(373)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(372)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(372),
	datac => \b2v_inst1|MATRIZ\(373),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~10_combout\);

-- Location: LCCOMB_X16_Y5_N24
\b2v_inst1|MATRIZ~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~64_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((!\TURNO~input_o\ & (\INICIO~input_o\ & \b2v_inst1|CJ2\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datab => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|CJ2\(14),
	combout => \b2v_inst1|MATRIZ~64_combout\);

-- Location: LCCOMB_X16_Y5_N20
\b2v_inst1|Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux29~0_combout\ = ((\SC2[1]~input_o\ & \SC2[0]~input_o\)) # (!\SC2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datab => \SC2[0]~input_o\,
	datad => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux29~0_combout\);

-- Location: FF_X16_Y9_N7
\b2v_inst|inst1|shift_reg[371]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(371));

-- Location: FF_X16_Y5_N15
\b2v_inst1|MATRIZ[372]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~68_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(372));

-- Location: LCCOMB_X15_Y9_N18
\b2v_inst|inst1|shift_reg~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~11_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(372))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(371))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(372),
	datad => \b2v_inst|inst1|shift_reg\(371),
	combout => \b2v_inst|inst1|shift_reg~11_combout\);

-- Location: LCCOMB_X16_Y5_N12
\b2v_inst1|MATRIZ~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~65_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(13)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(13),
	datab => \TURNO~input_o\,
	datad => \b2v_inst1|CJ1\(13),
	combout => \b2v_inst1|MATRIZ~65_combout\);

-- Location: LCCOMB_X16_Y5_N22
\b2v_inst1|MATRIZ~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~66_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~65_combout\,
	combout => \b2v_inst1|MATRIZ~66_combout\);

-- Location: LCCOMB_X15_Y5_N8
\b2v_inst1|Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux30~0_combout\ = (\SC2[2]~input_o\) # ((!\SC2[1]~input_o\ & !\SC2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datac => \SC2[0]~input_o\,
	datad => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux30~0_combout\);

-- Location: FF_X16_Y3_N17
\b2v_inst|inst1|shift_reg[370]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(370));

-- Location: FF_X16_Y3_N3
\b2v_inst1|MATRIZ[371]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[371]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(371));

-- Location: LCCOMB_X16_Y9_N6
\b2v_inst|inst1|shift_reg~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~12_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(371)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(370)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(370),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(371),
	combout => \b2v_inst|inst1|shift_reg~12_combout\);

-- Location: LCCOMB_X18_Y5_N2
\b2v_inst1|MATRIZ~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~67_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(12)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(12),
	datab => \TURNO~input_o\,
	datad => \b2v_inst1|CJ1\(12),
	combout => \b2v_inst1|MATRIZ~67_combout\);

-- Location: LCCOMB_X18_Y5_N4
\b2v_inst1|MATRIZ~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~68_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~67_combout\,
	combout => \b2v_inst1|MATRIZ~68_combout\);

-- Location: LCCOMB_X16_Y5_N14
\b2v_inst1|Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux31~0_combout\ = (\SC2[1]~input_o\ & ((\SC2[2]~input_o\) # (!\SC2[0]~input_o\))) # (!\SC2[1]~input_o\ & (\SC2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datab => \SC2[0]~input_o\,
	datad => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux31~0_combout\);

-- Location: LCCOMB_X21_Y7_N16
\b2v_inst1|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux8~0_combout\ = (!\SC1[0]~input_o\ & (\SC1[2]~input_o\ $ (\SC1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[2]~input_o\,
	datab => \SC1[0]~input_o\,
	datac => \SC1[1]~input_o\,
	combout => \b2v_inst1|Mux8~0_combout\);

-- Location: FF_X16_Y1_N17
\b2v_inst|inst1|shift_reg[369]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(369));

-- Location: FF_X16_Y3_N25
\b2v_inst1|MATRIZ[370]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[370]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(370));

-- Location: LCCOMB_X16_Y3_N16
\b2v_inst|inst1|shift_reg~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~13_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(370)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(369)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(369),
	datad => \b2v_inst1|MATRIZ\(370),
	combout => \b2v_inst|inst1|shift_reg~13_combout\);

-- Location: LCCOMB_X16_Y6_N10
\b2v_inst1|MATRIZ~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~69_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(11)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datac => \b2v_inst1|CJ2\(11),
	datad => \b2v_inst1|CJ1\(11),
	combout => \b2v_inst1|MATRIZ~69_combout\);

-- Location: LCCOMB_X16_Y6_N0
\b2v_inst1|MATRIZ~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~70_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~69_combout\,
	combout => \b2v_inst1|MATRIZ~70_combout\);

-- Location: LCCOMB_X17_Y3_N2
\b2v_inst1|Mux32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux32~0_combout\ = (\SC2[0]~input_o\ & (!\SC2[1]~input_o\)) # (!\SC2[0]~input_o\ & ((!\SC2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC2[0]~input_o\,
	datac => \SC2[1]~input_o\,
	datad => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux32~0_combout\);

-- Location: LCCOMB_X21_Y7_N26
\b2v_inst1|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux9~0_combout\ = (\SC1[0]~input_o\ & (!\SC1[2]~input_o\)) # (!\SC1[0]~input_o\ & ((\SC1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[2]~input_o\,
	datab => \SC1[0]~input_o\,
	datac => \SC1[1]~input_o\,
	combout => \b2v_inst1|Mux9~0_combout\);

-- Location: FF_X16_Y3_N19
\b2v_inst|inst1|shift_reg[368]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(368));

-- Location: FF_X16_Y5_N1
\b2v_inst1|MATRIZ[369]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~74_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(369));

-- Location: LCCOMB_X16_Y1_N16
\b2v_inst|inst1|shift_reg~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~14_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(369)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(368)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(368),
	datad => \b2v_inst1|MATRIZ\(369),
	combout => \b2v_inst|inst1|shift_reg~14_combout\);

-- Location: LCCOMB_X17_Y3_N12
\b2v_inst1|MATRIZ~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~71_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(10)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(10),
	datab => \TURNO~input_o\,
	datad => \b2v_inst1|CJ1\(10),
	combout => \b2v_inst1|MATRIZ~71_combout\);

-- Location: LCCOMB_X17_Y3_N14
\b2v_inst1|MATRIZ~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~72_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~71_combout\,
	combout => \b2v_inst1|MATRIZ~72_combout\);

-- Location: LCCOMB_X15_Y5_N18
\b2v_inst1|Mux33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux33~0_combout\ = (\SC2[1]~input_o\ & (\SC2[0]~input_o\ $ (\SC2[2]~input_o\))) # (!\SC2[1]~input_o\ & (!\SC2[0]~input_o\ & !\SC2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datac => \SC2[0]~input_o\,
	datad => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux33~0_combout\);

-- Location: LCCOMB_X16_Y7_N4
\b2v_inst1|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux10~0_combout\ = (\SC1[2]~input_o\ & (\SC1[1]~input_o\ & \SC1[0]~input_o\)) # (!\SC1[2]~input_o\ & ((!\SC1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[1]~input_o\,
	datab => \SC1[2]~input_o\,
	datad => \SC1[0]~input_o\,
	combout => \b2v_inst1|Mux10~0_combout\);

-- Location: FF_X16_Y3_N1
\b2v_inst|inst1|shift_reg[367]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(367));

-- Location: FF_X18_Y3_N9
\b2v_inst1|MATRIZ[368]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[368]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(368));

-- Location: LCCOMB_X16_Y3_N18
\b2v_inst|inst1|shift_reg~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~15_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(368))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(367))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(368),
	datad => \b2v_inst|inst1|shift_reg\(367),
	combout => \b2v_inst|inst1|shift_reg~15_combout\);

-- Location: LCCOMB_X17_Y5_N24
\b2v_inst1|MATRIZ~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~73_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(9)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datab => \b2v_inst1|CJ2\(9),
	datad => \b2v_inst1|CJ1\(9),
	combout => \b2v_inst1|MATRIZ~73_combout\);

-- Location: LCCOMB_X17_Y5_N22
\b2v_inst1|MATRIZ~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~74_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[383]~44_combout\,
	datab => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~73_combout\,
	combout => \b2v_inst1|MATRIZ~74_combout\);

-- Location: LCCOMB_X17_Y3_N8
\b2v_inst1|Mux34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux34~0_combout\ = (\SC2[1]~input_o\ & ((!\SC2[2]~input_o\))) # (!\SC2[1]~input_o\ & (\SC2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC2[0]~input_o\,
	datac => \SC2[1]~input_o\,
	datad => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux34~0_combout\);

-- Location: LCCOMB_X17_Y3_N26
\b2v_inst1|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux11~0_combout\ = (\SC1[2]~input_o\ & (\SC1[1]~input_o\)) # (!\SC1[2]~input_o\ & ((\SC1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC1[2]~input_o\,
	datac => \SC1[1]~input_o\,
	datad => \SC1[0]~input_o\,
	combout => \b2v_inst1|Mux11~0_combout\);

-- Location: FF_X16_Y3_N23
\b2v_inst|inst1|shift_reg[366]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(366));

-- Location: FF_X18_Y3_N11
\b2v_inst1|MATRIZ[367]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[367]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(367));

-- Location: LCCOMB_X16_Y3_N0
\b2v_inst|inst1|shift_reg~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~16_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(367)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(366)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(366),
	datac => \b2v_inst1|MATRIZ\(367),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~16_combout\);

-- Location: LCCOMB_X18_Y4_N16
\b2v_inst1|MATRIZ~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~75_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(8)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datab => \b2v_inst1|CJ2\(8),
	datad => \b2v_inst1|CJ1\(8),
	combout => \b2v_inst1|MATRIZ~75_combout\);

-- Location: LCCOMB_X18_Y4_N22
\b2v_inst1|MATRIZ~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~76_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~75_combout\,
	combout => \b2v_inst1|MATRIZ~76_combout\);

-- Location: LCCOMB_X16_Y7_N26
\b2v_inst1|Mux35~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux35~0_combout\ = (\SC2[1]~input_o\ $ (!\SC2[2]~input_o\)) # (!\SC2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datab => \SC2[0]~input_o\,
	datac => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux35~0_combout\);

-- Location: LCCOMB_X17_Y5_N12
\b2v_inst1|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux12~0_combout\ = (!\SC1[2]~input_o\ & (\SC1[1]~input_o\ & !\SC1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[2]~input_o\,
	datab => \SC1[1]~input_o\,
	datad => \SC1[0]~input_o\,
	combout => \b2v_inst1|Mux12~0_combout\);

-- Location: FF_X16_Y3_N21
\b2v_inst|inst1|shift_reg[365]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(365));

-- Location: FF_X16_Y5_N3
\b2v_inst1|MATRIZ[366]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~80_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(366));

-- Location: LCCOMB_X16_Y3_N22
\b2v_inst|inst1|shift_reg~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~17_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(366))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(365))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(366),
	datad => \b2v_inst|inst1|shift_reg\(365),
	combout => \b2v_inst|inst1|shift_reg~17_combout\);

-- Location: LCCOMB_X18_Y4_N24
\b2v_inst1|MATRIZ~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~77_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(7)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datac => \b2v_inst1|CJ2\(7),
	datad => \b2v_inst1|CJ1\(7),
	combout => \b2v_inst1|MATRIZ~77_combout\);

-- Location: LCCOMB_X18_Y4_N6
\b2v_inst1|MATRIZ~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~78_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~77_combout\,
	combout => \b2v_inst1|MATRIZ~78_combout\);

-- Location: LCCOMB_X16_Y5_N18
\b2v_inst1|Mux36~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux36~0_combout\ = \SC2[2]~input_o\ $ (((!\SC2[1]~input_o\ & \SC2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datab => \SC2[0]~input_o\,
	datad => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux36~0_combout\);

-- Location: LCCOMB_X18_Y4_N12
\b2v_inst1|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux13~0_combout\ = (!\SC1[1]~input_o\ & (!\SC1[0]~input_o\ & !\SC1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC1[1]~input_o\,
	datac => \SC1[0]~input_o\,
	datad => \SC1[2]~input_o\,
	combout => \b2v_inst1|Mux13~0_combout\);

-- Location: FF_X16_Y3_N31
\b2v_inst|inst1|shift_reg[364]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(364));

-- Location: FF_X16_Y3_N9
\b2v_inst1|MATRIZ[365]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[365]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(365));

-- Location: LCCOMB_X16_Y3_N20
\b2v_inst|inst1|shift_reg~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~18_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(365)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(364)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(364),
	datac => \b2v_inst1|MATRIZ\(365),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~18_combout\);

-- Location: LCCOMB_X15_Y5_N20
\b2v_inst1|MATRIZ~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~79_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(6)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(6),
	datab => \TURNO~input_o\,
	datad => \b2v_inst1|CJ1\(6),
	combout => \b2v_inst1|MATRIZ~79_combout\);

-- Location: LCCOMB_X15_Y5_N2
\b2v_inst1|MATRIZ~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~80_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~79_combout\,
	combout => \b2v_inst1|MATRIZ~80_combout\);

-- Location: LCCOMB_X18_Y4_N26
\b2v_inst1|Mux37~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux37~0_combout\ = (\SC2[2]~input_o\ & (\SC2[1]~input_o\ & \SC2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[2]~input_o\,
	datac => \SC2[1]~input_o\,
	datad => \SC2[0]~input_o\,
	combout => \b2v_inst1|Mux37~0_combout\);

-- Location: LCCOMB_X17_Y3_N20
\b2v_inst1|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux14~0_combout\ = (\SC1[2]~input_o\ & (\SC1[1]~input_o\)) # (!\SC1[2]~input_o\ & (!\SC1[1]~input_o\ & \SC1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC1[2]~input_o\,
	datac => \SC1[1]~input_o\,
	datad => \SC1[0]~input_o\,
	combout => \b2v_inst1|Mux14~0_combout\);

-- Location: FF_X18_Y3_N29
\b2v_inst|inst1|shift_reg[363]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(363));

-- Location: FF_X16_Y3_N11
\b2v_inst1|MATRIZ[364]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[364]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(364));

-- Location: LCCOMB_X16_Y3_N30
\b2v_inst|inst1|shift_reg~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~19_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(364)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(363)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(363),
	datad => \b2v_inst1|MATRIZ\(364),
	combout => \b2v_inst|inst1|shift_reg~19_combout\);

-- Location: LCCOMB_X17_Y3_N10
\b2v_inst1|MATRIZ~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~81_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(5)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datac => \b2v_inst1|CJ2\(5),
	datad => \b2v_inst1|CJ1\(5),
	combout => \b2v_inst1|MATRIZ~81_combout\);

-- Location: LCCOMB_X17_Y3_N0
\b2v_inst1|MATRIZ~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~82_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~81_combout\,
	combout => \b2v_inst1|MATRIZ~82_combout\);

-- Location: LCCOMB_X15_Y5_N4
\b2v_inst1|Mux38~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux38~0_combout\ = (\SC2[1]~input_o\ & (!\SC2[0]~input_o\ & !\SC2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datac => \SC2[0]~input_o\,
	datad => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux38~0_combout\);

-- Location: LCCOMB_X21_Y7_N12
\b2v_inst1|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux15~0_combout\ = (\SC1[2]~input_o\ $ (!\SC1[1]~input_o\)) # (!\SC1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[2]~input_o\,
	datab => \SC1[0]~input_o\,
	datac => \SC1[1]~input_o\,
	combout => \b2v_inst1|Mux15~0_combout\);

-- Location: FF_X18_Y3_N3
\b2v_inst|inst1|shift_reg[362]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(362));

-- Location: FF_X16_Y5_N27
\b2v_inst1|MATRIZ[363]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~86_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(363));

-- Location: LCCOMB_X18_Y3_N28
\b2v_inst|inst1|shift_reg~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~20_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(363))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(362))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(363),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(362),
	combout => \b2v_inst|inst1|shift_reg~20_combout\);

-- Location: LCCOMB_X16_Y7_N0
\b2v_inst1|MATRIZ~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~83_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(4)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datab => \b2v_inst1|CJ2\(4),
	datad => \b2v_inst1|CJ1\(4),
	combout => \b2v_inst1|MATRIZ~83_combout\);

-- Location: LCCOMB_X16_Y7_N30
\b2v_inst1|MATRIZ~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~84_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|MATRIZ[383]~44_combout\,
	datad => \b2v_inst1|MATRIZ~83_combout\,
	combout => \b2v_inst1|MATRIZ~84_combout\);

-- Location: LCCOMB_X17_Y3_N6
\b2v_inst1|Mux39~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux39~0_combout\ = \SC2[1]~input_o\ $ (((!\SC2[0]~input_o\ & \SC2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC2[0]~input_o\,
	datac => \SC2[1]~input_o\,
	datad => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux39~0_combout\);

-- Location: LCCOMB_X17_Y3_N4
\b2v_inst1|Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux8~1_combout\ = \SC1[2]~input_o\ $ (\SC1[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC1[2]~input_o\,
	datac => \SC1[1]~input_o\,
	combout => \b2v_inst1|Mux8~1_combout\);

-- Location: FF_X18_Y3_N5
\b2v_inst|inst1|shift_reg[361]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(361));

-- Location: FF_X16_Y5_N31
\b2v_inst1|MATRIZ[362]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~88_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(362));

-- Location: LCCOMB_X18_Y3_N2
\b2v_inst|inst1|shift_reg~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~21_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(362))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(361))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(362),
	datac => \b2v_inst|inst1|shift_reg\(361),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~21_combout\);

-- Location: LCCOMB_X17_Y5_N18
\b2v_inst1|MATRIZ~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~85_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(3)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datab => \b2v_inst1|CJ2\(3),
	datad => \b2v_inst1|CJ1\(3),
	combout => \b2v_inst1|MATRIZ~85_combout\);

-- Location: LCCOMB_X17_Y5_N8
\b2v_inst1|MATRIZ~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~86_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[383]~44_combout\,
	datab => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~85_combout\,
	combout => \b2v_inst1|MATRIZ~86_combout\);

-- Location: LCCOMB_X16_Y7_N28
\b2v_inst1|Mux40~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux40~1_combout\ = (!\SC2[1]~input_o\ & (!\SC2[0]~input_o\ & \SC2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datab => \SC2[0]~input_o\,
	datac => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux40~1_combout\);

-- Location: LCCOMB_X16_Y7_N18
\b2v_inst1|Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux17~0_combout\ = (\SC1[1]~input_o\ & (\SC1[2]~input_o\ & !\SC1[0]~input_o\)) # (!\SC1[1]~input_o\ & ((\SC1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[1]~input_o\,
	datab => \SC1[2]~input_o\,
	datad => \SC1[0]~input_o\,
	combout => \b2v_inst1|Mux17~0_combout\);

-- Location: FF_X18_Y3_N19
\b2v_inst|inst1|shift_reg[360]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(360));

-- Location: FF_X16_Y3_N13
\b2v_inst1|MATRIZ[361]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[361]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(361));

-- Location: LCCOMB_X18_Y3_N4
\b2v_inst|inst1|shift_reg~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~22_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(361))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(360))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(361),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(360),
	combout => \b2v_inst|inst1|shift_reg~22_combout\);

-- Location: LCCOMB_X17_Y5_N10
\b2v_inst1|MATRIZ~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~87_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(2)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(2),
	datab => \TURNO~input_o\,
	datad => \b2v_inst1|CJ1\(2),
	combout => \b2v_inst1|MATRIZ~87_combout\);

-- Location: LCCOMB_X17_Y5_N16
\b2v_inst1|MATRIZ~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~88_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[383]~44_combout\,
	datab => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~87_combout\,
	combout => \b2v_inst1|MATRIZ~88_combout\);

-- Location: LCCOMB_X21_Y7_N22
\b2v_inst1|Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux18~0_combout\ = (\SC1[1]~input_o\) # ((\SC1[2]~input_o\ & !\SC1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[2]~input_o\,
	datab => \SC1[0]~input_o\,
	datac => \SC1[1]~input_o\,
	combout => \b2v_inst1|Mux18~0_combout\);

-- Location: FF_X18_Y3_N13
\b2v_inst|inst1|shift_reg[359]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(359));

-- Location: FF_X17_Y6_N5
\b2v_inst1|MATRIZ[360]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[360]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(360));

-- Location: LCCOMB_X18_Y3_N18
\b2v_inst|inst1|shift_reg~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~23_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(360))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(359))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(360),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(359),
	combout => \b2v_inst|inst1|shift_reg~23_combout\);

-- Location: LCCOMB_X16_Y7_N12
\b2v_inst1|MATRIZ~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~89_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(1)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datab => \b2v_inst1|CJ2\(1),
	datad => \b2v_inst1|CJ1\(1),
	combout => \b2v_inst1|MATRIZ~89_combout\);

-- Location: LCCOMB_X16_Y7_N2
\b2v_inst1|MATRIZ~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~90_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|MATRIZ[383]~44_combout\,
	datad => \b2v_inst1|MATRIZ~89_combout\,
	combout => \b2v_inst1|MATRIZ~90_combout\);

-- Location: LCCOMB_X15_Y5_N14
\b2v_inst1|Mux37~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux37~1_combout\ = (\SC2[1]~input_o\ & \SC2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datac => \SC2[0]~input_o\,
	combout => \b2v_inst1|Mux37~1_combout\);

-- Location: LCCOMB_X21_Y7_N20
\b2v_inst1|Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux19~0_combout\ = (\SC1[0]~input_o\ $ (\SC1[1]~input_o\)) # (!\SC1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[2]~input_o\,
	datab => \SC1[0]~input_o\,
	datac => \SC1[1]~input_o\,
	combout => \b2v_inst1|Mux19~0_combout\);

-- Location: FF_X18_Y3_N23
\b2v_inst|inst1|shift_reg[358]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(358));

-- Location: FF_X17_Y4_N17
\b2v_inst1|MATRIZ[359]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[359]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(359));

-- Location: LCCOMB_X18_Y3_N12
\b2v_inst|inst1|shift_reg~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~24_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(359)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(358)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(358),
	datab => \b2v_inst1|MATRIZ\(359),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~24_combout\);

-- Location: LCCOMB_X16_Y6_N2
\b2v_inst1|MATRIZ~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~91_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(0)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datac => \b2v_inst1|CJ2\(0),
	datad => \b2v_inst1|CJ1\(0),
	combout => \b2v_inst1|MATRIZ~91_combout\);

-- Location: LCCOMB_X16_Y6_N8
\b2v_inst1|MATRIZ~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~92_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~91_combout\,
	combout => \b2v_inst1|MATRIZ~92_combout\);

-- Location: LCCOMB_X16_Y7_N16
\b2v_inst1|Mux43~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux43~0_combout\ = (\SC2[1]~input_o\ & (!\SC2[0]~input_o\ & \SC2[2]~input_o\)) # (!\SC2[1]~input_o\ & (\SC2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[1]~input_o\,
	datab => \SC2[0]~input_o\,
	datac => \SC2[2]~input_o\,
	combout => \b2v_inst1|Mux43~0_combout\);

-- Location: LCCOMB_X16_Y7_N14
\b2v_inst1|Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux20~0_combout\ = (\SC1[0]~input_o\ & ((\SC1[2]~input_o\))) # (!\SC1[0]~input_o\ & (\SC1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[1]~input_o\,
	datab => \SC1[2]~input_o\,
	datad => \SC1[0]~input_o\,
	combout => \b2v_inst1|Mux20~0_combout\);

-- Location: FF_X18_Y3_N21
\b2v_inst|inst1|shift_reg[357]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(357));

-- Location: FF_X17_Y4_N31
\b2v_inst1|MATRIZ[358]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[358]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(358));

-- Location: LCCOMB_X18_Y3_N22
\b2v_inst|inst1|shift_reg~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~25_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(358))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(357))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(358),
	datad => \b2v_inst|inst1|shift_reg\(357),
	combout => \b2v_inst|inst1|shift_reg~25_combout\);

-- Location: LCCOMB_X22_Y4_N24
\b2v_inst1|MATRIZ[344]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[344]~93_combout\ = (!\POSICION[3]~input_o\ & (\POSICION[0]~input_o\ & \MV~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSICION[3]~input_o\,
	datac => \POSICION[0]~input_o\,
	datad => \MV~input_o\,
	combout => \b2v_inst1|MATRIZ[344]~93_combout\);

-- Location: LCCOMB_X22_Y4_N22
\b2v_inst1|MATRIZ[344]~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[344]~94_combout\ = ((\POSICION[1]~input_o\) # (\POSICION[2]~input_o\)) # (!\b2v_inst1|MATRIZ[344]~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[344]~93_combout\,
	datac => \POSICION[1]~input_o\,
	datad => \POSICION[2]~input_o\,
	combout => \b2v_inst1|MATRIZ[344]~94_combout\);

-- Location: LCCOMB_X20_Y4_N16
\b2v_inst1|MATRIZ[344]~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[344]~95_combout\ = (((\VF~input_o\ & \b2v_inst1|Equal2~0_combout\)) # (!\INICIO~input_o\)) # (!\b2v_inst1|MATRIZ[344]~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[344]~94_combout\,
	datab => \VF~input_o\,
	datac => \b2v_inst1|Equal2~0_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[344]~95_combout\);

-- Location: LCCOMB_X16_Y6_N18
\b2v_inst1|Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux21~0_combout\ = (\SC1[2]~input_o\ & ((!\SC1[0]~input_o\))) # (!\SC1[2]~input_o\ & (!\SC1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[1]~input_o\,
	datac => \SC1[2]~input_o\,
	datad => \SC1[0]~input_o\,
	combout => \b2v_inst1|Mux21~0_combout\);

-- Location: FF_X19_Y5_N17
\b2v_inst|inst1|shift_reg[356]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(356));

-- Location: FF_X19_Y5_N27
\b2v_inst1|MATRIZ[357]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[357]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(357));

-- Location: LCCOMB_X18_Y3_N20
\b2v_inst|inst1|shift_reg~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~26_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(357)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(356)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(356),
	datac => \b2v_inst1|MATRIZ\(357),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~26_combout\);

-- Location: FF_X20_Y5_N5
\b2v_inst|inst1|shift_reg[355]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(355));

-- Location: FF_X19_Y5_N21
\b2v_inst1|MATRIZ[356]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[356]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(356));

-- Location: LCCOMB_X19_Y5_N16
\b2v_inst|inst1|shift_reg~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~27_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(356))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(355))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(356),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(355),
	combout => \b2v_inst|inst1|shift_reg~27_combout\);

-- Location: FF_X20_Y5_N19
\b2v_inst|inst1|shift_reg[354]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg[354]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(354));

-- Location: FF_X19_Y5_N7
\b2v_inst1|MATRIZ[355]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[355]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(355));

-- Location: LCCOMB_X20_Y5_N4
\b2v_inst|inst1|shift_reg~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~28_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(355))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(354))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(355),
	datad => \b2v_inst|inst1|shift_reg\(354),
	combout => \b2v_inst|inst1|shift_reg~28_combout\);

-- Location: FF_X19_Y5_N9
\b2v_inst|inst1|shift_reg[353]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(353));

-- Location: FF_X19_Y5_N15
\b2v_inst1|MATRIZ[354]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~58_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(354));

-- Location: LCCOMB_X19_Y5_N14
\b2v_inst|inst1|shift_reg~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~29_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(354)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(353)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst|inst1|shift_reg\(353),
	datac => \b2v_inst1|MATRIZ\(354),
	combout => \b2v_inst|inst1|shift_reg~29_combout\);

-- Location: FF_X19_Y5_N1
\b2v_inst|inst1|shift_reg[352]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(352));

-- Location: FF_X17_Y4_N5
\b2v_inst1|MATRIZ[353]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[353]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(353));

-- Location: LCCOMB_X19_Y5_N8
\b2v_inst|inst1|shift_reg~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~30_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(353))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(352))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(353),
	datad => \b2v_inst|inst1|shift_reg\(352),
	combout => \b2v_inst|inst1|shift_reg~30_combout\);

-- Location: FF_X19_Y5_N19
\b2v_inst|inst1|shift_reg[351]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(351));

-- Location: FF_X19_Y8_N17
\b2v_inst1|MATRIZ[352]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[352]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(352));

-- Location: LCCOMB_X19_Y5_N0
\b2v_inst|inst1|shift_reg~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~31_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(352)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(351)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(351),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(352),
	combout => \b2v_inst|inst1|shift_reg~31_combout\);

-- Location: FF_X19_Y5_N5
\b2v_inst|inst1|shift_reg[350]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(350));

-- Location: FF_X19_Y5_N3
\b2v_inst1|MATRIZ[351]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[351]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(351));

-- Location: LCCOMB_X19_Y5_N18
\b2v_inst|inst1|shift_reg~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~32_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(351))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(350))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst1|MATRIZ\(351),
	datac => \b2v_inst|inst1|shift_reg\(350),
	combout => \b2v_inst|inst1|shift_reg~32_combout\);

-- Location: FF_X20_Y5_N1
\b2v_inst|inst1|shift_reg[349]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(349));

-- Location: FF_X19_Y5_N13
\b2v_inst1|MATRIZ[350]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[350]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(350));

-- Location: LCCOMB_X19_Y5_N4
\b2v_inst|inst1|shift_reg~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~33_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(350))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(349))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(350),
	datab => \b2v_inst|inst1|shift_reg\(349),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~33_combout\);

-- Location: FF_X20_Y5_N31
\b2v_inst|inst1|shift_reg[348]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(348));

-- Location: FF_X20_Y5_N13
\b2v_inst1|MATRIZ[349]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[349]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(349));

-- Location: LCCOMB_X20_Y5_N0
\b2v_inst|inst1|shift_reg~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~34_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(349)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(348)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(348),
	datad => \b2v_inst1|MATRIZ\(349),
	combout => \b2v_inst|inst1|shift_reg~34_combout\);

-- Location: FF_X20_Y5_N27
\b2v_inst|inst1|shift_reg[347]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(347));

-- Location: FF_X19_Y5_N23
\b2v_inst1|MATRIZ[348]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[348]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(348));

-- Location: LCCOMB_X20_Y5_N30
\b2v_inst|inst1|shift_reg~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~35_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(348)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(347)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(347),
	datad => \b2v_inst1|MATRIZ\(348),
	combout => \b2v_inst|inst1|shift_reg~35_combout\);

-- Location: FF_X20_Y5_N29
\b2v_inst|inst1|shift_reg[346]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(346));

-- Location: FF_X17_Y4_N23
\b2v_inst1|MATRIZ[347]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[347]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(347));

-- Location: LCCOMB_X20_Y5_N26
\b2v_inst|inst1|shift_reg~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~36_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(347))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(346))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(347),
	datad => \b2v_inst|inst1|shift_reg\(346),
	combout => \b2v_inst|inst1|shift_reg~36_combout\);

-- Location: FF_X20_Y5_N23
\b2v_inst|inst1|shift_reg[345]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(345));

-- Location: FF_X20_Y5_N17
\b2v_inst1|MATRIZ[346]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[346]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(346));

-- Location: LCCOMB_X20_Y5_N28
\b2v_inst|inst1|shift_reg~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~37_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(346)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(345)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(345),
	datad => \b2v_inst1|MATRIZ\(346),
	combout => \b2v_inst|inst1|shift_reg~37_combout\);

-- Location: FF_X20_Y5_N15
\b2v_inst|inst1|shift_reg[344]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(344));

-- Location: FF_X19_Y5_N25
\b2v_inst1|MATRIZ[345]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[345]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(345));

-- Location: LCCOMB_X20_Y5_N22
\b2v_inst|inst1|shift_reg~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~38_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(345)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(344)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(344),
	datad => \b2v_inst1|MATRIZ\(345),
	combout => \b2v_inst|inst1|shift_reg~38_combout\);

-- Location: FF_X20_Y5_N21
\b2v_inst|inst1|shift_reg[343]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(343));

-- Location: FF_X17_Y4_N25
\b2v_inst1|MATRIZ[344]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[344]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(344));

-- Location: LCCOMB_X20_Y5_N14
\b2v_inst|inst1|shift_reg~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~39_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(344))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(343))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(344),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(343),
	combout => \b2v_inst|inst1|shift_reg~39_combout\);

-- Location: FF_X20_Y5_N3
\b2v_inst|inst1|shift_reg[342]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(342));

-- Location: FF_X17_Y4_N15
\b2v_inst1|MATRIZ[343]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[343]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(343));

-- Location: LCCOMB_X20_Y5_N20
\b2v_inst|inst1|shift_reg~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~40_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(343)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(342)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(342),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(343),
	combout => \b2v_inst|inst1|shift_reg~40_combout\);

-- Location: FF_X20_Y5_N25
\b2v_inst|inst1|shift_reg[341]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(341));

-- Location: FF_X19_Y5_N11
\b2v_inst1|MATRIZ[342]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[342]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(342));

-- Location: LCCOMB_X20_Y5_N2
\b2v_inst|inst1|shift_reg~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~41_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(342))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(341))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(342),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(341),
	combout => \b2v_inst|inst1|shift_reg~41_combout\);

-- Location: FF_X20_Y5_N11
\b2v_inst|inst1|shift_reg[340]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(340));

-- Location: FF_X17_Y4_N13
\b2v_inst1|MATRIZ[341]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[341]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(341));

-- Location: LCCOMB_X20_Y5_N24
\b2v_inst|inst1|shift_reg~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~42_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(341))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(340))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(341),
	datad => \b2v_inst|inst1|shift_reg\(340),
	combout => \b2v_inst|inst1|shift_reg~42_combout\);

-- Location: FF_X14_Y6_N25
\b2v_inst|inst1|shift_reg[339]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(339));

-- Location: FF_X17_Y4_N3
\b2v_inst1|MATRIZ[340]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[340]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(340));

-- Location: LCCOMB_X20_Y5_N10
\b2v_inst|inst1|shift_reg~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~43_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(340))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(339))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(340),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(339),
	combout => \b2v_inst|inst1|shift_reg~43_combout\);

-- Location: FF_X14_Y6_N19
\b2v_inst|inst1|shift_reg[338]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(338));

-- Location: FF_X17_Y4_N21
\b2v_inst1|MATRIZ[339]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[339]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(339));

-- Location: LCCOMB_X14_Y6_N24
\b2v_inst|inst1|shift_reg~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~44_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(339))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(338))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(339),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(338),
	combout => \b2v_inst|inst1|shift_reg~44_combout\);

-- Location: FF_X14_Y6_N1
\b2v_inst|inst1|shift_reg[337]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(337));

-- Location: FF_X19_Y5_N29
\b2v_inst1|MATRIZ[338]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[338]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(338));

-- Location: LCCOMB_X14_Y6_N18
\b2v_inst|inst1|shift_reg~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~45_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(338))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(337))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(338),
	datad => \b2v_inst|inst1|shift_reg\(337),
	combout => \b2v_inst|inst1|shift_reg~45_combout\);

-- Location: FF_X14_Y6_N3
\b2v_inst|inst1|shift_reg[336]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(336));

-- Location: FF_X16_Y4_N29
\b2v_inst1|MATRIZ[337]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[337]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(337));

-- Location: LCCOMB_X14_Y6_N0
\b2v_inst|inst1|shift_reg~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~46_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(337)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(336)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(336),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(337),
	combout => \b2v_inst|inst1|shift_reg~46_combout\);

-- Location: FF_X14_Y6_N9
\b2v_inst|inst1|shift_reg[335]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(335));

-- Location: FF_X16_Y4_N15
\b2v_inst1|MATRIZ[336]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[336]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[344]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(336));

-- Location: LCCOMB_X14_Y6_N2
\b2v_inst|inst1|shift_reg~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~47_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(336)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(335)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(335),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(336),
	combout => \b2v_inst|inst1|shift_reg~47_combout\);

-- Location: FF_X14_Y6_N27
\b2v_inst|inst1|shift_reg[334]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(334));

-- Location: FF_X15_Y7_N17
\b2v_inst1|MATRIZ[335]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[335]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(335));

-- Location: LCCOMB_X14_Y6_N8
\b2v_inst|inst1|shift_reg~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~48_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(335)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(334)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(334),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(335),
	combout => \b2v_inst|inst1|shift_reg~48_combout\);

-- Location: FF_X17_Y10_N25
\b2v_inst|inst1|shift_reg[333]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|inst1|shift_reg~50_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(333));

-- Location: FF_X15_Y6_N9
\b2v_inst1|MATRIZ[334]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[334]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(334));

-- Location: LCCOMB_X14_Y6_N26
\b2v_inst|inst1|shift_reg~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~49_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(334)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(333)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(333),
	datad => \b2v_inst1|MATRIZ\(334),
	combout => \b2v_inst|inst1|shift_reg~49_combout\);

-- Location: LCCOMB_X22_Y4_N12
\b2v_inst1|MATRIZ[328]~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[328]~96_combout\ = ((\POSICION[2]~input_o\) # (!\POSICION[1]~input_o\)) # (!\b2v_inst1|MATRIZ[383]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[383]~46_combout\,
	datac => \POSICION[1]~input_o\,
	datad => \POSICION[2]~input_o\,
	combout => \b2v_inst1|MATRIZ[328]~96_combout\);

-- Location: LCCOMB_X15_Y7_N22
\b2v_inst1|MATRIZ[328]~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[328]~97_combout\ = (((\VF~input_o\ & \b2v_inst1|Equal2~0_combout\)) # (!\INICIO~input_o\)) # (!\b2v_inst1|MATRIZ[328]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF~input_o\,
	datab => \b2v_inst1|MATRIZ[328]~96_combout\,
	datac => \b2v_inst1|Equal2~0_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[328]~97_combout\);

-- Location: FF_X14_Y6_N17
\b2v_inst|inst1|shift_reg[332]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(332));

-- Location: FF_X15_Y6_N3
\b2v_inst1|MATRIZ[333]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~52_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(333));

-- Location: LCCOMB_X14_Y6_N10
\b2v_inst|inst1|shift_reg~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~50_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(333)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(332)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst|inst1|shift_reg\(332),
	datad => \b2v_inst1|MATRIZ\(333),
	combout => \b2v_inst|inst1|shift_reg~50_combout\);

-- Location: FF_X14_Y6_N21
\b2v_inst|inst1|shift_reg[331]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(331));

-- Location: FF_X15_Y9_N21
\b2v_inst1|MATRIZ[332]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[332]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(332));

-- Location: LCCOMB_X14_Y6_N16
\b2v_inst|inst1|shift_reg~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~51_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(332)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(331)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst|inst1|shift_reg\(331),
	datad => \b2v_inst1|MATRIZ\(332),
	combout => \b2v_inst|inst1|shift_reg~51_combout\);

-- Location: FF_X14_Y6_N31
\b2v_inst|inst1|shift_reg[330]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(330));

-- Location: FF_X15_Y7_N25
\b2v_inst1|MATRIZ[331]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[331]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(331));

-- Location: LCCOMB_X14_Y6_N20
\b2v_inst|inst1|shift_reg~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~52_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(331)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(330)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(330),
	datab => \b2v_inst1|MATRIZ\(331),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~52_combout\);

-- Location: FF_X14_Y6_N5
\b2v_inst|inst1|shift_reg[329]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(329));

-- Location: FF_X15_Y7_N7
\b2v_inst1|MATRIZ[330]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[330]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(330));

-- Location: LCCOMB_X14_Y6_N30
\b2v_inst|inst1|shift_reg~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~53_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(330))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(329))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(330),
	datab => \b2v_inst|inst1|shift_reg\(329),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~53_combout\);

-- Location: FF_X14_Y6_N7
\b2v_inst|inst1|shift_reg[328]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(328));

-- Location: FF_X15_Y7_N21
\b2v_inst1|MATRIZ[329]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[329]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(329));

-- Location: LCCOMB_X14_Y6_N4
\b2v_inst|inst1|shift_reg~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~54_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(329)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(328)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(328),
	datab => \b2v_inst1|MATRIZ\(329),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~54_combout\);

-- Location: FF_X14_Y6_N13
\b2v_inst|inst1|shift_reg[327]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(327));

-- Location: FF_X15_Y7_N19
\b2v_inst1|MATRIZ[328]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[328]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(328));

-- Location: LCCOMB_X14_Y6_N6
\b2v_inst|inst1|shift_reg~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~55_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(328)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(327)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(327),
	datab => \b2v_inst1|MATRIZ\(328),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~55_combout\);

-- Location: FF_X14_Y6_N15
\b2v_inst|inst1|shift_reg[326]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(326));

-- Location: FF_X14_Y7_N9
\b2v_inst1|MATRIZ[327]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[327]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(327));

-- Location: LCCOMB_X14_Y6_N12
\b2v_inst|inst1|shift_reg~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~56_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(327)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(326)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(326),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(327),
	combout => \b2v_inst|inst1|shift_reg~56_combout\);

-- Location: FF_X14_Y6_N29
\b2v_inst|inst1|shift_reg[325]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(325));

-- Location: FF_X15_Y7_N5
\b2v_inst1|MATRIZ[326]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[326]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(326));

-- Location: LCCOMB_X14_Y6_N14
\b2v_inst|inst1|shift_reg~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~57_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(326))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(325))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(326),
	datab => \b2v_inst|inst1|shift_reg\(325),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~57_combout\);

-- Location: FF_X13_Y6_N29
\b2v_inst|inst1|shift_reg[324]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(324));

-- Location: FF_X15_Y7_N11
\b2v_inst1|MATRIZ[325]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[325]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(325));

-- Location: LCCOMB_X14_Y6_N28
\b2v_inst|inst1|shift_reg~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~58_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(325))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(324))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(325),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(324),
	combout => \b2v_inst|inst1|shift_reg~58_combout\);

-- Location: FF_X13_Y6_N27
\b2v_inst|inst1|shift_reg[323]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(323));

-- Location: FF_X15_Y7_N1
\b2v_inst1|MATRIZ[324]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[324]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(324));

-- Location: LCCOMB_X13_Y6_N28
\b2v_inst|inst1|shift_reg~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~59_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(324)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(323)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(323),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(324),
	combout => \b2v_inst|inst1|shift_reg~59_combout\);

-- Location: FF_X13_Y6_N9
\b2v_inst|inst1|shift_reg[322]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(322));

-- Location: FF_X15_Y6_N21
\b2v_inst1|MATRIZ[323]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[323]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(323));

-- Location: LCCOMB_X13_Y6_N26
\b2v_inst|inst1|shift_reg~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~60_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(323)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(322)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(322),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(323),
	combout => \b2v_inst|inst1|shift_reg~60_combout\);

-- Location: FF_X13_Y6_N19
\b2v_inst|inst1|shift_reg[321]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(321));

-- Location: FF_X19_Y7_N29
\b2v_inst1|MATRIZ[322]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~72_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(322));

-- Location: LCCOMB_X13_Y6_N8
\b2v_inst|inst1|shift_reg~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~61_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(322))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(321))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(322),
	datad => \b2v_inst|inst1|shift_reg\(321),
	combout => \b2v_inst|inst1|shift_reg~61_combout\);

-- Location: FF_X13_Y6_N1
\b2v_inst|inst1|shift_reg[320]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(320));

-- Location: FF_X15_Y7_N31
\b2v_inst1|MATRIZ[321]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[321]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(321));

-- Location: LCCOMB_X13_Y6_N18
\b2v_inst|inst1|shift_reg~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~62_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(321))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(320))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(321),
	datad => \b2v_inst|inst1|shift_reg\(320),
	combout => \b2v_inst|inst1|shift_reg~62_combout\);

-- Location: FF_X13_Y6_N11
\b2v_inst|inst1|shift_reg[319]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(319));

-- Location: FF_X15_Y7_N29
\b2v_inst1|MATRIZ[320]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[320]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(320));

-- Location: LCCOMB_X13_Y6_N0
\b2v_inst|inst1|shift_reg~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~63_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(320)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(319)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(319),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(320),
	combout => \b2v_inst|inst1|shift_reg~63_combout\);

-- Location: FF_X13_Y6_N13
\b2v_inst|inst1|shift_reg[318]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(318));

-- Location: FF_X15_Y7_N27
\b2v_inst1|MATRIZ[319]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[319]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(319));

-- Location: LCCOMB_X13_Y6_N10
\b2v_inst|inst1|shift_reg~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~64_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(319))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(318))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(319),
	datad => \b2v_inst|inst1|shift_reg\(318),
	combout => \b2v_inst|inst1|shift_reg~64_combout\);

-- Location: FF_X13_Y6_N3
\b2v_inst|inst1|shift_reg[317]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(317));

-- Location: FF_X14_Y7_N31
\b2v_inst1|MATRIZ[318]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[318]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(318));

-- Location: LCCOMB_X13_Y6_N12
\b2v_inst|inst1|shift_reg~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~65_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(318))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(317))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(318),
	datad => \b2v_inst|inst1|shift_reg\(317),
	combout => \b2v_inst|inst1|shift_reg~65_combout\);

-- Location: FF_X18_Y3_N27
\b2v_inst|inst1|shift_reg[316]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(316));

-- Location: FF_X14_Y7_N17
\b2v_inst1|MATRIZ[317]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[317]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(317));

-- Location: LCCOMB_X13_Y6_N2
\b2v_inst|inst1|shift_reg~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~66_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(317)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(316)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(316),
	datad => \b2v_inst1|MATRIZ\(317),
	combout => \b2v_inst|inst1|shift_reg~66_combout\);

-- Location: FF_X18_Y3_N1
\b2v_inst|inst1|shift_reg[315]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(315));

-- Location: FF_X15_Y7_N13
\b2v_inst1|MATRIZ[316]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[316]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(316));

-- Location: LCCOMB_X18_Y3_N26
\b2v_inst|inst1|shift_reg~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~67_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(316))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(315))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(316),
	datad => \b2v_inst|inst1|shift_reg\(315),
	combout => \b2v_inst|inst1|shift_reg~67_combout\);

-- Location: FF_X16_Y3_N27
\b2v_inst|inst1|shift_reg[314]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(314));

-- Location: FF_X15_Y7_N3
\b2v_inst1|MATRIZ[315]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[315]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(315));

-- Location: LCCOMB_X18_Y3_N0
\b2v_inst|inst1|shift_reg~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~68_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(315)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(314)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(314),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(315),
	combout => \b2v_inst|inst1|shift_reg~68_combout\);

-- Location: FF_X16_Y3_N29
\b2v_inst|inst1|shift_reg[313]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(313));

-- Location: FF_X15_Y7_N9
\b2v_inst1|MATRIZ[314]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[314]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(314));

-- Location: LCCOMB_X16_Y3_N26
\b2v_inst|inst1|shift_reg~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~69_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(314))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(313))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(314),
	datad => \b2v_inst|inst1|shift_reg\(313),
	combout => \b2v_inst|inst1|shift_reg~69_combout\);

-- Location: FF_X14_Y7_N7
\b2v_inst|inst1|shift_reg[312]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(312));

-- Location: FF_X15_Y7_N15
\b2v_inst1|MATRIZ[313]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[313]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(313));

-- Location: LCCOMB_X16_Y3_N28
\b2v_inst|inst1|shift_reg~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~70_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(313))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(312))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(313),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(312),
	combout => \b2v_inst|inst1|shift_reg~70_combout\);

-- Location: FF_X14_Y7_N1
\b2v_inst|inst1|shift_reg[311]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(311));

-- Location: FF_X15_Y6_N19
\b2v_inst1|MATRIZ[312]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[312]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[328]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(312));

-- Location: LCCOMB_X14_Y7_N6
\b2v_inst|inst1|shift_reg~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~71_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(312)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(311)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(311),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(312),
	combout => \b2v_inst|inst1|shift_reg~71_combout\);

-- Location: FF_X14_Y7_N11
\b2v_inst|inst1|shift_reg[310]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(310));

-- Location: FF_X20_Y7_N21
\b2v_inst1|MATRIZ[311]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~107_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(311));

-- Location: LCCOMB_X14_Y7_N0
\b2v_inst|inst1|shift_reg~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~72_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(311))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(310))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(311),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(310),
	combout => \b2v_inst|inst1|shift_reg~72_combout\);

-- Location: FF_X14_Y7_N29
\b2v_inst|inst1|shift_reg[309]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(309));

-- Location: FF_X20_Y7_N3
\b2v_inst1|MATRIZ[310]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~111_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(310));

-- Location: LCCOMB_X14_Y7_N10
\b2v_inst|inst1|shift_reg~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~73_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(310))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(309))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(310),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(309),
	combout => \b2v_inst|inst1|shift_reg~73_combout\);

-- Location: FF_X20_Y3_N5
\b2v_inst1|victoriacounter1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|victoriacounter1~0_combout\,
	sload => VCC,
	ena => \b2v_inst1|victoriacounter1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|victoriacounter1\(1));

-- Location: FF_X19_Y2_N3
\b2v_inst1|victoriacounter1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|victoriacounter1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|victoriacounter1\(0));

-- Location: FF_X20_Y3_N19
\b2v_inst1|victoriacounter1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|victoriacounter1~3_combout\,
	ena => \b2v_inst1|victoriacounter1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|victoriacounter1\(2));

-- Location: LCCOMB_X20_Y3_N4
\b2v_inst1|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Equal0~0_combout\ = ((\b2v_inst1|victoriacounter1\(1)) # (!\b2v_inst1|victoriacounter1\(2))) # (!\b2v_inst1|victoriacounter1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|victoriacounter1\(0),
	datac => \b2v_inst1|victoriacounter1\(1),
	datad => \b2v_inst1|victoriacounter1\(2),
	combout => \b2v_inst1|Equal0~0_combout\);

-- Location: FF_X20_Y2_N17
\b2v_inst1|victoriacounter2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|victoriacounter2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|victoriacounter2\(0));

-- Location: FF_X20_Y2_N27
\b2v_inst1|victoriacounter2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|victoriacounter2[2]~feeder_combout\,
	ena => \b2v_inst1|victoriacounter2[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|victoriacounter2\(2));

-- Location: FF_X20_Y2_N13
\b2v_inst1|victoriacounter2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|victoriacounter2~3_combout\,
	sload => VCC,
	ena => \b2v_inst1|victoriacounter2[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|victoriacounter2\(1));

-- Location: LCCOMB_X20_Y2_N18
\b2v_inst1|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Equal1~0_combout\ = (\b2v_inst1|victoriacounter2\(0) & (\b2v_inst1|victoriacounter2\(2) & !\b2v_inst1|victoriacounter2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|victoriacounter2\(0),
	datac => \b2v_inst1|victoriacounter2\(2),
	datad => \b2v_inst1|victoriacounter2\(1),
	combout => \b2v_inst1|Equal1~0_combout\);

-- Location: LCCOMB_X20_Y2_N0
\b2v_inst1|MATRIZ~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~98_combout\ = ((\b2v_inst1|Equal2~0_combout\) # ((!\b2v_inst1|Equal1~0_combout\ & \b2v_inst1|Equal0~0_combout\))) # (!\VF~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF~input_o\,
	datab => \b2v_inst1|Equal1~0_combout\,
	datac => \b2v_inst1|Equal0~0_combout\,
	datad => \b2v_inst1|Equal2~0_combout\,
	combout => \b2v_inst1|MATRIZ~98_combout\);

-- Location: LCCOMB_X20_Y3_N24
\b2v_inst1|MATRIZ[293]~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[293]~99_combout\ = (\b2v_inst1|victoriacounter1\(1)) # (((\b2v_inst1|victoriacounter1\(2)) # (!\TURNO~input_o\)) # (!\VICTORIA~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|victoriacounter1\(1),
	datab => \VICTORIA~input_o\,
	datac => \TURNO~input_o\,
	datad => \b2v_inst1|victoriacounter1\(2),
	combout => \b2v_inst1|MATRIZ[293]~99_combout\);

-- Location: LCCOMB_X20_Y2_N2
\b2v_inst1|MATRIZ[102]~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[102]~100_combout\ = (\VF~input_o\ & ((\b2v_inst1|Equal1~0_combout\) # ((\b2v_inst1|Equal2~0_combout\) # (!\b2v_inst1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF~input_o\,
	datab => \b2v_inst1|Equal1~0_combout\,
	datac => \b2v_inst1|Equal0~0_combout\,
	datad => \b2v_inst1|Equal2~0_combout\,
	combout => \b2v_inst1|MATRIZ[102]~100_combout\);

-- Location: FF_X20_Y3_N15
\b2v_inst1|empatecounter1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|victoriacounter1~0_combout\,
	ena => \b2v_inst1|empatecounter1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|empatecounter1\(1));

-- Location: FF_X20_Y3_N13
\b2v_inst1|empatecounter1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|victoriacounter1~3_combout\,
	sload => VCC,
	ena => \b2v_inst1|empatecounter1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|empatecounter1\(2));

-- Location: LCCOMB_X20_Y3_N12
\b2v_inst1|MATRIZ[293]~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[293]~101_combout\ = (!\b2v_inst1|empatecounter1\(1) & (!\b2v_inst1|empatecounter1\(2) & \EMPATE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|empatecounter1\(1),
	datac => \b2v_inst1|empatecounter1\(2),
	datad => \EMPATE~input_o\,
	combout => \b2v_inst1|MATRIZ[293]~101_combout\);

-- Location: LCCOMB_X19_Y3_N2
\b2v_inst1|MATRIZ[293]~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[293]~102_combout\ = (!\b2v_inst1|MATRIZ[293]~101_combout\ & (\b2v_inst1|MATRIZ[293]~99_combout\ & !\b2v_inst1|MATRIZ[102]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[293]~101_combout\,
	datac => \b2v_inst1|MATRIZ[293]~99_combout\,
	datad => \b2v_inst1|MATRIZ[102]~100_combout\,
	combout => \b2v_inst1|MATRIZ[293]~102_combout\);

-- Location: LCCOMB_X18_Y3_N30
\b2v_inst1|MATRIZ[293]~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[293]~103_combout\ = (\VF~input_o\ & (!\b2v_inst1|Equal1~0_combout\ & !\b2v_inst1|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VF~input_o\,
	datac => \b2v_inst1|Equal1~0_combout\,
	datad => \b2v_inst1|Equal2~0_combout\,
	combout => \b2v_inst1|MATRIZ[293]~103_combout\);

-- Location: LCCOMB_X19_Y3_N16
\b2v_inst1|MATRIZ[293]~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[293]~104_combout\ = (\b2v_inst1|MATRIZ[293]~101_combout\ & (((\b2v_inst1|MATRIZ[293]~103_combout\ & !\b2v_inst1|Equal0~0_combout\)))) # (!\b2v_inst1|MATRIZ[293]~101_combout\ & (((\b2v_inst1|MATRIZ[293]~103_combout\)) # (!\VF~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF~input_o\,
	datab => \b2v_inst1|MATRIZ[293]~101_combout\,
	datac => \b2v_inst1|MATRIZ[293]~103_combout\,
	datad => \b2v_inst1|Equal0~0_combout\,
	combout => \b2v_inst1|MATRIZ[293]~104_combout\);

-- Location: LCCOMB_X19_Y7_N22
\b2v_inst1|MATRIZ~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~105_combout\ = (\b2v_inst1|MATRIZ~98_combout\ & (!\b2v_inst1|MATRIZ[293]~104_combout\ & !\b2v_inst1|MATRIZ[293]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~98_combout\,
	datab => \b2v_inst1|MATRIZ[293]~104_combout\,
	datad => \b2v_inst1|MATRIZ[293]~102_combout\,
	combout => \b2v_inst1|MATRIZ~105_combout\);

-- Location: LCCOMB_X19_Y7_N28
\b2v_inst1|MATRIZ[293]~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[293]~106_combout\ = (\b2v_inst1|MATRIZ[293]~102_combout\ & ((!\INICIO~input_o\))) # (!\b2v_inst1|MATRIZ[293]~102_combout\ & (\b2v_inst1|MATRIZ[293]~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[293]~104_combout\,
	datab => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ[293]~102_combout\,
	combout => \b2v_inst1|MATRIZ[293]~106_combout\);

-- Location: LCCOMB_X20_Y7_N20
\b2v_inst1|MATRIZ~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~107_combout\ = (\b2v_inst1|MATRIZ~105_combout\) # ((\b2v_inst1|CJ1\(23) & \b2v_inst1|MATRIZ[293]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~105_combout\,
	datac => \b2v_inst1|CJ1\(23),
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~107_combout\);

-- Location: LCCOMB_X19_Y2_N28
\b2v_inst1|MATRIZ[293]~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[293]~108_combout\ = (!\b2v_inst1|Equal1~0_combout\ & (\VF~input_o\ & (\b2v_inst1|Equal0~0_combout\ & !\b2v_inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal1~0_combout\,
	datab => \VF~input_o\,
	datac => \b2v_inst1|Equal0~0_combout\,
	datad => \b2v_inst1|Equal2~0_combout\,
	combout => \b2v_inst1|MATRIZ[293]~108_combout\);

-- Location: LCCOMB_X19_Y3_N14
\b2v_inst1|MATRIZ[293]~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[293]~109_combout\ = (\VF~input_o\ & (\b2v_inst1|MATRIZ[293]~108_combout\ & !\b2v_inst1|MATRIZ[293]~101_combout\)) # (!\VF~input_o\ & ((\b2v_inst1|MATRIZ[293]~108_combout\) # (!\b2v_inst1|MATRIZ[293]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF~input_o\,
	datab => \b2v_inst1|MATRIZ[293]~108_combout\,
	datac => \b2v_inst1|MATRIZ[293]~101_combout\,
	combout => \b2v_inst1|MATRIZ[293]~109_combout\);

-- Location: LCCOMB_X19_Y7_N4
\b2v_inst1|MATRIZ[293]~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[293]~110_combout\ = (((!\INICIO~input_o\) # (!\b2v_inst1|MATRIZ[293]~99_combout\)) # (!\b2v_inst1|bloqueo~q\)) # (!\b2v_inst1|MATRIZ[293]~109_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[293]~109_combout\,
	datab => \b2v_inst1|bloqueo~q\,
	datac => \b2v_inst1|MATRIZ[293]~99_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[293]~110_combout\);

-- Location: FF_X14_Y7_N19
\b2v_inst|inst1|shift_reg[308]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(308));

-- Location: FF_X20_Y7_N13
\b2v_inst1|MATRIZ[309]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~114_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(309));

-- Location: LCCOMB_X14_Y7_N28
\b2v_inst|inst1|shift_reg~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~74_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(309))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(308))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(309),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(308),
	combout => \b2v_inst|inst1|shift_reg~74_combout\);

-- Location: LCCOMB_X20_Y7_N2
\b2v_inst1|MATRIZ~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~111_combout\ = (\b2v_inst1|MATRIZ~105_combout\) # ((\b2v_inst1|CJ1\(22) & \b2v_inst1|MATRIZ[293]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~105_combout\,
	datac => \b2v_inst1|CJ1\(22),
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~111_combout\);

-- Location: LCCOMB_X20_Y3_N14
\b2v_inst1|victoriacounter1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|victoriacounter1~0_combout\ = (!\VF~input_o\ & (\b2v_inst1|victoriacounter1\(0) $ (!\b2v_inst1|victoriacounter1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VF~input_o\,
	datac => \b2v_inst1|victoriacounter1\(0),
	datad => \b2v_inst1|victoriacounter1\(1),
	combout => \b2v_inst1|victoriacounter1~0_combout\);

-- Location: LCCOMB_X20_Y3_N26
\b2v_inst1|victoriacounter1[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|victoriacounter1[2]~1_combout\ = (\EMPATE~input_o\) # ((\VF~input_o\) # ((\TURNO~input_o\ & \VICTORIA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EMPATE~input_o\,
	datab => \VF~input_o\,
	datac => \TURNO~input_o\,
	datad => \VICTORIA~input_o\,
	combout => \b2v_inst1|victoriacounter1[2]~1_combout\);

-- Location: LCCOMB_X20_Y2_N24
\b2v_inst1|MATRIZ[102]~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[102]~112_combout\ = (\TURNO~input_o\ & \VICTORIA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TURNO~input_o\,
	datad => \VICTORIA~input_o\,
	combout => \b2v_inst1|MATRIZ[102]~112_combout\);

-- Location: LCCOMB_X19_Y2_N2
\b2v_inst1|victoriacounter1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|victoriacounter1~2_combout\ = (!\VF~input_o\ & (\b2v_inst1|victoriacounter1\(0) $ (((\EMPATE~input_o\) # (\b2v_inst1|MATRIZ[102]~112_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EMPATE~input_o\,
	datab => \VF~input_o\,
	datac => \b2v_inst1|victoriacounter1\(0),
	datad => \b2v_inst1|MATRIZ[102]~112_combout\,
	combout => \b2v_inst1|victoriacounter1~2_combout\);

-- Location: LCCOMB_X20_Y3_N18
\b2v_inst1|victoriacounter1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|victoriacounter1~3_combout\ = (!\VF~input_o\ & (\b2v_inst1|victoriacounter1\(2) $ (((\b2v_inst1|victoriacounter1\(1) & !\b2v_inst1|victoriacounter1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|victoriacounter1\(1),
	datab => \b2v_inst1|victoriacounter1\(0),
	datac => \b2v_inst1|victoriacounter1\(2),
	datad => \VF~input_o\,
	combout => \b2v_inst1|victoriacounter1~3_combout\);

-- Location: LCCOMB_X20_Y2_N30
\b2v_inst1|MATRIZ~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~113_combout\ = (!\TURNO~input_o\ & \VICTORIA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TURNO~input_o\,
	datad => \VICTORIA~input_o\,
	combout => \b2v_inst1|MATRIZ~113_combout\);

-- Location: LCCOMB_X20_Y2_N16
\b2v_inst1|victoriacounter2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|victoriacounter2~0_combout\ = (!\VF~input_o\ & (\b2v_inst1|victoriacounter2\(0) $ (((\EMPATE~input_o\) # (\b2v_inst1|MATRIZ~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF~input_o\,
	datab => \EMPATE~input_o\,
	datac => \b2v_inst1|victoriacounter2\(0),
	datad => \b2v_inst1|MATRIZ~113_combout\,
	combout => \b2v_inst1|victoriacounter2~0_combout\);

-- Location: LCCOMB_X20_Y2_N20
\b2v_inst1|victoriacounter2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|victoriacounter2~1_combout\ = (!\VF~input_o\ & (\b2v_inst1|victoriacounter2\(2) $ (((!\b2v_inst1|victoriacounter2\(0) & \b2v_inst1|victoriacounter2\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF~input_o\,
	datab => \b2v_inst1|victoriacounter2\(0),
	datac => \b2v_inst1|victoriacounter2\(2),
	datad => \b2v_inst1|victoriacounter2\(1),
	combout => \b2v_inst1|victoriacounter2~1_combout\);

-- Location: LCCOMB_X20_Y2_N14
\b2v_inst1|victoriacounter2[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|victoriacounter2[2]~2_combout\ = (\VF~input_o\) # ((\EMPATE~input_o\) # ((!\TURNO~input_o\ & \VICTORIA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF~input_o\,
	datab => \EMPATE~input_o\,
	datac => \TURNO~input_o\,
	datad => \VICTORIA~input_o\,
	combout => \b2v_inst1|victoriacounter2[2]~2_combout\);

-- Location: LCCOMB_X20_Y2_N8
\b2v_inst1|victoriacounter2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|victoriacounter2~3_combout\ = (!\VF~input_o\ & (\b2v_inst1|victoriacounter2\(0) $ (!\b2v_inst1|victoriacounter2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF~input_o\,
	datab => \b2v_inst1|victoriacounter2\(0),
	datad => \b2v_inst1|victoriacounter2\(1),
	combout => \b2v_inst1|victoriacounter2~3_combout\);

-- Location: LCCOMB_X20_Y3_N0
\b2v_inst1|empatecounter1[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|empatecounter1[1]~0_combout\ = (\VF~input_o\) # ((\TURNO~input_o\ & \VICTORIA~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VF~input_o\,
	datac => \TURNO~input_o\,
	datad => \VICTORIA~input_o\,
	combout => \b2v_inst1|empatecounter1[1]~0_combout\);

-- Location: LCCOMB_X16_Y6_N24
\b2v_inst1|bloqueo~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|bloqueo~0_combout\ = (\INICIO~input_o\) # (\b2v_inst1|bloqueo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|bloqueo~q\,
	combout => \b2v_inst1|bloqueo~0_combout\);

-- Location: FF_X14_Y7_N13
\b2v_inst|inst1|shift_reg[307]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(307));

-- Location: FF_X19_Y7_N3
\b2v_inst1|MATRIZ[308]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~115_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(308));

-- Location: LCCOMB_X14_Y7_N18
\b2v_inst|inst1|shift_reg~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~75_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(308))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(307))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(308),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(307),
	combout => \b2v_inst|inst1|shift_reg~75_combout\);

-- Location: LCCOMB_X20_Y7_N12
\b2v_inst1|MATRIZ~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~114_combout\ = (\b2v_inst1|MATRIZ~105_combout\) # ((\b2v_inst1|CJ1\(21) & \b2v_inst1|MATRIZ[293]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~105_combout\,
	datac => \b2v_inst1|CJ1\(21),
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~114_combout\);

-- Location: FF_X14_Y7_N3
\b2v_inst|inst1|shift_reg[306]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(306));

-- Location: FF_X19_Y7_N13
\b2v_inst1|MATRIZ[307]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~116_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(307));

-- Location: LCCOMB_X14_Y7_N12
\b2v_inst|inst1|shift_reg~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~76_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(307))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(306))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(307),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(306),
	combout => \b2v_inst|inst1|shift_reg~76_combout\);

-- Location: LCCOMB_X19_Y7_N2
\b2v_inst1|MATRIZ~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~115_combout\ = (\b2v_inst1|MATRIZ~98_combout\ & ((\b2v_inst1|MATRIZ~334_combout\) # ((\b2v_inst1|CJ1\(20) & \b2v_inst1|MATRIZ[293]~106_combout\)))) # (!\b2v_inst1|MATRIZ~98_combout\ & (((\b2v_inst1|CJ1\(20) & 
-- \b2v_inst1|MATRIZ[293]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~98_combout\,
	datab => \b2v_inst1|MATRIZ~334_combout\,
	datac => \b2v_inst1|CJ1\(20),
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~115_combout\);

-- Location: FF_X14_Y7_N21
\b2v_inst|inst1|shift_reg[305]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(305));

-- Location: FF_X20_Y7_N27
\b2v_inst1|MATRIZ[306]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~117_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(306));

-- Location: LCCOMB_X14_Y7_N2
\b2v_inst|inst1|shift_reg~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~77_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(306))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(305))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(306),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(305),
	combout => \b2v_inst|inst1|shift_reg~77_combout\);

-- Location: LCCOMB_X19_Y7_N12
\b2v_inst1|MATRIZ~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~116_combout\ = (\b2v_inst1|CJ1\(19) & ((\b2v_inst1|MATRIZ[293]~106_combout\) # ((\b2v_inst1|MATRIZ~334_combout\ & \b2v_inst1|MATRIZ~98_combout\)))) # (!\b2v_inst1|CJ1\(19) & (\b2v_inst1|MATRIZ~334_combout\ & 
-- (\b2v_inst1|MATRIZ~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(19),
	datab => \b2v_inst1|MATRIZ~334_combout\,
	datac => \b2v_inst1|MATRIZ~98_combout\,
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~116_combout\);

-- Location: FF_X15_Y6_N13
\b2v_inst|inst1|shift_reg[304]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|inst1|shift_reg~79_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(304));

-- Location: FF_X20_Y7_N5
\b2v_inst1|MATRIZ[305]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~118_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(305));

-- Location: LCCOMB_X14_Y7_N20
\b2v_inst|inst1|shift_reg~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~78_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(305))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(304))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(305),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(304),
	combout => \b2v_inst|inst1|shift_reg~78_combout\);

-- Location: LCCOMB_X20_Y7_N26
\b2v_inst1|MATRIZ~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~117_combout\ = (\b2v_inst1|MATRIZ~105_combout\) # ((\b2v_inst1|CJ1\(18) & \b2v_inst1|MATRIZ[293]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(18),
	datab => \b2v_inst1|MATRIZ~105_combout\,
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~117_combout\);

-- Location: FF_X14_Y7_N23
\b2v_inst|inst1|shift_reg[303]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(303));

-- Location: FF_X20_Y7_N11
\b2v_inst1|MATRIZ[304]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~119_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(304));

-- Location: LCCOMB_X14_Y7_N4
\b2v_inst|inst1|shift_reg~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~79_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(304)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(303)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(303),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(304),
	combout => \b2v_inst|inst1|shift_reg~79_combout\);

-- Location: LCCOMB_X20_Y7_N4
\b2v_inst1|MATRIZ~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~118_combout\ = (\b2v_inst1|MATRIZ~105_combout\) # ((\b2v_inst1|CJ1\(17) & \b2v_inst1|MATRIZ[293]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(17),
	datab => \b2v_inst1|MATRIZ~105_combout\,
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~118_combout\);

-- Location: FF_X14_Y7_N15
\b2v_inst|inst1|shift_reg[302]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(302));

-- Location: FF_X19_Y7_N31
\b2v_inst1|MATRIZ[303]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~121_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(303));

-- Location: LCCOMB_X14_Y7_N22
\b2v_inst|inst1|shift_reg~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~80_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(303)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(302)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(302),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(303),
	combout => \b2v_inst|inst1|shift_reg~80_combout\);

-- Location: LCCOMB_X20_Y7_N10
\b2v_inst1|MATRIZ~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~119_combout\ = (\b2v_inst1|MATRIZ~105_combout\) # ((\b2v_inst1|CJ1\(16) & \b2v_inst1|MATRIZ[293]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~105_combout\,
	datac => \b2v_inst1|CJ1\(16),
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~119_combout\);

-- Location: FF_X14_Y7_N25
\b2v_inst|inst1|shift_reg[301]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(301));

-- Location: FF_X19_Y7_N21
\b2v_inst1|MATRIZ[302]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~124_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(302));

-- Location: LCCOMB_X14_Y7_N14
\b2v_inst|inst1|shift_reg~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~81_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(302))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(301))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(302),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(301),
	combout => \b2v_inst|inst1|shift_reg~81_combout\);

-- Location: LCCOMB_X19_Y3_N0
\b2v_inst1|MATRIZ~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~120_combout\ = (\b2v_inst1|MATRIZ[293]~101_combout\ & (((\b2v_inst1|Equal0~0_combout\ & !\b2v_inst1|Equal1~0_combout\)) # (!\VF~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal0~0_combout\,
	datab => \b2v_inst1|MATRIZ[293]~101_combout\,
	datac => \VF~input_o\,
	datad => \b2v_inst1|Equal1~0_combout\,
	combout => \b2v_inst1|MATRIZ~120_combout\);

-- Location: LCCOMB_X19_Y7_N30
\b2v_inst1|MATRIZ~121\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~121_combout\ = (!\b2v_inst1|MATRIZ[293]~102_combout\ & ((\b2v_inst1|MATRIZ~120_combout\) # (\b2v_inst1|MATRIZ[383]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[293]~102_combout\,
	datac => \b2v_inst1|MATRIZ~120_combout\,
	datad => \b2v_inst1|MATRIZ[383]~44_combout\,
	combout => \b2v_inst1|MATRIZ~121_combout\);

-- Location: FF_X14_Y7_N27
\b2v_inst|inst1|shift_reg[300]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(300));

-- Location: FF_X20_Y7_N25
\b2v_inst1|MATRIZ[301]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~125_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(301));

-- Location: LCCOMB_X14_Y7_N24
\b2v_inst|inst1|shift_reg~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~82_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(301)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(300)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(300),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(301),
	combout => \b2v_inst|inst1|shift_reg~82_combout\);

-- Location: LCCOMB_X19_Y3_N30
\b2v_inst1|MATRIZ~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~122_combout\ = (\VF~input_o\ & ((\b2v_inst1|Equal2~0_combout\) # (\b2v_inst1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Equal2~0_combout\,
	datac => \VF~input_o\,
	datad => \b2v_inst1|Equal1~0_combout\,
	combout => \b2v_inst1|MATRIZ~122_combout\);

-- Location: LCCOMB_X20_Y3_N6
\b2v_inst1|MATRIZ~123\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~123_combout\ = (\b2v_inst1|victoriacounter1\(1)) # (((!\VF~input_o\) # (!\b2v_inst1|victoriacounter1\(0))) # (!\b2v_inst1|victoriacounter1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|victoriacounter1\(1),
	datab => \b2v_inst1|victoriacounter1\(2),
	datac => \b2v_inst1|victoriacounter1\(0),
	datad => \VF~input_o\,
	combout => \b2v_inst1|MATRIZ~123_combout\);

-- Location: LCCOMB_X19_Y7_N20
\b2v_inst1|MATRIZ~124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~124_combout\ = (!\b2v_inst1|MATRIZ[293]~102_combout\ & ((\b2v_inst1|MATRIZ~122_combout\) # ((\b2v_inst1|MATRIZ~123_combout\ & \b2v_inst1|MATRIZ[293]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[293]~102_combout\,
	datab => \b2v_inst1|MATRIZ~123_combout\,
	datac => \b2v_inst1|MATRIZ[293]~101_combout\,
	datad => \b2v_inst1|MATRIZ~122_combout\,
	combout => \b2v_inst1|MATRIZ~124_combout\);

-- Location: FF_X19_Y8_N27
\b2v_inst|inst1|shift_reg[299]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(299));

-- Location: FF_X20_Y7_N23
\b2v_inst1|MATRIZ[300]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~126_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(300));

-- Location: LCCOMB_X14_Y7_N26
\b2v_inst|inst1|shift_reg~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~83_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(300)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(299)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(299),
	datad => \b2v_inst1|MATRIZ\(300),
	combout => \b2v_inst|inst1|shift_reg~83_combout\);

-- Location: LCCOMB_X20_Y7_N24
\b2v_inst1|MATRIZ~125\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~125_combout\ = (\b2v_inst1|MATRIZ~105_combout\) # ((\b2v_inst1|CJ1\(13) & \b2v_inst1|MATRIZ[293]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(13),
	datab => \b2v_inst1|MATRIZ~105_combout\,
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~125_combout\);

-- Location: FF_X19_Y8_N1
\b2v_inst|inst1|shift_reg[298]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(298));

-- Location: FF_X19_Y7_N27
\b2v_inst1|MATRIZ[299]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~127_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(299));

-- Location: LCCOMB_X19_Y8_N26
\b2v_inst|inst1|shift_reg~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~84_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(299))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(298))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(299),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(298),
	combout => \b2v_inst|inst1|shift_reg~84_combout\);

-- Location: LCCOMB_X20_Y7_N22
\b2v_inst1|MATRIZ~126\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~126_combout\ = (\b2v_inst1|MATRIZ~105_combout\) # ((\b2v_inst1|CJ1\(12) & \b2v_inst1|MATRIZ[293]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~105_combout\,
	datac => \b2v_inst1|CJ1\(12),
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~126_combout\);

-- Location: FF_X19_Y8_N3
\b2v_inst|inst1|shift_reg[297]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(297));

-- Location: FF_X19_Y7_N23
\b2v_inst1|MATRIZ[298]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~128_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(298));

-- Location: LCCOMB_X19_Y8_N0
\b2v_inst|inst1|shift_reg~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~85_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(298))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(297))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(298),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(297),
	combout => \b2v_inst|inst1|shift_reg~85_combout\);

-- Location: LCCOMB_X19_Y7_N26
\b2v_inst1|MATRIZ~127\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~127_combout\ = (\b2v_inst1|MATRIZ[293]~102_combout\ & (!\INICIO~input_o\ & ((\b2v_inst1|CJ1\(11))))) # (!\b2v_inst1|MATRIZ[293]~102_combout\ & (((\b2v_inst1|CJ1\(11)) # (!\b2v_inst1|MATRIZ[293]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[293]~102_combout\,
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|MATRIZ[293]~104_combout\,
	datad => \b2v_inst1|CJ1\(11),
	combout => \b2v_inst1|MATRIZ~127_combout\);

-- Location: FF_X19_Y8_N29
\b2v_inst|inst1|shift_reg[296]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(296));

-- Location: FF_X19_Y7_N1
\b2v_inst1|MATRIZ[297]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~129_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(297));

-- Location: LCCOMB_X19_Y8_N2
\b2v_inst|inst1|shift_reg~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~86_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(297))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(296))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(297),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(296),
	combout => \b2v_inst|inst1|shift_reg~86_combout\);

-- Location: LCCOMB_X18_Y3_N16
\b2v_inst1|MATRIZ~128\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~128_combout\ = (\b2v_inst1|MATRIZ[293]~102_combout\ & (((!\INICIO~input_o\ & \b2v_inst1|CJ1\(10))))) # (!\b2v_inst1|MATRIZ[293]~102_combout\ & (((\b2v_inst1|CJ1\(10))) # (!\b2v_inst1|MATRIZ[293]~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[293]~102_combout\,
	datab => \b2v_inst1|MATRIZ[293]~104_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|CJ1\(10),
	combout => \b2v_inst1|MATRIZ~128_combout\);

-- Location: FF_X19_Y8_N23
\b2v_inst|inst1|shift_reg[295]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(295));

-- Location: FF_X20_Y7_N1
\b2v_inst1|MATRIZ[296]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~130_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(296));

-- Location: LCCOMB_X19_Y8_N28
\b2v_inst|inst1|shift_reg~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~87_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(296)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(295)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(295),
	datab => \b2v_inst1|MATRIZ\(296),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~87_combout\);

-- Location: LCCOMB_X19_Y7_N0
\b2v_inst1|MATRIZ~129\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~129_combout\ = (\b2v_inst1|MATRIZ[293]~102_combout\ & (\b2v_inst1|CJ1\(9) & ((!\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[293]~102_combout\ & ((\b2v_inst1|CJ1\(9)) # ((!\b2v_inst1|MATRIZ[293]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[293]~102_combout\,
	datab => \b2v_inst1|CJ1\(9),
	datac => \b2v_inst1|MATRIZ[293]~104_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~129_combout\);

-- Location: FF_X19_Y8_N13
\b2v_inst|inst1|shift_reg[294]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(294));

-- Location: FF_X20_Y7_N19
\b2v_inst1|MATRIZ[295]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~131_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(295));

-- Location: LCCOMB_X19_Y8_N22
\b2v_inst|inst1|shift_reg~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~88_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(295)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(294)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(294),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(295),
	combout => \b2v_inst|inst1|shift_reg~88_combout\);

-- Location: LCCOMB_X20_Y7_N0
\b2v_inst1|MATRIZ~130\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~130_combout\ = (\b2v_inst1|MATRIZ~105_combout\) # ((\b2v_inst1|CJ1\(8) & \b2v_inst1|MATRIZ[293]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~105_combout\,
	datac => \b2v_inst1|CJ1\(8),
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~130_combout\);

-- Location: FF_X19_Y8_N19
\b2v_inst|inst1|shift_reg[293]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(293));

-- Location: FF_X19_Y7_N19
\b2v_inst1|MATRIZ[294]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~132_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(294));

-- Location: LCCOMB_X19_Y8_N12
\b2v_inst|inst1|shift_reg~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~89_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(294))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(293))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(294),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(293),
	combout => \b2v_inst|inst1|shift_reg~89_combout\);

-- Location: LCCOMB_X20_Y7_N18
\b2v_inst1|MATRIZ~131\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~131_combout\ = (\b2v_inst1|MATRIZ~105_combout\) # ((\b2v_inst1|CJ1\(7) & \b2v_inst1|MATRIZ[293]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~105_combout\,
	datac => \b2v_inst1|CJ1\(7),
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~131_combout\);

-- Location: FF_X17_Y10_N23
\b2v_inst|inst1|shift_reg[292]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(292));

-- Location: FF_X19_Y7_N17
\b2v_inst1|MATRIZ[293]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~133_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(293));

-- Location: LCCOMB_X19_Y8_N18
\b2v_inst|inst1|shift_reg~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~90_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(293)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(292)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(292),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(293),
	combout => \b2v_inst|inst1|shift_reg~90_combout\);

-- Location: LCCOMB_X19_Y7_N18
\b2v_inst1|MATRIZ~132\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~132_combout\ = (\b2v_inst1|MATRIZ[293]~102_combout\ & (!\INICIO~input_o\ & ((\b2v_inst1|CJ1\(6))))) # (!\b2v_inst1|MATRIZ[293]~102_combout\ & (((\b2v_inst1|CJ1\(6)) # (!\b2v_inst1|MATRIZ[293]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[293]~102_combout\,
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|MATRIZ[293]~104_combout\,
	datad => \b2v_inst1|CJ1\(6),
	combout => \b2v_inst1|MATRIZ~132_combout\);

-- Location: FF_X17_Y10_N13
\b2v_inst|inst1|shift_reg[291]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(291));

-- Location: FF_X19_Y7_N15
\b2v_inst1|MATRIZ[292]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~134_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(292));

-- Location: LCCOMB_X17_Y10_N22
\b2v_inst|inst1|shift_reg~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~91_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(292)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(291)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(291),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(292),
	combout => \b2v_inst|inst1|shift_reg~91_combout\);

-- Location: LCCOMB_X19_Y7_N16
\b2v_inst1|MATRIZ~133\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~133_combout\ = (\b2v_inst1|MATRIZ[293]~102_combout\ & (\b2v_inst1|CJ1\(5) & ((!\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[293]~102_combout\ & ((\b2v_inst1|CJ1\(5)) # ((!\b2v_inst1|MATRIZ[293]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[293]~102_combout\,
	datab => \b2v_inst1|CJ1\(5),
	datac => \b2v_inst1|MATRIZ[293]~104_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~133_combout\);

-- Location: FF_X18_Y10_N25
\b2v_inst|inst1|shift_reg[290]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(290));

-- Location: FF_X19_Y7_N9
\b2v_inst1|MATRIZ[291]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~135_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(291));

-- Location: LCCOMB_X17_Y10_N12
\b2v_inst|inst1|shift_reg~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~92_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(291)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(290)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(290),
	datac => \b2v_inst1|MATRIZ\(291),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~92_combout\);

-- Location: LCCOMB_X19_Y7_N14
\b2v_inst1|MATRIZ~134\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~134_combout\ = (\b2v_inst1|CJ1\(4) & ((\b2v_inst1|MATRIZ[293]~106_combout\) # ((\b2v_inst1|MATRIZ~334_combout\ & \b2v_inst1|MATRIZ~98_combout\)))) # (!\b2v_inst1|CJ1\(4) & (\b2v_inst1|MATRIZ~334_combout\ & 
-- (\b2v_inst1|MATRIZ~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(4),
	datab => \b2v_inst1|MATRIZ~334_combout\,
	datac => \b2v_inst1|MATRIZ~98_combout\,
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~134_combout\);

-- Location: FF_X17_Y10_N19
\b2v_inst|inst1|shift_reg[289]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(289));

-- Location: FF_X19_Y7_N7
\b2v_inst1|MATRIZ[290]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~136_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(290));

-- Location: LCCOMB_X18_Y10_N24
\b2v_inst|inst1|shift_reg~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~93_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(290)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(289)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(289),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(290),
	combout => \b2v_inst|inst1|shift_reg~93_combout\);

-- Location: LCCOMB_X19_Y7_N8
\b2v_inst1|MATRIZ~135\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~135_combout\ = (\b2v_inst1|MATRIZ[293]~102_combout\ & (\b2v_inst1|CJ1\(3) & ((!\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[293]~102_combout\ & ((\b2v_inst1|CJ1\(3)) # ((!\b2v_inst1|MATRIZ[293]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[293]~102_combout\,
	datab => \b2v_inst1|CJ1\(3),
	datac => \b2v_inst1|MATRIZ[293]~104_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~135_combout\);

-- Location: FF_X17_Y10_N9
\b2v_inst|inst1|shift_reg[288]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(288));

-- Location: FF_X19_Y7_N25
\b2v_inst1|MATRIZ[289]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~137_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(289));

-- Location: LCCOMB_X17_Y10_N18
\b2v_inst|inst1|shift_reg~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~94_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(289))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(288))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(289),
	datac => \b2v_inst|inst1|shift_reg\(288),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~94_combout\);

-- Location: LCCOMB_X19_Y7_N6
\b2v_inst1|MATRIZ~136\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~136_combout\ = (\b2v_inst1|MATRIZ~105_combout\) # ((\b2v_inst1|CJ1\(2) & \b2v_inst1|MATRIZ[293]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~105_combout\,
	datab => \b2v_inst1|CJ1\(2),
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~136_combout\);

-- Location: FF_X17_Y10_N3
\b2v_inst|inst1|shift_reg[287]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(287));

-- Location: FF_X19_Y7_N11
\b2v_inst1|MATRIZ[288]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~138_combout\,
	ena => \b2v_inst1|MATRIZ[293]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(288));

-- Location: LCCOMB_X17_Y10_N8
\b2v_inst|inst1|shift_reg~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~95_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(288)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(287)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(287),
	datac => \b2v_inst1|MATRIZ\(288),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~95_combout\);

-- Location: LCCOMB_X19_Y7_N24
\b2v_inst1|MATRIZ~137\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~137_combout\ = (\b2v_inst1|MATRIZ~105_combout\) # ((\b2v_inst1|CJ1\(1) & \b2v_inst1|MATRIZ[293]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~105_combout\,
	datac => \b2v_inst1|CJ1\(1),
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~137_combout\);

-- Location: FF_X17_Y10_N17
\b2v_inst|inst1|shift_reg[286]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(286));

-- Location: FF_X17_Y6_N27
\b2v_inst1|MATRIZ[287]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[287]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(287));

-- Location: LCCOMB_X17_Y10_N2
\b2v_inst|inst1|shift_reg~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~96_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(287)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(286)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(286),
	datac => \b2v_inst1|MATRIZ\(287),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~96_combout\);

-- Location: LCCOMB_X19_Y7_N10
\b2v_inst1|MATRIZ~138\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~138_combout\ = (\b2v_inst1|MATRIZ~105_combout\) # ((\b2v_inst1|CJ1\(0) & \b2v_inst1|MATRIZ[293]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|CJ1\(0),
	datac => \b2v_inst1|MATRIZ~105_combout\,
	datad => \b2v_inst1|MATRIZ[293]~106_combout\,
	combout => \b2v_inst1|MATRIZ~138_combout\);

-- Location: FF_X17_Y10_N27
\b2v_inst|inst1|shift_reg[285]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(285));

-- Location: FF_X17_Y6_N17
\b2v_inst1|MATRIZ[286]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[286]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(286));

-- Location: LCCOMB_X17_Y10_N16
\b2v_inst|inst1|shift_reg~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~97_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(286))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(285))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(286),
	datac => \b2v_inst|inst1|shift_reg\(285),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~97_combout\);

-- Location: LCCOMB_X22_Y4_N18
\b2v_inst1|MATRIZ[277]~139\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[277]~139_combout\ = ((\POSICION[2]~input_o\) # (!\POSICION[1]~input_o\)) # (!\b2v_inst1|MATRIZ[344]~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[344]~93_combout\,
	datac => \POSICION[1]~input_o\,
	datad => \POSICION[2]~input_o\,
	combout => \b2v_inst1|MATRIZ[277]~139_combout\);

-- Location: LCCOMB_X17_Y6_N18
\b2v_inst1|MATRIZ[277]~140\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[277]~140_combout\ = (((\VF~input_o\ & \b2v_inst1|Equal2~0_combout\)) # (!\INICIO~input_o\)) # (!\b2v_inst1|MATRIZ[277]~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF~input_o\,
	datab => \b2v_inst1|MATRIZ[277]~139_combout\,
	datac => \b2v_inst1|Equal2~0_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[277]~140_combout\);

-- Location: FF_X17_Y10_N29
\b2v_inst|inst1|shift_reg[284]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(284));

-- Location: FF_X14_Y6_N11
\b2v_inst1|MATRIZ[285]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~52_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(285));

-- Location: LCCOMB_X17_Y10_N26
\b2v_inst|inst1|shift_reg~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~98_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(285)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(284)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(284),
	datac => \b2v_inst1|MATRIZ\(285),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~98_combout\);

-- Location: FF_X17_Y10_N11
\b2v_inst|inst1|shift_reg[283]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(283));

-- Location: FF_X16_Y8_N13
\b2v_inst1|MATRIZ[284]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~54_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(284));

-- Location: LCCOMB_X17_Y10_N28
\b2v_inst|inst1|shift_reg~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~99_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(284)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(283)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(283),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(284),
	combout => \b2v_inst|inst1|shift_reg~99_combout\);

-- Location: FF_X17_Y10_N21
\b2v_inst|inst1|shift_reg[282]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(282));

-- Location: FF_X16_Y8_N25
\b2v_inst1|MATRIZ[283]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[283]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(283));

-- Location: LCCOMB_X17_Y10_N10
\b2v_inst|inst1|shift_reg~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~100_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(283))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(282))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(283),
	datab => \b2v_inst|inst1|shift_reg\(282),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~100_combout\);

-- Location: FF_X17_Y10_N15
\b2v_inst|inst1|shift_reg[281]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(281));

-- Location: FF_X17_Y6_N21
\b2v_inst1|MATRIZ[282]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[282]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(282));

-- Location: LCCOMB_X17_Y10_N20
\b2v_inst|inst1|shift_reg~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~101_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(282))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(281))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(282),
	datac => \b2v_inst|inst1|shift_reg\(281),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~101_combout\);

-- Location: FF_X17_Y10_N5
\b2v_inst|inst1|shift_reg[280]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(280));

-- Location: FF_X16_Y8_N3
\b2v_inst1|MATRIZ[281]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~60_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(281));

-- Location: LCCOMB_X17_Y10_N14
\b2v_inst|inst1|shift_reg~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~102_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(281))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(280))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(281),
	datac => \b2v_inst|inst1|shift_reg\(280),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~102_combout\);

-- Location: FF_X22_Y6_N9
\b2v_inst|inst1|shift_reg[279]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(279));

-- Location: FF_X16_Y8_N29
\b2v_inst1|MATRIZ[280]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~62_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(280));

-- Location: LCCOMB_X17_Y10_N4
\b2v_inst|inst1|shift_reg~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~103_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(280))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(279))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(280),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(279),
	combout => \b2v_inst|inst1|shift_reg~103_combout\);

-- Location: FF_X22_Y6_N3
\b2v_inst|inst1|shift_reg[278]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(278));

-- Location: FF_X17_Y6_N7
\b2v_inst1|MATRIZ[279]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[279]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(279));

-- Location: LCCOMB_X22_Y6_N8
\b2v_inst|inst1|shift_reg~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~104_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(279))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(278))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(279),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(278),
	combout => \b2v_inst|inst1|shift_reg~104_combout\);

-- Location: FF_X22_Y6_N29
\b2v_inst|inst1|shift_reg[277]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(277));

-- Location: FF_X16_Y8_N19
\b2v_inst1|MATRIZ[278]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[278]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(278));

-- Location: LCCOMB_X22_Y6_N2
\b2v_inst|inst1|shift_reg~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~105_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(278))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(277))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(278),
	datad => \b2v_inst|inst1|shift_reg\(277),
	combout => \b2v_inst|inst1|shift_reg~105_combout\);

-- Location: FF_X22_Y6_N7
\b2v_inst|inst1|shift_reg[276]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(276));

-- Location: FF_X17_Y6_N29
\b2v_inst1|MATRIZ[277]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[277]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(277));

-- Location: LCCOMB_X22_Y6_N28
\b2v_inst|inst1|shift_reg~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~106_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(277))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(276))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(277),
	datad => \b2v_inst|inst1|shift_reg\(276),
	combout => \b2v_inst|inst1|shift_reg~106_combout\);

-- Location: FF_X22_Y6_N1
\b2v_inst|inst1|shift_reg[275]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(275));

-- Location: FF_X17_Y6_N11
\b2v_inst1|MATRIZ[276]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[276]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(276));

-- Location: LCCOMB_X22_Y6_N6
\b2v_inst|inst1|shift_reg~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~107_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(276))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(275))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(276),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(275),
	combout => \b2v_inst|inst1|shift_reg~107_combout\);

-- Location: FF_X22_Y6_N23
\b2v_inst|inst1|shift_reg[274]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(274));

-- Location: FF_X17_Y6_N1
\b2v_inst1|MATRIZ[275]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[275]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(275));

-- Location: LCCOMB_X22_Y6_N0
\b2v_inst|inst1|shift_reg~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~108_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(275)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(274)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(274),
	datad => \b2v_inst1|MATRIZ\(275),
	combout => \b2v_inst|inst1|shift_reg~108_combout\);

-- Location: FF_X22_Y6_N13
\b2v_inst|inst1|shift_reg[273]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(273));

-- Location: FF_X17_Y6_N15
\b2v_inst1|MATRIZ[274]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[274]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(274));

-- Location: LCCOMB_X22_Y6_N22
\b2v_inst|inst1|shift_reg~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~109_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(274))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(273))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(274),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(273),
	combout => \b2v_inst|inst1|shift_reg~109_combout\);

-- Location: FF_X22_Y6_N31
\b2v_inst|inst1|shift_reg[272]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(272));

-- Location: FF_X17_Y6_N13
\b2v_inst1|MATRIZ[273]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[273]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(273));

-- Location: LCCOMB_X22_Y6_N12
\b2v_inst|inst1|shift_reg~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~110_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(273)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(272)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(272),
	datad => \b2v_inst1|MATRIZ\(273),
	combout => \b2v_inst|inst1|shift_reg~110_combout\);

-- Location: FF_X22_Y6_N25
\b2v_inst|inst1|shift_reg[271]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(271));

-- Location: FF_X17_Y6_N23
\b2v_inst1|MATRIZ[272]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[272]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(272));

-- Location: LCCOMB_X22_Y6_N30
\b2v_inst|inst1|shift_reg~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~111_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(272))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(271))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(272),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(271),
	combout => \b2v_inst|inst1|shift_reg~111_combout\);

-- Location: FF_X22_Y6_N19
\b2v_inst|inst1|shift_reg[270]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(270));

-- Location: FF_X17_Y6_N25
\b2v_inst1|MATRIZ[271]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[271]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(271));

-- Location: LCCOMB_X22_Y6_N24
\b2v_inst|inst1|shift_reg~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~112_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(271))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(270))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(271),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(270),
	combout => \b2v_inst|inst1|shift_reg~112_combout\);

-- Location: FF_X22_Y6_N21
\b2v_inst|inst1|shift_reg[269]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(269));

-- Location: FF_X16_Y8_N5
\b2v_inst1|MATRIZ[270]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[270]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(270));

-- Location: LCCOMB_X22_Y6_N18
\b2v_inst|inst1|shift_reg~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~113_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(270))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(269))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(270),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(269),
	combout => \b2v_inst|inst1|shift_reg~113_combout\);

-- Location: FF_X22_Y6_N27
\b2v_inst|inst1|shift_reg[268]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(268));

-- Location: FF_X14_Y6_N23
\b2v_inst1|MATRIZ[269]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[269]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(269));

-- Location: LCCOMB_X22_Y6_N20
\b2v_inst|inst1|shift_reg~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~114_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(269)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(268)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(268),
	datad => \b2v_inst1|MATRIZ\(269),
	combout => \b2v_inst|inst1|shift_reg~114_combout\);

-- Location: FF_X21_Y6_N25
\b2v_inst|inst1|shift_reg[267]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(267));

-- Location: FF_X17_Y6_N31
\b2v_inst1|MATRIZ[268]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[268]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(268));

-- Location: LCCOMB_X22_Y6_N26
\b2v_inst|inst1|shift_reg~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~115_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(268))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(267))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst1|MATRIZ\(268),
	datad => \b2v_inst|inst1|shift_reg\(267),
	combout => \b2v_inst|inst1|shift_reg~115_combout\);

-- Location: FF_X22_Y6_N5
\b2v_inst|inst1|shift_reg[266]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(266));

-- Location: FF_X17_Y6_N9
\b2v_inst1|MATRIZ[267]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[267]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(267));

-- Location: LCCOMB_X21_Y6_N24
\b2v_inst|inst1|shift_reg~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~116_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(267)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(266)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(266),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(267),
	combout => \b2v_inst|inst1|shift_reg~116_combout\);

-- Location: FF_X22_Y6_N11
\b2v_inst|inst1|shift_reg[265]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(265));

-- Location: FF_X17_Y6_N3
\b2v_inst1|MATRIZ[266]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[266]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(266));

-- Location: LCCOMB_X22_Y6_N4
\b2v_inst|inst1|shift_reg~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~117_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(266))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(265))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(266),
	datad => \b2v_inst|inst1|shift_reg\(265),
	combout => \b2v_inst|inst1|shift_reg~117_combout\);

-- Location: FF_X19_Y6_N9
\b2v_inst|inst1|shift_reg[264]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(264));

-- Location: FF_X16_Y8_N11
\b2v_inst1|MATRIZ[265]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[265]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(265));

-- Location: LCCOMB_X22_Y6_N10
\b2v_inst|inst1|shift_reg~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~118_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(265))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(264))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(265),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(264),
	combout => \b2v_inst|inst1|shift_reg~118_combout\);

-- Location: FF_X19_Y8_N9
\b2v_inst|inst1|shift_reg[263]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(263));

-- Location: FF_X16_Y8_N21
\b2v_inst1|MATRIZ[264]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[264]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[277]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(264));

-- Location: LCCOMB_X19_Y6_N8
\b2v_inst|inst1|shift_reg~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~119_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(264))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(263))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(264),
	datad => \b2v_inst|inst1|shift_reg\(263),
	combout => \b2v_inst|inst1|shift_reg~119_combout\);

-- Location: FF_X19_Y8_N11
\b2v_inst|inst1|shift_reg[262]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(262));

-- Location: FF_X18_Y4_N29
\b2v_inst1|MATRIZ[263]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[263]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(263));

-- Location: LCCOMB_X19_Y8_N8
\b2v_inst|inst1|shift_reg~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~120_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(263))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(262))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(263),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(262),
	combout => \b2v_inst|inst1|shift_reg~120_combout\);

-- Location: FF_X19_Y8_N5
\b2v_inst|inst1|shift_reg[261]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(261));

-- Location: FF_X17_Y4_N27
\b2v_inst1|MATRIZ[262]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[262]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(262));

-- Location: LCCOMB_X19_Y8_N10
\b2v_inst|inst1|shift_reg~121\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~121_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(262))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(261))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(262),
	datab => \b2v_inst|inst1|shift_reg\(261),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~121_combout\);

-- Location: LCCOMB_X22_Y4_N20
\b2v_inst1|MATRIZ[246]~141\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[246]~141_combout\ = ((\POSICION[1]~input_o\) # (!\POSICION[2]~input_o\)) # (!\b2v_inst1|MATRIZ[383]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[383]~46_combout\,
	datac => \POSICION[1]~input_o\,
	datad => \POSICION[2]~input_o\,
	combout => \b2v_inst1|MATRIZ[246]~141_combout\);

-- Location: LCCOMB_X17_Y4_N0
\b2v_inst1|MATRIZ[246]~142\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[246]~142_combout\ = (((\b2v_inst1|Equal2~0_combout\ & \VF~input_o\)) # (!\INICIO~input_o\)) # (!\b2v_inst1|MATRIZ[246]~141_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal2~0_combout\,
	datab => \b2v_inst1|MATRIZ[246]~141_combout\,
	datac => \VF~input_o\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[246]~142_combout\);

-- Location: FF_X20_Y8_N5
\b2v_inst|inst1|shift_reg[260]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(260));

-- Location: FF_X16_Y6_N5
\b2v_inst1|MATRIZ[261]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[261]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(261));

-- Location: LCCOMB_X19_Y8_N4
\b2v_inst|inst1|shift_reg~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~122_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(261))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(260))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(261),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(260),
	combout => \b2v_inst|inst1|shift_reg~122_combout\);

-- Location: FF_X19_Y8_N15
\b2v_inst|inst1|shift_reg[259]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(259));

-- Location: FF_X17_Y4_N19
\b2v_inst1|MATRIZ[260]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[260]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(260));

-- Location: LCCOMB_X20_Y8_N4
\b2v_inst|inst1|shift_reg~123\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~123_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(260))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(259))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst1|MATRIZ\(260),
	datad => \b2v_inst|inst1|shift_reg\(259),
	combout => \b2v_inst|inst1|shift_reg~123_combout\);

-- Location: FF_X19_Y8_N25
\b2v_inst|inst1|shift_reg[258]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(258));

-- Location: FF_X16_Y5_N9
\b2v_inst1|MATRIZ[259]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~56_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(259));

-- Location: LCCOMB_X19_Y8_N14
\b2v_inst|inst1|shift_reg~124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~124_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(259))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(258))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(259),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(258),
	combout => \b2v_inst|inst1|shift_reg~124_combout\);

-- Location: FF_X18_Y8_N25
\b2v_inst|inst1|shift_reg[257]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(257));

-- Location: FF_X17_Y5_N13
\b2v_inst1|MATRIZ[258]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~58_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(258));

-- Location: LCCOMB_X19_Y8_N24
\b2v_inst|inst1|shift_reg~125\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~125_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(258))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(257))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(258),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(257),
	combout => \b2v_inst|inst1|shift_reg~125_combout\);

-- Location: FF_X19_Y8_N7
\b2v_inst|inst1|shift_reg[256]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(256));

-- Location: FF_X17_Y4_N9
\b2v_inst1|MATRIZ[257]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[257]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(257));

-- Location: LCCOMB_X18_Y8_N24
\b2v_inst|inst1|shift_reg~126\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~126_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(257))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(256))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(257),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(256),
	combout => \b2v_inst|inst1|shift_reg~126_combout\);

-- Location: FF_X19_Y8_N21
\b2v_inst|inst1|shift_reg[255]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(255));

-- Location: FF_X17_Y4_N11
\b2v_inst1|MATRIZ[256]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[256]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(256));

-- Location: LCCOMB_X19_Y8_N6
\b2v_inst|inst1|shift_reg~127\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~127_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(256))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(255))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(256),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(255),
	combout => \b2v_inst|inst1|shift_reg~127_combout\);

-- Location: FF_X13_Y7_N1
\b2v_inst|inst1|shift_reg[254]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(254));

-- Location: FF_X17_Y5_N15
\b2v_inst1|MATRIZ[255]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[255]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(255));

-- Location: LCCOMB_X19_Y8_N20
\b2v_inst|inst1|shift_reg~128\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~128_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(255)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(254)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(254),
	datab => \b2v_inst1|MATRIZ\(255),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~128_combout\);

-- Location: FF_X13_Y7_N23
\b2v_inst|inst1|shift_reg[253]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(253));

-- Location: FF_X16_Y5_N29
\b2v_inst1|MATRIZ[254]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~64_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(254));

-- Location: LCCOMB_X13_Y7_N0
\b2v_inst|inst1|shift_reg~129\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~129_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(254)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(253)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(253),
	datab => \b2v_inst1|MATRIZ\(254),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~129_combout\);

-- Location: FF_X13_Y7_N5
\b2v_inst|inst1|shift_reg[252]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(252));

-- Location: FF_X16_Y5_N11
\b2v_inst1|MATRIZ[253]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~66_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(253));

-- Location: LCCOMB_X13_Y7_N22
\b2v_inst|inst1|shift_reg~130\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~130_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(253))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(252))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(253),
	datab => \b2v_inst|inst1|shift_reg\(252),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~130_combout\);

-- Location: FF_X13_Y7_N7
\b2v_inst|inst1|shift_reg[251]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(251));

-- Location: FF_X16_Y5_N21
\b2v_inst1|MATRIZ[252]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~68_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(252));

-- Location: LCCOMB_X13_Y7_N4
\b2v_inst|inst1|shift_reg~131\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~131_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(252)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(251)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(251),
	datab => \b2v_inst1|MATRIZ\(252),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~131_combout\);

-- Location: FF_X13_Y7_N13
\b2v_inst|inst1|shift_reg[250]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(250));

-- Location: FF_X16_Y6_N1
\b2v_inst1|MATRIZ[251]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~70_combout\,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(251));

-- Location: LCCOMB_X13_Y7_N6
\b2v_inst|inst1|shift_reg~132\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~132_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(251)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(250)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(250),
	datac => \b2v_inst1|MATRIZ\(251),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~132_combout\);

-- Location: FF_X13_Y7_N19
\b2v_inst|inst1|shift_reg[249]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(249));

-- Location: FF_X17_Y3_N13
\b2v_inst1|MATRIZ[250]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~72_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(250));

-- Location: LCCOMB_X13_Y7_N12
\b2v_inst|inst1|shift_reg~133\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~133_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(250))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(249))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(250),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(249),
	combout => \b2v_inst|inst1|shift_reg~133_combout\);

-- Location: FF_X13_Y7_N17
\b2v_inst|inst1|shift_reg[248]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(248));

-- Location: FF_X17_Y5_N1
\b2v_inst1|MATRIZ[249]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~74_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(249));

-- Location: LCCOMB_X13_Y7_N18
\b2v_inst|inst1|shift_reg~134\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~134_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(249)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(248)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(248),
	datab => \b2v_inst1|MATRIZ\(249),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~134_combout\);

-- Location: FF_X13_Y7_N11
\b2v_inst|inst1|shift_reg[247]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(247));

-- Location: FF_X18_Y4_N17
\b2v_inst1|MATRIZ[248]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~76_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(248));

-- Location: LCCOMB_X13_Y7_N16
\b2v_inst|inst1|shift_reg~135\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~135_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(248))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(247))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(248),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(247),
	combout => \b2v_inst|inst1|shift_reg~135_combout\);

-- Location: FF_X13_Y7_N25
\b2v_inst|inst1|shift_reg[246]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(246));

-- Location: FF_X18_Y4_N31
\b2v_inst1|MATRIZ[247]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[247]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(247));

-- Location: LCCOMB_X13_Y7_N10
\b2v_inst|inst1|shift_reg~136\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~136_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(247))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(246))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(247),
	datad => \b2v_inst|inst1|shift_reg\(246),
	combout => \b2v_inst|inst1|shift_reg~136_combout\);

-- Location: FF_X13_Y7_N31
\b2v_inst|inst1|shift_reg[245]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(245));

-- Location: FF_X15_Y5_N21
\b2v_inst1|MATRIZ[246]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~80_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(246));

-- Location: LCCOMB_X13_Y7_N24
\b2v_inst|inst1|shift_reg~137\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~137_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(246)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(245)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(245),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(246),
	combout => \b2v_inst|inst1|shift_reg~137_combout\);

-- Location: FF_X13_Y7_N21
\b2v_inst|inst1|shift_reg[244]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(244));

-- Location: FF_X17_Y3_N19
\b2v_inst1|MATRIZ[245]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[245]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(245));

-- Location: LCCOMB_X13_Y7_N30
\b2v_inst|inst1|shift_reg~138\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~138_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(245))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(244))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(245),
	datad => \b2v_inst|inst1|shift_reg\(244),
	combout => \b2v_inst|inst1|shift_reg~138_combout\);

-- Location: FF_X13_Y7_N27
\b2v_inst|inst1|shift_reg[243]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(243));

-- Location: FF_X16_Y7_N31
\b2v_inst1|MATRIZ[244]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~84_combout\,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(244));

-- Location: LCCOMB_X13_Y7_N20
\b2v_inst|inst1|shift_reg~139\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~139_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(244)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(243)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(243),
	datab => \b2v_inst1|MATRIZ\(244),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~139_combout\);

-- Location: FF_X13_Y7_N9
\b2v_inst|inst1|shift_reg[242]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(242));

-- Location: FF_X17_Y4_N29
\b2v_inst1|MATRIZ[243]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[243]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(243));

-- Location: LCCOMB_X13_Y7_N26
\b2v_inst|inst1|shift_reg~140\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~140_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(243)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(242)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(242),
	datad => \b2v_inst1|MATRIZ\(243),
	combout => \b2v_inst|inst1|shift_reg~140_combout\);

-- Location: FF_X13_Y7_N3
\b2v_inst|inst1|shift_reg[241]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(241));

-- Location: FF_X17_Y5_N23
\b2v_inst1|MATRIZ[242]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~88_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(242));

-- Location: LCCOMB_X13_Y7_N8
\b2v_inst|inst1|shift_reg~141\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~141_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(242))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(241))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(242),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(241),
	combout => \b2v_inst|inst1|shift_reg~141_combout\);

-- Location: FF_X13_Y7_N29
\b2v_inst|inst1|shift_reg[240]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(240));

-- Location: FF_X16_Y7_N13
\b2v_inst1|MATRIZ[241]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~90_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(241));

-- Location: LCCOMB_X13_Y7_N2
\b2v_inst|inst1|shift_reg~142\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~142_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(241))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(240))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(241),
	datac => \b2v_inst|inst1|shift_reg\(240),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~142_combout\);

-- Location: FF_X20_Y8_N31
\b2v_inst|inst1|shift_reg[239]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(239));

-- Location: FF_X16_Y6_N9
\b2v_inst1|MATRIZ[240]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~92_combout\,
	ena => \b2v_inst1|MATRIZ[246]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(240));

-- Location: LCCOMB_X13_Y7_N28
\b2v_inst|inst1|shift_reg~143\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~143_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(240))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(239))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(240),
	datac => \b2v_inst|inst1|shift_reg\(239),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~143_combout\);

-- Location: FF_X20_Y8_N1
\b2v_inst|inst1|shift_reg[238]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(238));

-- Location: FF_X18_Y6_N23
\b2v_inst1|MATRIZ[239]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[239]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(239));

-- Location: LCCOMB_X20_Y8_N30
\b2v_inst|inst1|shift_reg~144\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~144_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(239))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(238))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(239),
	datad => \b2v_inst|inst1|shift_reg\(238),
	combout => \b2v_inst|inst1|shift_reg~144_combout\);

-- Location: FF_X20_Y8_N3
\b2v_inst|inst1|shift_reg[237]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(237));

-- Location: FF_X18_Y6_N27
\b2v_inst1|MATRIZ[238]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~50_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(238));

-- Location: LCCOMB_X20_Y8_N0
\b2v_inst|inst1|shift_reg~145\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~145_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(238))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(237))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(238),
	datad => \b2v_inst|inst1|shift_reg\(237),
	combout => \b2v_inst|inst1|shift_reg~145_combout\);

-- Location: LCCOMB_X22_Y4_N10
\b2v_inst1|MATRIZ[227]~143\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[227]~143_combout\ = ((\POSICION[1]~input_o\) # (!\POSICION[2]~input_o\)) # (!\b2v_inst1|MATRIZ[344]~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[344]~93_combout\,
	datac => \POSICION[1]~input_o\,
	datad => \POSICION[2]~input_o\,
	combout => \b2v_inst1|MATRIZ[227]~143_combout\);

-- Location: LCCOMB_X17_Y8_N20
\b2v_inst1|MATRIZ[227]~144\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[227]~144_combout\ = (((\VF~input_o\ & \b2v_inst1|Equal2~0_combout\)) # (!\INICIO~input_o\)) # (!\b2v_inst1|MATRIZ[227]~143_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF~input_o\,
	datab => \b2v_inst1|MATRIZ[227]~143_combout\,
	datac => \b2v_inst1|Equal2~0_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[227]~144_combout\);

-- Location: FF_X20_Y8_N29
\b2v_inst|inst1|shift_reg[236]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(236));

-- Location: FF_X18_Y6_N29
\b2v_inst1|MATRIZ[237]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~52_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(237));

-- Location: LCCOMB_X20_Y8_N2
\b2v_inst|inst1|shift_reg~146\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~146_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(237))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(236))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst1|MATRIZ\(237),
	datad => \b2v_inst|inst1|shift_reg\(236),
	combout => \b2v_inst|inst1|shift_reg~146_combout\);

-- Location: FF_X20_Y8_N23
\b2v_inst|inst1|shift_reg[235]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(235));

-- Location: FF_X17_Y8_N23
\b2v_inst1|MATRIZ[236]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[236]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(236));

-- Location: LCCOMB_X20_Y8_N28
\b2v_inst|inst1|shift_reg~147\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~147_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(236)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(235)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(235),
	datad => \b2v_inst1|MATRIZ\(236),
	combout => \b2v_inst|inst1|shift_reg~147_combout\);

-- Location: FF_X20_Y8_N13
\b2v_inst|inst1|shift_reg[234]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(234));

-- Location: FF_X18_Y5_N23
\b2v_inst1|MATRIZ[235]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~56_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(235));

-- Location: LCCOMB_X20_Y8_N22
\b2v_inst|inst1|shift_reg~148\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~148_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(235))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(234))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst1|MATRIZ\(235),
	datad => \b2v_inst|inst1|shift_reg\(234),
	combout => \b2v_inst|inst1|shift_reg~148_combout\);

-- Location: FF_X20_Y8_N11
\b2v_inst|inst1|shift_reg[233]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(233));

-- Location: FF_X18_Y5_N11
\b2v_inst1|MATRIZ[234]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~58_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(234));

-- Location: LCCOMB_X20_Y8_N12
\b2v_inst|inst1|shift_reg~149\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~149_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(234))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(233))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(234),
	datad => \b2v_inst|inst1|shift_reg\(233),
	combout => \b2v_inst|inst1|shift_reg~149_combout\);

-- Location: FF_X20_Y8_N25
\b2v_inst|inst1|shift_reg[232]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(232));

-- Location: FF_X16_Y8_N31
\b2v_inst1|MATRIZ[233]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~60_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(233));

-- Location: LCCOMB_X20_Y8_N10
\b2v_inst|inst1|shift_reg~150\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~150_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(233)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(232)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(232),
	datac => \b2v_inst1|MATRIZ\(233),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~150_combout\);

-- Location: FF_X20_Y8_N19
\b2v_inst|inst1|shift_reg[231]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(231));

-- Location: FF_X16_Y8_N7
\b2v_inst1|MATRIZ[232]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~62_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(232));

-- Location: LCCOMB_X20_Y8_N24
\b2v_inst|inst1|shift_reg~151\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~151_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(232)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(231)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst|inst1|shift_reg\(231),
	datad => \b2v_inst1|MATRIZ\(232),
	combout => \b2v_inst|inst1|shift_reg~151_combout\);

-- Location: FF_X20_Y8_N21
\b2v_inst|inst1|shift_reg[230]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(230));

-- Location: FF_X18_Y5_N17
\b2v_inst1|MATRIZ[231]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~63_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(231));

-- Location: LCCOMB_X20_Y8_N18
\b2v_inst|inst1|shift_reg~152\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~152_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(231)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(230)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst|inst1|shift_reg\(230),
	datac => \b2v_inst1|MATRIZ\(231),
	combout => \b2v_inst|inst1|shift_reg~152_combout\);

-- Location: FF_X15_Y6_N27
\b2v_inst|inst1|shift_reg[229]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(229));

-- Location: FF_X17_Y8_N9
\b2v_inst1|MATRIZ[230]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[230]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(230));

-- Location: LCCOMB_X20_Y8_N20
\b2v_inst|inst1|shift_reg~153\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~153_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(230))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(229))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(230),
	datac => \b2v_inst|inst1|shift_reg\(229),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~153_combout\);

-- Location: FF_X15_Y6_N1
\b2v_inst|inst1|shift_reg[228]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(228));

-- Location: FF_X17_Y8_N15
\b2v_inst1|MATRIZ[229]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[229]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(229));

-- Location: LCCOMB_X15_Y6_N26
\b2v_inst|inst1|shift_reg~154\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~154_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(229)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(228)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(228),
	datac => \b2v_inst1|MATRIZ\(229),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~154_combout\);

-- Location: FF_X15_Y6_N15
\b2v_inst|inst1|shift_reg[227]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(227));

-- Location: FF_X18_Y5_N3
\b2v_inst1|MATRIZ[228]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~68_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(228));

-- Location: LCCOMB_X15_Y6_N0
\b2v_inst|inst1|shift_reg~155\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~155_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(228)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(227)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(227),
	datad => \b2v_inst1|MATRIZ\(228),
	combout => \b2v_inst|inst1|shift_reg~155_combout\);

-- Location: FF_X15_Y6_N29
\b2v_inst|inst1|shift_reg[226]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(226));

-- Location: FF_X16_Y8_N15
\b2v_inst1|MATRIZ[227]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[227]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(227));

-- Location: LCCOMB_X15_Y6_N14
\b2v_inst|inst1|shift_reg~156\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~156_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(227))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(226))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(227),
	datad => \b2v_inst|inst1|shift_reg\(226),
	combout => \b2v_inst|inst1|shift_reg~156_combout\);

-- Location: FF_X15_Y6_N11
\b2v_inst|inst1|shift_reg[225]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(225));

-- Location: FF_X18_Y6_N1
\b2v_inst1|MATRIZ[226]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[226]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(226));

-- Location: LCCOMB_X15_Y6_N28
\b2v_inst|inst1|shift_reg~157\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~157_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(226))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(225))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(226),
	datad => \b2v_inst|inst1|shift_reg\(225),
	combout => \b2v_inst|inst1|shift_reg~157_combout\);

-- Location: FF_X15_Y6_N5
\b2v_inst|inst1|shift_reg[224]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(224));

-- Location: FF_X16_Y8_N9
\b2v_inst1|MATRIZ[225]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[225]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(225));

-- Location: LCCOMB_X15_Y6_N10
\b2v_inst|inst1|shift_reg~158\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~158_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(225)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(224)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(224),
	datad => \b2v_inst1|MATRIZ\(225),
	combout => \b2v_inst|inst1|shift_reg~158_combout\);

-- Location: FF_X15_Y6_N31
\b2v_inst|inst1|shift_reg[223]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(223));

-- Location: FF_X17_Y8_N5
\b2v_inst1|MATRIZ[224]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[224]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(224));

-- Location: LCCOMB_X15_Y6_N4
\b2v_inst|inst1|shift_reg~159\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~159_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(224)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(223)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(223),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(224),
	combout => \b2v_inst|inst1|shift_reg~159_combout\);

-- Location: FF_X15_Y6_N25
\b2v_inst|inst1|shift_reg[222]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(222));

-- Location: FF_X17_Y8_N31
\b2v_inst1|MATRIZ[223]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[223]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(223));

-- Location: LCCOMB_X15_Y6_N30
\b2v_inst|inst1|shift_reg~160\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~160_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(223))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(222))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(223),
	datad => \b2v_inst|inst1|shift_reg\(222),
	combout => \b2v_inst|inst1|shift_reg~160_combout\);

-- Location: FF_X16_Y9_N13
\b2v_inst|inst1|shift_reg[221]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg[221]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(221));

-- Location: FF_X16_Y8_N23
\b2v_inst1|MATRIZ[222]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~80_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(222));

-- Location: LCCOMB_X15_Y6_N24
\b2v_inst|inst1|shift_reg~161\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~161_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(222))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(221))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(222),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(221),
	combout => \b2v_inst|inst1|shift_reg~161_combout\);

-- Location: FF_X18_Y9_N13
\b2v_inst|inst1|shift_reg[220]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|inst1|shift_reg~163_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(220));

-- Location: FF_X18_Y6_N15
\b2v_inst1|MATRIZ[221]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[221]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(221));

-- Location: LCCOMB_X15_Y6_N12
\b2v_inst|inst1|shift_reg~162\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~162_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(221))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(220))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(221),
	datab => \b2v_inst|inst1|shift_reg\(220),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~162_combout\);

-- Location: FF_X15_Y10_N7
\b2v_inst|inst1|shift_reg[219]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg[219]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(219));

-- Location: FF_X17_Y8_N25
\b2v_inst1|MATRIZ[220]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[220]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(220));

-- Location: LCCOMB_X17_Y10_N30
\b2v_inst|inst1|shift_reg~163\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~163_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(220))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(219))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(220),
	datac => \b2v_inst|inst1|shift_reg\(219),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~163_combout\);

-- Location: FF_X15_Y6_N7
\b2v_inst|inst1|shift_reg[218]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(218));

-- Location: FF_X17_Y8_N27
\b2v_inst1|MATRIZ[219]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[219]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(219));

-- Location: LCCOMB_X15_Y6_N2
\b2v_inst|inst1|shift_reg~164\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~164_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(219)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(218)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(218),
	datab => \b2v_inst1|MATRIZ\(219),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~164_combout\);

-- Location: FF_X15_Y6_N17
\b2v_inst|inst1|shift_reg[217]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(217));

-- Location: FF_X17_Y8_N17
\b2v_inst1|MATRIZ[218]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[218]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(218));

-- Location: LCCOMB_X15_Y6_N6
\b2v_inst|inst1|shift_reg~165\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~165_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(218)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(217)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(217),
	datac => \b2v_inst1|MATRIZ\(218),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~165_combout\);

-- Location: FF_X15_Y6_N23
\b2v_inst|inst1|shift_reg[216]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(216));

-- Location: FF_X16_Y8_N1
\b2v_inst1|MATRIZ[217]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[217]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(217));

-- Location: LCCOMB_X15_Y6_N16
\b2v_inst|inst1|shift_reg~166\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~166_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(217)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(216)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(216),
	datad => \b2v_inst1|MATRIZ\(217),
	combout => \b2v_inst|inst1|shift_reg~166_combout\);

-- Location: FF_X15_Y4_N1
\b2v_inst|inst1|shift_reg[215]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(215));

-- Location: FF_X18_Y6_N25
\b2v_inst1|MATRIZ[216]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[216]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[227]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(216));

-- Location: LCCOMB_X15_Y6_N22
\b2v_inst|inst1|shift_reg~167\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~167_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(216))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(215))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(216),
	datad => \b2v_inst|inst1|shift_reg\(215),
	combout => \b2v_inst|inst1|shift_reg~167_combout\);

-- Location: FF_X15_Y4_N27
\b2v_inst|inst1|shift_reg[214]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(214));

-- Location: FF_X20_Y6_N5
\b2v_inst1|MATRIZ[215]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~149_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(215));

-- Location: LCCOMB_X15_Y4_N0
\b2v_inst|inst1|shift_reg~168\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~168_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(215))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(214))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(215),
	datac => \b2v_inst|inst1|shift_reg\(214),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~168_combout\);

-- Location: FF_X15_Y4_N13
\b2v_inst|inst1|shift_reg[213]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(213));

-- Location: FF_X21_Y4_N9
\b2v_inst1|MATRIZ[214]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~152_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(214));

-- Location: LCCOMB_X15_Y4_N26
\b2v_inst|inst1|shift_reg~169\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~169_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(214))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(213))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(214),
	datad => \b2v_inst|inst1|shift_reg\(213),
	combout => \b2v_inst|inst1|shift_reg~169_combout\);

-- Location: FF_X19_Y2_N27
\b2v_inst1|empatecounter1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|empatecounter1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|empatecounter1\(0));

-- Location: LCCOMB_X20_Y3_N20
\b2v_inst1|MATRIZ[198]~145\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[198]~145_combout\ = (\EMPATE~input_o\ & (!\b2v_inst1|empatecounter1\(2) & \b2v_inst1|empatecounter1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EMPATE~input_o\,
	datac => \b2v_inst1|empatecounter1\(2),
	datad => \b2v_inst1|empatecounter1\(0),
	combout => \b2v_inst1|MATRIZ[198]~145_combout\);

-- Location: LCCOMB_X19_Y3_N24
\b2v_inst1|MATRIZ[198]~146\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[198]~146_combout\ = (\b2v_inst1|MATRIZ[293]~103_combout\ & (((!\b2v_inst1|Equal0~0_combout\) # (!\b2v_inst1|MATRIZ[198]~145_combout\)))) # (!\b2v_inst1|MATRIZ[293]~103_combout\ & (!\VF~input_o\ & (!\b2v_inst1|MATRIZ[198]~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[293]~103_combout\,
	datab => \VF~input_o\,
	datac => \b2v_inst1|MATRIZ[198]~145_combout\,
	datad => \b2v_inst1|Equal0~0_combout\,
	combout => \b2v_inst1|MATRIZ[198]~146_combout\);

-- Location: LCCOMB_X20_Y3_N10
\b2v_inst1|MATRIZ[198]~147\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[198]~147_combout\ = ((\b2v_inst1|victoriacounter1\(2)) # ((!\VICTORIA~input_o\) # (!\b2v_inst1|victoriacounter1\(0)))) # (!\TURNO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datab => \b2v_inst1|victoriacounter1\(2),
	datac => \b2v_inst1|victoriacounter1\(0),
	datad => \VICTORIA~input_o\,
	combout => \b2v_inst1|MATRIZ[198]~147_combout\);

-- Location: LCCOMB_X20_Y6_N26
\b2v_inst1|MATRIZ[198]~148\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[198]~148_combout\ = (!\b2v_inst1|MATRIZ[198]~145_combout\ & (!\b2v_inst1|MATRIZ[102]~100_combout\ & \b2v_inst1|MATRIZ[198]~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~145_combout\,
	datac => \b2v_inst1|MATRIZ[102]~100_combout\,
	datad => \b2v_inst1|MATRIZ[198]~147_combout\,
	combout => \b2v_inst1|MATRIZ[198]~148_combout\);

-- Location: LCCOMB_X20_Y6_N4
\b2v_inst1|MATRIZ~149\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~149_combout\ = (\b2v_inst1|MATRIZ[198]~148_combout\ & (((!\INICIO~input_o\ & \b2v_inst1|CJ1\(23))))) # (!\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(23))) # (!\b2v_inst1|MATRIZ[198]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~148_combout\,
	datab => \b2v_inst1|MATRIZ[198]~146_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|CJ1\(23),
	combout => \b2v_inst1|MATRIZ~149_combout\);

-- Location: LCCOMB_X19_Y3_N6
\b2v_inst1|MATRIZ[198]~150\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[198]~150_combout\ = (\b2v_inst1|MATRIZ[198]~145_combout\ & (\b2v_inst1|MATRIZ[293]~108_combout\ & !\VF~input_o\)) # (!\b2v_inst1|MATRIZ[198]~145_combout\ & ((\b2v_inst1|MATRIZ[293]~108_combout\) # (!\VF~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~145_combout\,
	datab => \b2v_inst1|MATRIZ[293]~108_combout\,
	datac => \VF~input_o\,
	combout => \b2v_inst1|MATRIZ[198]~150_combout\);

-- Location: LCCOMB_X19_Y4_N16
\b2v_inst1|MATRIZ[198]~151\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[198]~151_combout\ = (((!\INICIO~input_o\) # (!\b2v_inst1|bloqueo~q\)) # (!\b2v_inst1|MATRIZ[198]~147_combout\)) # (!\b2v_inst1|MATRIZ[198]~150_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~150_combout\,
	datab => \b2v_inst1|MATRIZ[198]~147_combout\,
	datac => \b2v_inst1|bloqueo~q\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[198]~151_combout\);

-- Location: FF_X15_Y4_N19
\b2v_inst|inst1|shift_reg[212]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(212));

-- Location: FF_X19_Y4_N27
\b2v_inst1|MATRIZ[213]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~153_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(213));

-- Location: LCCOMB_X15_Y4_N12
\b2v_inst|inst1|shift_reg~170\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~170_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(213))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(212))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(213),
	datad => \b2v_inst|inst1|shift_reg\(212),
	combout => \b2v_inst|inst1|shift_reg~170_combout\);

-- Location: LCCOMB_X21_Y4_N8
\b2v_inst1|MATRIZ~152\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~152_combout\ = (\b2v_inst1|CJ1\(22) & (((!\INICIO~input_o\) # (!\b2v_inst1|MATRIZ[198]~148_combout\)))) # (!\b2v_inst1|CJ1\(22) & (!\b2v_inst1|MATRIZ[198]~146_combout\ & (!\b2v_inst1|MATRIZ[198]~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~146_combout\,
	datab => \b2v_inst1|CJ1\(22),
	datac => \b2v_inst1|MATRIZ[198]~148_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~152_combout\);

-- Location: LCCOMB_X19_Y2_N26
\b2v_inst1|empatecounter1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|empatecounter1~1_combout\ = (!\VF~input_o\ & ((\b2v_inst1|MATRIZ[102]~112_combout\ & ((!\b2v_inst1|victoriacounter1\(0)))) # (!\b2v_inst1|MATRIZ[102]~112_combout\ & (\b2v_inst1|empatecounter1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~112_combout\,
	datab => \VF~input_o\,
	datac => \b2v_inst1|empatecounter1\(0),
	datad => \b2v_inst1|victoriacounter1\(0),
	combout => \b2v_inst1|empatecounter1~1_combout\);

-- Location: FF_X15_Y4_N25
\b2v_inst|inst1|shift_reg[211]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(211));

-- Location: FF_X20_Y6_N29
\b2v_inst1|MATRIZ[212]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~154_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(212));

-- Location: LCCOMB_X15_Y4_N18
\b2v_inst|inst1|shift_reg~171\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~171_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(212))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(211))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(212),
	datad => \b2v_inst|inst1|shift_reg\(211),
	combout => \b2v_inst|inst1|shift_reg~171_combout\);

-- Location: LCCOMB_X19_Y4_N26
\b2v_inst1|MATRIZ~153\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~153_combout\ = (\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(21) & !\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(21))) # (!\b2v_inst1|MATRIZ[198]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~146_combout\,
	datab => \b2v_inst1|MATRIZ[198]~148_combout\,
	datac => \b2v_inst1|CJ1\(21),
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~153_combout\);

-- Location: FF_X15_Y4_N3
\b2v_inst|inst1|shift_reg[210]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(210));

-- Location: FF_X21_Y4_N3
\b2v_inst1|MATRIZ[211]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~155_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(211));

-- Location: LCCOMB_X15_Y4_N24
\b2v_inst|inst1|shift_reg~172\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~172_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(211))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(210))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(211),
	datad => \b2v_inst|inst1|shift_reg\(210),
	combout => \b2v_inst|inst1|shift_reg~172_combout\);

-- Location: LCCOMB_X20_Y6_N28
\b2v_inst1|MATRIZ~154\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~154_combout\ = (\b2v_inst1|MATRIZ[198]~148_combout\ & (!\INICIO~input_o\ & ((\b2v_inst1|CJ1\(20))))) # (!\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(20)) # (!\b2v_inst1|MATRIZ[198]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INICIO~input_o\,
	datab => \b2v_inst1|MATRIZ[198]~146_combout\,
	datac => \b2v_inst1|MATRIZ[198]~148_combout\,
	datad => \b2v_inst1|CJ1\(20),
	combout => \b2v_inst1|MATRIZ~154_combout\);

-- Location: FF_X15_Y4_N21
\b2v_inst|inst1|shift_reg[209]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(209));

-- Location: FF_X19_Y4_N5
\b2v_inst1|MATRIZ[210]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~156_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(210));

-- Location: LCCOMB_X15_Y4_N2
\b2v_inst|inst1|shift_reg~173\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~173_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(210))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(209))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(210),
	datab => \b2v_inst|inst1|shift_reg\(209),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~173_combout\);

-- Location: LCCOMB_X21_Y4_N2
\b2v_inst1|MATRIZ~155\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~155_combout\ = (\b2v_inst1|CJ1\(19) & (((!\b2v_inst1|MATRIZ[198]~148_combout\)) # (!\INICIO~input_o\))) # (!\b2v_inst1|CJ1\(19) & (((!\b2v_inst1|MATRIZ[198]~148_combout\ & !\b2v_inst1|MATRIZ[198]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(19),
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|MATRIZ[198]~148_combout\,
	datad => \b2v_inst1|MATRIZ[198]~146_combout\,
	combout => \b2v_inst1|MATRIZ~155_combout\);

-- Location: FF_X15_Y4_N23
\b2v_inst|inst1|shift_reg[208]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(208));

-- Location: FF_X19_Y4_N7
\b2v_inst1|MATRIZ[209]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~157_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(209));

-- Location: LCCOMB_X15_Y4_N20
\b2v_inst|inst1|shift_reg~174\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~174_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(209)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(208)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(208),
	datad => \b2v_inst1|MATRIZ\(209),
	combout => \b2v_inst|inst1|shift_reg~174_combout\);

-- Location: LCCOMB_X19_Y4_N4
\b2v_inst1|MATRIZ~156\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~156_combout\ = (\b2v_inst1|CJ1\(18) & (((!\INICIO~input_o\)) # (!\b2v_inst1|MATRIZ[198]~148_combout\))) # (!\b2v_inst1|CJ1\(18) & (!\b2v_inst1|MATRIZ[198]~148_combout\ & ((!\b2v_inst1|MATRIZ[198]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(18),
	datab => \b2v_inst1|MATRIZ[198]~148_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ[198]~146_combout\,
	combout => \b2v_inst1|MATRIZ~156_combout\);

-- Location: FF_X15_Y4_N29
\b2v_inst|inst1|shift_reg[207]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(207));

-- Location: FF_X19_Y4_N25
\b2v_inst1|MATRIZ[208]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~158_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(208));

-- Location: LCCOMB_X15_Y4_N22
\b2v_inst|inst1|shift_reg~175\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~175_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(208))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(207))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(208),
	datad => \b2v_inst|inst1|shift_reg\(207),
	combout => \b2v_inst|inst1|shift_reg~175_combout\);

-- Location: LCCOMB_X19_Y4_N6
\b2v_inst1|MATRIZ~157\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~157_combout\ = (\b2v_inst1|CJ1\(17) & (((!\b2v_inst1|MATRIZ[198]~148_combout\) # (!\INICIO~input_o\)))) # (!\b2v_inst1|CJ1\(17) & (!\b2v_inst1|MATRIZ[198]~146_combout\ & ((!\b2v_inst1|MATRIZ[198]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~146_combout\,
	datab => \b2v_inst1|CJ1\(17),
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ[198]~148_combout\,
	combout => \b2v_inst1|MATRIZ~157_combout\);

-- Location: FF_X15_Y4_N31
\b2v_inst|inst1|shift_reg[206]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(206));

-- Location: FF_X21_Y4_N17
\b2v_inst1|MATRIZ[207]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~159_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(207));

-- Location: LCCOMB_X15_Y4_N28
\b2v_inst|inst1|shift_reg~176\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~176_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(207))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(206))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(207),
	datac => \b2v_inst|inst1|shift_reg\(206),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~176_combout\);

-- Location: LCCOMB_X19_Y4_N24
\b2v_inst1|MATRIZ~158\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~158_combout\ = (\b2v_inst1|MATRIZ[198]~148_combout\ & (((!\INICIO~input_o\ & \b2v_inst1|CJ1\(16))))) # (!\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(16))) # (!\b2v_inst1|MATRIZ[198]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~146_combout\,
	datab => \b2v_inst1|MATRIZ[198]~148_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|CJ1\(16),
	combout => \b2v_inst1|MATRIZ~158_combout\);

-- Location: FF_X15_Y4_N9
\b2v_inst|inst1|shift_reg[205]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(205));

-- Location: FF_X21_Y4_N27
\b2v_inst1|MATRIZ[206]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~159_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(206));

-- Location: LCCOMB_X15_Y4_N30
\b2v_inst|inst1|shift_reg~177\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~177_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(206)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(205)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(205),
	datac => \b2v_inst1|MATRIZ\(206),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~177_combout\);

-- Location: LCCOMB_X20_Y6_N6
\b2v_inst1|MATRIZ~159\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~159_combout\ = (!\b2v_inst1|MATRIZ[198]~148_combout\ & ((\b2v_inst1|MATRIZ~122_combout\) # ((\b2v_inst1|MATRIZ~123_combout\ & \b2v_inst1|MATRIZ[198]~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~148_combout\,
	datab => \b2v_inst1|MATRIZ~123_combout\,
	datac => \b2v_inst1|MATRIZ[198]~145_combout\,
	datad => \b2v_inst1|MATRIZ~122_combout\,
	combout => \b2v_inst1|MATRIZ~159_combout\);

-- Location: FF_X18_Y9_N7
\b2v_inst|inst1|shift_reg[204]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(204));

-- Location: FF_X19_Y4_N23
\b2v_inst1|MATRIZ[205]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~160_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(205));

-- Location: LCCOMB_X15_Y4_N8
\b2v_inst|inst1|shift_reg~178\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~178_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(205))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(204))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(205),
	datab => \b2v_inst|inst1|shift_reg\(204),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~178_combout\);

-- Location: FF_X18_Y9_N17
\b2v_inst|inst1|shift_reg[203]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(203));

-- Location: FF_X20_Y6_N17
\b2v_inst1|MATRIZ[204]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~161_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(204));

-- Location: LCCOMB_X18_Y9_N6
\b2v_inst|inst1|shift_reg~179\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~179_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(204))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(203))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(204),
	datad => \b2v_inst|inst1|shift_reg\(203),
	combout => \b2v_inst|inst1|shift_reg~179_combout\);

-- Location: LCCOMB_X19_Y4_N22
\b2v_inst1|MATRIZ~160\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~160_combout\ = (\b2v_inst1|CJ1\(13) & (((!\INICIO~input_o\)) # (!\b2v_inst1|MATRIZ[198]~148_combout\))) # (!\b2v_inst1|CJ1\(13) & (!\b2v_inst1|MATRIZ[198]~148_combout\ & ((!\b2v_inst1|MATRIZ[198]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(13),
	datab => \b2v_inst1|MATRIZ[198]~148_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ[198]~146_combout\,
	combout => \b2v_inst1|MATRIZ~160_combout\);

-- Location: FF_X15_Y4_N7
\b2v_inst|inst1|shift_reg[202]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(202));

-- Location: FF_X20_Y6_N11
\b2v_inst1|MATRIZ[203]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~162_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(203));

-- Location: LCCOMB_X18_Y9_N16
\b2v_inst|inst1|shift_reg~180\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~180_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(203)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(202)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(202),
	datad => \b2v_inst1|MATRIZ\(203),
	combout => \b2v_inst|inst1|shift_reg~180_combout\);

-- Location: LCCOMB_X20_Y6_N16
\b2v_inst1|MATRIZ~161\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~161_combout\ = (\b2v_inst1|CJ1\(12) & (((!\b2v_inst1|MATRIZ[198]~148_combout\)) # (!\INICIO~input_o\))) # (!\b2v_inst1|CJ1\(12) & (((!\b2v_inst1|MATRIZ[198]~148_combout\ & !\b2v_inst1|MATRIZ[198]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INICIO~input_o\,
	datab => \b2v_inst1|CJ1\(12),
	datac => \b2v_inst1|MATRIZ[198]~148_combout\,
	datad => \b2v_inst1|MATRIZ[198]~146_combout\,
	combout => \b2v_inst1|MATRIZ~161_combout\);

-- Location: FF_X15_Y4_N17
\b2v_inst|inst1|shift_reg[201]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(201));

-- Location: FF_X19_Y4_N13
\b2v_inst1|MATRIZ[202]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~163_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(202));

-- Location: LCCOMB_X15_Y4_N6
\b2v_inst|inst1|shift_reg~181\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~181_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(202))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(201))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(202),
	datad => \b2v_inst|inst1|shift_reg\(201),
	combout => \b2v_inst|inst1|shift_reg~181_combout\);

-- Location: LCCOMB_X20_Y6_N10
\b2v_inst1|MATRIZ~162\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~162_combout\ = (\b2v_inst1|MATRIZ[198]~148_combout\ & (!\INICIO~input_o\ & ((\b2v_inst1|CJ1\(11))))) # (!\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(11)) # (!\b2v_inst1|MATRIZ[198]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INICIO~input_o\,
	datab => \b2v_inst1|MATRIZ[198]~146_combout\,
	datac => \b2v_inst1|MATRIZ[198]~148_combout\,
	datad => \b2v_inst1|CJ1\(11),
	combout => \b2v_inst1|MATRIZ~162_combout\);

-- Location: FF_X19_Y5_N31
\b2v_inst|inst1|shift_reg[200]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(200));

-- Location: FF_X21_Y4_N29
\b2v_inst1|MATRIZ[201]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~164_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(201));

-- Location: LCCOMB_X15_Y4_N16
\b2v_inst|inst1|shift_reg~182\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~182_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(201)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(200)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst|inst1|shift_reg\(200),
	datad => \b2v_inst1|MATRIZ\(201),
	combout => \b2v_inst|inst1|shift_reg~182_combout\);

-- Location: LCCOMB_X19_Y4_N12
\b2v_inst1|MATRIZ~163\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~163_combout\ = (\b2v_inst1|CJ1\(10) & (((!\b2v_inst1|MATRIZ[198]~148_combout\) # (!\INICIO~input_o\)))) # (!\b2v_inst1|CJ1\(10) & (!\b2v_inst1|MATRIZ[198]~146_combout\ & ((!\b2v_inst1|MATRIZ[198]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~146_combout\,
	datab => \b2v_inst1|CJ1\(10),
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ[198]~148_combout\,
	combout => \b2v_inst1|MATRIZ~163_combout\);

-- Location: FF_X18_Y1_N25
\b2v_inst|inst1|shift_reg[199]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(199));

-- Location: FF_X19_Y4_N3
\b2v_inst1|MATRIZ[200]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~165_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(200));

-- Location: LCCOMB_X19_Y5_N30
\b2v_inst|inst1|shift_reg~183\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~183_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(200)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(199)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(199),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(200),
	combout => \b2v_inst|inst1|shift_reg~183_combout\);

-- Location: LCCOMB_X21_Y4_N28
\b2v_inst1|MATRIZ~164\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~164_combout\ = (\b2v_inst1|MATRIZ[198]~148_combout\ & (!\INICIO~input_o\ & (\b2v_inst1|CJ1\(9)))) # (!\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(9)) # (!\b2v_inst1|MATRIZ[198]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~148_combout\,
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|CJ1\(9),
	datad => \b2v_inst1|MATRIZ[198]~146_combout\,
	combout => \b2v_inst1|MATRIZ~164_combout\);

-- Location: FF_X18_Y1_N3
\b2v_inst|inst1|shift_reg[198]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(198));

-- Location: FF_X19_Y4_N1
\b2v_inst1|MATRIZ[199]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~166_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(199));

-- Location: LCCOMB_X18_Y1_N24
\b2v_inst|inst1|shift_reg~184\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~184_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(199)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(198)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(198),
	datac => \b2v_inst1|MATRIZ\(199),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~184_combout\);

-- Location: LCCOMB_X19_Y4_N2
\b2v_inst1|MATRIZ~165\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~165_combout\ = (\b2v_inst1|CJ1\(8) & (((!\b2v_inst1|MATRIZ[198]~148_combout\) # (!\INICIO~input_o\)))) # (!\b2v_inst1|CJ1\(8) & (!\b2v_inst1|MATRIZ[198]~146_combout\ & ((!\b2v_inst1|MATRIZ[198]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~146_combout\,
	datab => \b2v_inst1|CJ1\(8),
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ[198]~148_combout\,
	combout => \b2v_inst1|MATRIZ~165_combout\);

-- Location: FF_X18_Y1_N5
\b2v_inst|inst1|shift_reg[197]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(197));

-- Location: FF_X19_Y4_N11
\b2v_inst1|MATRIZ[198]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~167_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(198));

-- Location: LCCOMB_X18_Y1_N2
\b2v_inst|inst1|shift_reg~185\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~185_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(198))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(197))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(198),
	datac => \b2v_inst|inst1|shift_reg\(197),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~185_combout\);

-- Location: LCCOMB_X19_Y4_N0
\b2v_inst1|MATRIZ~166\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~166_combout\ = (\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(7) & !\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(7))) # (!\b2v_inst1|MATRIZ[198]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~146_combout\,
	datab => \b2v_inst1|MATRIZ[198]~148_combout\,
	datac => \b2v_inst1|CJ1\(7),
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~166_combout\);

-- Location: FF_X18_Y1_N23
\b2v_inst|inst1|shift_reg[196]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(196));

-- Location: FF_X19_Y4_N9
\b2v_inst1|MATRIZ[197]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~168_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(197));

-- Location: LCCOMB_X18_Y1_N4
\b2v_inst|inst1|shift_reg~186\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~186_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(197))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(196))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(197),
	datac => \b2v_inst|inst1|shift_reg\(196),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~186_combout\);

-- Location: LCCOMB_X19_Y4_N10
\b2v_inst1|MATRIZ~167\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~167_combout\ = (\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(6) & !\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(6))) # (!\b2v_inst1|MATRIZ[198]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~146_combout\,
	datab => \b2v_inst1|MATRIZ[198]~148_combout\,
	datac => \b2v_inst1|CJ1\(6),
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~167_combout\);

-- Location: FF_X18_Y1_N1
\b2v_inst|inst1|shift_reg[195]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(195));

-- Location: FF_X19_Y4_N15
\b2v_inst1|MATRIZ[196]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~169_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(196));

-- Location: LCCOMB_X18_Y1_N22
\b2v_inst|inst1|shift_reg~187\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~187_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(196)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(195)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(195),
	datac => \b2v_inst1|MATRIZ\(196),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~187_combout\);

-- Location: LCCOMB_X19_Y4_N8
\b2v_inst1|MATRIZ~168\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~168_combout\ = (\b2v_inst1|CJ1\(5) & (((!\b2v_inst1|MATRIZ[198]~148_combout\) # (!\INICIO~input_o\)))) # (!\b2v_inst1|CJ1\(5) & (!\b2v_inst1|MATRIZ[198]~146_combout\ & ((!\b2v_inst1|MATRIZ[198]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~146_combout\,
	datab => \b2v_inst1|CJ1\(5),
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ[198]~148_combout\,
	combout => \b2v_inst1|MATRIZ~168_combout\);

-- Location: FF_X18_Y1_N31
\b2v_inst|inst1|shift_reg[194]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(194));

-- Location: FF_X19_Y4_N21
\b2v_inst1|MATRIZ[195]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~170_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(195));

-- Location: LCCOMB_X18_Y1_N0
\b2v_inst|inst1|shift_reg~188\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~188_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(195))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(194))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(195),
	datac => \b2v_inst|inst1|shift_reg\(194),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~188_combout\);

-- Location: LCCOMB_X19_Y4_N14
\b2v_inst1|MATRIZ~169\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~169_combout\ = (\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(4) & !\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(4))) # (!\b2v_inst1|MATRIZ[198]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~146_combout\,
	datab => \b2v_inst1|MATRIZ[198]~148_combout\,
	datac => \b2v_inst1|CJ1\(4),
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~169_combout\);

-- Location: FF_X18_Y1_N9
\b2v_inst|inst1|shift_reg[193]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(193));

-- Location: FF_X19_Y4_N19
\b2v_inst1|MATRIZ[194]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~171_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(194));

-- Location: LCCOMB_X18_Y1_N30
\b2v_inst|inst1|shift_reg~189\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~189_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(194)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(193)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(193),
	datad => \b2v_inst1|MATRIZ\(194),
	combout => \b2v_inst|inst1|shift_reg~189_combout\);

-- Location: LCCOMB_X19_Y4_N20
\b2v_inst1|MATRIZ~170\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~170_combout\ = (\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(3) & !\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(3))) # (!\b2v_inst1|MATRIZ[198]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~146_combout\,
	datab => \b2v_inst1|MATRIZ[198]~148_combout\,
	datac => \b2v_inst1|CJ1\(3),
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~170_combout\);

-- Location: FF_X19_Y3_N29
\b2v_inst|inst1|shift_reg[192]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(192));

-- Location: FF_X19_Y4_N29
\b2v_inst1|MATRIZ[193]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~172_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(193));

-- Location: LCCOMB_X18_Y1_N8
\b2v_inst|inst1|shift_reg~190\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~190_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(193)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(192)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(192),
	datad => \b2v_inst1|MATRIZ\(193),
	combout => \b2v_inst|inst1|shift_reg~190_combout\);

-- Location: LCCOMB_X19_Y4_N18
\b2v_inst1|MATRIZ~171\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~171_combout\ = (\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(2) & !\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(2))) # (!\b2v_inst1|MATRIZ[198]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~146_combout\,
	datab => \b2v_inst1|MATRIZ[198]~148_combout\,
	datac => \b2v_inst1|CJ1\(2),
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~171_combout\);

-- Location: FF_X18_Y7_N9
\b2v_inst|inst1|shift_reg[191]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(191));

-- Location: FF_X19_Y4_N31
\b2v_inst1|MATRIZ[192]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~173_combout\,
	ena => \b2v_inst1|MATRIZ[198]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(192));

-- Location: LCCOMB_X19_Y3_N28
\b2v_inst|inst1|shift_reg~191\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~191_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(192)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(191)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(191),
	datac => \b2v_inst1|MATRIZ\(192),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~191_combout\);

-- Location: LCCOMB_X19_Y4_N28
\b2v_inst1|MATRIZ~172\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~172_combout\ = (\b2v_inst1|MATRIZ[198]~148_combout\ & (((!\INICIO~input_o\ & \b2v_inst1|CJ1\(1))))) # (!\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(1))) # (!\b2v_inst1|MATRIZ[198]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~146_combout\,
	datab => \b2v_inst1|MATRIZ[198]~148_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|CJ1\(1),
	combout => \b2v_inst1|MATRIZ~172_combout\);

-- Location: FF_X18_Y8_N31
\b2v_inst|inst1|shift_reg[190]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg[190]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(190));

-- Location: FF_X17_Y7_N9
\b2v_inst1|MATRIZ[191]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[191]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(191));

-- Location: LCCOMB_X18_Y7_N8
\b2v_inst|inst1|shift_reg~192\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~192_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(191)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(190)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(190),
	datad => \b2v_inst1|MATRIZ\(191),
	combout => \b2v_inst|inst1|shift_reg~192_combout\);

-- Location: LCCOMB_X19_Y4_N30
\b2v_inst1|MATRIZ~173\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~173_combout\ = (\b2v_inst1|MATRIZ[198]~148_combout\ & (((!\INICIO~input_o\ & \b2v_inst1|CJ1\(0))))) # (!\b2v_inst1|MATRIZ[198]~148_combout\ & (((\b2v_inst1|CJ1\(0))) # (!\b2v_inst1|MATRIZ[198]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[198]~146_combout\,
	datab => \b2v_inst1|MATRIZ[198]~148_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|CJ1\(0),
	combout => \b2v_inst1|MATRIZ~173_combout\);

-- Location: FF_X18_Y7_N15
\b2v_inst|inst1|shift_reg[189]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(189));

-- Location: FF_X17_Y7_N19
\b2v_inst1|MATRIZ[190]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[190]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(190));

-- Location: LCCOMB_X18_Y7_N0
\b2v_inst|inst1|shift_reg~193\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~193_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(190)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(189)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst|inst1|shift_reg\(189),
	datad => \b2v_inst1|MATRIZ\(190),
	combout => \b2v_inst|inst1|shift_reg~193_combout\);

-- Location: LCCOMB_X22_Y4_N16
\b2v_inst1|MATRIZ[168]~174\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[168]~174_combout\ = ((!\POSICION[2]~input_o\) # (!\POSICION[1]~input_o\)) # (!\b2v_inst1|MATRIZ[383]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[383]~46_combout\,
	datac => \POSICION[1]~input_o\,
	datad => \POSICION[2]~input_o\,
	combout => \b2v_inst1|MATRIZ[168]~174_combout\);

-- Location: LCCOMB_X17_Y7_N16
\b2v_inst1|MATRIZ[168]~175\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[168]~175_combout\ = (((\b2v_inst1|Equal2~0_combout\ & \VF~input_o\)) # (!\INICIO~input_o\)) # (!\b2v_inst1|MATRIZ[168]~174_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal2~0_combout\,
	datab => \b2v_inst1|MATRIZ[168]~174_combout\,
	datac => \VF~input_o\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[168]~175_combout\);

-- Location: FF_X18_Y7_N31
\b2v_inst|inst1|shift_reg[188]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(188));

-- Location: FF_X18_Y7_N17
\b2v_inst1|MATRIZ[189]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[189]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(189));

-- Location: LCCOMB_X18_Y7_N14
\b2v_inst|inst1|shift_reg~194\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~194_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(189)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(188)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(188),
	datad => \b2v_inst1|MATRIZ\(189),
	combout => \b2v_inst|inst1|shift_reg~194_combout\);

-- Location: FF_X18_Y7_N27
\b2v_inst|inst1|shift_reg[187]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(187));

-- Location: FF_X17_Y7_N23
\b2v_inst1|MATRIZ[188]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[188]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(188));

-- Location: LCCOMB_X18_Y7_N30
\b2v_inst|inst1|shift_reg~195\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~195_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(188)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(187)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(187),
	datab => \b2v_inst1|MATRIZ\(188),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~195_combout\);

-- Location: FF_X18_Y7_N29
\b2v_inst|inst1|shift_reg[186]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(186));

-- Location: FF_X18_Y7_N7
\b2v_inst1|MATRIZ[187]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[187]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(187));

-- Location: LCCOMB_X18_Y7_N26
\b2v_inst|inst1|shift_reg~196\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~196_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(187))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(186))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(187),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(186),
	combout => \b2v_inst|inst1|shift_reg~196_combout\);

-- Location: FF_X18_Y7_N13
\b2v_inst|inst1|shift_reg[185]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(185));

-- Location: FF_X17_Y7_N29
\b2v_inst1|MATRIZ[186]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[186]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(186));

-- Location: LCCOMB_X18_Y7_N28
\b2v_inst|inst1|shift_reg~197\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~197_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(186))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(185))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(186),
	datad => \b2v_inst|inst1|shift_reg\(185),
	combout => \b2v_inst|inst1|shift_reg~197_combout\);

-- Location: FF_X18_Y7_N19
\b2v_inst|inst1|shift_reg[184]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(184));

-- Location: FF_X17_Y7_N11
\b2v_inst1|MATRIZ[185]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[185]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(185));

-- Location: LCCOMB_X18_Y7_N12
\b2v_inst|inst1|shift_reg~198\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~198_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(185))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(184))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(185),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(184),
	combout => \b2v_inst|inst1|shift_reg~198_combout\);

-- Location: FF_X18_Y7_N21
\b2v_inst|inst1|shift_reg[183]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(183));

-- Location: FF_X17_Y7_N25
\b2v_inst1|MATRIZ[184]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[184]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(184));

-- Location: LCCOMB_X18_Y7_N18
\b2v_inst|inst1|shift_reg~199\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~199_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(184)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(183)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(183),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(184),
	combout => \b2v_inst|inst1|shift_reg~199_combout\);

-- Location: FF_X17_Y9_N21
\b2v_inst|inst1|shift_reg[182]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(182));

-- Location: FF_X18_Y7_N3
\b2v_inst1|MATRIZ[183]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[183]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(183));

-- Location: LCCOMB_X18_Y7_N20
\b2v_inst|inst1|shift_reg~200\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~200_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(183)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(182)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(182),
	datad => \b2v_inst1|MATRIZ\(183),
	combout => \b2v_inst|inst1|shift_reg~200_combout\);

-- Location: FF_X17_Y9_N3
\b2v_inst|inst1|shift_reg[181]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(181));

-- Location: FF_X17_Y9_N9
\b2v_inst1|MATRIZ[182]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[182]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(182));

-- Location: LCCOMB_X17_Y9_N20
\b2v_inst|inst1|shift_reg~201\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~201_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(182)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(181)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(181),
	datac => \b2v_inst1|MATRIZ\(182),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~201_combout\);

-- Location: FF_X17_Y9_N19
\b2v_inst|inst1|shift_reg[180]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(180));

-- Location: FF_X17_Y7_N7
\b2v_inst1|MATRIZ[181]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[181]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(181));

-- Location: LCCOMB_X17_Y9_N2
\b2v_inst|inst1|shift_reg~202\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~202_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(181)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(180)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(180),
	datac => \b2v_inst1|MATRIZ\(181),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~202_combout\);

-- Location: FF_X17_Y9_N29
\b2v_inst|inst1|shift_reg[179]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(179));

-- Location: FF_X18_Y7_N5
\b2v_inst1|MATRIZ[180]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[180]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(180));

-- Location: LCCOMB_X17_Y9_N18
\b2v_inst|inst1|shift_reg~203\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~203_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(180)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(179)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(179),
	datac => \b2v_inst1|MATRIZ\(180),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~203_combout\);

-- Location: FF_X17_Y9_N7
\b2v_inst|inst1|shift_reg[178]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~205_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(178));

-- Location: FF_X17_Y7_N1
\b2v_inst1|MATRIZ[179]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[179]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(179));

-- Location: LCCOMB_X17_Y9_N28
\b2v_inst|inst1|shift_reg~204\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~204_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(179)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(178)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(178),
	datab => \b2v_inst1|MATRIZ\(179),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~204_combout\);

-- Location: FF_X17_Y9_N5
\b2v_inst|inst1|shift_reg[177]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(177));

-- Location: FF_X17_Y7_N27
\b2v_inst1|MATRIZ[178]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[178]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(178));

-- Location: LCCOMB_X17_Y9_N6
\b2v_inst|inst1|shift_reg~205\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~205_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(178))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(177))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(178),
	datac => \b2v_inst|inst1|shift_reg\(177),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~205_combout\);

-- Location: FF_X17_Y9_N11
\b2v_inst|inst1|shift_reg[176]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(176));

-- Location: FF_X18_Y7_N1
\b2v_inst1|MATRIZ[177]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~74_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(177));

-- Location: LCCOMB_X17_Y9_N4
\b2v_inst|inst1|shift_reg~206\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~206_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(177)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(176)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(176),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(177),
	combout => \b2v_inst|inst1|shift_reg~206_combout\);

-- Location: FF_X17_Y9_N17
\b2v_inst|inst1|shift_reg[175]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(175));

-- Location: FF_X17_Y7_N5
\b2v_inst1|MATRIZ[176]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[176]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(176));

-- Location: LCCOMB_X17_Y9_N10
\b2v_inst|inst1|shift_reg~207\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~207_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(176)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(175)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(175),
	datac => \b2v_inst1|MATRIZ\(176),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~207_combout\);

-- Location: FF_X17_Y9_N15
\b2v_inst|inst1|shift_reg[174]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(174));

-- Location: FF_X18_Y7_N11
\b2v_inst1|MATRIZ[175]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[175]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(175));

-- Location: LCCOMB_X17_Y9_N16
\b2v_inst|inst1|shift_reg~208\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~208_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(175))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(174))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(175),
	datac => \b2v_inst|inst1|shift_reg\(174),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~208_combout\);

-- Location: FF_X17_Y9_N1
\b2v_inst|inst1|shift_reg[173]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(173));

-- Location: FF_X18_Y7_N25
\b2v_inst1|MATRIZ[174]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[174]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(174));

-- Location: LCCOMB_X17_Y9_N14
\b2v_inst|inst1|shift_reg~209\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~209_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(174)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(173)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(173),
	datac => \b2v_inst1|MATRIZ\(174),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~209_combout\);

-- Location: FF_X17_Y9_N31
\b2v_inst|inst1|shift_reg[172]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(172));

-- Location: FF_X18_Y7_N23
\b2v_inst1|MATRIZ[173]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[173]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(173));

-- Location: LCCOMB_X17_Y9_N0
\b2v_inst|inst1|shift_reg~210\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~210_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(173))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(172))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(173),
	datac => \b2v_inst|inst1|shift_reg\(172),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~210_combout\);

-- Location: FF_X17_Y9_N25
\b2v_inst|inst1|shift_reg[171]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(171));

-- Location: FF_X17_Y7_N15
\b2v_inst1|MATRIZ[172]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[172]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(172));

-- Location: LCCOMB_X17_Y9_N30
\b2v_inst|inst1|shift_reg~211\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~211_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(172)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(171)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(171),
	datac => \b2v_inst1|MATRIZ\(172),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~211_combout\);

-- Location: FF_X17_Y9_N27
\b2v_inst|inst1|shift_reg[170]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(170));

-- Location: FF_X17_Y7_N13
\b2v_inst1|MATRIZ[171]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[171]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(171));

-- Location: LCCOMB_X17_Y9_N24
\b2v_inst|inst1|shift_reg~212\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~212_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(171))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(170))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(171),
	datac => \b2v_inst|inst1|shift_reg\(170),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~212_combout\);

-- Location: FF_X17_Y9_N13
\b2v_inst|inst1|shift_reg[169]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(169));

-- Location: FF_X17_Y7_N31
\b2v_inst1|MATRIZ[170]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[170]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(170));

-- Location: LCCOMB_X17_Y9_N26
\b2v_inst|inst1|shift_reg~213\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~213_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(170)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(169)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(169),
	datac => \b2v_inst1|MATRIZ\(170),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~213_combout\);

-- Location: FF_X14_Y8_N1
\b2v_inst|inst1|shift_reg[168]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(168));

-- Location: FF_X17_Y7_N21
\b2v_inst1|MATRIZ[169]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[169]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(169));

-- Location: LCCOMB_X17_Y9_N12
\b2v_inst|inst1|shift_reg~214\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~214_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(169))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(168))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(169),
	datac => \b2v_inst|inst1|shift_reg\(168),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~214_combout\);

-- Location: FF_X15_Y8_N13
\b2v_inst|inst1|shift_reg[167]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(167));

-- Location: FF_X17_Y7_N3
\b2v_inst1|MATRIZ[168]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[168]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[168]~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(168));

-- Location: LCCOMB_X14_Y8_N0
\b2v_inst|inst1|shift_reg~215\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~215_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(168))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(167))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(168),
	datac => \b2v_inst|inst1|shift_reg\(167),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~215_combout\);

-- Location: FF_X15_Y8_N3
\b2v_inst|inst1|shift_reg[166]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(166));

-- Location: FF_X16_Y4_N17
\b2v_inst1|MATRIZ[167]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[167]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(167));

-- Location: LCCOMB_X15_Y8_N12
\b2v_inst|inst1|shift_reg~216\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~216_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(167))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(166))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(167),
	datab => \b2v_inst|inst1|shift_reg\(166),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~216_combout\);

-- Location: FF_X15_Y8_N5
\b2v_inst|inst1|shift_reg[165]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(165));

-- Location: FF_X17_Y8_N11
\b2v_inst1|MATRIZ[166]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[166]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(166));

-- Location: LCCOMB_X15_Y8_N2
\b2v_inst|inst1|shift_reg~217\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~217_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(166))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(165))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(166),
	datab => \b2v_inst|inst1|shift_reg\(165),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~217_combout\);

-- Location: LCCOMB_X22_Y4_N6
\b2v_inst1|MATRIZ[165]~176\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[165]~176_combout\ = ((!\POSICION[2]~input_o\) # (!\POSICION[1]~input_o\)) # (!\b2v_inst1|MATRIZ[344]~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[344]~93_combout\,
	datac => \POSICION[1]~input_o\,
	datad => \POSICION[2]~input_o\,
	combout => \b2v_inst1|MATRIZ[165]~176_combout\);

-- Location: LCCOMB_X16_Y4_N10
\b2v_inst1|MATRIZ[165]~177\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[165]~177_combout\ = (((\VF~input_o\ & \b2v_inst1|Equal2~0_combout\)) # (!\INICIO~input_o\)) # (!\b2v_inst1|MATRIZ[165]~176_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF~input_o\,
	datab => \b2v_inst1|MATRIZ[165]~176_combout\,
	datac => \b2v_inst1|Equal2~0_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[165]~177_combout\);

-- Location: FF_X15_Y8_N19
\b2v_inst|inst1|shift_reg[164]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(164));

-- Location: FF_X17_Y8_N13
\b2v_inst1|MATRIZ[165]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[165]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(165));

-- Location: LCCOMB_X15_Y8_N4
\b2v_inst|inst1|shift_reg~218\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~218_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(165))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(164))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(165),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(164),
	combout => \b2v_inst|inst1|shift_reg~218_combout\);

-- Location: FF_X15_Y8_N9
\b2v_inst|inst1|shift_reg[163]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~220_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(163));

-- Location: FF_X15_Y8_N31
\b2v_inst1|MATRIZ[164]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[164]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(164));

-- Location: LCCOMB_X15_Y8_N18
\b2v_inst|inst1|shift_reg~219\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~219_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(164))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(163))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(164),
	datab => \b2v_inst|inst1|shift_reg\(163),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~219_combout\);

-- Location: FF_X15_Y8_N25
\b2v_inst|inst1|shift_reg[162]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(162));

-- Location: FF_X17_Y8_N19
\b2v_inst1|MATRIZ[163]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[163]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(163));

-- Location: LCCOMB_X15_Y8_N8
\b2v_inst|inst1|shift_reg~220\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~220_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(163))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(162))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(163),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(162),
	combout => \b2v_inst|inst1|shift_reg~220_combout\);

-- Location: FF_X15_Y8_N11
\b2v_inst|inst1|shift_reg[161]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(161));

-- Location: FF_X16_Y4_N1
\b2v_inst1|MATRIZ[162]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[162]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(162));

-- Location: LCCOMB_X15_Y8_N24
\b2v_inst|inst1|shift_reg~221\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~221_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(162)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(161)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(161),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(162),
	combout => \b2v_inst|inst1|shift_reg~221_combout\);

-- Location: FF_X18_Y8_N29
\b2v_inst|inst1|shift_reg[160]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|inst1|shift_reg~223_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(160));

-- Location: FF_X16_Y4_N23
\b2v_inst1|MATRIZ[161]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[161]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(161));

-- Location: LCCOMB_X15_Y8_N10
\b2v_inst|inst1|shift_reg~222\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~222_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(161)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(160)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(160),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(161),
	combout => \b2v_inst|inst1|shift_reg~222_combout\);

-- Location: FF_X15_Y8_N17
\b2v_inst|inst1|shift_reg[159]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(159));

-- Location: FF_X15_Y8_N27
\b2v_inst1|MATRIZ[160]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~62_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(160));

-- Location: LCCOMB_X15_Y8_N26
\b2v_inst|inst1|shift_reg~223\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~223_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(160))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(159))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(160),
	datad => \b2v_inst|inst1|shift_reg\(159),
	combout => \b2v_inst|inst1|shift_reg~223_combout\);

-- Location: FF_X15_Y8_N21
\b2v_inst|inst1|shift_reg[158]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(158));

-- Location: FF_X17_Y8_N29
\b2v_inst1|MATRIZ[159]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[159]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(159));

-- Location: LCCOMB_X15_Y8_N16
\b2v_inst|inst1|shift_reg~224\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~224_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(159))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(158))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(159),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(158),
	combout => \b2v_inst|inst1|shift_reg~224_combout\);

-- Location: FF_X15_Y8_N15
\b2v_inst|inst1|shift_reg[157]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(157));

-- Location: FF_X16_Y4_N25
\b2v_inst1|MATRIZ[158]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[158]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(158));

-- Location: LCCOMB_X15_Y8_N20
\b2v_inst|inst1|shift_reg~225\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~225_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(158)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(157)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(157),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(158),
	combout => \b2v_inst|inst1|shift_reg~225_combout\);

-- Location: FF_X15_Y8_N1
\b2v_inst|inst1|shift_reg[156]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(156));

-- Location: FF_X15_Y8_N7
\b2v_inst1|MATRIZ[157]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[157]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(157));

-- Location: LCCOMB_X15_Y8_N14
\b2v_inst|inst1|shift_reg~226\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~226_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(157))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(156))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(157),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(156),
	combout => \b2v_inst|inst1|shift_reg~226_combout\);

-- Location: FF_X15_Y8_N29
\b2v_inst|inst1|shift_reg[155]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(155));

-- Location: FF_X17_Y8_N7
\b2v_inst1|MATRIZ[156]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[156]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(156));

-- Location: LCCOMB_X15_Y8_N0
\b2v_inst|inst1|shift_reg~227\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~227_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(156))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(155))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(156),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(155),
	combout => \b2v_inst|inst1|shift_reg~227_combout\);

-- Location: FF_X15_Y8_N23
\b2v_inst|inst1|shift_reg[154]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(154));

-- Location: FF_X16_Y4_N31
\b2v_inst1|MATRIZ[155]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[155]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(155));

-- Location: LCCOMB_X15_Y8_N28
\b2v_inst|inst1|shift_reg~228\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~228_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(155)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(154)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(154),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(155),
	combout => \b2v_inst|inst1|shift_reg~228_combout\);

-- Location: FF_X18_Y8_N23
\b2v_inst|inst1|shift_reg[153]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(153));

-- Location: FF_X17_Y8_N1
\b2v_inst1|MATRIZ[154]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[154]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(154));

-- Location: LCCOMB_X15_Y8_N22
\b2v_inst|inst1|shift_reg~229\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~229_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(154))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(153))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(154),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(153),
	combout => \b2v_inst|inst1|shift_reg~229_combout\);

-- Location: FF_X18_Y8_N1
\b2v_inst|inst1|shift_reg[152]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(152));

-- Location: FF_X17_Y8_N3
\b2v_inst1|MATRIZ[153]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[153]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(153));

-- Location: LCCOMB_X18_Y8_N22
\b2v_inst|inst1|shift_reg~230\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~230_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(153))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(152))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(153),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(152),
	combout => \b2v_inst|inst1|shift_reg~230_combout\);

-- Location: FF_X18_Y8_N3
\b2v_inst|inst1|shift_reg[151]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(151));

-- Location: FF_X16_Y4_N21
\b2v_inst1|MATRIZ[152]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[152]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(152));

-- Location: LCCOMB_X18_Y8_N0
\b2v_inst|inst1|shift_reg~231\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~231_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(152))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(151))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(152),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(151),
	combout => \b2v_inst|inst1|shift_reg~231_combout\);

-- Location: FF_X18_Y8_N21
\b2v_inst|inst1|shift_reg[150]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(150));

-- Location: FF_X16_Y4_N3
\b2v_inst1|MATRIZ[151]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[151]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(151));

-- Location: LCCOMB_X18_Y8_N2
\b2v_inst|inst1|shift_reg~232\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~232_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(151))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(150))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(151),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(150),
	combout => \b2v_inst|inst1|shift_reg~232_combout\);

-- Location: FF_X18_Y8_N27
\b2v_inst|inst1|shift_reg[149]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(149));

-- Location: FF_X16_Y4_N5
\b2v_inst1|MATRIZ[150]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[150]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(150));

-- Location: LCCOMB_X18_Y8_N20
\b2v_inst|inst1|shift_reg~233\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~233_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(150)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(149)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(149),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(150),
	combout => \b2v_inst|inst1|shift_reg~233_combout\);

-- Location: FF_X18_Y8_N13
\b2v_inst|inst1|shift_reg[148]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(148));

-- Location: FF_X18_Y8_N11
\b2v_inst1|MATRIZ[149]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[149]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(149));

-- Location: LCCOMB_X18_Y8_N26
\b2v_inst|inst1|shift_reg~234\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~234_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(149))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(148))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(149),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(148),
	combout => \b2v_inst|inst1|shift_reg~234_combout\);

-- Location: FF_X13_Y6_N21
\b2v_inst|inst1|shift_reg[147]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(147));

-- Location: FF_X16_Y4_N7
\b2v_inst1|MATRIZ[148]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[148]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(148));

-- Location: LCCOMB_X18_Y8_N12
\b2v_inst|inst1|shift_reg~235\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~235_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(148)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(147)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(147),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(148),
	combout => \b2v_inst|inst1|shift_reg~235_combout\);

-- Location: FF_X13_Y6_N23
\b2v_inst|inst1|shift_reg[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(146));

-- Location: FF_X16_Y4_N13
\b2v_inst1|MATRIZ[147]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[147]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(147));

-- Location: LCCOMB_X13_Y6_N20
\b2v_inst|inst1|shift_reg~236\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~236_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(147)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(146)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(146),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(147),
	combout => \b2v_inst|inst1|shift_reg~236_combout\);

-- Location: FF_X13_Y6_N25
\b2v_inst|inst1|shift_reg[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(145));

-- Location: FF_X16_Y4_N27
\b2v_inst1|MATRIZ[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[146]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(146));

-- Location: LCCOMB_X13_Y6_N22
\b2v_inst|inst1|shift_reg~237\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~237_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(146)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(145)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(145),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(146),
	combout => \b2v_inst|inst1|shift_reg~237_combout\);

-- Location: FF_X18_Y9_N15
\b2v_inst|inst1|shift_reg[144]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(144));

-- Location: FF_X16_Y4_N9
\b2v_inst1|MATRIZ[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[145]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(145));

-- Location: LCCOMB_X13_Y6_N24
\b2v_inst|inst1|shift_reg~238\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~238_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(145))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(144))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst1|MATRIZ\(145),
	datac => \b2v_inst|inst1|shift_reg\(144),
	combout => \b2v_inst|inst1|shift_reg~238_combout\);

-- Location: FF_X18_Y9_N1
\b2v_inst|inst1|shift_reg[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(143));

-- Location: FF_X16_Y4_N19
\b2v_inst1|MATRIZ[144]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[144]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[165]~177_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(144));

-- Location: LCCOMB_X18_Y9_N14
\b2v_inst|inst1|shift_reg~239\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~239_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(144))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(143))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(144),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(143),
	combout => \b2v_inst|inst1|shift_reg~239_combout\);

-- Location: FF_X18_Y9_N3
\b2v_inst|inst1|shift_reg[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~241_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(142));

-- Location: FF_X18_Y5_N27
\b2v_inst1|MATRIZ[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~45_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(143));

-- Location: LCCOMB_X18_Y9_N0
\b2v_inst|inst1|shift_reg~240\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~240_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(143))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(142))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(143),
	datad => \b2v_inst|inst1|shift_reg\(142),
	combout => \b2v_inst|inst1|shift_reg~240_combout\);

-- Location: FF_X18_Y9_N5
\b2v_inst|inst1|shift_reg[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(141));

-- Location: FF_X17_Y5_N19
\b2v_inst1|MATRIZ[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~50_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(142));

-- Location: LCCOMB_X18_Y9_N2
\b2v_inst|inst1|shift_reg~241\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~241_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(142))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(141))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(142),
	datac => \b2v_inst|inst1|shift_reg\(141),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~241_combout\);

-- Location: LCCOMB_X22_Y4_N28
\b2v_inst1|MATRIZ[141]~178\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[141]~178_combout\ = ((\POSICION[1]~input_o\) # ((\POSICION[0]~input_o\) # (\POSICION[2]~input_o\))) # (!\MV~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MV~input_o\,
	datab => \POSICION[1]~input_o\,
	datac => \POSICION[0]~input_o\,
	datad => \POSICION[2]~input_o\,
	combout => \b2v_inst1|MATRIZ[141]~178_combout\);

-- Location: LCCOMB_X17_Y5_N30
\b2v_inst1|MATRIZ[141]~179\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[141]~179_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # (((!\b2v_inst1|MATRIZ[141]~178_combout\ & \POSICION[3]~input_o\)) # (!\INICIO~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[383]~44_combout\,
	datab => \b2v_inst1|MATRIZ[141]~178_combout\,
	datac => \POSICION[3]~input_o\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[141]~179_combout\);

-- Location: FF_X18_Y9_N23
\b2v_inst|inst1|shift_reg[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~243_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(140));

-- Location: FF_X18_Y5_N9
\b2v_inst1|MATRIZ[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[141]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(141));

-- Location: LCCOMB_X18_Y9_N4
\b2v_inst|inst1|shift_reg~242\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~242_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(141)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(140)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(140),
	datac => \b2v_inst1|MATRIZ\(141),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~242_combout\);

-- Location: FF_X18_Y9_N9
\b2v_inst|inst1|shift_reg[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(139));

-- Location: FF_X17_Y5_N11
\b2v_inst1|MATRIZ[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~54_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(140));

-- Location: LCCOMB_X18_Y9_N22
\b2v_inst|inst1|shift_reg~243\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~243_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(140))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(139))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(140),
	datac => \b2v_inst|inst1|shift_reg\(139),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~243_combout\);

-- Location: FF_X18_Y9_N11
\b2v_inst|inst1|shift_reg[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~245_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(138));

-- Location: FF_X17_Y5_N25
\b2v_inst1|MATRIZ[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~56_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(139));

-- Location: LCCOMB_X18_Y9_N8
\b2v_inst|inst1|shift_reg~244\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~244_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(139)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(138)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(138),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(139),
	combout => \b2v_inst|inst1|shift_reg~244_combout\);

-- Location: FF_X19_Y9_N29
\b2v_inst|inst1|shift_reg[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(137));

-- Location: FF_X18_Y5_N25
\b2v_inst1|MATRIZ[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~58_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(138));

-- Location: LCCOMB_X18_Y9_N10
\b2v_inst|inst1|shift_reg~245\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~245_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(138))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(137))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(138),
	datad => \b2v_inst|inst1|shift_reg\(137),
	combout => \b2v_inst|inst1|shift_reg~245_combout\);

-- Location: FF_X18_Y9_N25
\b2v_inst|inst1|shift_reg[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~247_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(136));

-- Location: FF_X15_Y5_N13
\b2v_inst1|MATRIZ[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[137]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(137));

-- Location: LCCOMB_X19_Y9_N28
\b2v_inst|inst1|shift_reg~246\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~246_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(137))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(136))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(137),
	datad => \b2v_inst|inst1|shift_reg\(136),
	combout => \b2v_inst|inst1|shift_reg~246_combout\);

-- Location: FF_X18_Y9_N27
\b2v_inst|inst1|shift_reg[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(135));

-- Location: FF_X17_Y5_N29
\b2v_inst1|MATRIZ[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~62_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(136));

-- Location: LCCOMB_X18_Y9_N24
\b2v_inst|inst1|shift_reg~247\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~247_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(136)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(135)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(135),
	datac => \b2v_inst1|MATRIZ\(136),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~247_combout\);

-- Location: FF_X18_Y9_N29
\b2v_inst|inst1|shift_reg[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~249_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(134));

-- Location: FF_X18_Y5_N15
\b2v_inst1|MATRIZ[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ[135]~feeder_combout\,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(135));

-- Location: LCCOMB_X18_Y9_N26
\b2v_inst|inst1|shift_reg~248\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~248_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(135))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(134))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(135),
	datad => \b2v_inst|inst1|shift_reg\(134),
	combout => \b2v_inst|inst1|shift_reg~248_combout\);

-- Location: FF_X17_Y9_N23
\b2v_inst|inst1|shift_reg[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(133));

-- Location: FF_X17_Y5_N7
\b2v_inst1|MATRIZ[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~64_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(134));

-- Location: LCCOMB_X18_Y9_N28
\b2v_inst|inst1|shift_reg~249\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~249_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(134))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(133))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(134),
	datab => \b2v_inst|inst1|shift_reg\(133),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~249_combout\);

-- Location: FF_X14_Y8_N23
\b2v_inst|inst1|shift_reg[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~251_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(132));

-- Location: FF_X17_Y5_N9
\b2v_inst1|MATRIZ[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~66_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(133));

-- Location: LCCOMB_X17_Y9_N22
\b2v_inst|inst1|shift_reg~250\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~250_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(133))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(132))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(133),
	datac => \b2v_inst|inst1|shift_reg\(132),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~250_combout\);

-- Location: FF_X14_Y8_N5
\b2v_inst|inst1|shift_reg[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(131));

-- Location: FF_X18_Y5_N13
\b2v_inst1|MATRIZ[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~68_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(132));

-- Location: LCCOMB_X14_Y8_N22
\b2v_inst|inst1|shift_reg~251\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~251_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(132)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(131)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(131),
	datad => \b2v_inst1|MATRIZ\(132),
	combout => \b2v_inst|inst1|shift_reg~251_combout\);

-- Location: FF_X14_Y8_N11
\b2v_inst|inst1|shift_reg[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(130));

-- Location: FF_X17_Y5_N17
\b2v_inst1|MATRIZ[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~70_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(131));

-- Location: LCCOMB_X14_Y8_N4
\b2v_inst|inst1|shift_reg~252\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~252_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(131)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(130)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(130),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(131),
	combout => \b2v_inst|inst1|shift_reg~252_combout\);

-- Location: FF_X14_Y8_N13
\b2v_inst|inst1|shift_reg[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(129));

-- Location: FF_X17_Y3_N15
\b2v_inst1|MATRIZ[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~72_combout\,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(130));

-- Location: LCCOMB_X14_Y8_N10
\b2v_inst|inst1|shift_reg~253\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~253_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(130))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(129))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(130),
	datad => \b2v_inst|inst1|shift_reg\(129),
	combout => \b2v_inst|inst1|shift_reg~253_combout\);

-- Location: FF_X14_Y8_N3
\b2v_inst|inst1|shift_reg[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(128));

-- Location: FF_X17_Y5_N5
\b2v_inst1|MATRIZ[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~74_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(129));

-- Location: LCCOMB_X14_Y8_N12
\b2v_inst|inst1|shift_reg~254\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~254_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(129))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(128))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(129),
	datad => \b2v_inst|inst1|shift_reg\(128),
	combout => \b2v_inst|inst1|shift_reg~254_combout\);

-- Location: FF_X14_Y8_N25
\b2v_inst|inst1|shift_reg[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(127));

-- Location: FF_X18_Y4_N23
\b2v_inst1|MATRIZ[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~76_combout\,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(128));

-- Location: LCCOMB_X14_Y8_N2
\b2v_inst|inst1|shift_reg~255\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~255_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(128))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(127))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(128),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(127),
	combout => \b2v_inst|inst1|shift_reg~255_combout\);

-- Location: FF_X18_Y2_N13
\b2v_inst|inst1|shift_reg[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(126));

-- Location: FF_X18_Y4_N7
\b2v_inst1|MATRIZ[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~78_combout\,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(127));

-- Location: LCCOMB_X14_Y8_N24
\b2v_inst|inst1|shift_reg~256\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~256_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(127)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(126),
	datac => \b2v_inst1|MATRIZ\(127),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~256_combout\);

-- Location: FF_X14_Y8_N7
\b2v_inst|inst1|shift_reg[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(125));

-- Location: FF_X15_Y5_N3
\b2v_inst1|MATRIZ[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~80_combout\,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(126));

-- Location: LCCOMB_X18_Y2_N12
\b2v_inst|inst1|shift_reg~257\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~257_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(126))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(125))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(126),
	datac => \b2v_inst|inst1|shift_reg\(125),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~257_combout\);

-- Location: FF_X14_Y8_N29
\b2v_inst|inst1|shift_reg[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(124));

-- Location: FF_X17_Y3_N25
\b2v_inst1|MATRIZ[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~82_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(125));

-- Location: LCCOMB_X14_Y8_N6
\b2v_inst|inst1|shift_reg~258\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~258_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(125))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(124))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(125),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(124),
	combout => \b2v_inst|inst1|shift_reg~258_combout\);

-- Location: FF_X14_Y8_N27
\b2v_inst|inst1|shift_reg[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(123));

-- Location: FF_X16_Y7_N1
\b2v_inst1|MATRIZ[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~84_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(124));

-- Location: LCCOMB_X14_Y8_N28
\b2v_inst|inst1|shift_reg~259\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~259_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(124)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(123)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(123),
	datad => \b2v_inst1|MATRIZ\(124),
	combout => \b2v_inst|inst1|shift_reg~259_combout\);

-- Location: FF_X14_Y8_N21
\b2v_inst|inst1|shift_reg[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(122));

-- Location: FF_X17_Y5_N3
\b2v_inst1|MATRIZ[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~86_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(123));

-- Location: LCCOMB_X14_Y8_N26
\b2v_inst|inst1|shift_reg~260\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~260_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(123))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(122))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(123),
	datad => \b2v_inst|inst1|shift_reg\(122),
	combout => \b2v_inst|inst1|shift_reg~260_combout\);

-- Location: FF_X14_Y8_N31
\b2v_inst|inst1|shift_reg[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(121));

-- Location: FF_X17_Y5_N21
\b2v_inst1|MATRIZ[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~88_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(122));

-- Location: LCCOMB_X14_Y8_N20
\b2v_inst|inst1|shift_reg~261\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~261_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(122))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(121))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(122),
	datac => \b2v_inst|inst1|shift_reg\(121),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~261_combout\);

-- Location: FF_X18_Y8_N9
\b2v_inst|inst1|shift_reg[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(120));

-- Location: FF_X16_Y7_N3
\b2v_inst1|MATRIZ[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~90_combout\,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(121));

-- Location: LCCOMB_X14_Y8_N30
\b2v_inst|inst1|shift_reg~262\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~262_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(121))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(120))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(121),
	datac => \b2v_inst|inst1|shift_reg\(120),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~262_combout\);

-- Location: FF_X21_Y6_N23
\b2v_inst|inst1|shift_reg[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(119));

-- Location: FF_X17_Y5_N27
\b2v_inst1|MATRIZ[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~92_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[141]~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(120));

-- Location: LCCOMB_X18_Y8_N8
\b2v_inst|inst1|shift_reg~263\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~263_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(120))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(119))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(120),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(119),
	combout => \b2v_inst|inst1|shift_reg~263_combout\);

-- Location: FF_X21_Y6_N1
\b2v_inst|inst1|shift_reg[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(118));

-- Location: FF_X21_Y6_N15
\b2v_inst1|MATRIZ[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~184_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(119));

-- Location: LCCOMB_X21_Y6_N22
\b2v_inst|inst1|shift_reg~264\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~264_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(119))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(118))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(119),
	datad => \b2v_inst|inst1|shift_reg\(118),
	combout => \b2v_inst|inst1|shift_reg~264_combout\);

-- Location: FF_X21_Y6_N9
\b2v_inst|inst1|shift_reg[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(117));

-- Location: FF_X21_Y6_N3
\b2v_inst1|MATRIZ[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~186_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(118));

-- Location: LCCOMB_X21_Y6_N0
\b2v_inst|inst1|shift_reg~265\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~265_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(118)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(117)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(117),
	datad => \b2v_inst1|MATRIZ\(118),
	combout => \b2v_inst|inst1|shift_reg~265_combout\);

-- Location: LCCOMB_X20_Y3_N16
\b2v_inst1|MATRIZ~180\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~180_combout\ = (\b2v_inst1|empatecounter1\(1) & (!\b2v_inst1|empatecounter1\(0) & \EMPATE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|empatecounter1\(1),
	datab => \b2v_inst1|empatecounter1\(0),
	datad => \EMPATE~input_o\,
	combout => \b2v_inst1|MATRIZ~180_combout\);

-- Location: LCCOMB_X20_Y3_N22
\b2v_inst1|MATRIZ[102]~181\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[102]~181_combout\ = (\b2v_inst1|MATRIZ[293]~103_combout\ & (((!\b2v_inst1|MATRIZ~180_combout\) # (!\b2v_inst1|Equal0~0_combout\)))) # (!\b2v_inst1|MATRIZ[293]~103_combout\ & (!\VF~input_o\ & ((!\b2v_inst1|MATRIZ~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[293]~103_combout\,
	datab => \VF~input_o\,
	datac => \b2v_inst1|Equal0~0_combout\,
	datad => \b2v_inst1|MATRIZ~180_combout\,
	combout => \b2v_inst1|MATRIZ[102]~181_combout\);

-- Location: LCCOMB_X20_Y3_N8
\b2v_inst1|MATRIZ[102]~182\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[102]~182_combout\ = ((\b2v_inst1|victoriacounter1\(0)) # ((!\VICTORIA~input_o\) # (!\TURNO~input_o\))) # (!\b2v_inst1|victoriacounter1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|victoriacounter1\(1),
	datab => \b2v_inst1|victoriacounter1\(0),
	datac => \TURNO~input_o\,
	datad => \VICTORIA~input_o\,
	combout => \b2v_inst1|MATRIZ[102]~182_combout\);

-- Location: LCCOMB_X19_Y2_N16
\b2v_inst1|MATRIZ[102]~183\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[102]~183_combout\ = (!\b2v_inst1|MATRIZ[102]~100_combout\ & (!\b2v_inst1|MATRIZ~180_combout\ & \b2v_inst1|MATRIZ[102]~182_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~100_combout\,
	datab => \b2v_inst1|MATRIZ~180_combout\,
	datad => \b2v_inst1|MATRIZ[102]~182_combout\,
	combout => \b2v_inst1|MATRIZ[102]~183_combout\);

-- Location: LCCOMB_X21_Y6_N14
\b2v_inst1|MATRIZ~184\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~184_combout\ = (\b2v_inst1|MATRIZ[102]~183_combout\ & (((!\INICIO~input_o\ & \b2v_inst1|CJ1\(23))))) # (!\b2v_inst1|MATRIZ[102]~183_combout\ & (((\b2v_inst1|CJ1\(23))) # (!\b2v_inst1|MATRIZ[102]~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~181_combout\,
	datab => \b2v_inst1|MATRIZ[102]~183_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|CJ1\(23),
	combout => \b2v_inst1|MATRIZ~184_combout\);

-- Location: LCCOMB_X20_Y3_N2
\b2v_inst1|MATRIZ[102]~185\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[102]~185_combout\ = (!\b2v_inst1|MATRIZ[102]~100_combout\ & \b2v_inst1|MATRIZ[102]~182_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ[102]~100_combout\,
	datad => \b2v_inst1|MATRIZ[102]~182_combout\,
	combout => \b2v_inst1|MATRIZ[102]~185_combout\);

-- Location: FF_X21_Y6_N5
\b2v_inst|inst1|shift_reg[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(116));

-- Location: FF_X20_Y6_N9
\b2v_inst1|MATRIZ[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~187_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(117));

-- Location: LCCOMB_X21_Y6_N8
\b2v_inst|inst1|shift_reg~266\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~266_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(117))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(116))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(117),
	datab => \b2v_inst|inst1|shift_reg\(116),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~266_combout\);

-- Location: LCCOMB_X21_Y6_N2
\b2v_inst1|MATRIZ~186\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~186_combout\ = (\b2v_inst1|MATRIZ[102]~183_combout\ & (((\b2v_inst1|CJ1\(22) & !\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[102]~183_combout\ & (((\b2v_inst1|CJ1\(22))) # (!\b2v_inst1|MATRIZ[102]~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~181_combout\,
	datab => \b2v_inst1|MATRIZ[102]~183_combout\,
	datac => \b2v_inst1|CJ1\(22),
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~186_combout\);

-- Location: FF_X21_Y6_N7
\b2v_inst|inst1|shift_reg[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(115));

-- Location: FF_X20_Y4_N3
\b2v_inst1|MATRIZ[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~190_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(116));

-- Location: LCCOMB_X21_Y6_N4
\b2v_inst|inst1|shift_reg~267\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~267_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(116))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(115))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(116),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(115),
	combout => \b2v_inst|inst1|shift_reg~267_combout\);

-- Location: LCCOMB_X20_Y6_N8
\b2v_inst1|MATRIZ~187\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~187_combout\ = (\b2v_inst1|MATRIZ[102]~183_combout\ & (!\INICIO~input_o\ & (\b2v_inst1|CJ1\(21)))) # (!\b2v_inst1|MATRIZ[102]~183_combout\ & (((\b2v_inst1|CJ1\(21)) # (!\b2v_inst1|MATRIZ[102]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~183_combout\,
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|CJ1\(21),
	datad => \b2v_inst1|MATRIZ[102]~181_combout\,
	combout => \b2v_inst1|MATRIZ~187_combout\);

-- Location: FF_X21_Y6_N13
\b2v_inst|inst1|shift_reg[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~269_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(114));

-- Location: FF_X20_Y6_N15
\b2v_inst1|MATRIZ[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~191_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(115));

-- Location: LCCOMB_X21_Y6_N6
\b2v_inst|inst1|shift_reg~268\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~268_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(115))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(114))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(115),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(114),
	combout => \b2v_inst|inst1|shift_reg~268_combout\);

-- Location: LCCOMB_X20_Y6_N20
\b2v_inst1|MATRIZ~188\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~188_combout\ = (\b2v_inst1|MATRIZ~98_combout\ & (!\b2v_inst1|MATRIZ[102]~183_combout\ & !\b2v_inst1|MATRIZ[102]~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~98_combout\,
	datac => \b2v_inst1|MATRIZ[102]~183_combout\,
	datad => \b2v_inst1|MATRIZ[102]~181_combout\,
	combout => \b2v_inst1|MATRIZ~188_combout\);

-- Location: LCCOMB_X20_Y3_N28
\b2v_inst1|MATRIZ[102]~189\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[102]~189_combout\ = (\b2v_inst1|MATRIZ~180_combout\ & (((\b2v_inst1|MATRIZ[102]~181_combout\)))) # (!\b2v_inst1|MATRIZ~180_combout\ & ((\b2v_inst1|MATRIZ[102]~185_combout\ & ((!\INICIO~input_o\))) # (!\b2v_inst1|MATRIZ[102]~185_combout\ 
-- & (\b2v_inst1|MATRIZ[102]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~180_combout\,
	datab => \b2v_inst1|MATRIZ[102]~185_combout\,
	datac => \b2v_inst1|MATRIZ[102]~181_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[102]~189_combout\);

-- Location: LCCOMB_X20_Y4_N2
\b2v_inst1|MATRIZ~190\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~190_combout\ = (\b2v_inst1|MATRIZ~188_combout\) # ((\b2v_inst1|MATRIZ[102]~189_combout\ & \b2v_inst1|CJ1\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~188_combout\,
	datac => \b2v_inst1|MATRIZ[102]~189_combout\,
	datad => \b2v_inst1|CJ1\(20),
	combout => \b2v_inst1|MATRIZ~190_combout\);

-- Location: FF_X21_Y6_N19
\b2v_inst|inst1|shift_reg[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(113));

-- Location: FF_X20_Y4_N21
\b2v_inst1|MATRIZ[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~192_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(114));

-- Location: LCCOMB_X21_Y6_N12
\b2v_inst|inst1|shift_reg~269\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~269_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(114))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(113))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(114),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(113),
	combout => \b2v_inst|inst1|shift_reg~269_combout\);

-- Location: LCCOMB_X20_Y6_N14
\b2v_inst1|MATRIZ~191\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~191_combout\ = (\b2v_inst1|CJ1\(19) & (((!\b2v_inst1|MATRIZ[102]~183_combout\)) # (!\INICIO~input_o\))) # (!\b2v_inst1|CJ1\(19) & (((!\b2v_inst1|MATRIZ[102]~183_combout\ & !\b2v_inst1|MATRIZ[102]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INICIO~input_o\,
	datab => \b2v_inst1|CJ1\(19),
	datac => \b2v_inst1|MATRIZ[102]~183_combout\,
	datad => \b2v_inst1|MATRIZ[102]~181_combout\,
	combout => \b2v_inst1|MATRIZ~191_combout\);

-- Location: FF_X21_Y6_N29
\b2v_inst|inst1|shift_reg[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(112));

-- Location: FF_X20_Y4_N27
\b2v_inst1|MATRIZ[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~193_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(113));

-- Location: LCCOMB_X21_Y6_N18
\b2v_inst|inst1|shift_reg~270\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~270_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(113))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(112))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(113),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(112),
	combout => \b2v_inst|inst1|shift_reg~270_combout\);

-- Location: LCCOMB_X20_Y4_N20
\b2v_inst1|MATRIZ~192\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~192_combout\ = (\b2v_inst1|MATRIZ[102]~183_combout\ & (!\INICIO~input_o\ & ((\b2v_inst1|CJ1\(18))))) # (!\b2v_inst1|MATRIZ[102]~183_combout\ & (((\b2v_inst1|CJ1\(18)) # (!\b2v_inst1|MATRIZ[102]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~183_combout\,
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|MATRIZ[102]~181_combout\,
	datad => \b2v_inst1|CJ1\(18),
	combout => \b2v_inst1|MATRIZ~192_combout\);

-- Location: FF_X21_Y6_N11
\b2v_inst|inst1|shift_reg[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(111));

-- Location: FF_X20_Y4_N5
\b2v_inst1|MATRIZ[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~194_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(112));

-- Location: LCCOMB_X21_Y6_N28
\b2v_inst|inst1|shift_reg~271\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~271_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(112))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(111))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(112),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(111),
	combout => \b2v_inst|inst1|shift_reg~271_combout\);

-- Location: LCCOMB_X20_Y4_N26
\b2v_inst1|MATRIZ~193\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~193_combout\ = (\b2v_inst1|MATRIZ[102]~183_combout\ & (\b2v_inst1|CJ1\(17) & ((!\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[102]~183_combout\ & ((\b2v_inst1|CJ1\(17)) # ((!\b2v_inst1|MATRIZ[102]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~183_combout\,
	datab => \b2v_inst1|CJ1\(17),
	datac => \b2v_inst1|MATRIZ[102]~181_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~193_combout\);

-- Location: FF_X21_Y6_N21
\b2v_inst|inst1|shift_reg[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(110));

-- Location: FF_X20_Y4_N7
\b2v_inst1|MATRIZ[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~196_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(111));

-- Location: LCCOMB_X21_Y6_N10
\b2v_inst|inst1|shift_reg~272\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~272_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(111))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(110))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(111),
	datad => \b2v_inst|inst1|shift_reg\(110),
	combout => \b2v_inst|inst1|shift_reg~272_combout\);

-- Location: LCCOMB_X20_Y4_N4
\b2v_inst1|MATRIZ~194\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~194_combout\ = (\b2v_inst1|MATRIZ[102]~183_combout\ & (!\INICIO~input_o\ & ((\b2v_inst1|CJ1\(16))))) # (!\b2v_inst1|MATRIZ[102]~183_combout\ & (((\b2v_inst1|CJ1\(16)) # (!\b2v_inst1|MATRIZ[102]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~183_combout\,
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|MATRIZ[102]~181_combout\,
	datad => \b2v_inst1|CJ1\(16),
	combout => \b2v_inst1|MATRIZ~194_combout\);

-- Location: FF_X21_Y6_N31
\b2v_inst|inst1|shift_reg[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(109));

-- Location: FF_X20_Y6_N23
\b2v_inst1|MATRIZ[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~198_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(110));

-- Location: LCCOMB_X21_Y6_N20
\b2v_inst|inst1|shift_reg~273\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~273_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(110)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(109)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(109),
	datad => \b2v_inst1|MATRIZ\(110),
	combout => \b2v_inst|inst1|shift_reg~273_combout\);

-- Location: LCCOMB_X20_Y2_N10
\b2v_inst1|MATRIZ~195\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~195_combout\ = (\b2v_inst1|MATRIZ~180_combout\ & (((\b2v_inst1|Equal0~0_combout\ & !\b2v_inst1|Equal1~0_combout\)) # (!\VF~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal0~0_combout\,
	datab => \b2v_inst1|Equal1~0_combout\,
	datac => \b2v_inst1|MATRIZ~180_combout\,
	datad => \VF~input_o\,
	combout => \b2v_inst1|MATRIZ~195_combout\);

-- Location: LCCOMB_X20_Y4_N6
\b2v_inst1|MATRIZ~196\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~196_combout\ = (\b2v_inst1|MATRIZ~195_combout\ & (((\b2v_inst1|MATRIZ~180_combout\) # (!\b2v_inst1|MATRIZ[102]~185_combout\)))) # (!\b2v_inst1|MATRIZ~195_combout\ & (\b2v_inst1|MATRIZ[383]~44_combout\ & ((\b2v_inst1|MATRIZ~180_combout\) 
-- # (!\b2v_inst1|MATRIZ[102]~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~195_combout\,
	datab => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \b2v_inst1|MATRIZ~180_combout\,
	datad => \b2v_inst1|MATRIZ[102]~185_combout\,
	combout => \b2v_inst1|MATRIZ~196_combout\);

-- Location: FF_X21_Y6_N17
\b2v_inst|inst1|shift_reg[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(108));

-- Location: FF_X20_Y4_N9
\b2v_inst1|MATRIZ[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~199_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(109));

-- Location: LCCOMB_X21_Y6_N30
\b2v_inst|inst1|shift_reg~274\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~274_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(109))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(108))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(109),
	datad => \b2v_inst|inst1|shift_reg\(108),
	combout => \b2v_inst|inst1|shift_reg~274_combout\);

-- Location: LCCOMB_X20_Y2_N28
\b2v_inst1|MATRIZ~197\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~197_combout\ = (\b2v_inst1|Equal1~0_combout\) # ((\b2v_inst1|Equal2~0_combout\) # ((\b2v_inst1|Equal0~0_combout\ & \b2v_inst1|MATRIZ~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal0~0_combout\,
	datab => \b2v_inst1|Equal1~0_combout\,
	datac => \b2v_inst1|MATRIZ~180_combout\,
	datad => \b2v_inst1|Equal2~0_combout\,
	combout => \b2v_inst1|MATRIZ~197_combout\);

-- Location: LCCOMB_X20_Y6_N22
\b2v_inst1|MATRIZ~198\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~198_combout\ = (\VF~input_o\ & (\b2v_inst1|MATRIZ~197_combout\ & ((\b2v_inst1|MATRIZ~180_combout\) # (!\b2v_inst1|MATRIZ[102]~185_combout\)))) # (!\VF~input_o\ & (((\b2v_inst1|MATRIZ~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF~input_o\,
	datab => \b2v_inst1|MATRIZ[102]~185_combout\,
	datac => \b2v_inst1|MATRIZ~197_combout\,
	datad => \b2v_inst1|MATRIZ~180_combout\,
	combout => \b2v_inst1|MATRIZ~198_combout\);

-- Location: FF_X21_Y4_N7
\b2v_inst|inst1|shift_reg[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~276_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(107));

-- Location: FF_X21_Y6_N27
\b2v_inst1|MATRIZ[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~200_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(108));

-- Location: LCCOMB_X21_Y6_N16
\b2v_inst|inst1|shift_reg~275\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~275_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(108))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(108),
	datad => \b2v_inst|inst1|shift_reg\(107),
	combout => \b2v_inst|inst1|shift_reg~275_combout\);

-- Location: LCCOMB_X20_Y4_N8
\b2v_inst1|MATRIZ~199\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~199_combout\ = (\b2v_inst1|MATRIZ~188_combout\) # ((\b2v_inst1|CJ1\(13) & \b2v_inst1|MATRIZ[102]~189_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(13),
	datab => \b2v_inst1|MATRIZ~188_combout\,
	datac => \b2v_inst1|MATRIZ[102]~189_combout\,
	combout => \b2v_inst1|MATRIZ~199_combout\);

-- Location: FF_X21_Y4_N5
\b2v_inst|inst1|shift_reg[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(106));

-- Location: FF_X20_Y4_N15
\b2v_inst1|MATRIZ[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~201_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(107));

-- Location: LCCOMB_X21_Y4_N6
\b2v_inst|inst1|shift_reg~276\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~276_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(107))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(107),
	datab => \b2v_inst|inst1|shift_reg\(106),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~276_combout\);

-- Location: LCCOMB_X21_Y6_N26
\b2v_inst1|MATRIZ~200\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~200_combout\ = (\b2v_inst1|MATRIZ~188_combout\) # ((\b2v_inst1|CJ1\(12) & \b2v_inst1|MATRIZ[102]~189_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~188_combout\,
	datac => \b2v_inst1|CJ1\(12),
	datad => \b2v_inst1|MATRIZ[102]~189_combout\,
	combout => \b2v_inst1|MATRIZ~200_combout\);

-- Location: FF_X21_Y4_N31
\b2v_inst|inst1|shift_reg[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(105));

-- Location: FF_X20_Y4_N13
\b2v_inst1|MATRIZ[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~202_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(106));

-- Location: LCCOMB_X21_Y4_N4
\b2v_inst|inst1|shift_reg~277\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~277_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(106)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(105),
	datad => \b2v_inst1|MATRIZ\(106),
	combout => \b2v_inst|inst1|shift_reg~277_combout\);

-- Location: LCCOMB_X20_Y4_N14
\b2v_inst1|MATRIZ~201\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~201_combout\ = (\b2v_inst1|MATRIZ~188_combout\) # ((\b2v_inst1|MATRIZ[102]~189_combout\ & \b2v_inst1|CJ1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~188_combout\,
	datac => \b2v_inst1|MATRIZ[102]~189_combout\,
	datad => \b2v_inst1|CJ1\(11),
	combout => \b2v_inst1|MATRIZ~201_combout\);

-- Location: FF_X21_Y4_N13
\b2v_inst|inst1|shift_reg[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~279_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(104));

-- Location: FF_X21_Y3_N1
\b2v_inst1|MATRIZ[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~203_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(105));

-- Location: LCCOMB_X21_Y4_N30
\b2v_inst|inst1|shift_reg~278\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~278_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(105))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(105),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(104),
	combout => \b2v_inst|inst1|shift_reg~278_combout\);

-- Location: LCCOMB_X20_Y4_N12
\b2v_inst1|MATRIZ~202\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~202_combout\ = (\b2v_inst1|MATRIZ~188_combout\) # ((\b2v_inst1|MATRIZ[102]~189_combout\ & \b2v_inst1|CJ1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~188_combout\,
	datac => \b2v_inst1|MATRIZ[102]~189_combout\,
	datad => \b2v_inst1|CJ1\(10),
	combout => \b2v_inst1|MATRIZ~202_combout\);

-- Location: FF_X20_Y4_N11
\b2v_inst|inst1|shift_reg[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(103));

-- Location: FF_X20_Y4_N29
\b2v_inst1|MATRIZ[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~204_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(104));

-- Location: LCCOMB_X21_Y4_N12
\b2v_inst|inst1|shift_reg~279\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~279_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(104))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(103))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(104),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(103),
	combout => \b2v_inst|inst1|shift_reg~279_combout\);

-- Location: LCCOMB_X21_Y3_N0
\b2v_inst1|MATRIZ~203\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~203_combout\ = (\b2v_inst1|MATRIZ~188_combout\) # ((\b2v_inst1|CJ1\(9) & \b2v_inst1|MATRIZ[102]~189_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~188_combout\,
	datac => \b2v_inst1|CJ1\(9),
	datad => \b2v_inst1|MATRIZ[102]~189_combout\,
	combout => \b2v_inst1|MATRIZ~203_combout\);

-- Location: FF_X21_Y4_N23
\b2v_inst|inst1|shift_reg[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(102));

-- Location: FF_X20_Y4_N31
\b2v_inst1|MATRIZ[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~205_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(103));

-- Location: LCCOMB_X20_Y4_N10
\b2v_inst|inst1|shift_reg~280\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~280_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(103))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(102))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(103),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(102),
	combout => \b2v_inst|inst1|shift_reg~280_combout\);

-- Location: LCCOMB_X20_Y4_N28
\b2v_inst1|MATRIZ~204\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~204_combout\ = (\b2v_inst1|MATRIZ[102]~183_combout\ & (\b2v_inst1|CJ1\(8) & ((!\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[102]~183_combout\ & ((\b2v_inst1|CJ1\(8)) # ((!\b2v_inst1|MATRIZ[102]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~183_combout\,
	datab => \b2v_inst1|CJ1\(8),
	datac => \b2v_inst1|MATRIZ[102]~181_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~204_combout\);

-- Location: FF_X16_Y9_N31
\b2v_inst|inst1|shift_reg[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|inst1|shift_reg~282_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(101));

-- Location: FF_X21_Y5_N9
\b2v_inst1|MATRIZ[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~206_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(102));

-- Location: LCCOMB_X21_Y4_N22
\b2v_inst|inst1|shift_reg~281\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~281_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(102)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(101),
	datad => \b2v_inst1|MATRIZ\(102),
	combout => \b2v_inst|inst1|shift_reg~281_combout\);

-- Location: LCCOMB_X20_Y4_N30
\b2v_inst1|MATRIZ~205\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~205_combout\ = (\b2v_inst1|MATRIZ~188_combout\) # ((\b2v_inst1|MATRIZ[102]~189_combout\ & \b2v_inst1|CJ1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~188_combout\,
	datac => \b2v_inst1|MATRIZ[102]~189_combout\,
	datad => \b2v_inst1|CJ1\(7),
	combout => \b2v_inst1|MATRIZ~205_combout\);

-- Location: FF_X21_Y5_N3
\b2v_inst|inst1|shift_reg[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(100));

-- Location: FF_X21_Y5_N1
\b2v_inst1|MATRIZ[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~207_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(101));

-- Location: LCCOMB_X21_Y5_N6
\b2v_inst|inst1|shift_reg~282\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~282_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(101))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(100))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(101),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(100),
	combout => \b2v_inst|inst1|shift_reg~282_combout\);

-- Location: LCCOMB_X21_Y5_N8
\b2v_inst1|MATRIZ~206\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~206_combout\ = (\b2v_inst1|MATRIZ~188_combout\) # ((\b2v_inst1|MATRIZ[102]~189_combout\ & \b2v_inst1|CJ1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~188_combout\,
	datac => \b2v_inst1|MATRIZ[102]~189_combout\,
	datad => \b2v_inst1|CJ1\(6),
	combout => \b2v_inst1|MATRIZ~206_combout\);

-- Location: FF_X21_Y4_N1
\b2v_inst|inst1|shift_reg[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(99));

-- Location: FF_X20_Y6_N13
\b2v_inst1|MATRIZ[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~208_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(100));

-- Location: LCCOMB_X21_Y5_N2
\b2v_inst|inst1|shift_reg~283\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~283_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(100))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(99))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(100),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(99),
	combout => \b2v_inst|inst1|shift_reg~283_combout\);

-- Location: LCCOMB_X21_Y5_N0
\b2v_inst1|MATRIZ~207\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~207_combout\ = (\b2v_inst1|MATRIZ[102]~183_combout\ & (((\b2v_inst1|CJ1\(5) & !\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[102]~183_combout\ & (((\b2v_inst1|CJ1\(5))) # (!\b2v_inst1|MATRIZ[102]~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~183_combout\,
	datab => \b2v_inst1|MATRIZ[102]~181_combout\,
	datac => \b2v_inst1|CJ1\(5),
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~207_combout\);

-- Location: FF_X21_Y4_N15
\b2v_inst|inst1|shift_reg[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(98));

-- Location: FF_X21_Y3_N11
\b2v_inst1|MATRIZ[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~209_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(99));

-- Location: LCCOMB_X21_Y4_N0
\b2v_inst|inst1|shift_reg~284\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~284_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(99))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(98))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(99),
	datab => \b2v_inst|inst1|shift_reg\(98),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~284_combout\);

-- Location: LCCOMB_X20_Y6_N12
\b2v_inst1|MATRIZ~208\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~208_combout\ = (\b2v_inst1|MATRIZ[102]~183_combout\ & (((!\INICIO~input_o\ & \b2v_inst1|CJ1\(4))))) # (!\b2v_inst1|MATRIZ[102]~183_combout\ & (((\b2v_inst1|CJ1\(4))) # (!\b2v_inst1|MATRIZ[102]~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~183_combout\,
	datab => \b2v_inst1|MATRIZ[102]~181_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|CJ1\(4),
	combout => \b2v_inst1|MATRIZ~208_combout\);

-- Location: FF_X19_Y6_N3
\b2v_inst|inst1|shift_reg[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(97));

-- Location: FF_X20_Y4_N25
\b2v_inst1|MATRIZ[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~210_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(98));

-- Location: LCCOMB_X21_Y4_N14
\b2v_inst|inst1|shift_reg~285\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~285_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(98)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(97)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(97),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(98),
	combout => \b2v_inst|inst1|shift_reg~285_combout\);

-- Location: LCCOMB_X21_Y3_N10
\b2v_inst1|MATRIZ~209\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~209_combout\ = (\b2v_inst1|MATRIZ~188_combout\) # ((\b2v_inst1|CJ1\(3) & \b2v_inst1|MATRIZ[102]~189_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~188_combout\,
	datac => \b2v_inst1|CJ1\(3),
	datad => \b2v_inst1|MATRIZ[102]~189_combout\,
	combout => \b2v_inst1|MATRIZ~209_combout\);

-- Location: FF_X20_Y4_N19
\b2v_inst|inst1|shift_reg[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~287_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(96));

-- Location: FF_X20_Y6_N31
\b2v_inst1|MATRIZ[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~211_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(97));

-- Location: LCCOMB_X19_Y6_N2
\b2v_inst|inst1|shift_reg~286\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~286_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(97)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(96)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(96),
	datad => \b2v_inst1|MATRIZ\(97),
	combout => \b2v_inst|inst1|shift_reg~286_combout\);

-- Location: LCCOMB_X20_Y4_N24
\b2v_inst1|MATRIZ~210\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~210_combout\ = (\b2v_inst1|MATRIZ[102]~183_combout\ & (\b2v_inst1|CJ1\(2) & ((!\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[102]~183_combout\ & ((\b2v_inst1|CJ1\(2)) # ((!\b2v_inst1|MATRIZ[102]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~183_combout\,
	datab => \b2v_inst1|CJ1\(2),
	datac => \b2v_inst1|MATRIZ[102]~181_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~210_combout\);

-- Location: FF_X21_Y4_N25
\b2v_inst|inst1|shift_reg[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~288_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(95));

-- Location: FF_X20_Y4_N1
\b2v_inst1|MATRIZ[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~212_combout\,
	ena => \b2v_inst1|MATRIZ[102]~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(96));

-- Location: LCCOMB_X20_Y4_N18
\b2v_inst|inst1|shift_reg~287\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~287_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(96))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(95))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(96),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(95),
	combout => \b2v_inst|inst1|shift_reg~287_combout\);

-- Location: LCCOMB_X20_Y6_N30
\b2v_inst1|MATRIZ~211\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~211_combout\ = (\b2v_inst1|MATRIZ~188_combout\) # ((\b2v_inst1|CJ1\(1) & \b2v_inst1|MATRIZ[102]~189_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(1),
	datab => \b2v_inst1|MATRIZ~188_combout\,
	datac => \b2v_inst1|MATRIZ[102]~189_combout\,
	combout => \b2v_inst1|MATRIZ~211_combout\);

-- Location: FF_X21_Y4_N11
\b2v_inst|inst1|shift_reg[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~289_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(94));

-- Location: FF_X16_Y6_N7
\b2v_inst1|MATRIZ[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(95));

-- Location: LCCOMB_X21_Y4_N24
\b2v_inst|inst1|shift_reg~288\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~288_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(95))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(94))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(95),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(94),
	combout => \b2v_inst|inst1|shift_reg~288_combout\);

-- Location: LCCOMB_X20_Y4_N0
\b2v_inst1|MATRIZ~212\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~212_combout\ = (\b2v_inst1|MATRIZ[102]~183_combout\ & (!\INICIO~input_o\ & ((\b2v_inst1|CJ1\(0))))) # (!\b2v_inst1|MATRIZ[102]~183_combout\ & (((\b2v_inst1|CJ1\(0)) # (!\b2v_inst1|MATRIZ[102]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~183_combout\,
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|MATRIZ[102]~181_combout\,
	datad => \b2v_inst1|CJ1\(0),
	combout => \b2v_inst1|MATRIZ~212_combout\);

-- Location: FF_X21_Y4_N21
\b2v_inst|inst1|shift_reg[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(93));

-- Location: FF_X15_Y3_N17
\b2v_inst1|MATRIZ[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~221_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(94));

-- Location: LCCOMB_X21_Y4_N10
\b2v_inst|inst1|shift_reg~289\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~289_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(94))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(93))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(94),
	datad => \b2v_inst|inst1|shift_reg\(93),
	combout => \b2v_inst|inst1|shift_reg~289_combout\);

-- Location: LCCOMB_X16_Y6_N16
\b2v_inst1|MATRIZ~213\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~213_combout\ = ((\b2v_inst1|bloqueo~q\ & \b2v_inst1|MATRIZ\(95))) # (!\INICIO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|bloqueo~q\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ\(95),
	combout => \b2v_inst1|MATRIZ~213_combout\);

-- Location: FF_X19_Y2_N23
\b2v_inst1|empatecounter2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|victoriacounter2~3_combout\,
	sload => VCC,
	ena => \b2v_inst1|empatecounter2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|empatecounter2\(1));

-- Location: FF_X19_Y2_N5
\b2v_inst1|empatecounter2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|victoriacounter2~1_combout\,
	sload => VCC,
	ena => \b2v_inst1|empatecounter2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|empatecounter2\(2));

-- Location: LCCOMB_X19_Y2_N6
\b2v_inst1|MATRIZ[88]~214\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[88]~214_combout\ = (\b2v_inst1|empatecounter2\(2)) # ((\b2v_inst1|empatecounter2\(1)) # (!\EMPATE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|empatecounter2\(2),
	datac => \b2v_inst1|empatecounter2\(1),
	datad => \EMPATE~input_o\,
	combout => \b2v_inst1|MATRIZ[88]~214_combout\);

-- Location: LCCOMB_X19_Y2_N20
\b2v_inst1|MATRIZ[88]~215\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[88]~215_combout\ = (\b2v_inst1|MATRIZ[88]~214_combout\ & (((\b2v_inst1|victoriacounter2\(2)) # (\b2v_inst1|victoriacounter2\(1))) # (!\b2v_inst1|MATRIZ~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~113_combout\,
	datab => \b2v_inst1|victoriacounter2\(2),
	datac => \b2v_inst1|victoriacounter2\(1),
	datad => \b2v_inst1|MATRIZ[88]~214_combout\,
	combout => \b2v_inst1|MATRIZ[88]~215_combout\);

-- Location: LCCOMB_X16_Y6_N6
\b2v_inst1|MATRIZ~216\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~216_combout\ = (\b2v_inst1|MATRIZ~122_combout\) # ((\b2v_inst1|MATRIZ~123_combout\ & ((\b2v_inst1|MATRIZ~213_combout\) # (!\b2v_inst1|MATRIZ[88]~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[88]~215_combout\,
	datab => \b2v_inst1|MATRIZ~123_combout\,
	datac => \b2v_inst1|MATRIZ~122_combout\,
	datad => \b2v_inst1|MATRIZ~213_combout\,
	combout => \b2v_inst1|MATRIZ~216_combout\);

-- Location: FF_X21_Y4_N19
\b2v_inst|inst1|shift_reg[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~291_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(92));

-- Location: FF_X15_Y3_N23
\b2v_inst1|MATRIZ[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~224_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(93));

-- Location: LCCOMB_X21_Y4_N20
\b2v_inst|inst1|shift_reg~290\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~290_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(93))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(92))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(93),
	datad => \b2v_inst|inst1|shift_reg\(92),
	combout => \b2v_inst|inst1|shift_reg~290_combout\);

-- Location: LCCOMB_X15_Y2_N0
\b2v_inst1|MATRIZ[88]~217\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[88]~217_combout\ = (\b2v_inst1|MATRIZ[88]~215_combout\ & !\b2v_inst1|MATRIZ[102]~100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ[88]~215_combout\,
	datad => \b2v_inst1|MATRIZ[102]~100_combout\,
	combout => \b2v_inst1|MATRIZ[88]~217_combout\);

-- Location: LCCOMB_X20_Y3_N30
\b2v_inst1|MATRIZ[88]~218\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[88]~218_combout\ = (!\b2v_inst1|Equal2~0_combout\ & (\b2v_inst1|Equal1~0_combout\ & \VF~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Equal2~0_combout\,
	datac => \b2v_inst1|Equal1~0_combout\,
	datad => \VF~input_o\,
	combout => \b2v_inst1|MATRIZ[88]~218_combout\);

-- Location: LCCOMB_X15_Y2_N26
\b2v_inst1|MATRIZ[88]~219\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[88]~219_combout\ = (\b2v_inst1|MATRIZ[88]~214_combout\ & (((\b2v_inst1|Equal0~0_combout\ & !\b2v_inst1|Equal2~0_combout\)) # (!\VF~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal0~0_combout\,
	datab => \b2v_inst1|MATRIZ[88]~214_combout\,
	datac => \VF~input_o\,
	datad => \b2v_inst1|Equal2~0_combout\,
	combout => \b2v_inst1|MATRIZ[88]~219_combout\);

-- Location: LCCOMB_X15_Y3_N4
\b2v_inst1|MATRIZ[88]~220\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[88]~220_combout\ = (\b2v_inst1|MATRIZ[88]~217_combout\ & (((!\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[88]~217_combout\ & ((\b2v_inst1|MATRIZ[88]~218_combout\) # ((\b2v_inst1|MATRIZ[88]~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[88]~218_combout\,
	datab => \b2v_inst1|MATRIZ[88]~219_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ[88]~217_combout\,
	combout => \b2v_inst1|MATRIZ[88]~220_combout\);

-- Location: LCCOMB_X15_Y3_N16
\b2v_inst1|MATRIZ~221\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~221_combout\ = (\b2v_inst1|CJ2\(22) & ((\b2v_inst1|MATRIZ[88]~220_combout\) # ((\b2v_inst1|MATRIZ~98_combout\ & \b2v_inst1|MATRIZ~336_combout\)))) # (!\b2v_inst1|CJ2\(22) & (\b2v_inst1|MATRIZ~98_combout\ & 
-- ((\b2v_inst1|MATRIZ~336_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(22),
	datab => \b2v_inst1|MATRIZ~98_combout\,
	datac => \b2v_inst1|MATRIZ[88]~220_combout\,
	datad => \b2v_inst1|MATRIZ~336_combout\,
	combout => \b2v_inst1|MATRIZ~221_combout\);

-- Location: LCCOMB_X19_Y2_N22
\b2v_inst1|MATRIZ[88]~222\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[88]~222_combout\ = (\b2v_inst1|MATRIZ[88]~214_combout\ & ((\b2v_inst1|MATRIZ[293]~108_combout\) # (!\VF~input_o\))) # (!\b2v_inst1|MATRIZ[88]~214_combout\ & (!\VF~input_o\ & \b2v_inst1|MATRIZ[293]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[88]~214_combout\,
	datab => \VF~input_o\,
	datad => \b2v_inst1|MATRIZ[293]~108_combout\,
	combout => \b2v_inst1|MATRIZ[88]~222_combout\);

-- Location: LCCOMB_X15_Y3_N26
\b2v_inst1|MATRIZ[88]~223\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[88]~223_combout\ = (((!\b2v_inst1|MATRIZ[88]~337_combout\) # (!\INICIO~input_o\)) # (!\b2v_inst1|MATRIZ[88]~222_combout\)) # (!\b2v_inst1|bloqueo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|bloqueo~q\,
	datab => \b2v_inst1|MATRIZ[88]~222_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ[88]~337_combout\,
	combout => \b2v_inst1|MATRIZ[88]~223_combout\);

-- Location: LCCOMB_X19_Y2_N4
\b2v_inst1|empatecounter2[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|empatecounter2[1]~0_combout\ = (\VF~input_o\) # ((\VICTORIA~input_o\ & !\TURNO~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VICTORIA~input_o\,
	datab => \VF~input_o\,
	datad => \TURNO~input_o\,
	combout => \b2v_inst1|empatecounter2[1]~0_combout\);

-- Location: FF_X18_Y3_N7
\b2v_inst|inst1|shift_reg[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(91));

-- Location: FF_X15_Y3_N1
\b2v_inst1|MATRIZ[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~225_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(92));

-- Location: LCCOMB_X21_Y4_N18
\b2v_inst|inst1|shift_reg~291\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~291_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(92)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(91)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(91),
	datad => \b2v_inst1|MATRIZ\(92),
	combout => \b2v_inst|inst1|shift_reg~291_combout\);

-- Location: LCCOMB_X15_Y3_N22
\b2v_inst1|MATRIZ~224\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~224_combout\ = (\b2v_inst1|CJ2\(21) & ((\b2v_inst1|MATRIZ[88]~220_combout\) # ((\b2v_inst1|MATRIZ~98_combout\ & \b2v_inst1|MATRIZ~336_combout\)))) # (!\b2v_inst1|CJ2\(21) & (\b2v_inst1|MATRIZ~98_combout\ & 
-- ((\b2v_inst1|MATRIZ~336_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(21),
	datab => \b2v_inst1|MATRIZ~98_combout\,
	datac => \b2v_inst1|MATRIZ[88]~220_combout\,
	datad => \b2v_inst1|MATRIZ~336_combout\,
	combout => \b2v_inst1|MATRIZ~224_combout\);

-- Location: FF_X14_Y3_N21
\b2v_inst|inst1|shift_reg[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(90));

-- Location: FF_X15_Y3_N11
\b2v_inst1|MATRIZ[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~226_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(91));

-- Location: LCCOMB_X18_Y3_N6
\b2v_inst|inst1|shift_reg~292\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~292_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(91))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(90))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(91),
	datab => \b2v_inst|inst1|shift_reg\(90),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~292_combout\);

-- Location: LCCOMB_X15_Y3_N0
\b2v_inst1|MATRIZ~225\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~225_combout\ = (\b2v_inst1|MATRIZ~336_combout\ & ((\b2v_inst1|MATRIZ~98_combout\) # ((\b2v_inst1|CJ2\(20) & \b2v_inst1|MATRIZ[88]~220_combout\)))) # (!\b2v_inst1|MATRIZ~336_combout\ & (\b2v_inst1|CJ2\(20) & 
-- (\b2v_inst1|MATRIZ[88]~220_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datab => \b2v_inst1|CJ2\(20),
	datac => \b2v_inst1|MATRIZ[88]~220_combout\,
	datad => \b2v_inst1|MATRIZ~98_combout\,
	combout => \b2v_inst1|MATRIZ~225_combout\);

-- Location: FF_X14_Y3_N23
\b2v_inst|inst1|shift_reg[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~294_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(89));

-- Location: FF_X15_Y3_N9
\b2v_inst1|MATRIZ[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~227_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(90));

-- Location: LCCOMB_X14_Y3_N20
\b2v_inst|inst1|shift_reg~293\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~293_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(90)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(89),
	datab => \b2v_inst1|MATRIZ\(90),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~293_combout\);

-- Location: LCCOMB_X15_Y3_N10
\b2v_inst1|MATRIZ~226\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~226_combout\ = (\b2v_inst1|MATRIZ~336_combout\ & ((\b2v_inst1|MATRIZ~98_combout\) # ((\b2v_inst1|MATRIZ[88]~220_combout\ & \b2v_inst1|CJ2\(19))))) # (!\b2v_inst1|MATRIZ~336_combout\ & (((\b2v_inst1|MATRIZ[88]~220_combout\ & 
-- \b2v_inst1|CJ2\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datab => \b2v_inst1|MATRIZ~98_combout\,
	datac => \b2v_inst1|MATRIZ[88]~220_combout\,
	datad => \b2v_inst1|CJ2\(19),
	combout => \b2v_inst1|MATRIZ~226_combout\);

-- Location: FF_X14_Y3_N1
\b2v_inst|inst1|shift_reg[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(88));

-- Location: FF_X15_Y3_N7
\b2v_inst1|MATRIZ[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~228_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(89));

-- Location: LCCOMB_X14_Y3_N22
\b2v_inst|inst1|shift_reg~294\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~294_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(89)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(88)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(88),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(89),
	combout => \b2v_inst|inst1|shift_reg~294_combout\);

-- Location: LCCOMB_X15_Y3_N8
\b2v_inst1|MATRIZ~227\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~227_combout\ = (\b2v_inst1|MATRIZ~336_combout\ & ((\b2v_inst1|MATRIZ~98_combout\) # ((\b2v_inst1|MATRIZ[88]~220_combout\ & \b2v_inst1|CJ2\(18))))) # (!\b2v_inst1|MATRIZ~336_combout\ & (((\b2v_inst1|MATRIZ[88]~220_combout\ & 
-- \b2v_inst1|CJ2\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datab => \b2v_inst1|MATRIZ~98_combout\,
	datac => \b2v_inst1|MATRIZ[88]~220_combout\,
	datad => \b2v_inst1|CJ2\(18),
	combout => \b2v_inst1|MATRIZ~227_combout\);

-- Location: FF_X14_Y3_N11
\b2v_inst|inst1|shift_reg[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~296_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(87));

-- Location: FF_X15_Y3_N21
\b2v_inst1|MATRIZ[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~229_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(88));

-- Location: LCCOMB_X14_Y3_N0
\b2v_inst|inst1|shift_reg~295\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~295_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(88))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(87))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(88),
	datad => \b2v_inst|inst1|shift_reg\(87),
	combout => \b2v_inst|inst1|shift_reg~295_combout\);

-- Location: LCCOMB_X15_Y3_N6
\b2v_inst1|MATRIZ~228\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~228_combout\ = (\b2v_inst1|CJ2\(17) & ((\b2v_inst1|MATRIZ[88]~220_combout\) # ((\b2v_inst1|MATRIZ~98_combout\ & \b2v_inst1|MATRIZ~336_combout\)))) # (!\b2v_inst1|CJ2\(17) & (\b2v_inst1|MATRIZ~98_combout\ & 
-- ((\b2v_inst1|MATRIZ~336_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(17),
	datab => \b2v_inst1|MATRIZ~98_combout\,
	datac => \b2v_inst1|MATRIZ[88]~220_combout\,
	datad => \b2v_inst1|MATRIZ~336_combout\,
	combout => \b2v_inst1|MATRIZ~228_combout\);

-- Location: FF_X14_Y3_N13
\b2v_inst|inst1|shift_reg[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(86));

-- Location: FF_X14_Y3_N3
\b2v_inst1|MATRIZ[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~230_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(87));

-- Location: LCCOMB_X14_Y3_N10
\b2v_inst|inst1|shift_reg~296\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~296_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(87)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(86)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(86),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(87),
	combout => \b2v_inst|inst1|shift_reg~296_combout\);

-- Location: LCCOMB_X15_Y3_N20
\b2v_inst1|MATRIZ~229\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~229_combout\ = (\b2v_inst1|MATRIZ~336_combout\ & ((\b2v_inst1|MATRIZ~98_combout\) # ((\b2v_inst1|MATRIZ[88]~220_combout\ & \b2v_inst1|CJ2\(16))))) # (!\b2v_inst1|MATRIZ~336_combout\ & (((\b2v_inst1|MATRIZ[88]~220_combout\ & 
-- \b2v_inst1|CJ2\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datab => \b2v_inst1|MATRIZ~98_combout\,
	datac => \b2v_inst1|MATRIZ[88]~220_combout\,
	datad => \b2v_inst1|CJ2\(16),
	combout => \b2v_inst1|MATRIZ~229_combout\);

-- Location: FF_X14_Y3_N25
\b2v_inst|inst1|shift_reg[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(85));

-- Location: FF_X15_Y3_N19
\b2v_inst1|MATRIZ[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~231_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(86));

-- Location: LCCOMB_X14_Y3_N12
\b2v_inst|inst1|shift_reg~297\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~297_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(86)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(85),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(86),
	combout => \b2v_inst|inst1|shift_reg~297_combout\);

-- Location: LCCOMB_X14_Y3_N2
\b2v_inst1|MATRIZ~230\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~230_combout\ = (\b2v_inst1|MATRIZ~336_combout\ & ((\b2v_inst1|MATRIZ~98_combout\) # ((\b2v_inst1|CJ2\(15) & \b2v_inst1|MATRIZ[88]~220_combout\)))) # (!\b2v_inst1|MATRIZ~336_combout\ & (((\b2v_inst1|CJ2\(15) & 
-- \b2v_inst1|MATRIZ[88]~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datab => \b2v_inst1|MATRIZ~98_combout\,
	datac => \b2v_inst1|CJ2\(15),
	datad => \b2v_inst1|MATRIZ[88]~220_combout\,
	combout => \b2v_inst1|MATRIZ~230_combout\);

-- Location: FF_X14_Y3_N27
\b2v_inst|inst1|shift_reg[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(84));

-- Location: FF_X15_Y3_N13
\b2v_inst1|MATRIZ[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~232_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(85));

-- Location: LCCOMB_X14_Y3_N24
\b2v_inst|inst1|shift_reg~298\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~298_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(85)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(84)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(84),
	datab => \b2v_inst1|MATRIZ\(85),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~298_combout\);

-- Location: LCCOMB_X15_Y3_N18
\b2v_inst1|MATRIZ~231\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~231_combout\ = (\b2v_inst1|MATRIZ~336_combout\) # ((\b2v_inst1|MATRIZ[88]~220_combout\ & \b2v_inst1|CJ2\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[88]~220_combout\,
	datac => \b2v_inst1|CJ2\(14),
	datad => \b2v_inst1|MATRIZ~336_combout\,
	combout => \b2v_inst1|MATRIZ~231_combout\);

-- Location: FF_X13_Y3_N25
\b2v_inst|inst1|shift_reg[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(83));

-- Location: FF_X14_Y3_N17
\b2v_inst1|MATRIZ[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~233_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(84));

-- Location: LCCOMB_X14_Y3_N26
\b2v_inst|inst1|shift_reg~299\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~299_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(84)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(83)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(83),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(84),
	combout => \b2v_inst|inst1|shift_reg~299_combout\);

-- Location: LCCOMB_X15_Y3_N12
\b2v_inst1|MATRIZ~232\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~232_combout\ = (\b2v_inst1|MATRIZ~336_combout\ & ((\b2v_inst1|MATRIZ~98_combout\) # ((\b2v_inst1|MATRIZ[88]~220_combout\ & \b2v_inst1|CJ2\(13))))) # (!\b2v_inst1|MATRIZ~336_combout\ & (((\b2v_inst1|MATRIZ[88]~220_combout\ & 
-- \b2v_inst1|CJ2\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datab => \b2v_inst1|MATRIZ~98_combout\,
	datac => \b2v_inst1|MATRIZ[88]~220_combout\,
	datad => \b2v_inst1|CJ2\(13),
	combout => \b2v_inst1|MATRIZ~232_combout\);

-- Location: FF_X13_Y3_N3
\b2v_inst|inst1|shift_reg[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~301_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(82));

-- Location: FF_X14_Y3_N15
\b2v_inst1|MATRIZ[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~234_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(83));

-- Location: LCCOMB_X13_Y3_N24
\b2v_inst|inst1|shift_reg~300\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~300_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(83))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(82))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(83),
	datad => \b2v_inst|inst1|shift_reg\(82),
	combout => \b2v_inst|inst1|shift_reg~300_combout\);

-- Location: LCCOMB_X14_Y3_N16
\b2v_inst1|MATRIZ~233\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~233_combout\ = (\b2v_inst1|MATRIZ~336_combout\ & ((\b2v_inst1|MATRIZ~98_combout\) # ((\b2v_inst1|CJ2\(12) & \b2v_inst1|MATRIZ[88]~220_combout\)))) # (!\b2v_inst1|MATRIZ~336_combout\ & (((\b2v_inst1|CJ2\(12) & 
-- \b2v_inst1|MATRIZ[88]~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datab => \b2v_inst1|MATRIZ~98_combout\,
	datac => \b2v_inst1|CJ2\(12),
	datad => \b2v_inst1|MATRIZ[88]~220_combout\,
	combout => \b2v_inst1|MATRIZ~233_combout\);

-- Location: FF_X13_Y2_N1
\b2v_inst|inst1|shift_reg[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(81));

-- Location: FF_X14_Y3_N5
\b2v_inst1|MATRIZ[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~235_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(82));

-- Location: LCCOMB_X13_Y3_N2
\b2v_inst|inst1|shift_reg~301\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~301_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(82))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(81))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(82),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(81),
	combout => \b2v_inst|inst1|shift_reg~301_combout\);

-- Location: LCCOMB_X14_Y3_N14
\b2v_inst1|MATRIZ~234\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~234_combout\ = (\b2v_inst1|MATRIZ~336_combout\) # ((\b2v_inst1|CJ2\(11) & \b2v_inst1|MATRIZ[88]~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datac => \b2v_inst1|CJ2\(11),
	datad => \b2v_inst1|MATRIZ[88]~220_combout\,
	combout => \b2v_inst1|MATRIZ~234_combout\);

-- Location: FF_X13_Y2_N11
\b2v_inst|inst1|shift_reg[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~303_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(80));

-- Location: FF_X14_Y3_N7
\b2v_inst1|MATRIZ[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~236_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(81));

-- Location: LCCOMB_X13_Y2_N0
\b2v_inst|inst1|shift_reg~302\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~302_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(81))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(80))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst1|MATRIZ\(81),
	datad => \b2v_inst|inst1|shift_reg\(80),
	combout => \b2v_inst|inst1|shift_reg~302_combout\);

-- Location: LCCOMB_X14_Y3_N4
\b2v_inst1|MATRIZ~235\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~235_combout\ = (\b2v_inst1|MATRIZ~336_combout\) # ((\b2v_inst1|CJ2\(10) & \b2v_inst1|MATRIZ[88]~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datac => \b2v_inst1|CJ2\(10),
	datad => \b2v_inst1|MATRIZ[88]~220_combout\,
	combout => \b2v_inst1|MATRIZ~235_combout\);

-- Location: FF_X13_Y2_N25
\b2v_inst|inst1|shift_reg[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~304_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(79));

-- Location: FF_X15_Y3_N15
\b2v_inst1|MATRIZ[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~237_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(80));

-- Location: LCCOMB_X13_Y2_N10
\b2v_inst|inst1|shift_reg~303\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~303_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(80))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(79))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(80),
	datad => \b2v_inst|inst1|shift_reg\(79),
	combout => \b2v_inst|inst1|shift_reg~303_combout\);

-- Location: LCCOMB_X14_Y3_N6
\b2v_inst1|MATRIZ~236\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~236_combout\ = (\b2v_inst1|MATRIZ~336_combout\) # ((\b2v_inst1|CJ2\(9) & \b2v_inst1|MATRIZ[88]~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datac => \b2v_inst1|CJ2\(9),
	datad => \b2v_inst1|MATRIZ[88]~220_combout\,
	combout => \b2v_inst1|MATRIZ~236_combout\);

-- Location: FF_X13_Y2_N23
\b2v_inst|inst1|shift_reg[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~305_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(78));

-- Location: FF_X15_Y3_N29
\b2v_inst1|MATRIZ[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~238_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(79));

-- Location: LCCOMB_X13_Y2_N24
\b2v_inst|inst1|shift_reg~304\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~304_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(79)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(78)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(78),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(79),
	combout => \b2v_inst|inst1|shift_reg~304_combout\);

-- Location: LCCOMB_X15_Y3_N14
\b2v_inst1|MATRIZ~237\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~237_combout\ = (\b2v_inst1|MATRIZ~336_combout\ & ((\b2v_inst1|MATRIZ~98_combout\) # ((\b2v_inst1|CJ2\(8) & \b2v_inst1|MATRIZ[88]~220_combout\)))) # (!\b2v_inst1|MATRIZ~336_combout\ & (\b2v_inst1|CJ2\(8) & 
-- (\b2v_inst1|MATRIZ[88]~220_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datab => \b2v_inst1|CJ2\(8),
	datac => \b2v_inst1|MATRIZ[88]~220_combout\,
	datad => \b2v_inst1|MATRIZ~98_combout\,
	combout => \b2v_inst1|MATRIZ~237_combout\);

-- Location: FF_X13_Y2_N13
\b2v_inst|inst1|shift_reg[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~306_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(77));

-- Location: FF_X14_Y3_N9
\b2v_inst1|MATRIZ[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~239_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(78));

-- Location: LCCOMB_X13_Y2_N22
\b2v_inst|inst1|shift_reg~305\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~305_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(78)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(77)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(77),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(78),
	combout => \b2v_inst|inst1|shift_reg~305_combout\);

-- Location: LCCOMB_X15_Y3_N28
\b2v_inst1|MATRIZ~238\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~238_combout\ = (\b2v_inst1|MATRIZ~336_combout\ & ((\b2v_inst1|MATRIZ~98_combout\) # ((\b2v_inst1|MATRIZ[88]~220_combout\ & \b2v_inst1|CJ2\(7))))) # (!\b2v_inst1|MATRIZ~336_combout\ & (((\b2v_inst1|MATRIZ[88]~220_combout\ & 
-- \b2v_inst1|CJ2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datab => \b2v_inst1|MATRIZ~98_combout\,
	datac => \b2v_inst1|MATRIZ[88]~220_combout\,
	datad => \b2v_inst1|CJ2\(7),
	combout => \b2v_inst1|MATRIZ~238_combout\);

-- Location: FF_X13_Y2_N3
\b2v_inst|inst1|shift_reg[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~307_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(76));

-- Location: FF_X14_Y3_N19
\b2v_inst1|MATRIZ[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~240_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(77));

-- Location: LCCOMB_X13_Y2_N12
\b2v_inst|inst1|shift_reg~306\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~306_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(77))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(76))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst1|MATRIZ\(77),
	datad => \b2v_inst|inst1|shift_reg\(76),
	combout => \b2v_inst|inst1|shift_reg~306_combout\);

-- Location: LCCOMB_X14_Y3_N8
\b2v_inst1|MATRIZ~239\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~239_combout\ = (\b2v_inst1|MATRIZ~336_combout\) # ((\b2v_inst1|CJ2\(6) & \b2v_inst1|MATRIZ[88]~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datac => \b2v_inst1|CJ2\(6),
	datad => \b2v_inst1|MATRIZ[88]~220_combout\,
	combout => \b2v_inst1|MATRIZ~239_combout\);

-- Location: FF_X13_Y2_N29
\b2v_inst|inst1|shift_reg[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~308_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(75));

-- Location: FF_X14_Y3_N29
\b2v_inst1|MATRIZ[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~241_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(76));

-- Location: LCCOMB_X13_Y2_N2
\b2v_inst|inst1|shift_reg~307\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~307_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(76)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(75)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst|inst1|shift_reg\(75),
	datac => \b2v_inst1|MATRIZ\(76),
	combout => \b2v_inst|inst1|shift_reg~307_combout\);

-- Location: LCCOMB_X14_Y3_N18
\b2v_inst1|MATRIZ~240\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~240_combout\ = (\b2v_inst1|MATRIZ~336_combout\) # ((\b2v_inst1|CJ2\(5) & \b2v_inst1|MATRIZ[88]~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datac => \b2v_inst1|CJ2\(5),
	datad => \b2v_inst1|MATRIZ[88]~220_combout\,
	combout => \b2v_inst1|MATRIZ~240_combout\);

-- Location: FF_X13_Y2_N19
\b2v_inst|inst1|shift_reg[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~309_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(74));

-- Location: FF_X14_Y3_N31
\b2v_inst1|MATRIZ[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~242_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(75));

-- Location: LCCOMB_X13_Y2_N28
\b2v_inst|inst1|shift_reg~308\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~308_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(75))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(74))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(75),
	datad => \b2v_inst|inst1|shift_reg\(74),
	combout => \b2v_inst|inst1|shift_reg~308_combout\);

-- Location: LCCOMB_X14_Y3_N28
\b2v_inst1|MATRIZ~241\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~241_combout\ = (\b2v_inst1|MATRIZ~336_combout\ & ((\b2v_inst1|MATRIZ~98_combout\) # ((\b2v_inst1|CJ2\(4) & \b2v_inst1|MATRIZ[88]~220_combout\)))) # (!\b2v_inst1|MATRIZ~336_combout\ & (((\b2v_inst1|CJ2\(4) & 
-- \b2v_inst1|MATRIZ[88]~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datab => \b2v_inst1|MATRIZ~98_combout\,
	datac => \b2v_inst1|CJ2\(4),
	datad => \b2v_inst1|MATRIZ[88]~220_combout\,
	combout => \b2v_inst1|MATRIZ~241_combout\);

-- Location: FF_X13_Y2_N21
\b2v_inst|inst1|shift_reg[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(73));

-- Location: FF_X15_Y3_N31
\b2v_inst1|MATRIZ[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~243_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(74));

-- Location: LCCOMB_X13_Y2_N18
\b2v_inst|inst1|shift_reg~309\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~309_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(74))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(73))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(74),
	datad => \b2v_inst|inst1|shift_reg\(73),
	combout => \b2v_inst|inst1|shift_reg~309_combout\);

-- Location: LCCOMB_X14_Y3_N30
\b2v_inst1|MATRIZ~242\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~242_combout\ = (\b2v_inst1|MATRIZ~336_combout\) # ((\b2v_inst1|CJ2\(3) & \b2v_inst1|MATRIZ[88]~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datac => \b2v_inst1|CJ2\(3),
	datad => \b2v_inst1|MATRIZ[88]~220_combout\,
	combout => \b2v_inst1|MATRIZ~242_combout\);

-- Location: FF_X13_Y2_N27
\b2v_inst|inst1|shift_reg[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(72));

-- Location: FF_X15_Y3_N25
\b2v_inst1|MATRIZ[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~244_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(73));

-- Location: LCCOMB_X13_Y2_N20
\b2v_inst|inst1|shift_reg~310\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~310_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(73)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(72),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(73),
	combout => \b2v_inst|inst1|shift_reg~310_combout\);

-- Location: LCCOMB_X15_Y3_N30
\b2v_inst1|MATRIZ~243\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~243_combout\ = (\b2v_inst1|CJ2\(2) & ((\b2v_inst1|MATRIZ[88]~220_combout\) # ((\b2v_inst1|MATRIZ~98_combout\ & \b2v_inst1|MATRIZ~336_combout\)))) # (!\b2v_inst1|CJ2\(2) & (\b2v_inst1|MATRIZ~98_combout\ & 
-- ((\b2v_inst1|MATRIZ~336_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(2),
	datab => \b2v_inst1|MATRIZ~98_combout\,
	datac => \b2v_inst1|MATRIZ[88]~220_combout\,
	datad => \b2v_inst1|MATRIZ~336_combout\,
	combout => \b2v_inst1|MATRIZ~243_combout\);

-- Location: FF_X13_Y2_N9
\b2v_inst|inst1|shift_reg[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(71));

-- Location: FF_X15_Y3_N3
\b2v_inst1|MATRIZ[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~245_combout\,
	ena => \b2v_inst1|MATRIZ[88]~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(72));

-- Location: LCCOMB_X13_Y2_N26
\b2v_inst|inst1|shift_reg~311\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~311_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(72)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst|inst1|shift_reg\(71),
	datac => \b2v_inst1|MATRIZ\(72),
	combout => \b2v_inst|inst1|shift_reg~311_combout\);

-- Location: LCCOMB_X15_Y3_N24
\b2v_inst1|MATRIZ~244\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~244_combout\ = (\b2v_inst1|MATRIZ~336_combout\ & ((\b2v_inst1|MATRIZ~98_combout\) # ((\b2v_inst1|MATRIZ[88]~220_combout\ & \b2v_inst1|CJ2\(1))))) # (!\b2v_inst1|MATRIZ~336_combout\ & (((\b2v_inst1|MATRIZ[88]~220_combout\ & 
-- \b2v_inst1|CJ2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datab => \b2v_inst1|MATRIZ~98_combout\,
	datac => \b2v_inst1|MATRIZ[88]~220_combout\,
	datad => \b2v_inst1|CJ2\(1),
	combout => \b2v_inst1|MATRIZ~244_combout\);

-- Location: FF_X14_Y2_N5
\b2v_inst|inst1|shift_reg[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~313_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(70));

-- Location: FF_X17_Y2_N13
\b2v_inst1|MATRIZ[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~249_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(71));

-- Location: LCCOMB_X13_Y2_N8
\b2v_inst|inst1|shift_reg~312\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~312_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(71))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(70))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(71),
	datad => \b2v_inst|inst1|shift_reg\(70),
	combout => \b2v_inst|inst1|shift_reg~312_combout\);

-- Location: LCCOMB_X15_Y3_N2
\b2v_inst1|MATRIZ~245\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~245_combout\ = (\b2v_inst1|MATRIZ~336_combout\ & ((\b2v_inst1|MATRIZ~98_combout\) # ((\b2v_inst1|MATRIZ[88]~220_combout\ & \b2v_inst1|CJ2\(0))))) # (!\b2v_inst1|MATRIZ~336_combout\ & (((\b2v_inst1|MATRIZ[88]~220_combout\ & 
-- \b2v_inst1|CJ2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~336_combout\,
	datab => \b2v_inst1|MATRIZ~98_combout\,
	datac => \b2v_inst1|MATRIZ[88]~220_combout\,
	datad => \b2v_inst1|CJ2\(0),
	combout => \b2v_inst1|MATRIZ~245_combout\);

-- Location: FF_X14_Y2_N11
\b2v_inst|inst1|shift_reg[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~314_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(69));

-- Location: FF_X16_Y2_N5
\b2v_inst1|MATRIZ[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~252_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(70));

-- Location: LCCOMB_X14_Y2_N4
\b2v_inst|inst1|shift_reg~313\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~313_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(70)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(69),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(70),
	combout => \b2v_inst|inst1|shift_reg~313_combout\);

-- Location: LCCOMB_X20_Y2_N22
\b2v_inst1|MATRIZ[51]~246\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[51]~246_combout\ = (\b2v_inst1|victoriacounter2\(2)) # (((\TURNO~input_o\) # (!\VICTORIA~input_o\)) # (!\b2v_inst1|victoriacounter2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|victoriacounter2\(2),
	datab => \b2v_inst1|victoriacounter2\(0),
	datac => \TURNO~input_o\,
	datad => \VICTORIA~input_o\,
	combout => \b2v_inst1|MATRIZ[51]~246_combout\);

-- Location: FF_X19_Y2_N11
\b2v_inst1|empatecounter2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|empatecounter2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|empatecounter2\(0));

-- Location: LCCOMB_X19_Y2_N8
\b2v_inst1|MATRIZ[51]~247\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[51]~247_combout\ = ((\b2v_inst1|empatecounter2\(2)) # (!\EMPATE~input_o\)) # (!\b2v_inst1|empatecounter2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|empatecounter2\(0),
	datac => \b2v_inst1|empatecounter2\(2),
	datad => \EMPATE~input_o\,
	combout => \b2v_inst1|MATRIZ[51]~247_combout\);

-- Location: LCCOMB_X16_Y2_N14
\b2v_inst1|MATRIZ~248\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~248_combout\ = (!\b2v_inst1|MATRIZ[102]~100_combout\ & (\b2v_inst1|MATRIZ[51]~246_combout\ & \b2v_inst1|MATRIZ[51]~247_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~100_combout\,
	datac => \b2v_inst1|MATRIZ[51]~246_combout\,
	datad => \b2v_inst1|MATRIZ[51]~247_combout\,
	combout => \b2v_inst1|MATRIZ~248_combout\);

-- Location: LCCOMB_X17_Y2_N12
\b2v_inst1|MATRIZ~249\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~249_combout\ = (((\b2v_inst1|bloqueo~q\ & \b2v_inst1|MATRIZ\(71))) # (!\b2v_inst1|MATRIZ~248_combout\)) # (!\INICIO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|bloqueo~q\,
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|MATRIZ\(71),
	datad => \b2v_inst1|MATRIZ~248_combout\,
	combout => \b2v_inst1|MATRIZ~249_combout\);

-- Location: FF_X14_Y2_N21
\b2v_inst|inst1|shift_reg[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~315_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(68));

-- Location: FF_X16_Y2_N17
\b2v_inst1|MATRIZ[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~255_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(69));

-- Location: LCCOMB_X14_Y2_N10
\b2v_inst|inst1|shift_reg~314\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~314_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(69))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(68))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(69),
	datab => \b2v_inst|inst1|shift_reg\(68),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~314_combout\);

-- Location: LCCOMB_X15_Y2_N24
\b2v_inst1|MATRIZ[51]~250\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[51]~250_combout\ = (\b2v_inst1|MATRIZ[51]~247_combout\ & (((\b2v_inst1|Equal0~0_combout\ & !\b2v_inst1|Equal2~0_combout\)) # (!\VF~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal0~0_combout\,
	datab => \b2v_inst1|Equal2~0_combout\,
	datac => \VF~input_o\,
	datad => \b2v_inst1|MATRIZ[51]~247_combout\,
	combout => \b2v_inst1|MATRIZ[51]~250_combout\);

-- Location: LCCOMB_X16_Y2_N22
\b2v_inst1|MATRIZ[51]~251\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[51]~251_combout\ = (\b2v_inst1|MATRIZ~248_combout\ & (((!\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ~248_combout\ & ((\b2v_inst1|MATRIZ[88]~218_combout\) # ((\b2v_inst1|MATRIZ[51]~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[88]~218_combout\,
	datab => \b2v_inst1|MATRIZ[51]~250_combout\,
	datac => \b2v_inst1|MATRIZ~248_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[51]~251_combout\);

-- Location: LCCOMB_X16_Y2_N4
\b2v_inst1|MATRIZ~252\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~252_combout\ = (\b2v_inst1|MATRIZ[88]~218_combout\ & (\b2v_inst1|CJ2\(22) & (\b2v_inst1|MATRIZ[51]~251_combout\))) # (!\b2v_inst1|MATRIZ[88]~218_combout\ & ((\b2v_inst1|MATRIZ~338_combout\) # ((\b2v_inst1|CJ2\(22) & 
-- \b2v_inst1|MATRIZ[51]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[88]~218_combout\,
	datab => \b2v_inst1|CJ2\(22),
	datac => \b2v_inst1|MATRIZ[51]~251_combout\,
	datad => \b2v_inst1|MATRIZ~338_combout\,
	combout => \b2v_inst1|MATRIZ~252_combout\);

-- Location: LCCOMB_X19_Y2_N14
\b2v_inst1|MATRIZ[51]~253\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[51]~253_combout\ = (\VF~input_o\ & (\b2v_inst1|MATRIZ[51]~247_combout\ & \b2v_inst1|MATRIZ[293]~108_combout\)) # (!\VF~input_o\ & ((\b2v_inst1|MATRIZ[51]~247_combout\) # (\b2v_inst1|MATRIZ[293]~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VF~input_o\,
	datac => \b2v_inst1|MATRIZ[51]~247_combout\,
	datad => \b2v_inst1|MATRIZ[293]~108_combout\,
	combout => \b2v_inst1|MATRIZ[51]~253_combout\);

-- Location: LCCOMB_X16_Y2_N12
\b2v_inst1|MATRIZ[51]~254\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[51]~254_combout\ = (((!\INICIO~input_o\) # (!\b2v_inst1|MATRIZ[51]~246_combout\)) # (!\b2v_inst1|MATRIZ[51]~253_combout\)) # (!\b2v_inst1|bloqueo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|bloqueo~q\,
	datab => \b2v_inst1|MATRIZ[51]~253_combout\,
	datac => \b2v_inst1|MATRIZ[51]~246_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[51]~254_combout\);

-- Location: LCCOMB_X19_Y2_N10
\b2v_inst1|empatecounter2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|empatecounter2~1_combout\ = (!\VF~input_o\ & ((\b2v_inst1|MATRIZ~113_combout\ & ((!\b2v_inst1|victoriacounter2\(0)))) # (!\b2v_inst1|MATRIZ~113_combout\ & (\b2v_inst1|empatecounter2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~113_combout\,
	datab => \VF~input_o\,
	datac => \b2v_inst1|empatecounter2\(0),
	datad => \b2v_inst1|victoriacounter2\(0),
	combout => \b2v_inst1|empatecounter2~1_combout\);

-- Location: FF_X14_Y2_N23
\b2v_inst|inst1|shift_reg[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(67));

-- Location: FF_X15_Y2_N3
\b2v_inst1|MATRIZ[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~257_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(68));

-- Location: LCCOMB_X14_Y2_N20
\b2v_inst|inst1|shift_reg~315\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~315_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(68)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(67),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(68),
	combout => \b2v_inst|inst1|shift_reg~315_combout\);

-- Location: LCCOMB_X16_Y2_N16
\b2v_inst1|MATRIZ~255\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~255_combout\ = (\b2v_inst1|MATRIZ[88]~218_combout\ & (((\b2v_inst1|MATRIZ[51]~251_combout\ & \b2v_inst1|CJ2\(21))))) # (!\b2v_inst1|MATRIZ[88]~218_combout\ & ((\b2v_inst1|MATRIZ~338_combout\) # ((\b2v_inst1|MATRIZ[51]~251_combout\ & 
-- \b2v_inst1|CJ2\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[88]~218_combout\,
	datab => \b2v_inst1|MATRIZ~338_combout\,
	datac => \b2v_inst1|MATRIZ[51]~251_combout\,
	datad => \b2v_inst1|CJ2\(21),
	combout => \b2v_inst1|MATRIZ~255_combout\);

-- Location: FF_X14_Y2_N17
\b2v_inst|inst1|shift_reg[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~317_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(66));

-- Location: FF_X16_Y2_N11
\b2v_inst1|MATRIZ[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~258_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(67));

-- Location: LCCOMB_X14_Y2_N22
\b2v_inst|inst1|shift_reg~316\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~316_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(67)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(66)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(66),
	datac => \b2v_inst1|MATRIZ\(67),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~316_combout\);

-- Location: LCCOMB_X16_Y2_N8
\b2v_inst1|MATRIZ~256\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~256_combout\ = (!\b2v_inst1|MATRIZ[88]~218_combout\ & (!\b2v_inst1|MATRIZ~248_combout\ & !\b2v_inst1|MATRIZ[51]~250_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[88]~218_combout\,
	datac => \b2v_inst1|MATRIZ~248_combout\,
	datad => \b2v_inst1|MATRIZ[51]~250_combout\,
	combout => \b2v_inst1|MATRIZ~256_combout\);

-- Location: LCCOMB_X15_Y2_N2
\b2v_inst1|MATRIZ~257\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~257_combout\ = (\b2v_inst1|MATRIZ~256_combout\) # ((\b2v_inst1|CJ2\(20) & \b2v_inst1|MATRIZ[51]~251_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(20),
	datac => \b2v_inst1|MATRIZ~256_combout\,
	datad => \b2v_inst1|MATRIZ[51]~251_combout\,
	combout => \b2v_inst1|MATRIZ~257_combout\);

-- Location: FF_X14_Y2_N19
\b2v_inst|inst1|shift_reg[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(65));

-- Location: FF_X15_Y2_N13
\b2v_inst1|MATRIZ[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~259_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(66));

-- Location: LCCOMB_X14_Y2_N16
\b2v_inst|inst1|shift_reg~317\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~317_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(66)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(65),
	datac => \b2v_inst1|MATRIZ\(66),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~317_combout\);

-- Location: LCCOMB_X16_Y2_N10
\b2v_inst1|MATRIZ~258\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~258_combout\ = (\b2v_inst1|MATRIZ[88]~218_combout\ & (\b2v_inst1|MATRIZ[51]~251_combout\ & (\b2v_inst1|CJ2\(19)))) # (!\b2v_inst1|MATRIZ[88]~218_combout\ & ((\b2v_inst1|MATRIZ~338_combout\) # ((\b2v_inst1|MATRIZ[51]~251_combout\ & 
-- \b2v_inst1|CJ2\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[88]~218_combout\,
	datab => \b2v_inst1|MATRIZ[51]~251_combout\,
	datac => \b2v_inst1|CJ2\(19),
	datad => \b2v_inst1|MATRIZ~338_combout\,
	combout => \b2v_inst1|MATRIZ~258_combout\);

-- Location: FF_X14_Y2_N13
\b2v_inst|inst1|shift_reg[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~319_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(64));

-- Location: FF_X15_Y2_N31
\b2v_inst1|MATRIZ[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~260_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(65));

-- Location: LCCOMB_X14_Y2_N18
\b2v_inst|inst1|shift_reg~318\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~318_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(65)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(64)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(64),
	datac => \b2v_inst1|MATRIZ\(65),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~318_combout\);

-- Location: LCCOMB_X15_Y2_N12
\b2v_inst1|MATRIZ~259\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~259_combout\ = (\b2v_inst1|MATRIZ~256_combout\) # ((\b2v_inst1|CJ2\(18) & \b2v_inst1|MATRIZ[51]~251_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|CJ2\(18),
	datac => \b2v_inst1|MATRIZ~256_combout\,
	datad => \b2v_inst1|MATRIZ[51]~251_combout\,
	combout => \b2v_inst1|MATRIZ~259_combout\);

-- Location: FF_X14_Y2_N7
\b2v_inst|inst1|shift_reg[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(63));

-- Location: FF_X15_Y2_N9
\b2v_inst1|MATRIZ[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~261_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(64));

-- Location: LCCOMB_X14_Y2_N12
\b2v_inst|inst1|shift_reg~319\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~319_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(64)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(63),
	datab => \b2v_inst1|MATRIZ\(64),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~319_combout\);

-- Location: LCCOMB_X15_Y2_N30
\b2v_inst1|MATRIZ~260\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~260_combout\ = (\b2v_inst1|MATRIZ~256_combout\) # ((\b2v_inst1|CJ2\(17) & \b2v_inst1|MATRIZ[51]~251_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|CJ2\(17),
	datac => \b2v_inst1|MATRIZ~256_combout\,
	datad => \b2v_inst1|MATRIZ[51]~251_combout\,
	combout => \b2v_inst1|MATRIZ~260_combout\);

-- Location: FF_X14_Y2_N9
\b2v_inst|inst1|shift_reg[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(62));

-- Location: FF_X15_Y2_N7
\b2v_inst1|MATRIZ[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~262_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(63));

-- Location: LCCOMB_X14_Y2_N6
\b2v_inst|inst1|shift_reg~320\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~320_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(63))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(63),
	datab => \b2v_inst|inst1|shift_reg\(62),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~320_combout\);

-- Location: LCCOMB_X15_Y2_N8
\b2v_inst1|MATRIZ~261\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~261_combout\ = (\b2v_inst1|MATRIZ~338_combout\ & (((\b2v_inst1|CJ2\(16) & \b2v_inst1|MATRIZ[51]~251_combout\)) # (!\b2v_inst1|MATRIZ[88]~218_combout\))) # (!\b2v_inst1|MATRIZ~338_combout\ & (((\b2v_inst1|CJ2\(16) & 
-- \b2v_inst1|MATRIZ[51]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~338_combout\,
	datab => \b2v_inst1|MATRIZ[88]~218_combout\,
	datac => \b2v_inst1|CJ2\(16),
	datad => \b2v_inst1|MATRIZ[51]~251_combout\,
	combout => \b2v_inst1|MATRIZ~261_combout\);

-- Location: FF_X14_Y2_N15
\b2v_inst|inst1|shift_reg[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~322_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(61));

-- Location: FF_X15_Y2_N21
\b2v_inst1|MATRIZ[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~263_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(62));

-- Location: LCCOMB_X14_Y2_N8
\b2v_inst|inst1|shift_reg~321\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~321_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(62))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(62),
	datab => \b2v_inst|inst1|shift_reg\(61),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~321_combout\);

-- Location: LCCOMB_X15_Y2_N6
\b2v_inst1|MATRIZ~262\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~262_combout\ = (\b2v_inst1|MATRIZ~338_combout\ & (((\b2v_inst1|CJ2\(15) & \b2v_inst1|MATRIZ[51]~251_combout\)) # (!\b2v_inst1|MATRIZ[88]~218_combout\))) # (!\b2v_inst1|MATRIZ~338_combout\ & (((\b2v_inst1|CJ2\(15) & 
-- \b2v_inst1|MATRIZ[51]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~338_combout\,
	datab => \b2v_inst1|MATRIZ[88]~218_combout\,
	datac => \b2v_inst1|CJ2\(15),
	datad => \b2v_inst1|MATRIZ[51]~251_combout\,
	combout => \b2v_inst1|MATRIZ~262_combout\);

-- Location: FF_X14_Y2_N25
\b2v_inst|inst1|shift_reg[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~323_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(60));

-- Location: FF_X15_Y2_N15
\b2v_inst1|MATRIZ[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~264_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(61));

-- Location: LCCOMB_X14_Y2_N14
\b2v_inst|inst1|shift_reg~322\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~322_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(61)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(60),
	datac => \b2v_inst1|MATRIZ\(61),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~322_combout\);

-- Location: LCCOMB_X15_Y2_N20
\b2v_inst1|MATRIZ~263\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~263_combout\ = (\b2v_inst1|MATRIZ~338_combout\ & (((\b2v_inst1|CJ2\(14) & \b2v_inst1|MATRIZ[51]~251_combout\)) # (!\b2v_inst1|MATRIZ[88]~218_combout\))) # (!\b2v_inst1|MATRIZ~338_combout\ & (((\b2v_inst1|CJ2\(14) & 
-- \b2v_inst1|MATRIZ[51]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~338_combout\,
	datab => \b2v_inst1|MATRIZ[88]~218_combout\,
	datac => \b2v_inst1|CJ2\(14),
	datad => \b2v_inst1|MATRIZ[51]~251_combout\,
	combout => \b2v_inst1|MATRIZ~263_combout\);

-- Location: FF_X14_Y2_N27
\b2v_inst|inst1|shift_reg[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~324_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(59));

-- Location: FF_X15_Y2_N5
\b2v_inst1|MATRIZ[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~265_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(60));

-- Location: LCCOMB_X14_Y2_N24
\b2v_inst|inst1|shift_reg~323\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~323_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(60)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(59),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(60),
	combout => \b2v_inst|inst1|shift_reg~323_combout\);

-- Location: LCCOMB_X15_Y2_N14
\b2v_inst1|MATRIZ~264\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~264_combout\ = (\b2v_inst1|MATRIZ~256_combout\) # ((\b2v_inst1|CJ2\(13) & \b2v_inst1|MATRIZ[51]~251_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|CJ2\(13),
	datac => \b2v_inst1|MATRIZ~256_combout\,
	datad => \b2v_inst1|MATRIZ[51]~251_combout\,
	combout => \b2v_inst1|MATRIZ~264_combout\);

-- Location: FF_X14_Y2_N1
\b2v_inst|inst1|shift_reg[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(58));

-- Location: FF_X15_Y2_N19
\b2v_inst1|MATRIZ[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~266_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(59));

-- Location: LCCOMB_X14_Y2_N26
\b2v_inst|inst1|shift_reg~324\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~324_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(59))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(59),
	datac => \b2v_inst|inst1|shift_reg\(58),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~324_combout\);

-- Location: LCCOMB_X15_Y2_N4
\b2v_inst1|MATRIZ~265\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~265_combout\ = (\b2v_inst1|MATRIZ~338_combout\ & (((\b2v_inst1|CJ2\(12) & \b2v_inst1|MATRIZ[51]~251_combout\)) # (!\b2v_inst1|MATRIZ[88]~218_combout\))) # (!\b2v_inst1|MATRIZ~338_combout\ & (((\b2v_inst1|CJ2\(12) & 
-- \b2v_inst1|MATRIZ[51]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~338_combout\,
	datab => \b2v_inst1|MATRIZ[88]~218_combout\,
	datac => \b2v_inst1|CJ2\(12),
	datad => \b2v_inst1|MATRIZ[51]~251_combout\,
	combout => \b2v_inst1|MATRIZ~265_combout\);

-- Location: FF_X14_Y2_N31
\b2v_inst|inst1|shift_reg[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(57));

-- Location: FF_X16_Y2_N27
\b2v_inst1|MATRIZ[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~267_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(58));

-- Location: LCCOMB_X14_Y2_N0
\b2v_inst|inst1|shift_reg~325\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~325_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(58)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(57),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(58),
	combout => \b2v_inst|inst1|shift_reg~325_combout\);

-- Location: LCCOMB_X15_Y2_N18
\b2v_inst1|MATRIZ~266\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~266_combout\ = (\b2v_inst1|MATRIZ~338_combout\ & (((\b2v_inst1|MATRIZ[51]~251_combout\ & \b2v_inst1|CJ2\(11))) # (!\b2v_inst1|MATRIZ[88]~218_combout\))) # (!\b2v_inst1|MATRIZ~338_combout\ & (\b2v_inst1|MATRIZ[51]~251_combout\ & 
-- ((\b2v_inst1|CJ2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~338_combout\,
	datab => \b2v_inst1|MATRIZ[51]~251_combout\,
	datac => \b2v_inst1|MATRIZ[88]~218_combout\,
	datad => \b2v_inst1|CJ2\(11),
	combout => \b2v_inst1|MATRIZ~266_combout\);

-- Location: FF_X14_Y2_N29
\b2v_inst|inst1|shift_reg[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(56));

-- Location: FF_X15_Y2_N17
\b2v_inst1|MATRIZ[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~268_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(57));

-- Location: LCCOMB_X14_Y2_N30
\b2v_inst|inst1|shift_reg~326\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~326_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(57))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(57),
	datac => \b2v_inst|inst1|shift_reg\(56),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~326_combout\);

-- Location: LCCOMB_X16_Y2_N26
\b2v_inst1|MATRIZ~267\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~267_combout\ = (\b2v_inst1|MATRIZ~338_combout\ & (((\b2v_inst1|MATRIZ[51]~251_combout\ & \b2v_inst1|CJ2\(10))) # (!\b2v_inst1|MATRIZ[88]~218_combout\))) # (!\b2v_inst1|MATRIZ~338_combout\ & (\b2v_inst1|MATRIZ[51]~251_combout\ & 
-- (\b2v_inst1|CJ2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~338_combout\,
	datab => \b2v_inst1|MATRIZ[51]~251_combout\,
	datac => \b2v_inst1|CJ2\(10),
	datad => \b2v_inst1|MATRIZ[88]~218_combout\,
	combout => \b2v_inst1|MATRIZ~267_combout\);

-- Location: FF_X14_Y2_N3
\b2v_inst|inst1|shift_reg[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(55));

-- Location: FF_X15_Y2_N23
\b2v_inst1|MATRIZ[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~269_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(56));

-- Location: LCCOMB_X14_Y2_N28
\b2v_inst|inst1|shift_reg~327\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~327_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(56))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(56),
	datac => \b2v_inst|inst1|shift_reg\(55),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~327_combout\);

-- Location: LCCOMB_X15_Y2_N16
\b2v_inst1|MATRIZ~268\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~268_combout\ = (\b2v_inst1|MATRIZ~256_combout\) # ((\b2v_inst1|CJ2\(9) & \b2v_inst1|MATRIZ[51]~251_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~256_combout\,
	datac => \b2v_inst1|CJ2\(9),
	datad => \b2v_inst1|MATRIZ[51]~251_combout\,
	combout => \b2v_inst1|MATRIZ~268_combout\);

-- Location: FF_X15_Y1_N9
\b2v_inst|inst1|shift_reg[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(54));

-- Location: FF_X15_Y2_N29
\b2v_inst1|MATRIZ[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~270_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(55));

-- Location: LCCOMB_X14_Y2_N2
\b2v_inst|inst1|shift_reg~328\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~328_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(55))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(55),
	datac => \b2v_inst|inst1|shift_reg\(54),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~328_combout\);

-- Location: LCCOMB_X15_Y2_N22
\b2v_inst1|MATRIZ~269\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~269_combout\ = (\b2v_inst1|MATRIZ~338_combout\ & (((\b2v_inst1|CJ2\(8) & \b2v_inst1|MATRIZ[51]~251_combout\)) # (!\b2v_inst1|MATRIZ[88]~218_combout\))) # (!\b2v_inst1|MATRIZ~338_combout\ & (\b2v_inst1|CJ2\(8) & 
-- ((\b2v_inst1|MATRIZ[51]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~338_combout\,
	datab => \b2v_inst1|CJ2\(8),
	datac => \b2v_inst1|MATRIZ[88]~218_combout\,
	datad => \b2v_inst1|MATRIZ[51]~251_combout\,
	combout => \b2v_inst1|MATRIZ~269_combout\);

-- Location: FF_X15_Y1_N3
\b2v_inst|inst1|shift_reg[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(53));

-- Location: FF_X16_Y2_N25
\b2v_inst1|MATRIZ[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~271_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(54));

-- Location: LCCOMB_X15_Y1_N8
\b2v_inst|inst1|shift_reg~329\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~329_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(54))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(54),
	datab => \b2v_inst|inst1|shift_reg\(53),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~329_combout\);

-- Location: LCCOMB_X15_Y2_N28
\b2v_inst1|MATRIZ~270\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~270_combout\ = (\b2v_inst1|MATRIZ~256_combout\) # ((\b2v_inst1|CJ2\(7) & \b2v_inst1|MATRIZ[51]~251_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(7),
	datac => \b2v_inst1|MATRIZ~256_combout\,
	datad => \b2v_inst1|MATRIZ[51]~251_combout\,
	combout => \b2v_inst1|MATRIZ~270_combout\);

-- Location: FF_X15_Y1_N25
\b2v_inst|inst1|shift_reg[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(52));

-- Location: FF_X16_Y2_N31
\b2v_inst1|MATRIZ[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~272_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(53));

-- Location: LCCOMB_X15_Y1_N2
\b2v_inst|inst1|shift_reg~330\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~330_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(53)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(52),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(53),
	combout => \b2v_inst|inst1|shift_reg~330_combout\);

-- Location: LCCOMB_X16_Y2_N24
\b2v_inst1|MATRIZ~271\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~271_combout\ = (\b2v_inst1|MATRIZ[88]~218_combout\ & (\b2v_inst1|CJ2\(6) & (\b2v_inst1|MATRIZ[51]~251_combout\))) # (!\b2v_inst1|MATRIZ[88]~218_combout\ & ((\b2v_inst1|MATRIZ~338_combout\) # ((\b2v_inst1|CJ2\(6) & 
-- \b2v_inst1|MATRIZ[51]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[88]~218_combout\,
	datab => \b2v_inst1|CJ2\(6),
	datac => \b2v_inst1|MATRIZ[51]~251_combout\,
	datad => \b2v_inst1|MATRIZ~338_combout\,
	combout => \b2v_inst1|MATRIZ~271_combout\);

-- Location: FF_X15_Y1_N31
\b2v_inst|inst1|shift_reg[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(51));

-- Location: FF_X16_Y2_N1
\b2v_inst1|MATRIZ[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~273_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(52));

-- Location: LCCOMB_X15_Y1_N24
\b2v_inst|inst1|shift_reg~331\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~331_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(52)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(51),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(52),
	combout => \b2v_inst|inst1|shift_reg~331_combout\);

-- Location: LCCOMB_X16_Y2_N30
\b2v_inst1|MATRIZ~272\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~272_combout\ = (\b2v_inst1|MATRIZ[88]~218_combout\ & (\b2v_inst1|CJ2\(5) & (\b2v_inst1|MATRIZ[51]~251_combout\))) # (!\b2v_inst1|MATRIZ[88]~218_combout\ & ((\b2v_inst1|MATRIZ~338_combout\) # ((\b2v_inst1|CJ2\(5) & 
-- \b2v_inst1|MATRIZ[51]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[88]~218_combout\,
	datab => \b2v_inst1|CJ2\(5),
	datac => \b2v_inst1|MATRIZ[51]~251_combout\,
	datad => \b2v_inst1|MATRIZ~338_combout\,
	combout => \b2v_inst1|MATRIZ~272_combout\);

-- Location: FF_X15_Y1_N1
\b2v_inst|inst1|shift_reg[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~333_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(50));

-- Location: FF_X16_Y2_N3
\b2v_inst1|MATRIZ[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~274_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(51));

-- Location: LCCOMB_X15_Y1_N30
\b2v_inst|inst1|shift_reg~332\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~332_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(51)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(50),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(51),
	combout => \b2v_inst|inst1|shift_reg~332_combout\);

-- Location: LCCOMB_X16_Y2_N0
\b2v_inst1|MATRIZ~273\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~273_combout\ = (\b2v_inst1|MATRIZ~256_combout\) # ((\b2v_inst1|MATRIZ[51]~251_combout\ & \b2v_inst1|CJ2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[51]~251_combout\,
	datab => \b2v_inst1|MATRIZ~256_combout\,
	datad => \b2v_inst1|CJ2\(4),
	combout => \b2v_inst1|MATRIZ~273_combout\);

-- Location: FF_X15_Y1_N23
\b2v_inst|inst1|shift_reg[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~334_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(49));

-- Location: FF_X16_Y2_N21
\b2v_inst1|MATRIZ[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~275_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(50));

-- Location: LCCOMB_X15_Y1_N0
\b2v_inst|inst1|shift_reg~333\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~333_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(50)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(49),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(50),
	combout => \b2v_inst|inst1|shift_reg~333_combout\);

-- Location: LCCOMB_X16_Y2_N2
\b2v_inst1|MATRIZ~274\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~274_combout\ = (\b2v_inst1|MATRIZ~256_combout\) # ((\b2v_inst1|MATRIZ[51]~251_combout\ & \b2v_inst1|CJ2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~256_combout\,
	datac => \b2v_inst1|MATRIZ[51]~251_combout\,
	datad => \b2v_inst1|CJ2\(3),
	combout => \b2v_inst1|MATRIZ~274_combout\);

-- Location: FF_X15_Y1_N13
\b2v_inst|inst1|shift_reg[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(48));

-- Location: FF_X16_Y2_N19
\b2v_inst1|MATRIZ[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~276_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(49));

-- Location: LCCOMB_X15_Y1_N22
\b2v_inst|inst1|shift_reg~334\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~334_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(49)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(48),
	datab => \b2v_inst1|MATRIZ\(49),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~334_combout\);

-- Location: LCCOMB_X16_Y2_N20
\b2v_inst1|MATRIZ~275\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~275_combout\ = (\b2v_inst1|MATRIZ[88]~218_combout\ & (\b2v_inst1|CJ2\(2) & (\b2v_inst1|MATRIZ[51]~251_combout\))) # (!\b2v_inst1|MATRIZ[88]~218_combout\ & ((\b2v_inst1|MATRIZ~338_combout\) # ((\b2v_inst1|CJ2\(2) & 
-- \b2v_inst1|MATRIZ[51]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[88]~218_combout\,
	datab => \b2v_inst1|CJ2\(2),
	datac => \b2v_inst1|MATRIZ[51]~251_combout\,
	datad => \b2v_inst1|MATRIZ~338_combout\,
	combout => \b2v_inst1|MATRIZ~275_combout\);

-- Location: FF_X15_Y1_N27
\b2v_inst|inst1|shift_reg[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(47));

-- Location: FF_X16_Y2_N29
\b2v_inst1|MATRIZ[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~277_combout\,
	ena => \b2v_inst1|MATRIZ[51]~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(48));

-- Location: LCCOMB_X15_Y1_N12
\b2v_inst|inst1|shift_reg~335\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~335_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(48)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(47),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(48),
	combout => \b2v_inst|inst1|shift_reg~335_combout\);

-- Location: LCCOMB_X16_Y2_N18
\b2v_inst1|MATRIZ~276\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~276_combout\ = (\b2v_inst1|MATRIZ~338_combout\ & (((\b2v_inst1|MATRIZ[51]~251_combout\ & \b2v_inst1|CJ2\(1))) # (!\b2v_inst1|MATRIZ[88]~218_combout\))) # (!\b2v_inst1|MATRIZ~338_combout\ & (\b2v_inst1|MATRIZ[51]~251_combout\ & 
-- (\b2v_inst1|CJ2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~338_combout\,
	datab => \b2v_inst1|MATRIZ[51]~251_combout\,
	datac => \b2v_inst1|CJ2\(1),
	datad => \b2v_inst1|MATRIZ[88]~218_combout\,
	combout => \b2v_inst1|MATRIZ~276_combout\);

-- Location: FF_X15_Y1_N29
\b2v_inst|inst1|shift_reg[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~337_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(46));

-- Location: FF_X15_Y1_N11
\b2v_inst1|MATRIZ[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(47));

-- Location: LCCOMB_X15_Y1_N26
\b2v_inst|inst1|shift_reg~336\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~336_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(47))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(47),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(46),
	combout => \b2v_inst|inst1|shift_reg~336_combout\);

-- Location: LCCOMB_X16_Y2_N28
\b2v_inst1|MATRIZ~277\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~277_combout\ = (\b2v_inst1|MATRIZ~256_combout\) # ((\b2v_inst1|MATRIZ[51]~251_combout\ & \b2v_inst1|CJ2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~256_combout\,
	datac => \b2v_inst1|MATRIZ[51]~251_combout\,
	datad => \b2v_inst1|CJ2\(0),
	combout => \b2v_inst1|MATRIZ~277_combout\);

-- Location: FF_X15_Y1_N21
\b2v_inst|inst1|shift_reg[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(45));

-- Location: FF_X18_Y1_N11
\b2v_inst1|MATRIZ[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~285_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(46));

-- Location: LCCOMB_X15_Y1_N28
\b2v_inst|inst1|shift_reg~337\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~337_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(46))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(46),
	datad => \b2v_inst|inst1|shift_reg\(45),
	combout => \b2v_inst|inst1|shift_reg~337_combout\);

-- Location: LCCOMB_X19_Y2_N0
\b2v_inst1|MATRIZ~278\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~278_combout\ = (!\b2v_inst1|empatecounter2\(0) & (\b2v_inst1|empatecounter2\(1) & \EMPATE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|empatecounter2\(0),
	datac => \b2v_inst1|empatecounter2\(1),
	datad => \EMPATE~input_o\,
	combout => \b2v_inst1|MATRIZ~278_combout\);

-- Location: LCCOMB_X19_Y2_N18
\b2v_inst1|MATRIZ~279\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~279_combout\ = (\VICTORIA~input_o\ & (!\b2v_inst1|victoriacounter2\(0) & (\b2v_inst1|victoriacounter2\(1) & !\TURNO~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VICTORIA~input_o\,
	datab => \b2v_inst1|victoriacounter2\(0),
	datac => \b2v_inst1|victoriacounter2\(1),
	datad => \TURNO~input_o\,
	combout => \b2v_inst1|MATRIZ~279_combout\);

-- Location: LCCOMB_X19_Y2_N12
\b2v_inst1|MATRIZ[24]~280\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[24]~280_combout\ = (!\b2v_inst1|MATRIZ~279_combout\ & ((\b2v_inst1|MATRIZ[293]~108_combout\ & ((!\b2v_inst1|MATRIZ~278_combout\) # (!\VF~input_o\))) # (!\b2v_inst1|MATRIZ[293]~108_combout\ & (!\VF~input_o\ & 
-- !\b2v_inst1|MATRIZ~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~279_combout\,
	datab => \b2v_inst1|MATRIZ[293]~108_combout\,
	datac => \VF~input_o\,
	datad => \b2v_inst1|MATRIZ~278_combout\,
	combout => \b2v_inst1|MATRIZ[24]~280_combout\);

-- Location: LCCOMB_X15_Y1_N10
\b2v_inst1|MATRIZ~281\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~281_combout\ = (((\b2v_inst1|bloqueo~q\ & \b2v_inst1|MATRIZ\(47))) # (!\b2v_inst1|MATRIZ[24]~280_combout\)) # (!\INICIO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|bloqueo~q\,
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|MATRIZ\(47),
	datad => \b2v_inst1|MATRIZ[24]~280_combout\,
	combout => \b2v_inst1|MATRIZ~281_combout\);

-- Location: FF_X15_Y1_N19
\b2v_inst|inst1|shift_reg[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(44));

-- Location: FF_X17_Y1_N21
\b2v_inst1|MATRIZ[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~286_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(45));

-- Location: LCCOMB_X15_Y1_N20
\b2v_inst|inst1|shift_reg~338\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~338_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(45))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(45),
	datad => \b2v_inst|inst1|shift_reg\(44),
	combout => \b2v_inst|inst1|shift_reg~338_combout\);

-- Location: LCCOMB_X19_Y3_N26
\b2v_inst1|MATRIZ[24]~282\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[24]~282_combout\ = (\b2v_inst1|Equal1~0_combout\) # ((!\b2v_inst1|MATRIZ~278_combout\ & \b2v_inst1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal1~0_combout\,
	datab => \b2v_inst1|MATRIZ~278_combout\,
	datad => \b2v_inst1|Equal0~0_combout\,
	combout => \b2v_inst1|MATRIZ[24]~282_combout\);

-- Location: LCCOMB_X19_Y3_N12
\b2v_inst1|MATRIZ[24]~283\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[24]~283_combout\ = (\VF~input_o\ & (\b2v_inst1|MATRIZ[24]~282_combout\ & (!\b2v_inst1|Equal2~0_combout\))) # (!\VF~input_o\ & (((!\b2v_inst1|MATRIZ~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[24]~282_combout\,
	datab => \b2v_inst1|Equal2~0_combout\,
	datac => \VF~input_o\,
	datad => \b2v_inst1|MATRIZ~278_combout\,
	combout => \b2v_inst1|MATRIZ[24]~283_combout\);

-- Location: LCCOMB_X19_Y2_N30
\b2v_inst1|MATRIZ[24]~284\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[24]~284_combout\ = (!\b2v_inst1|MATRIZ[102]~100_combout\ & (!\b2v_inst1|MATRIZ~279_combout\ & !\b2v_inst1|MATRIZ~278_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~100_combout\,
	datab => \b2v_inst1|MATRIZ~279_combout\,
	datad => \b2v_inst1|MATRIZ~278_combout\,
	combout => \b2v_inst1|MATRIZ[24]~284_combout\);

-- Location: LCCOMB_X18_Y1_N10
\b2v_inst1|MATRIZ~285\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~285_combout\ = (\b2v_inst1|MATRIZ[24]~284_combout\ & (((!\INICIO~input_o\ & \b2v_inst1|CJ2\(22))))) # (!\b2v_inst1|MATRIZ[24]~284_combout\ & (((\b2v_inst1|CJ2\(22))) # (!\b2v_inst1|MATRIZ[24]~283_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[24]~283_combout\,
	datab => \b2v_inst1|MATRIZ[24]~284_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|CJ2\(22),
	combout => \b2v_inst1|MATRIZ~285_combout\);

-- Location: FF_X15_Y1_N17
\b2v_inst|inst1|shift_reg[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~340_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(43));

-- Location: FF_X16_Y1_N7
\b2v_inst1|MATRIZ[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~289_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(44));

-- Location: LCCOMB_X15_Y1_N18
\b2v_inst|inst1|shift_reg~339\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~339_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(44)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(43),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(44),
	combout => \b2v_inst|inst1|shift_reg~339_combout\);

-- Location: LCCOMB_X17_Y1_N20
\b2v_inst1|MATRIZ~286\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~286_combout\ = (\b2v_inst1|MATRIZ[24]~284_combout\ & (!\INICIO~input_o\ & ((\b2v_inst1|CJ2\(21))))) # (!\b2v_inst1|MATRIZ[24]~284_combout\ & (((\b2v_inst1|CJ2\(21)) # (!\b2v_inst1|MATRIZ[24]~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INICIO~input_o\,
	datab => \b2v_inst1|MATRIZ[24]~283_combout\,
	datac => \b2v_inst1|MATRIZ[24]~284_combout\,
	datad => \b2v_inst1|CJ2\(21),
	combout => \b2v_inst1|MATRIZ~286_combout\);

-- Location: FF_X15_Y1_N15
\b2v_inst|inst1|shift_reg[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~341_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(42));

-- Location: FF_X16_Y1_N25
\b2v_inst1|MATRIZ[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~290_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(43));

-- Location: LCCOMB_X15_Y1_N16
\b2v_inst|inst1|shift_reg~340\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~340_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(43)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(42),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(43),
	combout => \b2v_inst|inst1|shift_reg~340_combout\);

-- Location: LCCOMB_X17_Y2_N10
\b2v_inst1|MATRIZ~287\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~287_combout\ = (!\b2v_inst1|MATRIZ[24]~284_combout\ & (!\b2v_inst1|MATRIZ[24]~283_combout\ & \b2v_inst1|MATRIZ~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[24]~284_combout\,
	datac => \b2v_inst1|MATRIZ[24]~283_combout\,
	datad => \b2v_inst1|MATRIZ~98_combout\,
	combout => \b2v_inst1|MATRIZ~287_combout\);

-- Location: LCCOMB_X16_Y1_N10
\b2v_inst1|MATRIZ[24]~288\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[24]~288_combout\ = (\b2v_inst1|MATRIZ[24]~284_combout\ & ((!\INICIO~input_o\))) # (!\b2v_inst1|MATRIZ[24]~284_combout\ & (\b2v_inst1|MATRIZ[24]~283_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[24]~284_combout\,
	datab => \b2v_inst1|MATRIZ[24]~283_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[24]~288_combout\);

-- Location: LCCOMB_X16_Y1_N6
\b2v_inst1|MATRIZ~289\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~289_combout\ = (\b2v_inst1|MATRIZ~287_combout\) # ((\b2v_inst1|CJ2\(20) & \b2v_inst1|MATRIZ[24]~288_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(20),
	datab => \b2v_inst1|MATRIZ~287_combout\,
	datad => \b2v_inst1|MATRIZ[24]~288_combout\,
	combout => \b2v_inst1|MATRIZ~289_combout\);

-- Location: FF_X19_Y1_N5
\b2v_inst|inst1|shift_reg[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~342_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(41));

-- Location: FF_X16_Y1_N9
\b2v_inst1|MATRIZ[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~291_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(42));

-- Location: LCCOMB_X15_Y1_N14
\b2v_inst|inst1|shift_reg~341\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~341_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(42))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(42),
	datad => \b2v_inst|inst1|shift_reg\(41),
	combout => \b2v_inst|inst1|shift_reg~341_combout\);

-- Location: LCCOMB_X16_Y1_N24
\b2v_inst1|MATRIZ~290\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~290_combout\ = (\b2v_inst1|CJ2\(19) & (((!\b2v_inst1|MATRIZ[24]~284_combout\)) # (!\INICIO~input_o\))) # (!\b2v_inst1|CJ2\(19) & (((!\b2v_inst1|MATRIZ[24]~283_combout\ & !\b2v_inst1|MATRIZ[24]~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INICIO~input_o\,
	datab => \b2v_inst1|MATRIZ[24]~283_combout\,
	datac => \b2v_inst1|CJ2\(19),
	datad => \b2v_inst1|MATRIZ[24]~284_combout\,
	combout => \b2v_inst1|MATRIZ~290_combout\);

-- Location: FF_X18_Y9_N19
\b2v_inst|inst1|shift_reg[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~343_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(40));

-- Location: FF_X16_Y1_N27
\b2v_inst1|MATRIZ[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~292_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(41));

-- Location: LCCOMB_X19_Y1_N4
\b2v_inst|inst1|shift_reg~342\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~342_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(41))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(41),
	datad => \b2v_inst|inst1|shift_reg\(40),
	combout => \b2v_inst|inst1|shift_reg~342_combout\);

-- Location: LCCOMB_X16_Y1_N8
\b2v_inst1|MATRIZ~291\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~291_combout\ = (\b2v_inst1|MATRIZ[24]~284_combout\ & (((\b2v_inst1|CJ2\(18) & !\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[24]~284_combout\ & (((\b2v_inst1|CJ2\(18))) # (!\b2v_inst1|MATRIZ[24]~283_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[24]~284_combout\,
	datab => \b2v_inst1|MATRIZ[24]~283_combout\,
	datac => \b2v_inst1|CJ2\(18),
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~291_combout\);

-- Location: FF_X18_Y9_N21
\b2v_inst|inst1|shift_reg[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(39));

-- Location: FF_X17_Y1_N3
\b2v_inst1|MATRIZ[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~293_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(40));

-- Location: LCCOMB_X18_Y9_N18
\b2v_inst|inst1|shift_reg~343\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~343_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(40))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(40),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(39),
	combout => \b2v_inst|inst1|shift_reg~343_combout\);

-- Location: LCCOMB_X16_Y1_N26
\b2v_inst1|MATRIZ~292\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~292_combout\ = (\b2v_inst1|MATRIZ[24]~284_combout\ & (((!\INICIO~input_o\ & \b2v_inst1|CJ2\(17))))) # (!\b2v_inst1|MATRIZ[24]~284_combout\ & (((\b2v_inst1|CJ2\(17))) # (!\b2v_inst1|MATRIZ[24]~283_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[24]~284_combout\,
	datab => \b2v_inst1|MATRIZ[24]~283_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|CJ2\(17),
	combout => \b2v_inst1|MATRIZ~292_combout\);

-- Location: FF_X19_Y9_N3
\b2v_inst|inst1|shift_reg[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(38));

-- Location: FF_X17_Y1_N9
\b2v_inst1|MATRIZ[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~294_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(39));

-- Location: LCCOMB_X18_Y9_N20
\b2v_inst|inst1|shift_reg~344\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~344_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(39))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(39),
	datad => \b2v_inst|inst1|shift_reg\(38),
	combout => \b2v_inst|inst1|shift_reg~344_combout\);

-- Location: LCCOMB_X17_Y1_N2
\b2v_inst1|MATRIZ~293\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~293_combout\ = (\b2v_inst1|CJ2\(16) & (((!\b2v_inst1|MATRIZ[24]~284_combout\)) # (!\INICIO~input_o\))) # (!\b2v_inst1|CJ2\(16) & (((!\b2v_inst1|MATRIZ[24]~284_combout\ & !\b2v_inst1|MATRIZ[24]~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(16),
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|MATRIZ[24]~284_combout\,
	datad => \b2v_inst1|MATRIZ[24]~283_combout\,
	combout => \b2v_inst1|MATRIZ~293_combout\);

-- Location: FF_X16_Y1_N5
\b2v_inst|inst1|shift_reg[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~346_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(37));

-- Location: FF_X17_Y1_N23
\b2v_inst1|MATRIZ[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~295_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(38));

-- Location: LCCOMB_X17_Y5_N4
\b2v_inst|inst1|shift_reg~345\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~345_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(38)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(37),
	datab => \b2v_inst1|MATRIZ\(38),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~345_combout\);

-- Location: LCCOMB_X17_Y1_N8
\b2v_inst1|MATRIZ~294\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~294_combout\ = (\b2v_inst1|MATRIZ~287_combout\) # ((\b2v_inst1|CJ2\(15) & \b2v_inst1|MATRIZ[24]~288_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~287_combout\,
	datac => \b2v_inst1|CJ2\(15),
	datad => \b2v_inst1|MATRIZ[24]~288_combout\,
	combout => \b2v_inst1|MATRIZ~294_combout\);

-- Location: FF_X16_Y1_N3
\b2v_inst|inst1|shift_reg[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(36));

-- Location: FF_X16_Y1_N13
\b2v_inst1|MATRIZ[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~296_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(37));

-- Location: LCCOMB_X16_Y1_N4
\b2v_inst|inst1|shift_reg~346\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~346_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(37))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(37),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(36),
	combout => \b2v_inst|inst1|shift_reg~346_combout\);

-- Location: LCCOMB_X17_Y1_N22
\b2v_inst1|MATRIZ~295\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~295_combout\ = (\b2v_inst1|CJ2\(14) & (((!\b2v_inst1|MATRIZ[24]~284_combout\)) # (!\INICIO~input_o\))) # (!\b2v_inst1|CJ2\(14) & (((!\b2v_inst1|MATRIZ[24]~284_combout\ & !\b2v_inst1|MATRIZ[24]~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INICIO~input_o\,
	datab => \b2v_inst1|CJ2\(14),
	datac => \b2v_inst1|MATRIZ[24]~284_combout\,
	datad => \b2v_inst1|MATRIZ[24]~283_combout\,
	combout => \b2v_inst1|MATRIZ~295_combout\);

-- Location: FF_X16_Y1_N15
\b2v_inst|inst1|shift_reg[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~348_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(35));

-- Location: FF_X17_Y1_N29
\b2v_inst1|MATRIZ[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~297_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(36));

-- Location: LCCOMB_X16_Y1_N2
\b2v_inst|inst1|shift_reg~347\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~347_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(36)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(35),
	datad => \b2v_inst1|MATRIZ\(36),
	combout => \b2v_inst|inst1|shift_reg~347_combout\);

-- Location: LCCOMB_X16_Y1_N12
\b2v_inst1|MATRIZ~296\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~296_combout\ = (\b2v_inst1|MATRIZ~287_combout\) # ((\b2v_inst1|CJ2\(13) & \b2v_inst1|MATRIZ[24]~288_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(13),
	datab => \b2v_inst1|MATRIZ~287_combout\,
	datad => \b2v_inst1|MATRIZ[24]~288_combout\,
	combout => \b2v_inst1|MATRIZ~296_combout\);

-- Location: FF_X16_Y1_N1
\b2v_inst|inst1|shift_reg[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(34));

-- Location: FF_X16_Y1_N23
\b2v_inst1|MATRIZ[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~298_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(35));

-- Location: LCCOMB_X16_Y1_N14
\b2v_inst|inst1|shift_reg~348\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~348_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(35))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(35),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(34),
	combout => \b2v_inst|inst1|shift_reg~348_combout\);

-- Location: LCCOMB_X17_Y1_N28
\b2v_inst1|MATRIZ~297\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~297_combout\ = (\b2v_inst1|MATRIZ~287_combout\) # ((\b2v_inst1|CJ2\(12) & \b2v_inst1|MATRIZ[24]~288_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~287_combout\,
	datab => \b2v_inst1|CJ2\(12),
	datad => \b2v_inst1|MATRIZ[24]~288_combout\,
	combout => \b2v_inst1|MATRIZ~297_combout\);

-- Location: FF_X16_Y1_N21
\b2v_inst|inst1|shift_reg[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~350_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(33));

-- Location: FF_X17_Y1_N11
\b2v_inst1|MATRIZ[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~299_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(34));

-- Location: LCCOMB_X16_Y1_N0
\b2v_inst|inst1|shift_reg~349\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~349_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(34))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(34),
	datad => \b2v_inst|inst1|shift_reg\(33),
	combout => \b2v_inst|inst1|shift_reg~349_combout\);

-- Location: LCCOMB_X16_Y1_N22
\b2v_inst1|MATRIZ~298\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~298_combout\ = (\b2v_inst1|MATRIZ~287_combout\) # ((\b2v_inst1|CJ2\(11) & \b2v_inst1|MATRIZ[24]~288_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ~287_combout\,
	datac => \b2v_inst1|CJ2\(11),
	datad => \b2v_inst1|MATRIZ[24]~288_combout\,
	combout => \b2v_inst1|MATRIZ~298_combout\);

-- Location: FF_X16_Y1_N31
\b2v_inst|inst1|shift_reg[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~351_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(32));

-- Location: FF_X17_Y1_N1
\b2v_inst1|MATRIZ[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~300_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(33));

-- Location: LCCOMB_X16_Y1_N20
\b2v_inst|inst1|shift_reg~350\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~350_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(33)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(32),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(33),
	combout => \b2v_inst|inst1|shift_reg~350_combout\);

-- Location: LCCOMB_X17_Y1_N10
\b2v_inst1|MATRIZ~299\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~299_combout\ = (\b2v_inst1|MATRIZ~287_combout\) # ((\b2v_inst1|CJ2\(10) & \b2v_inst1|MATRIZ[24]~288_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(10),
	datac => \b2v_inst1|MATRIZ~287_combout\,
	datad => \b2v_inst1|MATRIZ[24]~288_combout\,
	combout => \b2v_inst1|MATRIZ~299_combout\);

-- Location: FF_X16_Y1_N29
\b2v_inst|inst1|shift_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~352_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(31));

-- Location: FF_X17_Y1_N27
\b2v_inst1|MATRIZ[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~301_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(32));

-- Location: LCCOMB_X16_Y1_N30
\b2v_inst|inst1|shift_reg~351\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~351_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(32)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(31),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(32),
	combout => \b2v_inst|inst1|shift_reg~351_combout\);

-- Location: LCCOMB_X17_Y1_N0
\b2v_inst1|MATRIZ~300\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~300_combout\ = (\b2v_inst1|MATRIZ~287_combout\) # ((\b2v_inst1|CJ2\(9) & \b2v_inst1|MATRIZ[24]~288_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|CJ2\(9),
	datac => \b2v_inst1|MATRIZ~287_combout\,
	datad => \b2v_inst1|MATRIZ[24]~288_combout\,
	combout => \b2v_inst1|MATRIZ~300_combout\);

-- Location: FF_X16_Y1_N19
\b2v_inst|inst1|shift_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~353_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(30));

-- Location: FF_X17_Y1_N13
\b2v_inst1|MATRIZ[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~302_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(31));

-- Location: LCCOMB_X16_Y1_N28
\b2v_inst|inst1|shift_reg~352\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~352_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(31))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(31),
	datad => \b2v_inst|inst1|shift_reg\(30),
	combout => \b2v_inst|inst1|shift_reg~352_combout\);

-- Location: LCCOMB_X17_Y1_N26
\b2v_inst1|MATRIZ~301\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~301_combout\ = (\b2v_inst1|CJ2\(8) & (((!\b2v_inst1|MATRIZ[24]~284_combout\)) # (!\INICIO~input_o\))) # (!\b2v_inst1|CJ2\(8) & (((!\b2v_inst1|MATRIZ[24]~283_combout\ & !\b2v_inst1|MATRIZ[24]~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INICIO~input_o\,
	datab => \b2v_inst1|MATRIZ[24]~283_combout\,
	datac => \b2v_inst1|CJ2\(8),
	datad => \b2v_inst1|MATRIZ[24]~284_combout\,
	combout => \b2v_inst1|MATRIZ~301_combout\);

-- Location: FF_X18_Y1_N17
\b2v_inst|inst1|shift_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~354_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(29));

-- Location: FF_X17_Y1_N15
\b2v_inst1|MATRIZ[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~303_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(30));

-- Location: LCCOMB_X16_Y1_N18
\b2v_inst|inst1|shift_reg~353\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~353_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(30))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(30),
	datad => \b2v_inst|inst1|shift_reg\(29),
	combout => \b2v_inst|inst1|shift_reg~353_combout\);

-- Location: LCCOMB_X17_Y1_N12
\b2v_inst1|MATRIZ~302\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~302_combout\ = (\b2v_inst1|MATRIZ~287_combout\) # ((\b2v_inst1|CJ2\(7) & \b2v_inst1|MATRIZ[24]~288_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~287_combout\,
	datac => \b2v_inst1|CJ2\(7),
	datad => \b2v_inst1|MATRIZ[24]~288_combout\,
	combout => \b2v_inst1|MATRIZ~302_combout\);

-- Location: FF_X18_Y1_N15
\b2v_inst|inst1|shift_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~355_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(28));

-- Location: FF_X17_Y1_N17
\b2v_inst1|MATRIZ[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~304_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(29));

-- Location: LCCOMB_X18_Y1_N16
\b2v_inst|inst1|shift_reg~354\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~354_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(29)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst1|shift_reg\(28),
	datac => \b2v_inst1|MATRIZ\(29),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~354_combout\);

-- Location: LCCOMB_X17_Y1_N14
\b2v_inst1|MATRIZ~303\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~303_combout\ = (\b2v_inst1|MATRIZ~287_combout\) # ((\b2v_inst1|CJ2\(6) & \b2v_inst1|MATRIZ[24]~288_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~287_combout\,
	datac => \b2v_inst1|CJ2\(6),
	datad => \b2v_inst1|MATRIZ[24]~288_combout\,
	combout => \b2v_inst1|MATRIZ~303_combout\);

-- Location: FF_X18_Y1_N29
\b2v_inst|inst1|shift_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(27));

-- Location: FF_X17_Y1_N31
\b2v_inst1|MATRIZ[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~305_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(28));

-- Location: LCCOMB_X18_Y1_N14
\b2v_inst|inst1|shift_reg~355\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~355_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(28))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst1|MATRIZ\(28),
	datad => \b2v_inst|inst1|shift_reg\(27),
	combout => \b2v_inst|inst1|shift_reg~355_combout\);

-- Location: LCCOMB_X17_Y1_N16
\b2v_inst1|MATRIZ~304\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~304_combout\ = (\b2v_inst1|MATRIZ[24]~284_combout\ & (((\b2v_inst1|CJ2\(5) & !\INICIO~input_o\)))) # (!\b2v_inst1|MATRIZ[24]~284_combout\ & (((\b2v_inst1|CJ2\(5))) # (!\b2v_inst1|MATRIZ[24]~283_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[24]~283_combout\,
	datab => \b2v_inst1|MATRIZ[24]~284_combout\,
	datac => \b2v_inst1|CJ2\(5),
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~304_combout\);

-- Location: FF_X18_Y1_N27
\b2v_inst|inst1|shift_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~357_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(26));

-- Location: FF_X18_Y1_N13
\b2v_inst1|MATRIZ[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~306_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(27));

-- Location: LCCOMB_X18_Y1_N28
\b2v_inst|inst1|shift_reg~356\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~356_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(27)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(26),
	datad => \b2v_inst1|MATRIZ\(27),
	combout => \b2v_inst|inst1|shift_reg~356_combout\);

-- Location: LCCOMB_X17_Y1_N30
\b2v_inst1|MATRIZ~305\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~305_combout\ = (\b2v_inst1|MATRIZ[24]~284_combout\ & (((!\INICIO~input_o\ & \b2v_inst1|CJ2\(4))))) # (!\b2v_inst1|MATRIZ[24]~284_combout\ & (((\b2v_inst1|CJ2\(4))) # (!\b2v_inst1|MATRIZ[24]~283_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[24]~283_combout\,
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|MATRIZ[24]~284_combout\,
	datad => \b2v_inst1|CJ2\(4),
	combout => \b2v_inst1|MATRIZ~305_combout\);

-- Location: FF_X18_Y1_N19
\b2v_inst|inst1|shift_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~358_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(25));

-- Location: FF_X17_Y1_N5
\b2v_inst1|MATRIZ[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~307_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(26));

-- Location: LCCOMB_X18_Y1_N26
\b2v_inst|inst1|shift_reg~357\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~357_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(26))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(26),
	datad => \b2v_inst|inst1|shift_reg\(25),
	combout => \b2v_inst|inst1|shift_reg~357_combout\);

-- Location: LCCOMB_X18_Y1_N12
\b2v_inst1|MATRIZ~306\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~306_combout\ = (\b2v_inst1|MATRIZ~287_combout\) # ((\b2v_inst1|CJ2\(3) & \b2v_inst1|MATRIZ[24]~288_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~287_combout\,
	datab => \b2v_inst1|CJ2\(3),
	datad => \b2v_inst1|MATRIZ[24]~288_combout\,
	combout => \b2v_inst1|MATRIZ~306_combout\);

-- Location: FF_X18_Y1_N21
\b2v_inst|inst1|shift_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~359_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(24));

-- Location: FF_X17_Y1_N19
\b2v_inst1|MATRIZ[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~308_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(25));

-- Location: LCCOMB_X18_Y1_N18
\b2v_inst|inst1|shift_reg~358\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~358_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(25)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst|inst1|shift_reg\(24),
	datad => \b2v_inst1|MATRIZ\(25),
	combout => \b2v_inst|inst1|shift_reg~358_combout\);

-- Location: LCCOMB_X17_Y1_N4
\b2v_inst1|MATRIZ~307\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~307_combout\ = (\b2v_inst1|MATRIZ[24]~284_combout\ & (((!\INICIO~input_o\ & \b2v_inst1|CJ2\(2))))) # (!\b2v_inst1|MATRIZ[24]~284_combout\ & (((\b2v_inst1|CJ2\(2))) # (!\b2v_inst1|MATRIZ[24]~283_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[24]~283_combout\,
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|MATRIZ[24]~284_combout\,
	datad => \b2v_inst1|CJ2\(2),
	combout => \b2v_inst1|MATRIZ~307_combout\);

-- Location: FF_X18_Y2_N31
\b2v_inst|inst1|shift_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~360_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(23));

-- Location: FF_X17_Y1_N25
\b2v_inst1|MATRIZ[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~309_combout\,
	ena => \b2v_inst1|MATRIZ[24]~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(24));

-- Location: LCCOMB_X18_Y1_N20
\b2v_inst|inst1|shift_reg~359\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~359_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(24))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ\(24),
	datac => \b2v_inst|inst1|shift_reg\(23),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~359_combout\);

-- Location: LCCOMB_X17_Y1_N18
\b2v_inst1|MATRIZ~308\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~308_combout\ = (\b2v_inst1|MATRIZ~287_combout\) # ((\b2v_inst1|CJ2\(1) & \b2v_inst1|MATRIZ[24]~288_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ~287_combout\,
	datac => \b2v_inst1|CJ2\(1),
	datad => \b2v_inst1|MATRIZ[24]~288_combout\,
	combout => \b2v_inst1|MATRIZ~308_combout\);

-- Location: FF_X18_Y2_N1
\b2v_inst|inst1|shift_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~361_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(22));

-- Location: FF_X18_Y2_N15
\b2v_inst1|MATRIZ[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~310_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(23));

-- Location: LCCOMB_X18_Y2_N30
\b2v_inst|inst1|shift_reg~360\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~360_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(23))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(23),
	datad => \b2v_inst|inst1|shift_reg\(22),
	combout => \b2v_inst|inst1|shift_reg~360_combout\);

-- Location: LCCOMB_X17_Y1_N24
\b2v_inst1|MATRIZ~309\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~309_combout\ = (\b2v_inst1|MATRIZ[24]~284_combout\ & (((!\INICIO~input_o\ & \b2v_inst1|CJ2\(0))))) # (!\b2v_inst1|MATRIZ[24]~284_combout\ & (((\b2v_inst1|CJ2\(0))) # (!\b2v_inst1|MATRIZ[24]~283_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[24]~283_combout\,
	datab => \INICIO~input_o\,
	datac => \b2v_inst1|MATRIZ[24]~284_combout\,
	datad => \b2v_inst1|CJ2\(0),
	combout => \b2v_inst1|MATRIZ~309_combout\);

-- Location: FF_X18_Y2_N21
\b2v_inst|inst1|shift_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~362_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(21));

-- Location: FF_X18_Y2_N11
\b2v_inst1|MATRIZ[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~311_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(22));

-- Location: LCCOMB_X18_Y2_N0
\b2v_inst|inst1|shift_reg~361\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~361_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(22))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(22),
	datab => \b2v_inst|inst1|shift_reg\(21),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~361_combout\);

-- Location: LCCOMB_X18_Y2_N14
\b2v_inst1|MATRIZ~310\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~310_combout\ = (\MINV~input_o\) # ((\b2v_inst1|CJ1\(23)) # (!\TURNO~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MINV~input_o\,
	datac => \b2v_inst1|CJ1\(23),
	datad => \TURNO~input_o\,
	combout => \b2v_inst1|MATRIZ~310_combout\);

-- Location: FF_X18_Y2_N5
\b2v_inst|inst1|shift_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~363_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(20));

-- Location: FF_X18_Y2_N7
\b2v_inst1|MATRIZ[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~312_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(21));

-- Location: LCCOMB_X18_Y2_N20
\b2v_inst|inst1|shift_reg~362\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~362_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(21))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(21),
	datac => \b2v_inst|inst1|shift_reg\(20),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~362_combout\);

-- Location: LCCOMB_X18_Y2_N10
\b2v_inst1|MATRIZ~311\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~311_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & (\b2v_inst1|CJ1\(22))) # (!\TURNO~input_o\ & ((\b2v_inst1|CJ2\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(22),
	datab => \b2v_inst1|CJ2\(22),
	datac => \TURNO~input_o\,
	datad => \MINV~input_o\,
	combout => \b2v_inst1|MATRIZ~311_combout\);

-- Location: FF_X18_Y2_N29
\b2v_inst|inst1|shift_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~364_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(19));

-- Location: FF_X18_Y2_N27
\b2v_inst1|MATRIZ[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~313_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(20));

-- Location: LCCOMB_X18_Y2_N4
\b2v_inst|inst1|shift_reg~363\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~363_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(20))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(20),
	datad => \b2v_inst|inst1|shift_reg\(19),
	combout => \b2v_inst|inst1|shift_reg~363_combout\);

-- Location: LCCOMB_X18_Y2_N6
\b2v_inst1|MATRIZ~312\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~312_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & ((\b2v_inst1|CJ1\(21)))) # (!\TURNO~input_o\ & (\b2v_inst1|CJ2\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MINV~input_o\,
	datab => \b2v_inst1|CJ2\(21),
	datac => \b2v_inst1|CJ1\(21),
	datad => \TURNO~input_o\,
	combout => \b2v_inst1|MATRIZ~312_combout\);

-- Location: FF_X18_Y2_N17
\b2v_inst|inst1|shift_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~365_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(18));

-- Location: FF_X18_Y2_N23
\b2v_inst1|MATRIZ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~314_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(19));

-- Location: LCCOMB_X18_Y2_N28
\b2v_inst|inst1|shift_reg~364\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~364_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(19))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(19),
	datad => \b2v_inst|inst1|shift_reg\(18),
	combout => \b2v_inst|inst1|shift_reg~364_combout\);

-- Location: LCCOMB_X18_Y2_N26
\b2v_inst1|MATRIZ~313\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~313_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & (\b2v_inst1|CJ1\(20))) # (!\TURNO~input_o\ & ((\b2v_inst1|CJ2\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MINV~input_o\,
	datab => \TURNO~input_o\,
	datac => \b2v_inst1|CJ1\(20),
	datad => \b2v_inst1|CJ2\(20),
	combout => \b2v_inst1|MATRIZ~313_combout\);

-- Location: FF_X18_Y2_N9
\b2v_inst|inst1|shift_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~366_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(17));

-- Location: FF_X18_Y2_N3
\b2v_inst1|MATRIZ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~315_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(18));

-- Location: LCCOMB_X18_Y2_N16
\b2v_inst|inst1|shift_reg~365\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~365_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(18)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(17),
	datad => \b2v_inst1|MATRIZ\(18),
	combout => \b2v_inst|inst1|shift_reg~365_combout\);

-- Location: LCCOMB_X18_Y2_N22
\b2v_inst1|MATRIZ~314\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~314_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & (\b2v_inst1|CJ1\(19))) # (!\TURNO~input_o\ & ((\b2v_inst1|CJ2\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MINV~input_o\,
	datab => \b2v_inst1|CJ1\(19),
	datac => \b2v_inst1|CJ2\(19),
	datad => \TURNO~input_o\,
	combout => \b2v_inst1|MATRIZ~314_combout\);

-- Location: FF_X18_Y2_N25
\b2v_inst|inst1|shift_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~367_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(16));

-- Location: FF_X14_Y8_N17
\b2v_inst1|MATRIZ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~316_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(17));

-- Location: LCCOMB_X18_Y2_N8
\b2v_inst|inst1|shift_reg~366\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~366_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(17))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(17),
	datab => \b2v_inst|inst1|shift_reg\(16),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst|inst1|shift_reg~366_combout\);

-- Location: LCCOMB_X18_Y2_N2
\b2v_inst1|MATRIZ~315\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~315_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & (\b2v_inst1|CJ1\(18))) # (!\TURNO~input_o\ & ((\b2v_inst1|CJ2\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MINV~input_o\,
	datab => \b2v_inst1|CJ1\(18),
	datac => \b2v_inst1|CJ2\(18),
	datad => \TURNO~input_o\,
	combout => \b2v_inst1|MATRIZ~315_combout\);

-- Location: FF_X14_Y5_N5
\b2v_inst|inst1|shift_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~368_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(15));

-- Location: FF_X19_Y6_N29
\b2v_inst1|MATRIZ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~317_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(16));

-- Location: LCCOMB_X18_Y2_N24
\b2v_inst|inst1|shift_reg~367\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~367_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(16)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst|inst1|shift_reg\(15),
	datad => \b2v_inst1|MATRIZ\(16),
	combout => \b2v_inst|inst1|shift_reg~367_combout\);

-- Location: LCCOMB_X14_Y8_N16
\b2v_inst1|MATRIZ~316\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~316_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & (\b2v_inst1|CJ1\(17))) # (!\TURNO~input_o\ & ((\b2v_inst1|CJ2\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MINV~input_o\,
	datab => \b2v_inst1|CJ1\(17),
	datac => \b2v_inst1|CJ2\(17),
	datad => \TURNO~input_o\,
	combout => \b2v_inst1|MATRIZ~316_combout\);

-- Location: FF_X14_Y5_N15
\b2v_inst|inst1|shift_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~369_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(14));

-- Location: FF_X14_Y5_N29
\b2v_inst1|MATRIZ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~318_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(15));

-- Location: LCCOMB_X14_Y5_N4
\b2v_inst|inst1|shift_reg~368\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~368_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(15)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(14),
	datad => \b2v_inst1|MATRIZ\(15),
	combout => \b2v_inst|inst1|shift_reg~368_combout\);

-- Location: LCCOMB_X19_Y6_N28
\b2v_inst1|MATRIZ~317\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~317_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & ((\b2v_inst1|CJ1\(16)))) # (!\TURNO~input_o\ & (\b2v_inst1|CJ2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(16),
	datab => \TURNO~input_o\,
	datac => \b2v_inst1|CJ1\(16),
	datad => \MINV~input_o\,
	combout => \b2v_inst1|MATRIZ~317_combout\);

-- Location: FF_X14_Y5_N23
\b2v_inst|inst1|shift_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~370_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(13));

-- Location: FF_X14_Y5_N13
\b2v_inst1|MATRIZ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~319_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(14));

-- Location: LCCOMB_X14_Y5_N14
\b2v_inst|inst1|shift_reg~369\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~369_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(14)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(13),
	datad => \b2v_inst1|MATRIZ\(14),
	combout => \b2v_inst|inst1|shift_reg~369_combout\);

-- Location: LCCOMB_X14_Y5_N28
\b2v_inst1|MATRIZ~318\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~318_combout\ = (\MINV~input_o\) # ((!\TURNO~input_o\ & \b2v_inst1|CJ2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TURNO~input_o\,
	datac => \MINV~input_o\,
	datad => \b2v_inst1|CJ2\(15),
	combout => \b2v_inst1|MATRIZ~318_combout\);

-- Location: FF_X14_Y5_N27
\b2v_inst|inst1|shift_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~371_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(12));

-- Location: FF_X14_Y5_N25
\b2v_inst1|MATRIZ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~320_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(13));

-- Location: LCCOMB_X14_Y5_N22
\b2v_inst|inst1|shift_reg~370\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~370_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(13)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(12),
	datad => \b2v_inst1|MATRIZ\(13),
	combout => \b2v_inst|inst1|shift_reg~370_combout\);

-- Location: LCCOMB_X14_Y5_N12
\b2v_inst1|MATRIZ~319\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~319_combout\ = (\MINV~input_o\) # ((!\TURNO~input_o\ & \b2v_inst1|CJ2\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MINV~input_o\,
	datab => \TURNO~input_o\,
	datad => \b2v_inst1|CJ2\(14),
	combout => \b2v_inst1|MATRIZ~319_combout\);

-- Location: FF_X14_Y5_N7
\b2v_inst|inst1|shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~372_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(11));

-- Location: FF_X14_Y5_N21
\b2v_inst1|MATRIZ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~321_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(12));

-- Location: LCCOMB_X14_Y5_N26
\b2v_inst|inst1|shift_reg~371\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~371_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(12))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst1|MATRIZ\(12),
	datad => \b2v_inst|inst1|shift_reg\(11),
	combout => \b2v_inst|inst1|shift_reg~371_combout\);

-- Location: LCCOMB_X14_Y5_N24
\b2v_inst1|MATRIZ~320\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~320_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & (\b2v_inst1|CJ1\(13))) # (!\TURNO~input_o\ & ((\b2v_inst1|CJ2\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MINV~input_o\,
	datab => \TURNO~input_o\,
	datac => \b2v_inst1|CJ1\(13),
	datad => \b2v_inst1|CJ2\(13),
	combout => \b2v_inst1|MATRIZ~320_combout\);

-- Location: FF_X14_Y5_N31
\b2v_inst|inst1|shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~373_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(10));

-- Location: FF_X14_Y5_N1
\b2v_inst1|MATRIZ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~322_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(11));

-- Location: LCCOMB_X14_Y5_N6
\b2v_inst|inst1|shift_reg~372\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~372_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(11)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(10),
	datad => \b2v_inst1|MATRIZ\(11),
	combout => \b2v_inst|inst1|shift_reg~372_combout\);

-- Location: LCCOMB_X14_Y5_N20
\b2v_inst1|MATRIZ~321\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~321_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & ((\b2v_inst1|CJ1\(12)))) # (!\TURNO~input_o\ & (\b2v_inst1|CJ2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MINV~input_o\,
	datab => \TURNO~input_o\,
	datac => \b2v_inst1|CJ2\(12),
	datad => \b2v_inst1|CJ1\(12),
	combout => \b2v_inst1|MATRIZ~321_combout\);

-- Location: FF_X14_Y5_N11
\b2v_inst|inst1|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(9));

-- Location: FF_X14_Y5_N17
\b2v_inst1|MATRIZ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~323_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(10));

-- Location: LCCOMB_X14_Y5_N30
\b2v_inst|inst1|shift_reg~373\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~373_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(10))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst1|MATRIZ\(10),
	datad => \b2v_inst|inst1|shift_reg\(9),
	combout => \b2v_inst|inst1|shift_reg~373_combout\);

-- Location: LCCOMB_X14_Y5_N0
\b2v_inst1|MATRIZ~322\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~322_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & ((\b2v_inst1|CJ1\(11)))) # (!\TURNO~input_o\ & (\b2v_inst1|CJ2\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MINV~input_o\,
	datab => \TURNO~input_o\,
	datac => \b2v_inst1|CJ2\(11),
	datad => \b2v_inst1|CJ1\(11),
	combout => \b2v_inst1|MATRIZ~322_combout\);

-- Location: FF_X14_Y5_N19
\b2v_inst|inst1|shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(8));

-- Location: FF_X14_Y5_N9
\b2v_inst1|MATRIZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~324_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(9));

-- Location: LCCOMB_X14_Y5_N10
\b2v_inst|inst1|shift_reg~374\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~374_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(9))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(9),
	datad => \b2v_inst|inst1|shift_reg\(8),
	combout => \b2v_inst|inst1|shift_reg~374_combout\);

-- Location: LCCOMB_X14_Y5_N16
\b2v_inst1|MATRIZ~323\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~323_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & (\b2v_inst1|CJ1\(10))) # (!\TURNO~input_o\ & ((\b2v_inst1|CJ2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MINV~input_o\,
	datab => \TURNO~input_o\,
	datac => \b2v_inst1|CJ1\(10),
	datad => \b2v_inst1|CJ2\(10),
	combout => \b2v_inst1|MATRIZ~323_combout\);

-- Location: FF_X19_Y6_N31
\b2v_inst|inst1|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(7));

-- Location: FF_X18_Y2_N19
\b2v_inst1|MATRIZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~325_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(8));

-- Location: LCCOMB_X14_Y5_N18
\b2v_inst|inst1|shift_reg~375\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~375_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(8))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datab => \b2v_inst1|MATRIZ\(8),
	datad => \b2v_inst|inst1|shift_reg\(7),
	combout => \b2v_inst|inst1|shift_reg~375_combout\);

-- Location: LCCOMB_X14_Y5_N8
\b2v_inst1|MATRIZ~324\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~324_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & ((\b2v_inst1|CJ1\(9)))) # (!\TURNO~input_o\ & (\b2v_inst1|CJ2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MINV~input_o\,
	datab => \b2v_inst1|CJ2\(9),
	datac => \TURNO~input_o\,
	datad => \b2v_inst1|CJ1\(9),
	combout => \b2v_inst1|MATRIZ~324_combout\);

-- Location: FF_X19_Y6_N5
\b2v_inst|inst1|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(6));

-- Location: FF_X19_Y6_N19
\b2v_inst1|MATRIZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~326_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(7));

-- Location: LCCOMB_X19_Y6_N30
\b2v_inst|inst1|shift_reg~376\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~376_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(7)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(6),
	datad => \b2v_inst1|MATRIZ\(7),
	combout => \b2v_inst|inst1|shift_reg~376_combout\);

-- Location: LCCOMB_X18_Y2_N18
\b2v_inst1|MATRIZ~325\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~325_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & ((\b2v_inst1|CJ1\(8)))) # (!\TURNO~input_o\ & (\b2v_inst1|CJ2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MINV~input_o\,
	datab => \b2v_inst1|CJ2\(8),
	datac => \b2v_inst1|CJ1\(8),
	datad => \TURNO~input_o\,
	combout => \b2v_inst1|MATRIZ~325_combout\);

-- Location: FF_X19_Y6_N17
\b2v_inst|inst1|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(5));

-- Location: FF_X19_Y6_N15
\b2v_inst1|MATRIZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~327_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(6));

-- Location: LCCOMB_X19_Y6_N4
\b2v_inst|inst1|shift_reg~377\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~377_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(6))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(6),
	datad => \b2v_inst|inst1|shift_reg\(5),
	combout => \b2v_inst|inst1|shift_reg~377_combout\);

-- Location: LCCOMB_X19_Y6_N18
\b2v_inst1|MATRIZ~326\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~326_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & (\b2v_inst1|CJ1\(7))) # (!\TURNO~input_o\ & ((\b2v_inst1|CJ2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(7),
	datab => \MINV~input_o\,
	datac => \b2v_inst1|CJ2\(7),
	datad => \TURNO~input_o\,
	combout => \b2v_inst1|MATRIZ~326_combout\);

-- Location: FF_X18_Y8_N15
\b2v_inst|inst1|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(4));

-- Location: FF_X19_Y6_N21
\b2v_inst1|MATRIZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~328_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(5));

-- Location: LCCOMB_X19_Y6_N16
\b2v_inst|inst1|shift_reg~378\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~378_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(5)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst|inst1|shift_reg\(4),
	datad => \b2v_inst1|MATRIZ\(5),
	combout => \b2v_inst|inst1|shift_reg~378_combout\);

-- Location: LCCOMB_X19_Y6_N14
\b2v_inst1|MATRIZ~327\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~327_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & (\b2v_inst1|CJ1\(6))) # (!\TURNO~input_o\ & ((\b2v_inst1|CJ2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(6),
	datab => \MINV~input_o\,
	datac => \b2v_inst1|CJ2\(6),
	datad => \TURNO~input_o\,
	combout => \b2v_inst1|MATRIZ~327_combout\);

-- Location: FF_X19_Y6_N11
\b2v_inst|inst1|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(3));

-- Location: FF_X14_Y4_N25
\b2v_inst1|MATRIZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~329_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(4));

-- Location: LCCOMB_X18_Y8_N14
\b2v_inst|inst1|shift_reg~379\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~379_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(4))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(4),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst1|shift_reg\(3),
	combout => \b2v_inst|inst1|shift_reg~379_combout\);

-- Location: LCCOMB_X19_Y6_N20
\b2v_inst1|MATRIZ~328\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~328_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & (\b2v_inst1|CJ1\(5))) # (!\TURNO~input_o\ & ((\b2v_inst1|CJ2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(5),
	datab => \MINV~input_o\,
	datac => \b2v_inst1|CJ2\(5),
	datad => \TURNO~input_o\,
	combout => \b2v_inst1|MATRIZ~328_combout\);

-- Location: FF_X19_Y6_N13
\b2v_inst|inst1|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(2));

-- Location: FF_X19_Y6_N23
\b2v_inst1|MATRIZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~330_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(3));

-- Location: LCCOMB_X19_Y6_N10
\b2v_inst|inst1|shift_reg~380\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~380_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(3))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(3),
	datad => \b2v_inst|inst1|shift_reg\(2),
	combout => \b2v_inst|inst1|shift_reg~380_combout\);

-- Location: LCCOMB_X14_Y4_N24
\b2v_inst1|MATRIZ~329\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~329_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & ((\b2v_inst1|CJ1\(4)))) # (!\TURNO~input_o\ & (\b2v_inst1|CJ2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MINV~input_o\,
	datab => \TURNO~input_o\,
	datac => \b2v_inst1|CJ2\(4),
	datad => \b2v_inst1|CJ1\(4),
	combout => \b2v_inst1|MATRIZ~329_combout\);

-- Location: FF_X19_Y6_N25
\b2v_inst|inst1|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(1));

-- Location: FF_X19_Y6_N27
\b2v_inst1|MATRIZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~331_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(2));

-- Location: LCCOMB_X19_Y6_N12
\b2v_inst|inst1|shift_reg~381\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~381_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(2))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(2),
	datad => \b2v_inst|inst1|shift_reg\(1),
	combout => \b2v_inst|inst1|shift_reg~381_combout\);

-- Location: LCCOMB_X19_Y6_N22
\b2v_inst1|MATRIZ~330\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~330_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & ((\b2v_inst1|CJ1\(3)))) # (!\TURNO~input_o\ & (\b2v_inst1|CJ2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(3),
	datab => \MINV~input_o\,
	datac => \b2v_inst1|CJ1\(3),
	datad => \TURNO~input_o\,
	combout => \b2v_inst1|MATRIZ~330_combout\);

-- Location: FF_X19_Y9_N1
\b2v_inst|inst1|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(0));

-- Location: FF_X19_Y6_N1
\b2v_inst1|MATRIZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~332_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(1));

-- Location: LCCOMB_X19_Y6_N24
\b2v_inst|inst1|shift_reg~382\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~382_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(1)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(0),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(1),
	combout => \b2v_inst|inst1|shift_reg~382_combout\);

-- Location: LCCOMB_X19_Y6_N26
\b2v_inst1|MATRIZ~331\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~331_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & ((\b2v_inst1|CJ1\(2)))) # (!\TURNO~input_o\ & (\b2v_inst1|CJ2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MINV~input_o\,
	datab => \TURNO~input_o\,
	datac => \b2v_inst1|CJ2\(2),
	datad => \b2v_inst1|CJ1\(2),
	combout => \b2v_inst1|MATRIZ~331_combout\);

-- Location: FF_X19_Y6_N7
\b2v_inst1|MATRIZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~333_combout\,
	ena => \INICIO~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(0));

-- Location: LCCOMB_X19_Y9_N0
\b2v_inst|inst1|shift_reg~383\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~383_combout\ = (\b2v_inst1|MATRIZ\(0) & ((\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\) # ((!\b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ & 
-- !\b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ\(0),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\,
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	combout => \b2v_inst|inst1|shift_reg~383_combout\);

-- Location: LCCOMB_X19_Y6_N0
\b2v_inst1|MATRIZ~332\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~332_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & (\b2v_inst1|CJ1\(1))) # (!\TURNO~input_o\ & ((\b2v_inst1|CJ2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(1),
	datab => \MINV~input_o\,
	datac => \TURNO~input_o\,
	datad => \b2v_inst1|CJ2\(1),
	combout => \b2v_inst1|MATRIZ~332_combout\);

-- Location: LCCOMB_X19_Y6_N6
\b2v_inst1|MATRIZ~333\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~333_combout\ = (\MINV~input_o\) # ((\TURNO~input_o\ & ((\b2v_inst1|CJ1\(0)))) # (!\TURNO~input_o\ & (\b2v_inst1|CJ2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(0),
	datab => \TURNO~input_o\,
	datac => \b2v_inst1|CJ1\(0),
	datad => \MINV~input_o\,
	combout => \b2v_inst1|MATRIZ~333_combout\);

-- Location: LCCOMB_X19_Y3_N22
\b2v_inst1|MATRIZ~334\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~334_combout\ = (!\b2v_inst1|MATRIZ[293]~104_combout\ & ((\b2v_inst1|MATRIZ[293]~101_combout\) # ((\b2v_inst1|MATRIZ[102]~100_combout\) # (!\b2v_inst1|MATRIZ[293]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[293]~104_combout\,
	datab => \b2v_inst1|MATRIZ[293]~101_combout\,
	datac => \b2v_inst1|MATRIZ[293]~99_combout\,
	datad => \b2v_inst1|MATRIZ[102]~100_combout\,
	combout => \b2v_inst1|MATRIZ~334_combout\);

-- Location: LCCOMB_X20_Y4_N22
\b2v_inst1|MATRIZ[102]~335\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[102]~335_combout\ = (((\b2v_inst1|MATRIZ~180_combout\) # (!\INICIO~input_o\)) # (!\b2v_inst1|MATRIZ[102]~185_combout\)) # (!\b2v_inst1|bloqueo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|bloqueo~q\,
	datab => \b2v_inst1|MATRIZ[102]~185_combout\,
	datac => \b2v_inst1|MATRIZ~180_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[102]~335_combout\);

-- Location: LCCOMB_X15_Y2_N10
\b2v_inst1|MATRIZ~336\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~336_combout\ = (!\b2v_inst1|MATRIZ[88]~218_combout\ & (!\b2v_inst1|MATRIZ[88]~219_combout\ & ((\b2v_inst1|MATRIZ[102]~100_combout\) # (!\b2v_inst1|MATRIZ[88]~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~100_combout\,
	datab => \b2v_inst1|MATRIZ[88]~218_combout\,
	datac => \b2v_inst1|MATRIZ[88]~215_combout\,
	datad => \b2v_inst1|MATRIZ[88]~219_combout\,
	combout => \b2v_inst1|MATRIZ~336_combout\);

-- Location: LCCOMB_X20_Y2_N4
\b2v_inst1|MATRIZ[88]~337\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[88]~337_combout\ = (\b2v_inst1|victoriacounter2\(1)) # ((\TURNO~input_o\) # ((\b2v_inst1|victoriacounter2\(2)) # (!\VICTORIA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|victoriacounter2\(1),
	datab => \TURNO~input_o\,
	datac => \b2v_inst1|victoriacounter2\(2),
	datad => \VICTORIA~input_o\,
	combout => \b2v_inst1|MATRIZ[88]~337_combout\);

-- Location: LCCOMB_X16_Y2_N6
\b2v_inst1|MATRIZ~338\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~338_combout\ = (!\b2v_inst1|MATRIZ[51]~250_combout\ & ((\b2v_inst1|MATRIZ[102]~100_combout\) # ((!\b2v_inst1|MATRIZ[51]~247_combout\) # (!\b2v_inst1|MATRIZ[51]~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[102]~100_combout\,
	datab => \b2v_inst1|MATRIZ[51]~250_combout\,
	datac => \b2v_inst1|MATRIZ[51]~246_combout\,
	datad => \b2v_inst1|MATRIZ[51]~247_combout\,
	combout => \b2v_inst1|MATRIZ~338_combout\);

-- Location: LCCOMB_X17_Y1_N6
\b2v_inst1|MATRIZ[24]~339\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[24]~339_combout\ = ((!\INICIO~input_o\) # (!\b2v_inst1|bloqueo~q\)) # (!\b2v_inst1|MATRIZ[24]~280_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[24]~280_combout\,
	datac => \b2v_inst1|bloqueo~q\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ[24]~339_combout\);

-- Location: LCCOMB_X18_Y5_N26
\b2v_inst1|CJ2[19]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(19) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ2\(19))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((!\b2v_inst1|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(19),
	datab => \b2v_inst1|Mux25~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(19));

-- Location: LCCOMB_X18_Y5_N6
\b2v_inst1|CJ1[19]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(19) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ1\(19))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(19),
	datab => \b2v_inst1|Mux4~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(19));

-- Location: LCCOMB_X18_Y5_N0
\b2v_inst1|CJ2[18]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(18) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(18)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux26~0_combout\,
	datab => \b2v_inst1|CJ2\(18),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(18));

-- Location: LCCOMB_X18_Y5_N18
\b2v_inst1|CJ1[18]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(18) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ1\(18))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|CJ1\(18),
	datac => \b2v_inst1|Mux5~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(18));

-- Location: LCCOMB_X16_Y8_N2
\b2v_inst1|CJ2[17]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(17) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(17)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux27~0_combout\,
	datab => \b2v_inst1|CJ2\(17),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(17));

-- Location: LCCOMB_X16_Y8_N26
\b2v_inst1|CJ1[17]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(17) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ1\(17))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((!\b2v_inst1|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(17),
	datac => \b2v_inst1|Mux6~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(17));

-- Location: LCCOMB_X16_Y8_N28
\b2v_inst1|CJ2[16]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(16) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(16)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux28~0_combout\,
	datab => \b2v_inst1|CJ2\(16),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(16));

-- Location: LCCOMB_X16_Y8_N22
\b2v_inst1|CJ1[16]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(16) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ1\(16)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux7~0_combout\,
	datab => \b2v_inst1|CJ1\(16),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(16));

-- Location: LCCOMB_X18_Y5_N20
\b2v_inst1|CJ2[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(15) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ2\(15))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|Mux29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|CJ2\(15),
	datac => \b2v_inst1|Mux29~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(15));

-- Location: LCCOMB_X16_Y5_N28
\b2v_inst1|CJ2[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(14) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(14)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux30~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux30~0_combout\,
	datab => \b2v_inst1|CJ2\(14),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(14));

-- Location: LCCOMB_X16_Y5_N30
\b2v_inst1|CJ2[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(13) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(13)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux31~0_combout\,
	datab => \b2v_inst1|CJ2\(13),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(13));

-- Location: LCCOMB_X16_Y5_N10
\b2v_inst1|CJ1[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(13) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ1\(13))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(13),
	datab => \b2v_inst1|Mux8~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(13));

-- Location: LCCOMB_X18_Y5_N30
\b2v_inst1|CJ2[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(12) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(12)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux32~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux32~0_combout\,
	datac => \b2v_inst1|CJ2\(12),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(12));

-- Location: LCCOMB_X18_Y5_N12
\b2v_inst1|CJ1[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(12) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ1\(12))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(12),
	datab => \b2v_inst1|Mux9~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(12));

-- Location: LCCOMB_X16_Y6_N14
\b2v_inst1|CJ2[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(11) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(11)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux33~0_combout\,
	datac => \b2v_inst1|CJ2\(11),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(11));

-- Location: LCCOMB_X16_Y6_N12
\b2v_inst1|CJ1[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(11) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ1\(11))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(11),
	datac => \b2v_inst1|Mux10~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(11));

-- Location: LCCOMB_X17_Y3_N22
\b2v_inst1|CJ2[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(10) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ2\(10))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((!\b2v_inst1|Mux34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(10),
	datac => \b2v_inst1|Mux34~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(10));

-- Location: LCCOMB_X17_Y3_N28
\b2v_inst1|CJ1[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(10) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ1\(10))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|CJ1\(10),
	datac => \b2v_inst1|Mux11~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(10));

-- Location: LCCOMB_X17_Y5_N0
\b2v_inst1|CJ2[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(9) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(9)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux35~0_combout\,
	datab => \b2v_inst1|CJ2\(9),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(9));

-- Location: LCCOMB_X17_Y5_N20
\b2v_inst1|CJ1[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(9) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ1\(9)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux12~0_combout\,
	datab => \b2v_inst1|CJ1\(9),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(9));

-- Location: LCCOMB_X18_Y4_N8
\b2v_inst1|CJ2[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(8) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(8)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (!\b2v_inst1|Mux36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux36~0_combout\,
	datac => \b2v_inst1|CJ2\(8),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(8));

-- Location: LCCOMB_X18_Y4_N18
\b2v_inst1|CJ1[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(8) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ1\(8))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((!\b2v_inst1|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|CJ1\(8),
	datac => \b2v_inst1|Mux13~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(8));

-- Location: LCCOMB_X18_Y4_N4
\b2v_inst1|CJ2[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(7) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(7)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux37~0_combout\,
	datac => \b2v_inst1|CJ2\(7),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(7));

-- Location: LCCOMB_X18_Y4_N10
\b2v_inst1|CJ1[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(7) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ1\(7))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((!\b2v_inst1|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(7),
	datab => \b2v_inst1|Mux14~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(7));

-- Location: LCCOMB_X15_Y5_N26
\b2v_inst1|CJ2[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(6) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(6)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux38~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Mux38~0_combout\,
	datac => \b2v_inst1|CJ2\(6),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(6));

-- Location: LCCOMB_X15_Y5_N24
\b2v_inst1|CJ1[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(6) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ1\(6)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Mux15~0_combout\,
	datac => \b2v_inst1|CJ1\(6),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(6));

-- Location: LCCOMB_X17_Y3_N30
\b2v_inst1|CJ2[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(5) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ2\(5))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((!\b2v_inst1|Mux39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(5),
	datab => \b2v_inst1|Mux39~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(5));

-- Location: LCCOMB_X17_Y3_N24
\b2v_inst1|CJ1[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(5) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ1\(5)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (!\b2v_inst1|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux8~1_combout\,
	datab => \b2v_inst1|CJ1\(5),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(5));

-- Location: LCCOMB_X16_Y7_N20
\b2v_inst1|CJ2[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(4) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ2\(4))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|Mux40~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|CJ2\(4),
	datac => \b2v_inst1|Mux40~1_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(4));

-- Location: LCCOMB_X16_Y7_N6
\b2v_inst1|CJ1[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(4) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ1\(4))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(4),
	datab => \b2v_inst1|Mux17~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(4));

-- Location: LCCOMB_X17_Y5_N28
\b2v_inst1|CJ2[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(3) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(3)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (!\b2v_inst1|Mux29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux29~0_combout\,
	datab => \b2v_inst1|CJ2\(3),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(3));

-- Location: LCCOMB_X17_Y5_N6
\b2v_inst1|CJ1[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(3) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ1\(3))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(3),
	datab => \b2v_inst1|Mux18~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(3));

-- Location: LCCOMB_X17_Y5_N26
\b2v_inst1|CJ2[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(2) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ2\(2))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|Mux37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ2\(2),
	datab => \b2v_inst1|Mux37~1_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(2));

-- Location: LCCOMB_X17_Y5_N2
\b2v_inst1|CJ1[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(2) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ1\(2)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux19~0_combout\,
	datab => \b2v_inst1|CJ1\(2),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(2));

-- Location: LCCOMB_X16_Y7_N8
\b2v_inst1|CJ2[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(1) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(1)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux43~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Mux43~0_combout\,
	datac => \b2v_inst1|CJ2\(1),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(1));

-- Location: LCCOMB_X16_Y7_N10
\b2v_inst1|CJ1[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(1) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ1\(1))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((!\b2v_inst1|Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(1),
	datac => \b2v_inst1|Mux20~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(1));

-- Location: LCCOMB_X16_Y6_N30
\b2v_inst1|CJ2[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(0) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(0)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\SC2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC2[2]~input_o\,
	datac => \b2v_inst1|CJ2\(0),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(0));

-- Location: LCCOMB_X16_Y6_N20
\b2v_inst1|CJ1[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(0) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ1\(0)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux21~0_combout\,
	datac => \b2v_inst1|CJ1\(0),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(0));

-- Location: IOIBUF_X20_Y0_N8
\TURNO~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TURNO,
	o => \TURNO~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\POSICION[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_POSICION(3),
	o => \POSICION[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\SC1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SC1(2),
	o => \SC1[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\SC2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SC2(2),
	o => \SC2[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\SC2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SC2(0),
	o => \SC2[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\SC2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SC2(1),
	o => \SC2[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\VICTORIA~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VICTORIA,
	o => \VICTORIA~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\MINV~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MINV,
	o => \MINV~input_o\);

-- Location: CLKCTRL_G16
\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y6_N26
\b2v_inst1|MATRIZ[287]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[287]~feeder_combout\ = \b2v_inst1|MATRIZ~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~45_combout\,
	combout => \b2v_inst1|MATRIZ[287]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N8
\b2v_inst1|MATRIZ[191]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[191]~feeder_combout\ = \b2v_inst1|MATRIZ~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~45_combout\,
	combout => \b2v_inst1|MATRIZ[191]~feeder_combout\);

-- Location: LCCOMB_X15_Y7_N16
\b2v_inst1|MATRIZ[335]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[335]~feeder_combout\ = \b2v_inst1|MATRIZ~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~45_combout\,
	combout => \b2v_inst1|MATRIZ[335]~feeder_combout\);

-- Location: LCCOMB_X18_Y4_N28
\b2v_inst1|MATRIZ[263]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[263]~feeder_combout\ = \b2v_inst1|MATRIZ~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~45_combout\,
	combout => \b2v_inst1|MATRIZ[263]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N16
\b2v_inst1|MATRIZ[359]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[359]~feeder_combout\ = \b2v_inst1|MATRIZ~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~45_combout\,
	combout => \b2v_inst1|MATRIZ[359]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N16
\b2v_inst1|MATRIZ[167]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[167]~feeder_combout\ = \b2v_inst1|MATRIZ~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~45_combout\,
	combout => \b2v_inst1|MATRIZ[167]~feeder_combout\);

-- Location: LCCOMB_X18_Y6_N22
\b2v_inst1|MATRIZ[239]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[239]~feeder_combout\ = \b2v_inst1|MATRIZ~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~45_combout\,
	combout => \b2v_inst1|MATRIZ[239]~feeder_combout\);

-- Location: LCCOMB_X17_Y6_N16
\b2v_inst1|MATRIZ[286]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[286]~feeder_combout\ = \b2v_inst1|MATRIZ~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~50_combout\,
	combout => \b2v_inst1|MATRIZ[286]~feeder_combout\);

-- Location: LCCOMB_X15_Y6_N8
\b2v_inst1|MATRIZ[334]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[334]~feeder_combout\ = \b2v_inst1|MATRIZ~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~50_combout\,
	combout => \b2v_inst1|MATRIZ[334]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N18
\b2v_inst1|MATRIZ[190]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[190]~feeder_combout\ = \b2v_inst1|MATRIZ~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~50_combout\,
	combout => \b2v_inst1|MATRIZ[190]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N30
\b2v_inst1|MATRIZ[358]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[358]~feeder_combout\ = \b2v_inst1|MATRIZ~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~50_combout\,
	combout => \b2v_inst1|MATRIZ[358]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N26
\b2v_inst1|MATRIZ[262]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[262]~feeder_combout\ = \b2v_inst1|MATRIZ~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~50_combout\,
	combout => \b2v_inst1|MATRIZ[262]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N10
\b2v_inst1|MATRIZ[166]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[166]~feeder_combout\ = \b2v_inst1|MATRIZ~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~50_combout\,
	combout => \b2v_inst1|MATRIZ[166]~feeder_combout\);

-- Location: LCCOMB_X16_Y6_N4
\b2v_inst1|MATRIZ[261]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[261]~feeder_combout\ = \b2v_inst1|MATRIZ~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~52_combout\,
	combout => \b2v_inst1|MATRIZ[261]~feeder_combout\);

-- Location: LCCOMB_X19_Y5_N26
\b2v_inst1|MATRIZ[357]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[357]~feeder_combout\ = \b2v_inst1|MATRIZ~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~52_combout\,
	combout => \b2v_inst1|MATRIZ[357]~feeder_combout\);

-- Location: LCCOMB_X18_Y5_N8
\b2v_inst1|MATRIZ[141]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[141]~feeder_combout\ = \b2v_inst1|MATRIZ~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~52_combout\,
	combout => \b2v_inst1|MATRIZ[141]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N12
\b2v_inst1|MATRIZ[165]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[165]~feeder_combout\ = \b2v_inst1|MATRIZ~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~52_combout\,
	combout => \b2v_inst1|MATRIZ[165]~feeder_combout\);

-- Location: LCCOMB_X18_Y7_N16
\b2v_inst1|MATRIZ[189]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[189]~feeder_combout\ = \b2v_inst1|MATRIZ~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~52_combout\,
	combout => \b2v_inst1|MATRIZ[189]~feeder_combout\);

-- Location: LCCOMB_X19_Y5_N20
\b2v_inst1|MATRIZ[356]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[356]~feeder_combout\ = \b2v_inst1|MATRIZ~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~54_combout\,
	combout => \b2v_inst1|MATRIZ[356]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N18
\b2v_inst1|MATRIZ[260]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[260]~feeder_combout\ = \b2v_inst1|MATRIZ~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~54_combout\,
	combout => \b2v_inst1|MATRIZ[260]~feeder_combout\);

-- Location: LCCOMB_X15_Y8_N30
\b2v_inst1|MATRIZ[164]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[164]~feeder_combout\ = \b2v_inst1|MATRIZ~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~54_combout\,
	combout => \b2v_inst1|MATRIZ[164]~feeder_combout\);

-- Location: LCCOMB_X15_Y9_N20
\b2v_inst1|MATRIZ[332]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[332]~feeder_combout\ = \b2v_inst1|MATRIZ~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~54_combout\,
	combout => \b2v_inst1|MATRIZ[332]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N22
\b2v_inst1|MATRIZ[188]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[188]~feeder_combout\ = \b2v_inst1|MATRIZ~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~54_combout\,
	combout => \b2v_inst1|MATRIZ[188]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N22
\b2v_inst1|MATRIZ[236]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[236]~feeder_combout\ = \b2v_inst1|MATRIZ~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~54_combout\,
	combout => \b2v_inst1|MATRIZ[236]~feeder_combout\);

-- Location: LCCOMB_X19_Y5_N6
\b2v_inst1|MATRIZ[355]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[355]~feeder_combout\ = \b2v_inst1|MATRIZ~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~56_combout\,
	combout => \b2v_inst1|MATRIZ[355]~feeder_combout\);

-- Location: LCCOMB_X18_Y7_N6
\b2v_inst1|MATRIZ[187]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[187]~feeder_combout\ = \b2v_inst1|MATRIZ~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~56_combout\,
	combout => \b2v_inst1|MATRIZ[187]~feeder_combout\);

-- Location: LCCOMB_X15_Y7_N24
\b2v_inst1|MATRIZ[331]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[331]~feeder_combout\ = \b2v_inst1|MATRIZ~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~56_combout\,
	combout => \b2v_inst1|MATRIZ[331]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N18
\b2v_inst1|MATRIZ[163]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[163]~feeder_combout\ = \b2v_inst1|MATRIZ~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~56_combout\,
	combout => \b2v_inst1|MATRIZ[163]~feeder_combout\);

-- Location: LCCOMB_X16_Y8_N24
\b2v_inst1|MATRIZ[283]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[283]~feeder_combout\ = \b2v_inst1|MATRIZ~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~56_combout\,
	combout => \b2v_inst1|MATRIZ[283]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N0
\b2v_inst1|MATRIZ[162]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[162]~feeder_combout\ = \b2v_inst1|MATRIZ~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~58_combout\,
	combout => \b2v_inst1|MATRIZ[162]~feeder_combout\);

-- Location: LCCOMB_X17_Y6_N20
\b2v_inst1|MATRIZ[282]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[282]~feeder_combout\ = \b2v_inst1|MATRIZ~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~58_combout\,
	combout => \b2v_inst1|MATRIZ[282]~feeder_combout\);

-- Location: LCCOMB_X18_Y6_N16
\b2v_inst1|MATRIZ[378]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[378]~feeder_combout\ = \b2v_inst1|MATRIZ~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~58_combout\,
	combout => \b2v_inst1|MATRIZ[378]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N28
\b2v_inst1|MATRIZ[186]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[186]~feeder_combout\ = \b2v_inst1|MATRIZ~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~58_combout\,
	combout => \b2v_inst1|MATRIZ[186]~feeder_combout\);

-- Location: LCCOMB_X15_Y7_N6
\b2v_inst1|MATRIZ[330]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[330]~feeder_combout\ = \b2v_inst1|MATRIZ~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~58_combout\,
	combout => \b2v_inst1|MATRIZ[330]~feeder_combout\);

-- Location: LCCOMB_X15_Y7_N20
\b2v_inst1|MATRIZ[329]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[329]~feeder_combout\ = \b2v_inst1|MATRIZ~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~60_combout\,
	combout => \b2v_inst1|MATRIZ[329]~feeder_combout\);

-- Location: LCCOMB_X15_Y5_N12
\b2v_inst1|MATRIZ[137]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[137]~feeder_combout\ = \b2v_inst1|MATRIZ~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~60_combout\,
	combout => \b2v_inst1|MATRIZ[137]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N4
\b2v_inst1|MATRIZ[353]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[353]~feeder_combout\ = \b2v_inst1|MATRIZ~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~60_combout\,
	combout => \b2v_inst1|MATRIZ[353]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N8
\b2v_inst1|MATRIZ[257]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[257]~feeder_combout\ = \b2v_inst1|MATRIZ~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~60_combout\,
	combout => \b2v_inst1|MATRIZ[257]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N22
\b2v_inst1|MATRIZ[161]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[161]~feeder_combout\ = \b2v_inst1|MATRIZ~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~60_combout\,
	combout => \b2v_inst1|MATRIZ[161]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N10
\b2v_inst1|MATRIZ[185]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[185]~feeder_combout\ = \b2v_inst1|MATRIZ~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~60_combout\,
	combout => \b2v_inst1|MATRIZ[185]~feeder_combout\);

-- Location: LCCOMB_X19_Y8_N16
\b2v_inst1|MATRIZ[352]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[352]~feeder_combout\ = \b2v_inst1|MATRIZ~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~62_combout\,
	combout => \b2v_inst1|MATRIZ[352]~feeder_combout\);

-- Location: LCCOMB_X15_Y7_N18
\b2v_inst1|MATRIZ[328]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[328]~feeder_combout\ = \b2v_inst1|MATRIZ~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~62_combout\,
	combout => \b2v_inst1|MATRIZ[328]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N24
\b2v_inst1|MATRIZ[184]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[184]~feeder_combout\ = \b2v_inst1|MATRIZ~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~62_combout\,
	combout => \b2v_inst1|MATRIZ[184]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N10
\b2v_inst1|MATRIZ[256]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[256]~feeder_combout\ = \b2v_inst1|MATRIZ~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~62_combout\,
	combout => \b2v_inst1|MATRIZ[256]~feeder_combout\);

-- Location: LCCOMB_X17_Y5_N14
\b2v_inst1|MATRIZ[255]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[255]~feeder_combout\ = \b2v_inst1|MATRIZ~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~63_combout\,
	combout => \b2v_inst1|MATRIZ[255]~feeder_combout\);

-- Location: LCCOMB_X19_Y5_N2
\b2v_inst1|MATRIZ[351]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[351]~feeder_combout\ = \b2v_inst1|MATRIZ~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~63_combout\,
	combout => \b2v_inst1|MATRIZ[351]~feeder_combout\);

-- Location: LCCOMB_X16_Y5_N16
\b2v_inst1|MATRIZ[375]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[375]~feeder_combout\ = \b2v_inst1|MATRIZ~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~63_combout\,
	combout => \b2v_inst1|MATRIZ[375]~feeder_combout\);

-- Location: LCCOMB_X14_Y7_N8
\b2v_inst1|MATRIZ[327]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[327]~feeder_combout\ = \b2v_inst1|MATRIZ~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~63_combout\,
	combout => \b2v_inst1|MATRIZ[327]~feeder_combout\);

-- Location: LCCOMB_X17_Y6_N6
\b2v_inst1|MATRIZ[279]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[279]~feeder_combout\ = \b2v_inst1|MATRIZ~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~63_combout\,
	combout => \b2v_inst1|MATRIZ[279]~feeder_combout\);

-- Location: LCCOMB_X18_Y7_N2
\b2v_inst1|MATRIZ[183]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[183]~feeder_combout\ = \b2v_inst1|MATRIZ~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~63_combout\,
	combout => \b2v_inst1|MATRIZ[183]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N28
\b2v_inst1|MATRIZ[159]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[159]~feeder_combout\ = \b2v_inst1|MATRIZ~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~63_combout\,
	combout => \b2v_inst1|MATRIZ[159]~feeder_combout\);

-- Location: LCCOMB_X18_Y5_N14
\b2v_inst1|MATRIZ[135]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[135]~feeder_combout\ = \b2v_inst1|MATRIZ~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~63_combout\,
	combout => \b2v_inst1|MATRIZ[135]~feeder_combout\);

-- Location: LCCOMB_X19_Y5_N12
\b2v_inst1|MATRIZ[350]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[350]~feeder_combout\ = \b2v_inst1|MATRIZ~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~64_combout\,
	combout => \b2v_inst1|MATRIZ[350]~feeder_combout\);

-- Location: LCCOMB_X16_Y8_N18
\b2v_inst1|MATRIZ[278]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[278]~feeder_combout\ = \b2v_inst1|MATRIZ~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~64_combout\,
	combout => \b2v_inst1|MATRIZ[278]~feeder_combout\);

-- Location: LCCOMB_X15_Y7_N4
\b2v_inst1|MATRIZ[326]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[326]~feeder_combout\ = \b2v_inst1|MATRIZ~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~64_combout\,
	combout => \b2v_inst1|MATRIZ[326]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N8
\b2v_inst1|MATRIZ[230]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[230]~feeder_combout\ = \b2v_inst1|MATRIZ~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~64_combout\,
	combout => \b2v_inst1|MATRIZ[230]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N24
\b2v_inst1|MATRIZ[158]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[158]~feeder_combout\ = \b2v_inst1|MATRIZ~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~64_combout\,
	combout => \b2v_inst1|MATRIZ[158]~feeder_combout\);

-- Location: LCCOMB_X17_Y9_N8
\b2v_inst1|MATRIZ[182]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[182]~feeder_combout\ = \b2v_inst1|MATRIZ~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~64_combout\,
	combout => \b2v_inst1|MATRIZ[182]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N6
\b2v_inst1|MATRIZ[181]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[181]~feeder_combout\ = \b2v_inst1|MATRIZ~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~66_combout\,
	combout => \b2v_inst1|MATRIZ[181]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N14
\b2v_inst1|MATRIZ[229]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[229]~feeder_combout\ = \b2v_inst1|MATRIZ~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~66_combout\,
	combout => \b2v_inst1|MATRIZ[229]~feeder_combout\);

-- Location: LCCOMB_X20_Y5_N12
\b2v_inst1|MATRIZ[349]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[349]~feeder_combout\ = \b2v_inst1|MATRIZ~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~66_combout\,
	combout => \b2v_inst1|MATRIZ[349]~feeder_combout\);

-- Location: LCCOMB_X17_Y6_N28
\b2v_inst1|MATRIZ[277]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[277]~feeder_combout\ = \b2v_inst1|MATRIZ~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~66_combout\,
	combout => \b2v_inst1|MATRIZ[277]~feeder_combout\);

-- Location: LCCOMB_X15_Y7_N10
\b2v_inst1|MATRIZ[325]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[325]~feeder_combout\ = \b2v_inst1|MATRIZ~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~66_combout\,
	combout => \b2v_inst1|MATRIZ[325]~feeder_combout\);

-- Location: LCCOMB_X15_Y8_N6
\b2v_inst1|MATRIZ[157]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[157]~feeder_combout\ = \b2v_inst1|MATRIZ~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~66_combout\,
	combout => \b2v_inst1|MATRIZ[157]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N6
\b2v_inst1|MATRIZ[156]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[156]~feeder_combout\ = \b2v_inst1|MATRIZ~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~68_combout\,
	combout => \b2v_inst1|MATRIZ[156]~feeder_combout\);

-- Location: LCCOMB_X17_Y6_N10
\b2v_inst1|MATRIZ[276]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[276]~feeder_combout\ = \b2v_inst1|MATRIZ~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~68_combout\,
	combout => \b2v_inst1|MATRIZ[276]~feeder_combout\);

-- Location: LCCOMB_X19_Y5_N22
\b2v_inst1|MATRIZ[348]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[348]~feeder_combout\ = \b2v_inst1|MATRIZ~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~68_combout\,
	combout => \b2v_inst1|MATRIZ[348]~feeder_combout\);

-- Location: LCCOMB_X18_Y7_N4
\b2v_inst1|MATRIZ[180]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[180]~feeder_combout\ = \b2v_inst1|MATRIZ~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~68_combout\,
	combout => \b2v_inst1|MATRIZ[180]~feeder_combout\);

-- Location: LCCOMB_X15_Y7_N0
\b2v_inst1|MATRIZ[324]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[324]~feeder_combout\ = \b2v_inst1|MATRIZ~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~68_combout\,
	combout => \b2v_inst1|MATRIZ[324]~feeder_combout\);

-- Location: LCCOMB_X15_Y6_N20
\b2v_inst1|MATRIZ[323]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[323]~feeder_combout\ = \b2v_inst1|MATRIZ~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~70_combout\,
	combout => \b2v_inst1|MATRIZ[323]~feeder_combout\);

-- Location: LCCOMB_X16_Y8_N14
\b2v_inst1|MATRIZ[227]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[227]~feeder_combout\ = \b2v_inst1|MATRIZ~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~70_combout\,
	combout => \b2v_inst1|MATRIZ[227]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N0
\b2v_inst1|MATRIZ[179]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[179]~feeder_combout\ = \b2v_inst1|MATRIZ~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~70_combout\,
	combout => \b2v_inst1|MATRIZ[179]~feeder_combout\);

-- Location: LCCOMB_X17_Y6_N0
\b2v_inst1|MATRIZ[275]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[275]~feeder_combout\ = \b2v_inst1|MATRIZ~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~70_combout\,
	combout => \b2v_inst1|MATRIZ[275]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N30
\b2v_inst1|MATRIZ[155]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[155]~feeder_combout\ = \b2v_inst1|MATRIZ~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~70_combout\,
	combout => \b2v_inst1|MATRIZ[155]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N22
\b2v_inst1|MATRIZ[347]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[347]~feeder_combout\ = \b2v_inst1|MATRIZ~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~70_combout\,
	combout => \b2v_inst1|MATRIZ[347]~feeder_combout\);

-- Location: LCCOMB_X16_Y3_N2
\b2v_inst1|MATRIZ[371]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[371]~feeder_combout\ = \b2v_inst1|MATRIZ~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~70_combout\,
	combout => \b2v_inst1|MATRIZ[371]~feeder_combout\);

-- Location: LCCOMB_X16_Y3_N24
\b2v_inst1|MATRIZ[370]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[370]~feeder_combout\ = \b2v_inst1|MATRIZ~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~72_combout\,
	combout => \b2v_inst1|MATRIZ[370]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N26
\b2v_inst1|MATRIZ[178]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[178]~feeder_combout\ = \b2v_inst1|MATRIZ~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~72_combout\,
	combout => \b2v_inst1|MATRIZ[178]~feeder_combout\);

-- Location: LCCOMB_X17_Y6_N14
\b2v_inst1|MATRIZ[274]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[274]~feeder_combout\ = \b2v_inst1|MATRIZ~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~72_combout\,
	combout => \b2v_inst1|MATRIZ[274]~feeder_combout\);

-- Location: LCCOMB_X18_Y6_N0
\b2v_inst1|MATRIZ[226]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[226]~feeder_combout\ = \b2v_inst1|MATRIZ~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~72_combout\,
	combout => \b2v_inst1|MATRIZ[226]~feeder_combout\);

-- Location: LCCOMB_X20_Y5_N16
\b2v_inst1|MATRIZ[346]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[346]~feeder_combout\ = \b2v_inst1|MATRIZ~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~72_combout\,
	combout => \b2v_inst1|MATRIZ[346]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N0
\b2v_inst1|MATRIZ[154]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[154]~feeder_combout\ = \b2v_inst1|MATRIZ~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~72_combout\,
	combout => \b2v_inst1|MATRIZ[154]~feeder_combout\);

-- Location: LCCOMB_X19_Y5_N24
\b2v_inst1|MATRIZ[345]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[345]~feeder_combout\ = \b2v_inst1|MATRIZ~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~74_combout\,
	combout => \b2v_inst1|MATRIZ[345]~feeder_combout\);

-- Location: LCCOMB_X16_Y8_N8
\b2v_inst1|MATRIZ[225]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[225]~feeder_combout\ = \b2v_inst1|MATRIZ~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~74_combout\,
	combout => \b2v_inst1|MATRIZ[225]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N2
\b2v_inst1|MATRIZ[153]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[153]~feeder_combout\ = \b2v_inst1|MATRIZ~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~74_combout\,
	combout => \b2v_inst1|MATRIZ[153]~feeder_combout\);

-- Location: LCCOMB_X17_Y6_N12
\b2v_inst1|MATRIZ[273]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[273]~feeder_combout\ = \b2v_inst1|MATRIZ~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~74_combout\,
	combout => \b2v_inst1|MATRIZ[273]~feeder_combout\);

-- Location: LCCOMB_X15_Y7_N30
\b2v_inst1|MATRIZ[321]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[321]~feeder_combout\ = \b2v_inst1|MATRIZ~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~74_combout\,
	combout => \b2v_inst1|MATRIZ[321]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N4
\b2v_inst1|MATRIZ[176]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[176]~feeder_combout\ = \b2v_inst1|MATRIZ~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~76_combout\,
	combout => \b2v_inst1|MATRIZ[176]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N4
\b2v_inst1|MATRIZ[224]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[224]~feeder_combout\ = \b2v_inst1|MATRIZ~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~76_combout\,
	combout => \b2v_inst1|MATRIZ[224]~feeder_combout\);

-- Location: LCCOMB_X17_Y6_N22
\b2v_inst1|MATRIZ[272]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[272]~feeder_combout\ = \b2v_inst1|MATRIZ~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~76_combout\,
	combout => \b2v_inst1|MATRIZ[272]~feeder_combout\);

-- Location: LCCOMB_X18_Y3_N8
\b2v_inst1|MATRIZ[368]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[368]~feeder_combout\ = \b2v_inst1|MATRIZ~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~76_combout\,
	combout => \b2v_inst1|MATRIZ[368]~feeder_combout\);

-- Location: LCCOMB_X15_Y7_N28
\b2v_inst1|MATRIZ[320]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[320]~feeder_combout\ = \b2v_inst1|MATRIZ~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~76_combout\,
	combout => \b2v_inst1|MATRIZ[320]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N24
\b2v_inst1|MATRIZ[344]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[344]~feeder_combout\ = \b2v_inst1|MATRIZ~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~76_combout\,
	combout => \b2v_inst1|MATRIZ[344]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N20
\b2v_inst1|MATRIZ[152]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[152]~feeder_combout\ = \b2v_inst1|MATRIZ~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~76_combout\,
	combout => \b2v_inst1|MATRIZ[152]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N2
\b2v_inst1|MATRIZ[151]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[151]~feeder_combout\ = \b2v_inst1|MATRIZ~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~78_combout\,
	combout => \b2v_inst1|MATRIZ[151]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N14
\b2v_inst1|MATRIZ[343]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[343]~feeder_combout\ = \b2v_inst1|MATRIZ~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~78_combout\,
	combout => \b2v_inst1|MATRIZ[343]~feeder_combout\);

-- Location: LCCOMB_X18_Y3_N10
\b2v_inst1|MATRIZ[367]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[367]~feeder_combout\ = \b2v_inst1|MATRIZ~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~78_combout\,
	combout => \b2v_inst1|MATRIZ[367]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N30
\b2v_inst1|MATRIZ[223]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[223]~feeder_combout\ = \b2v_inst1|MATRIZ~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~78_combout\,
	combout => \b2v_inst1|MATRIZ[223]~feeder_combout\);

-- Location: LCCOMB_X17_Y6_N24
\b2v_inst1|MATRIZ[271]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[271]~feeder_combout\ = \b2v_inst1|MATRIZ~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~78_combout\,
	combout => \b2v_inst1|MATRIZ[271]~feeder_combout\);

-- Location: LCCOMB_X18_Y7_N10
\b2v_inst1|MATRIZ[175]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[175]~feeder_combout\ = \b2v_inst1|MATRIZ~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~78_combout\,
	combout => \b2v_inst1|MATRIZ[175]~feeder_combout\);

-- Location: LCCOMB_X15_Y7_N26
\b2v_inst1|MATRIZ[319]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[319]~feeder_combout\ = \b2v_inst1|MATRIZ~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~78_combout\,
	combout => \b2v_inst1|MATRIZ[319]~feeder_combout\);

-- Location: LCCOMB_X18_Y4_N30
\b2v_inst1|MATRIZ[247]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[247]~feeder_combout\ = \b2v_inst1|MATRIZ~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~78_combout\,
	combout => \b2v_inst1|MATRIZ[247]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N4
\b2v_inst1|MATRIZ[150]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[150]~feeder_combout\ = \b2v_inst1|MATRIZ~80_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~80_combout\,
	combout => \b2v_inst1|MATRIZ[150]~feeder_combout\);

-- Location: LCCOMB_X19_Y5_N10
\b2v_inst1|MATRIZ[342]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[342]~feeder_combout\ = \b2v_inst1|MATRIZ~80_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~80_combout\,
	combout => \b2v_inst1|MATRIZ[342]~feeder_combout\);

-- Location: LCCOMB_X14_Y7_N30
\b2v_inst1|MATRIZ[318]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[318]~feeder_combout\ = \b2v_inst1|MATRIZ~80_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~80_combout\,
	combout => \b2v_inst1|MATRIZ[318]~feeder_combout\);

-- Location: LCCOMB_X16_Y8_N4
\b2v_inst1|MATRIZ[270]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[270]~feeder_combout\ = \b2v_inst1|MATRIZ~80_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~80_combout\,
	combout => \b2v_inst1|MATRIZ[270]~feeder_combout\);

-- Location: LCCOMB_X18_Y7_N24
\b2v_inst1|MATRIZ[174]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[174]~feeder_combout\ = \b2v_inst1|MATRIZ~80_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~80_combout\,
	combout => \b2v_inst1|MATRIZ[174]~feeder_combout\);

-- Location: LCCOMB_X18_Y6_N14
\b2v_inst1|MATRIZ[221]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[221]~feeder_combout\ = \b2v_inst1|MATRIZ~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~82_combout\,
	combout => \b2v_inst1|MATRIZ[221]~feeder_combout\);

-- Location: LCCOMB_X14_Y7_N16
\b2v_inst1|MATRIZ[317]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[317]~feeder_combout\ = \b2v_inst1|MATRIZ~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~82_combout\,
	combout => \b2v_inst1|MATRIZ[317]~feeder_combout\);

-- Location: LCCOMB_X17_Y3_N18
\b2v_inst1|MATRIZ[245]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[245]~feeder_combout\ = \b2v_inst1|MATRIZ~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~82_combout\,
	combout => \b2v_inst1|MATRIZ[245]~feeder_combout\);

-- Location: LCCOMB_X18_Y7_N22
\b2v_inst1|MATRIZ[173]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[173]~feeder_combout\ = \b2v_inst1|MATRIZ~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~82_combout\,
	combout => \b2v_inst1|MATRIZ[173]~feeder_combout\);

-- Location: LCCOMB_X18_Y8_N10
\b2v_inst1|MATRIZ[149]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[149]~feeder_combout\ = \b2v_inst1|MATRIZ~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~82_combout\,
	combout => \b2v_inst1|MATRIZ[149]~feeder_combout\);

-- Location: LCCOMB_X14_Y6_N22
\b2v_inst1|MATRIZ[269]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[269]~feeder_combout\ = \b2v_inst1|MATRIZ~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~82_combout\,
	combout => \b2v_inst1|MATRIZ[269]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N12
\b2v_inst1|MATRIZ[341]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[341]~feeder_combout\ = \b2v_inst1|MATRIZ~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~82_combout\,
	combout => \b2v_inst1|MATRIZ[341]~feeder_combout\);

-- Location: LCCOMB_X16_Y3_N8
\b2v_inst1|MATRIZ[365]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[365]~feeder_combout\ = \b2v_inst1|MATRIZ~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~82_combout\,
	combout => \b2v_inst1|MATRIZ[365]~feeder_combout\);

-- Location: LCCOMB_X15_Y7_N12
\b2v_inst1|MATRIZ[316]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[316]~feeder_combout\ = \b2v_inst1|MATRIZ~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~84_combout\,
	combout => \b2v_inst1|MATRIZ[316]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N2
\b2v_inst1|MATRIZ[340]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[340]~feeder_combout\ = \b2v_inst1|MATRIZ~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~84_combout\,
	combout => \b2v_inst1|MATRIZ[340]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N24
\b2v_inst1|MATRIZ[220]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[220]~feeder_combout\ = \b2v_inst1|MATRIZ~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~84_combout\,
	combout => \b2v_inst1|MATRIZ[220]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N14
\b2v_inst1|MATRIZ[172]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[172]~feeder_combout\ = \b2v_inst1|MATRIZ~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~84_combout\,
	combout => \b2v_inst1|MATRIZ[172]~feeder_combout\);

-- Location: LCCOMB_X17_Y6_N30
\b2v_inst1|MATRIZ[268]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[268]~feeder_combout\ = \b2v_inst1|MATRIZ~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~84_combout\,
	combout => \b2v_inst1|MATRIZ[268]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N6
\b2v_inst1|MATRIZ[148]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[148]~feeder_combout\ = \b2v_inst1|MATRIZ~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~84_combout\,
	combout => \b2v_inst1|MATRIZ[148]~feeder_combout\);

-- Location: LCCOMB_X16_Y3_N10
\b2v_inst1|MATRIZ[364]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[364]~feeder_combout\ = \b2v_inst1|MATRIZ~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~84_combout\,
	combout => \b2v_inst1|MATRIZ[364]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N26
\b2v_inst1|MATRIZ[219]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[219]~feeder_combout\ = \b2v_inst1|MATRIZ~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~86_combout\,
	combout => \b2v_inst1|MATRIZ[219]~feeder_combout\);

-- Location: LCCOMB_X17_Y6_N8
\b2v_inst1|MATRIZ[267]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[267]~feeder_combout\ = \b2v_inst1|MATRIZ~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~86_combout\,
	combout => \b2v_inst1|MATRIZ[267]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N12
\b2v_inst1|MATRIZ[171]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[171]~feeder_combout\ = \b2v_inst1|MATRIZ~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~86_combout\,
	combout => \b2v_inst1|MATRIZ[171]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N20
\b2v_inst1|MATRIZ[339]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[339]~feeder_combout\ = \b2v_inst1|MATRIZ~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~86_combout\,
	combout => \b2v_inst1|MATRIZ[339]~feeder_combout\);

-- Location: LCCOMB_X17_Y4_N28
\b2v_inst1|MATRIZ[243]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[243]~feeder_combout\ = \b2v_inst1|MATRIZ~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~86_combout\,
	combout => \b2v_inst1|MATRIZ[243]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N12
\b2v_inst1|MATRIZ[147]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[147]~feeder_combout\ = \b2v_inst1|MATRIZ~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~86_combout\,
	combout => \b2v_inst1|MATRIZ[147]~feeder_combout\);

-- Location: LCCOMB_X15_Y7_N2
\b2v_inst1|MATRIZ[315]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[315]~feeder_combout\ = \b2v_inst1|MATRIZ~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~86_combout\,
	combout => \b2v_inst1|MATRIZ[315]~feeder_combout\);

-- Location: LCCOMB_X19_Y5_N28
\b2v_inst1|MATRIZ[338]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[338]~feeder_combout\ = \b2v_inst1|MATRIZ~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~88_combout\,
	combout => \b2v_inst1|MATRIZ[338]~feeder_combout\);

-- Location: LCCOMB_X17_Y6_N2
\b2v_inst1|MATRIZ[266]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[266]~feeder_combout\ = \b2v_inst1|MATRIZ~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~88_combout\,
	combout => \b2v_inst1|MATRIZ[266]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N30
\b2v_inst1|MATRIZ[170]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[170]~feeder_combout\ = \b2v_inst1|MATRIZ~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~88_combout\,
	combout => \b2v_inst1|MATRIZ[170]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N16
\b2v_inst1|MATRIZ[218]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[218]~feeder_combout\ = \b2v_inst1|MATRIZ~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~88_combout\,
	combout => \b2v_inst1|MATRIZ[218]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N26
\b2v_inst1|MATRIZ[146]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[146]~feeder_combout\ = \b2v_inst1|MATRIZ~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~88_combout\,
	combout => \b2v_inst1|MATRIZ[146]~feeder_combout\);

-- Location: LCCOMB_X15_Y7_N8
\b2v_inst1|MATRIZ[314]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[314]~feeder_combout\ = \b2v_inst1|MATRIZ~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~88_combout\,
	combout => \b2v_inst1|MATRIZ[314]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N28
\b2v_inst1|MATRIZ[337]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[337]~feeder_combout\ = \b2v_inst1|MATRIZ~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~90_combout\,
	combout => \b2v_inst1|MATRIZ[337]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N8
\b2v_inst1|MATRIZ[145]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[145]~feeder_combout\ = \b2v_inst1|MATRIZ~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~90_combout\,
	combout => \b2v_inst1|MATRIZ[145]~feeder_combout\);

-- Location: LCCOMB_X16_Y3_N12
\b2v_inst1|MATRIZ[361]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[361]~feeder_combout\ = \b2v_inst1|MATRIZ~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~90_combout\,
	combout => \b2v_inst1|MATRIZ[361]~feeder_combout\);

-- Location: LCCOMB_X16_Y8_N0
\b2v_inst1|MATRIZ[217]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[217]~feeder_combout\ = \b2v_inst1|MATRIZ~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~90_combout\,
	combout => \b2v_inst1|MATRIZ[217]~feeder_combout\);

-- Location: LCCOMB_X16_Y8_N10
\b2v_inst1|MATRIZ[265]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[265]~feeder_combout\ = \b2v_inst1|MATRIZ~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~90_combout\,
	combout => \b2v_inst1|MATRIZ[265]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N20
\b2v_inst1|MATRIZ[169]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[169]~feeder_combout\ = \b2v_inst1|MATRIZ~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~90_combout\,
	combout => \b2v_inst1|MATRIZ[169]~feeder_combout\);

-- Location: LCCOMB_X15_Y7_N14
\b2v_inst1|MATRIZ[313]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[313]~feeder_combout\ = \b2v_inst1|MATRIZ~90_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~90_combout\,
	combout => \b2v_inst1|MATRIZ[313]~feeder_combout\);

-- Location: LCCOMB_X16_Y8_N20
\b2v_inst1|MATRIZ[264]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[264]~feeder_combout\ = \b2v_inst1|MATRIZ~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~92_combout\,
	combout => \b2v_inst1|MATRIZ[264]~feeder_combout\);

-- Location: LCCOMB_X17_Y6_N4
\b2v_inst1|MATRIZ[360]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[360]~feeder_combout\ = \b2v_inst1|MATRIZ~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~92_combout\,
	combout => \b2v_inst1|MATRIZ[360]~feeder_combout\);

-- Location: LCCOMB_X15_Y6_N18
\b2v_inst1|MATRIZ[312]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[312]~feeder_combout\ = \b2v_inst1|MATRIZ~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~92_combout\,
	combout => \b2v_inst1|MATRIZ[312]~feeder_combout\);

-- Location: LCCOMB_X18_Y6_N24
\b2v_inst1|MATRIZ[216]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[216]~feeder_combout\ = \b2v_inst1|MATRIZ~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|MATRIZ~92_combout\,
	combout => \b2v_inst1|MATRIZ[216]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N2
\b2v_inst1|MATRIZ[168]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[168]~feeder_combout\ = \b2v_inst1|MATRIZ~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~92_combout\,
	combout => \b2v_inst1|MATRIZ[168]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N14
\b2v_inst1|MATRIZ[336]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[336]~feeder_combout\ = \b2v_inst1|MATRIZ~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~92_combout\,
	combout => \b2v_inst1|MATRIZ[336]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N18
\b2v_inst1|MATRIZ[144]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[144]~feeder_combout\ = \b2v_inst1|MATRIZ~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|MATRIZ~92_combout\,
	combout => \b2v_inst1|MATRIZ[144]~feeder_combout\);

-- Location: LCCOMB_X20_Y5_N18
\b2v_inst|inst1|shift_reg[354]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg[354]~feeder_combout\ = \b2v_inst|inst1|shift_reg~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|inst1|shift_reg~29_combout\,
	combout => \b2v_inst|inst1|shift_reg[354]~feeder_combout\);

-- Location: LCCOMB_X20_Y2_N26
\b2v_inst1|victoriacounter2[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|victoriacounter2[2]~feeder_combout\ = \b2v_inst1|victoriacounter2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|victoriacounter2~1_combout\,
	combout => \b2v_inst1|victoriacounter2[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y9_N12
\b2v_inst|inst1|shift_reg[221]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg[221]~feeder_combout\ = \b2v_inst|inst1|shift_reg~162_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|inst1|shift_reg~162_combout\,
	combout => \b2v_inst|inst1|shift_reg[221]~feeder_combout\);

-- Location: LCCOMB_X15_Y10_N6
\b2v_inst|inst1|shift_reg[219]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg[219]~feeder_combout\ = \b2v_inst|inst1|shift_reg~164_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|inst1|shift_reg~164_combout\,
	combout => \b2v_inst|inst1|shift_reg[219]~feeder_combout\);

-- Location: LCCOMB_X18_Y8_N30
\b2v_inst|inst1|shift_reg[190]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg[190]~feeder_combout\ = \b2v_inst|inst1|shift_reg~193_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|inst1|shift_reg~193_combout\,
	combout => \b2v_inst|inst1|shift_reg[190]~feeder_combout\);

-- Location: LCCOMB_X19_Y9_N2
\b2v_inst|inst1|shift_reg[38]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg[38]~feeder_combout\ = \b2v_inst|inst1|shift_reg~345_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|inst1|shift_reg~345_combout\,
	combout => \b2v_inst|inst1|shift_reg[38]~feeder_combout\);

-- Location: IOOBUF_X8_Y0_N9
\CERO~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CERO_outclk\,
	devoe => ww_devoe,
	o => ww_CERO);

-- Location: IOOBUF_X33_Y25_N9
\UNO~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_UNO);

-- Location: IOOBUF_X10_Y0_N9
\locked~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_locked\,
	devoe => ww_devoe,
	o => ww_locked);

-- Location: IOOBUF_X12_Y0_N9
\Y~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|inst2~1_combout\,
	devoe => ww_devoe,
	o => ww_Y);

-- Location: IOIBUF_X16_Y0_N1
\inclk0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inclk0,
	o => \inclk0~input_o\);

-- Location: CLKCTRL_PLL1E0
\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CERO\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CERO_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_CERO_outclk\);

-- Location: CLKCTRL_G19
\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: IOIBUF_X8_Y0_N1
\areset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_areset,
	o => \areset~input_o\);

-- Location: LCCOMB_X11_Y5_N0
\b2v_inst|inst12|count[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst12|count[0]~9_combout\ = \b2v_inst|inst12|count\(0) $ (VCC)
-- \b2v_inst|inst12|count[0]~10\ = CARRY(\b2v_inst|inst12|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst12|count\(0),
	datad => VCC,
	combout => \b2v_inst|inst12|count[0]~9_combout\,
	cout => \b2v_inst|inst12|count[0]~10\);

-- Location: FF_X11_Y5_N1
\b2v_inst|inst12|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst|inst12|count[0]~9_combout\,
	sclr => \b2v_inst|inst12|ALT_INV_pulso~q\,
	ena => \b2v_inst|inst12|pulso~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst12|count\(0));

-- Location: LCCOMB_X11_Y5_N2
\b2v_inst|inst12|count[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst12|count[1]~11_combout\ = (\b2v_inst|inst12|count\(1) & (!\b2v_inst|inst12|count[0]~10\)) # (!\b2v_inst|inst12|count\(1) & ((\b2v_inst|inst12|count[0]~10\) # (GND)))
-- \b2v_inst|inst12|count[1]~12\ = CARRY((!\b2v_inst|inst12|count[0]~10\) # (!\b2v_inst|inst12|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst12|count\(1),
	datad => VCC,
	cin => \b2v_inst|inst12|count[0]~10\,
	combout => \b2v_inst|inst12|count[1]~11_combout\,
	cout => \b2v_inst|inst12|count[1]~12\);

-- Location: FF_X11_Y5_N3
\b2v_inst|inst12|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst|inst12|count[1]~11_combout\,
	sclr => \b2v_inst|inst12|ALT_INV_pulso~q\,
	ena => \b2v_inst|inst12|pulso~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst12|count\(1));

-- Location: LCCOMB_X11_Y5_N4
\b2v_inst|inst12|count[2]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst12|count[2]~13_combout\ = (\b2v_inst|inst12|count\(2) & (\b2v_inst|inst12|count[1]~12\ $ (GND))) # (!\b2v_inst|inst12|count\(2) & (!\b2v_inst|inst12|count[1]~12\ & VCC))
-- \b2v_inst|inst12|count[2]~14\ = CARRY((\b2v_inst|inst12|count\(2) & !\b2v_inst|inst12|count[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst12|count\(2),
	datad => VCC,
	cin => \b2v_inst|inst12|count[1]~12\,
	combout => \b2v_inst|inst12|count[2]~13_combout\,
	cout => \b2v_inst|inst12|count[2]~14\);

-- Location: FF_X11_Y5_N5
\b2v_inst|inst12|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst|inst12|count[2]~13_combout\,
	sclr => \b2v_inst|inst12|ALT_INV_pulso~q\,
	ena => \b2v_inst|inst12|pulso~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst12|count\(2));

-- Location: LCCOMB_X11_Y5_N8
\b2v_inst|inst12|count[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst12|count[4]~17_combout\ = (\b2v_inst|inst12|count\(4) & (\b2v_inst|inst12|count[3]~16\ $ (GND))) # (!\b2v_inst|inst12|count\(4) & (!\b2v_inst|inst12|count[3]~16\ & VCC))
-- \b2v_inst|inst12|count[4]~18\ = CARRY((\b2v_inst|inst12|count\(4) & !\b2v_inst|inst12|count[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst12|count\(4),
	datad => VCC,
	cin => \b2v_inst|inst12|count[3]~16\,
	combout => \b2v_inst|inst12|count[4]~17_combout\,
	cout => \b2v_inst|inst12|count[4]~18\);

-- Location: FF_X11_Y5_N9
\b2v_inst|inst12|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst|inst12|count[4]~17_combout\,
	sclr => \b2v_inst|inst12|ALT_INV_pulso~q\,
	ena => \b2v_inst|inst12|pulso~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst12|count\(4));

-- Location: LCCOMB_X11_Y5_N14
\b2v_inst|inst12|count[7]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst12|count[7]~23_combout\ = (\b2v_inst|inst12|count\(7) & (!\b2v_inst|inst12|count[6]~22\)) # (!\b2v_inst|inst12|count\(7) & ((\b2v_inst|inst12|count[6]~22\) # (GND)))
-- \b2v_inst|inst12|count[7]~24\ = CARRY((!\b2v_inst|inst12|count[6]~22\) # (!\b2v_inst|inst12|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|inst12|count\(7),
	datad => VCC,
	cin => \b2v_inst|inst12|count[6]~22\,
	combout => \b2v_inst|inst12|count[7]~23_combout\,
	cout => \b2v_inst|inst12|count[7]~24\);

-- Location: FF_X11_Y5_N15
\b2v_inst|inst12|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst|inst12|count[7]~23_combout\,
	sclr => \b2v_inst|inst12|ALT_INV_pulso~q\,
	ena => \b2v_inst|inst12|pulso~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst12|count\(7));

-- Location: LCCOMB_X11_Y5_N24
\b2v_inst|inst12|pulso~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst12|pulso~0_combout\ = (\b2v_inst|inst12|count\(3) & (\b2v_inst|inst12|count\(1) & (\b2v_inst|inst12|count\(2) & \b2v_inst|inst12|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst12|count\(3),
	datab => \b2v_inst|inst12|count\(1),
	datac => \b2v_inst|inst12|count\(2),
	datad => \b2v_inst|inst12|count\(0),
	combout => \b2v_inst|inst12|pulso~0_combout\);

-- Location: LCCOMB_X11_Y5_N28
\b2v_inst|inst12|pulso~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst12|pulso~2_combout\ = (\b2v_inst|inst12|count\(7)) # ((\b2v_inst|inst12|pulso~1_combout\ & (\b2v_inst|inst12|count\(4) & \b2v_inst|inst12|pulso~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst12|pulso~1_combout\,
	datab => \b2v_inst|inst12|count\(4),
	datac => \b2v_inst|inst12|count\(7),
	datad => \b2v_inst|inst12|pulso~0_combout\,
	combout => \b2v_inst|inst12|pulso~2_combout\);

-- Location: LCCOMB_X19_Y9_N4
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X19_Y9_N22
\~GND\ : cycloneiv_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X19_Y9_N5
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X19_Y9_N6
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X19_Y9_N8
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X19_Y9_N9
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X19_Y9_N14
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X19_Y9_N15
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X19_Y9_N16
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X19_Y9_N17
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X19_Y9_N18
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X19_Y9_N19
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X19_Y9_N20
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\ = !\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\);

-- Location: FF_X19_Y9_N7
\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X19_Y9_N26
\b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # ((\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # 
-- ((\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X19_Y9_N24
\b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)) # ((\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) # 
-- ((\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) # (\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	combout => \b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X19_Y9_N30
\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\) # ((!\b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ & 
-- !\b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\,
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	datad => \b2v_inst2|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	combout => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: LCCOMB_X11_Y5_N16
\b2v_inst|inst12|count[8]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst12|count[8]~25_combout\ = \b2v_inst|inst12|count[7]~24\ $ (!\b2v_inst|inst12|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|inst12|count\(8),
	cin => \b2v_inst|inst12|count[7]~24\,
	combout => \b2v_inst|inst12|count[8]~25_combout\);

-- Location: FF_X11_Y5_N17
\b2v_inst|inst12|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst|inst12|count[8]~25_combout\,
	sclr => \b2v_inst|inst12|ALT_INV_pulso~q\,
	ena => \b2v_inst|inst12|pulso~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst12|count\(8));

-- Location: LCCOMB_X11_Y5_N26
\b2v_inst|inst12|pulso~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst12|pulso~3_combout\ = (\b2v_inst|inst12|pulso~q\ & (((!\b2v_inst|inst12|count\(8))) # (!\b2v_inst|inst12|pulso~2_combout\))) # (!\b2v_inst|inst12|pulso~q\ & (((\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst12|pulso~q\,
	datab => \b2v_inst|inst12|pulso~2_combout\,
	datac => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst|inst12|count\(8),
	combout => \b2v_inst|inst12|pulso~3_combout\);

-- Location: LCCOMB_X11_Y5_N30
\b2v_inst|inst12|pulso~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst12|pulso~feeder_combout\ = \b2v_inst|inst12|pulso~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|inst12|pulso~3_combout\,
	combout => \b2v_inst|inst12|pulso~feeder_combout\);

-- Location: FF_X11_Y5_N31
\b2v_inst|inst12|pulso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst|inst12|pulso~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst12|pulso~q\);

-- Location: IOIBUF_X20_Y0_N1
\VF~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VF,
	o => \VF~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\EMPATE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EMPATE,
	o => \EMPATE~input_o\);

-- Location: LCCOMB_X19_Y2_N24
\b2v_inst1|empategeneral~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|empategeneral~0_combout\ = (!\VF~input_o\ & (\b2v_inst1|empategeneral\(0) $ (\EMPATE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VF~input_o\,
	datac => \b2v_inst1|empategeneral\(0),
	datad => \EMPATE~input_o\,
	combout => \b2v_inst1|empategeneral~0_combout\);

-- Location: FF_X19_Y2_N25
\b2v_inst1|empategeneral[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|empategeneral~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|empategeneral\(0));

-- Location: LCCOMB_X19_Y3_N10
\b2v_inst1|Add2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add2~1_combout\ = \b2v_inst1|empategeneral\(1) $ (!\b2v_inst1|empategeneral\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|empategeneral\(1),
	datad => \b2v_inst1|empategeneral\(0),
	combout => \b2v_inst1|Add2~1_combout\);

-- Location: LCCOMB_X19_Y3_N8
\b2v_inst1|empategeneral[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|empategeneral[1]~1_combout\ = (\VF~input_o\) # (\EMPATE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VF~input_o\,
	datad => \EMPATE~input_o\,
	combout => \b2v_inst1|empategeneral[1]~1_combout\);

-- Location: FF_X19_Y3_N11
\b2v_inst1|empategeneral[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|Add2~1_combout\,
	sclr => \VF~input_o\,
	ena => \b2v_inst1|empategeneral[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|empategeneral\(1));

-- Location: LCCOMB_X19_Y3_N20
\b2v_inst1|Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add2~0_combout\ = \b2v_inst1|empategeneral\(2) $ (((!\b2v_inst1|empategeneral\(0) & \b2v_inst1|empategeneral\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|empategeneral\(0),
	datac => \b2v_inst1|empategeneral\(2),
	datad => \b2v_inst1|empategeneral\(1),
	combout => \b2v_inst1|Add2~0_combout\);

-- Location: FF_X19_Y3_N21
\b2v_inst1|empategeneral[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|Add2~0_combout\,
	sclr => \VF~input_o\,
	ena => \b2v_inst1|empategeneral[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|empategeneral\(2));

-- Location: LCCOMB_X19_Y3_N4
\b2v_inst1|MATRIZ[383]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[383]~44_combout\ = (\b2v_inst1|empategeneral\(0) & (\b2v_inst1|empategeneral\(2) & (\VF~input_o\ & !\b2v_inst1|empategeneral\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|empategeneral\(0),
	datab => \b2v_inst1|empategeneral\(2),
	datac => \VF~input_o\,
	datad => \b2v_inst1|empategeneral\(1),
	combout => \b2v_inst1|MATRIZ[383]~44_combout\);

-- Location: IOIBUF_X16_Y0_N15
\INICIO~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INICIO,
	o => \INICIO~input_o\);

-- Location: CLKCTRL_G17
\INICIO~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INICIO~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INICIO~inputclkctrl_outclk\);

-- Location: LCCOMB_X18_Y6_N2
\b2v_inst1|CJ1[23]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(23) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ1\(23)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux0~0_combout\,
	datab => \b2v_inst1|CJ1\(23),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(23));

-- Location: LCCOMB_X18_Y6_N12
\b2v_inst1|MATRIZ~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~45_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & ((\b2v_inst1|CJ1\(23)) # (!\TURNO~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datab => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|CJ1\(23),
	combout => \b2v_inst1|MATRIZ~45_combout\);

-- Location: LCCOMB_X19_Y3_N18
\b2v_inst1|Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Equal2~0_combout\ = (\b2v_inst1|empategeneral\(0) & (\b2v_inst1|empategeneral\(2) & !\b2v_inst1|empategeneral\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|empategeneral\(0),
	datab => \b2v_inst1|empategeneral\(2),
	datad => \b2v_inst1|empategeneral\(1),
	combout => \b2v_inst1|Equal2~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\POSICION[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_POSICION(0),
	o => \POSICION[0]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\MV~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MV,
	o => \MV~input_o\);

-- Location: LCCOMB_X22_Y4_N0
\b2v_inst1|MATRIZ[383]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[383]~46_combout\ = (!\POSICION[3]~input_o\ & (!\POSICION[0]~input_o\ & \MV~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSICION[3]~input_o\,
	datac => \POSICION[0]~input_o\,
	datad => \MV~input_o\,
	combout => \b2v_inst1|MATRIZ[383]~46_combout\);

-- Location: IOIBUF_X31_Y0_N1
\POSICION[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_POSICION(1),
	o => \POSICION[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\POSICION[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_POSICION(2),
	o => \POSICION[2]~input_o\);

-- Location: LCCOMB_X22_Y4_N30
\b2v_inst1|MATRIZ[383]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[383]~47_combout\ = ((\POSICION[1]~input_o\) # (\POSICION[2]~input_o\)) # (!\b2v_inst1|MATRIZ[383]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[383]~46_combout\,
	datac => \POSICION[1]~input_o\,
	datad => \POSICION[2]~input_o\,
	combout => \b2v_inst1|MATRIZ[383]~47_combout\);

-- Location: LCCOMB_X17_Y3_N16
\b2v_inst1|MATRIZ[383]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ[383]~48_combout\ = (((\VF~input_o\ & \b2v_inst1|Equal2~0_combout\)) # (!\b2v_inst1|MATRIZ[383]~47_combout\)) # (!\INICIO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VF~input_o\,
	datab => \b2v_inst1|Equal2~0_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ[383]~47_combout\,
	combout => \b2v_inst1|MATRIZ[383]~48_combout\);

-- Location: FF_X18_Y6_N13
\b2v_inst1|MATRIZ[383]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~45_combout\,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(383));

-- Location: LCCOMB_X18_Y6_N4
\b2v_inst1|CJ2[22]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(22) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(22)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (!\b2v_inst1|Mux40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux40~0_combout\,
	datab => \b2v_inst1|CJ2\(22),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(22));

-- Location: IOIBUF_X29_Y0_N8
\SC1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SC1(0),
	o => \SC1[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\SC1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SC1(1),
	o => \SC1[1]~input_o\);

-- Location: LCCOMB_X21_Y7_N30
\b2v_inst1|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux1~0_combout\ = (\SC1[2]~input_o\ & (\SC1[0]~input_o\)) # (!\SC1[2]~input_o\ & (!\SC1[0]~input_o\ & \SC1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[2]~input_o\,
	datab => \SC1[0]~input_o\,
	datac => \SC1[1]~input_o\,
	combout => \b2v_inst1|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y6_N18
\b2v_inst1|CJ1[22]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(22) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ1\(22))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((!\b2v_inst1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|CJ1\(22),
	datac => \b2v_inst1|Mux1~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(22));

-- Location: LCCOMB_X18_Y6_N6
\b2v_inst1|MATRIZ~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~49_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(22)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datab => \b2v_inst1|CJ2\(22),
	datad => \b2v_inst1|CJ1\(22),
	combout => \b2v_inst1|MATRIZ~49_combout\);

-- Location: LCCOMB_X18_Y6_N26
\b2v_inst1|MATRIZ~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~50_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~49_combout\,
	combout => \b2v_inst1|MATRIZ~50_combout\);

-- Location: FF_X18_Y6_N7
\b2v_inst1|MATRIZ[382]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \b2v_inst1|MATRIZ~50_combout\,
	sload => VCC,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(382));

-- Location: LCCOMB_X18_Y6_N8
\b2v_inst1|CJ2[21]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(21) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(21)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (!\b2v_inst1|Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux23~0_combout\,
	datac => \b2v_inst1|CJ2\(21),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(21));

-- Location: LCCOMB_X18_Y6_N10
\b2v_inst1|CJ1[21]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(21) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ1\(21)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (!\b2v_inst1|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux2~0_combout\,
	datac => \b2v_inst1|CJ1\(21),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(21));

-- Location: LCCOMB_X18_Y6_N28
\b2v_inst1|MATRIZ~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~51_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(21)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datab => \b2v_inst1|CJ2\(21),
	datad => \b2v_inst1|CJ1\(21),
	combout => \b2v_inst1|MATRIZ~51_combout\);

-- Location: LCCOMB_X18_Y6_N20
\b2v_inst1|MATRIZ~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~52_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((\INICIO~input_o\ & !\b2v_inst1|MATRIZ~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \INICIO~input_o\,
	datad => \b2v_inst1|MATRIZ~51_combout\,
	combout => \b2v_inst1|MATRIZ~52_combout\);

-- Location: FF_X18_Y6_N21
\b2v_inst1|MATRIZ[381]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~52_combout\,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(381));

-- Location: LCCOMB_X16_Y5_N0
\b2v_inst1|CJ2[20]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ2\(20) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|CJ2\(20)))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & (!\b2v_inst1|Mux24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux24~0_combout\,
	datab => \b2v_inst1|CJ2\(20),
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ2\(20));

-- Location: LCCOMB_X21_Y7_N2
\b2v_inst1|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux3~0_combout\ = (\SC1[2]~input_o\ & (!\SC1[0]~input_o\ & \SC1[1]~input_o\)) # (!\SC1[2]~input_o\ & (\SC1[0]~input_o\ $ (!\SC1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC1[2]~input_o\,
	datab => \SC1[0]~input_o\,
	datac => \SC1[1]~input_o\,
	combout => \b2v_inst1|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y5_N6
\b2v_inst1|CJ1[20]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|CJ1\(20) = (GLOBAL(\INICIO~inputclkctrl_outclk\) & (\b2v_inst1|CJ1\(20))) # (!GLOBAL(\INICIO~inputclkctrl_outclk\) & ((\b2v_inst1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|CJ1\(20),
	datab => \b2v_inst1|Mux3~0_combout\,
	datad => \INICIO~inputclkctrl_outclk\,
	combout => \b2v_inst1|CJ1\(20));

-- Location: LCCOMB_X16_Y5_N8
\b2v_inst1|MATRIZ~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~53_combout\ = (\TURNO~input_o\ & ((!\b2v_inst1|CJ1\(20)))) # (!\TURNO~input_o\ & (!\b2v_inst1|CJ2\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TURNO~input_o\,
	datab => \b2v_inst1|CJ2\(20),
	datad => \b2v_inst1|CJ1\(20),
	combout => \b2v_inst1|MATRIZ~53_combout\);

-- Location: LCCOMB_X16_Y5_N4
\b2v_inst1|MATRIZ~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst1|MATRIZ~54_combout\ = (\b2v_inst1|MATRIZ[383]~44_combout\) # ((!\b2v_inst1|MATRIZ~53_combout\ & \INICIO~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|MATRIZ[383]~44_combout\,
	datac => \b2v_inst1|MATRIZ~53_combout\,
	datad => \INICIO~input_o\,
	combout => \b2v_inst1|MATRIZ~54_combout\);

-- Location: FF_X16_Y5_N5
\b2v_inst1|MATRIZ[380]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \b2v_inst1|MATRIZ~54_combout\,
	ena => \b2v_inst1|MATRIZ[383]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MATRIZ\(380));

-- Location: LCCOMB_X16_Y9_N20
\b2v_inst|inst1|shift_reg~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~3_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|MATRIZ\(380)))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst|inst1|shift_reg\(379)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst1|shift_reg\(379),
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst1|MATRIZ\(380),
	combout => \b2v_inst|inst1|shift_reg~3_combout\);

-- Location: FF_X16_Y9_N21
\b2v_inst|inst1|shift_reg[380]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(380));

-- Location: LCCOMB_X16_Y9_N2
\b2v_inst|inst1|shift_reg~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~2_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(381))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(380))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(381),
	datad => \b2v_inst|inst1|shift_reg\(380),
	combout => \b2v_inst|inst1|shift_reg~2_combout\);

-- Location: FF_X16_Y9_N3
\b2v_inst|inst1|shift_reg[381]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(381));

-- Location: LCCOMB_X16_Y9_N0
\b2v_inst|inst1|shift_reg~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~1_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(382))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(381))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(382),
	datad => \b2v_inst|inst1|shift_reg\(381),
	combout => \b2v_inst|inst1|shift_reg~1_combout\);

-- Location: FF_X16_Y9_N1
\b2v_inst|inst1|shift_reg[382]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(382));

-- Location: LCCOMB_X15_Y10_N12
\b2v_inst|inst1|shift_reg~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst1|shift_reg~0_combout\ = (\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|MATRIZ\(383))) # (!\b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst|inst1|shift_reg\(382))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datac => \b2v_inst1|MATRIZ\(383),
	datad => \b2v_inst|inst1|shift_reg\(382),
	combout => \b2v_inst|inst1|shift_reg~0_combout\);

-- Location: FF_X15_Y10_N13
\b2v_inst|inst1|shift_reg[383]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|inst1|shift_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst1|shift_reg\(383));

-- Location: FF_X11_Y4_N1
\b2v_inst|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|inst1|shift_reg\(383),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|inst7~q\);

-- Location: CLKCTRL_G18
\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y4_N0
\b2v_inst|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst2~0_combout\ = (\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_locked\ & ((\b2v_inst|inst7~q\ & (GLOBAL(\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\))) # (!\b2v_inst|inst7~q\ & 
-- ((GLOBAL(\b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_locked\,
	datab => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	datac => \b2v_inst|inst7~q\,
	datad => \b2v_inst|inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	combout => \b2v_inst|inst2~0_combout\);

-- Location: LCCOMB_X11_Y4_N2
\b2v_inst|inst2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b2v_inst|inst2~1_combout\ = (\b2v_inst|inst12|pulso~q\ & \b2v_inst|inst2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|inst12|pulso~q\,
	datad => \b2v_inst|inst2~0_combout\,
	combout => \b2v_inst|inst2~1_combout\);
END structure;


