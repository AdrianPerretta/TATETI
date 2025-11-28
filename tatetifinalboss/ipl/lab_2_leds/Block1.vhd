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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Mon Nov 10 15:19:51 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Block1 IS 
	PORT
	(
		inclk0 :  IN  STD_LOGIC;
		areset :  IN  STD_LOGIC;
		load :  IN  STD_LOGIC;
		parallel_in :  IN  STD_LOGIC_VECTOR(383 DOWNTO 0);
		locked :  OUT  STD_LOGIC;
		Y :  OUT  STD_LOGIC;
		CERO :  OUT  STD_LOGIC;
		UNO :  OUT  STD_LOGIC;
		frecuencialed :  OUT  STD_LOGIC
	);
END Block1;

ARCHITECTURE bdf_type OF Block1 IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT \21mux_0\
	PORT(S : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 Y : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \21mux_0\: COMPONENT IS true;
ATTRIBUTE noopt OF \21mux_0\: COMPONENT IS true;

COMPONENT altpll0
	PORT(inclk0 : IN STD_LOGIC;
		 areset : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC;
		 c1 : OUT STD_LOGIC;
		 c2 : OUT STD_LOGIC;
		 locked : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT paralelo_serie_384b
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 shift : IN STD_LOGIC;
		 parallel_in : IN STD_LOGIC_VECTOR(383 DOWNTO 0);
		 serial_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT pulso_384
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 start : IN STD_LOGIC;
		 pulso : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	DFF_inst7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;


BEGIN 
locked <= SYNTHESIZED_WIRE_6;
CERO <= SYNTHESIZED_WIRE_15;
UNO <= SYNTHESIZED_WIRE_16;
SYNTHESIZED_WIRE_1 <= '0';
SYNTHESIZED_WIRE_2 <= '1';
SYNTHESIZED_WIRE_5 <= '0';
SYNTHESIZED_WIRE_17 <= '1';



b2v_inst : altpll0
PORT MAP(inclk0 => inclk0,
		 areset => areset,
		 c0 => SYNTHESIZED_WIRE_15,
		 c1 => SYNTHESIZED_WIRE_16,
		 c2 => frecuencialed,
		 locked => SYNTHESIZED_WIRE_6);


b2v_inst1 : paralelo_serie_384b
PORT MAP(clk => SYNTHESIZED_WIRE_0,
		 rst => SYNTHESIZED_WIRE_1,
		 load => load,
		 shift => SYNTHESIZED_WIRE_2,
		 parallel_in => parallel_in,
		 serial_out => SYNTHESIZED_WIRE_13);


SYNTHESIZED_WIRE_0 <= NOT(SYNTHESIZED_WIRE_15);




b2v_inst12 : pulso_384
PORT MAP(clk => SYNTHESIZED_WIRE_16,
		 reset => SYNTHESIZED_WIRE_5,
		 start => load,
		 pulso => SYNTHESIZED_WIRE_7);


Y <= SYNTHESIZED_WIRE_6 AND SYNTHESIZED_WIRE_7 AND SYNTHESIZED_WIRE_8;



b2v_inst6 : 21mux_0
PORT MAP(S => DFF_inst7,
		 B => SYNTHESIZED_WIRE_15,
		 A => SYNTHESIZED_WIRE_16,
		 Y => SYNTHESIZED_WIRE_8);


PROCESS(SYNTHESIZED_WIRE_15,SYNTHESIZED_WIRE_17,SYNTHESIZED_WIRE_17)
BEGIN
IF (SYNTHESIZED_WIRE_17 = '0') THEN
	DFF_inst7 <= '0';
ELSIF (SYNTHESIZED_WIRE_17 = '0') THEN
	DFF_inst7 <= '1';
ELSIF (RISING_EDGE(SYNTHESIZED_WIRE_15)) THEN
	DFF_inst7 <= SYNTHESIZED_WIRE_13;
END IF;
END PROCESS;




END bdf_type;