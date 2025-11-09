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

-- DATE "11/09/2025 10:57:50"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Subsistema_4 IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	confirmar_modo : IN std_logic;
	pulso_jugada : IN std_logic;
	jugada_valida : IN std_logic;
	fin_juego : IN std_logic;
	gana_j1 : IN std_logic;
	gana_j2 : IN std_logic;
	empate : IN std_logic;
	E_maquina : OUT std_logic;
	e_tablero : OUT std_logic;
	E_teclado : OUT std_logic;
	modo_actual : OUT std_logic;
	puntos_j1 : OUT std_logic_vector(1 DOWNTO 0);
	puntos_j2 : OUT std_logic_vector(1 DOWNTO 0);
	victoria_final : OUT std_logic_vector(1 DOWNTO 0);
	resultado_final : OUT std_logic;
	limpiar_tablero : OUT std_logic
	);
END Subsistema_4;

-- Design Ports Information
-- E_maquina	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_tablero	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E_teclado	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modo_actual	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puntos_j1[0]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puntos_j1[1]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puntos_j2[0]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puntos_j2[1]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- victoria_final[0]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- victoria_final[1]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado_final	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limpiar_tablero	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso_jugada	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jugada_valida	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fin_juego	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gana_j1	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- empate	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gana_j2	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirmar_modo	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Subsistema_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_confirmar_modo : std_logic;
SIGNAL ww_pulso_jugada : std_logic;
SIGNAL ww_jugada_valida : std_logic;
SIGNAL ww_fin_juego : std_logic;
SIGNAL ww_gana_j1 : std_logic;
SIGNAL ww_gana_j2 : std_logic;
SIGNAL ww_empate : std_logic;
SIGNAL ww_E_maquina : std_logic;
SIGNAL ww_e_tablero : std_logic;
SIGNAL ww_E_teclado : std_logic;
SIGNAL ww_modo_actual : std_logic;
SIGNAL ww_puntos_j1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_puntos_j2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_victoria_final : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_resultado_final : std_logic;
SIGNAL ww_limpiar_tablero : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \empate~input_o\ : std_logic;
SIGNAL \E_maquina~output_o\ : std_logic;
SIGNAL \e_tablero~output_o\ : std_logic;
SIGNAL \E_teclado~output_o\ : std_logic;
SIGNAL \modo_actual~output_o\ : std_logic;
SIGNAL \puntos_j1[0]~output_o\ : std_logic;
SIGNAL \puntos_j1[1]~output_o\ : std_logic;
SIGNAL \puntos_j2[0]~output_o\ : std_logic;
SIGNAL \puntos_j2[1]~output_o\ : std_logic;
SIGNAL \victoria_final[0]~output_o\ : std_logic;
SIGNAL \victoria_final[1]~output_o\ : std_logic;
SIGNAL \resultado_final~output_o\ : std_logic;
SIGNAL \limpiar_tablero~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \contador_partidas[1]~1_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \fstate.FIN_P~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \contador_partidas[2]~0_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \confirmar_modo~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \fstate.reseteo~q\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \jugada_valida~input_o\ : std_logic;
SIGNAL \pulso_jugada~input_o\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \fstate.INICIO~0_combout\ : std_logic;
SIGNAL \fstate.INICIO~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \fstate.SEL_MOD~q\ : std_logic;
SIGNAL \fin_juego~input_o\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \Selector4~4_combout\ : std_logic;
SIGNAL \fstate.VERIF~q\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Selector7~5_combout\ : std_logic;
SIGNAL \Selector7~6_combout\ : std_logic;
SIGNAL \fstate.RES_F~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \contador_partidas[0]~2_combout\ : std_logic;
SIGNAL \fstate.VER_F~q\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \fstate.IN_P~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \fstate.ESP_J~q\ : std_logic;
SIGNAL \gana_j1~input_o\ : std_logic;
SIGNAL \gana_j2~input_o\ : std_logic;
SIGNAL \puntos1[0]~0_combout\ : std_logic;
SIGNAL \puntos1[0]~1_combout\ : std_logic;
SIGNAL \puntos1[1]~2_combout\ : std_logic;
SIGNAL \puntos2[0]~0_combout\ : std_logic;
SIGNAL \puntos2[0]~1_combout\ : std_logic;
SIGNAL \puntos2[1]~2_combout\ : std_logic;
SIGNAL \victoria_final_int~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \resultado_final_int~feeder_combout\ : std_logic;
SIGNAL \resultado_final_int~q\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL victoria_final_int : std_logic_vector(1 DOWNTO 0);
SIGNAL puntos2 : std_logic_vector(1 DOWNTO 0);
SIGNAL puntos1 : std_logic_vector(1 DOWNTO 0);
SIGNAL contador_partidas : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_confirmar_modo <= confirmar_modo;
ww_pulso_jugada <= pulso_jugada;
ww_jugada_valida <= jugada_valida;
ww_fin_juego <= fin_juego;
ww_gana_j1 <= gana_j1;
ww_gana_j2 <= gana_j2;
ww_empate <= empate;
E_maquina <= ww_E_maquina;
e_tablero <= ww_e_tablero;
E_teclado <= ww_E_teclado;
modo_actual <= ww_modo_actual;
puntos_j1 <= ww_puntos_j1;
puntos_j2 <= ww_puntos_j2;
victoria_final <= ww_victoria_final;
resultado_final <= ww_resultado_final;
limpiar_tablero <= ww_limpiar_tablero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

-- Location: LCCOMB_X112_Y59_N10
\Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\confirmar_modo~input_o\ & \fstate.SEL_MOD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \confirmar_modo~input_o\,
	datad => \fstate.SEL_MOD~q\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X113_Y59_N26
\Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\fstate.ESP_J~q\ & ((\fstate.RES_F~q\ & ((!\reset_n~input_o\))) # (!\fstate.RES_F~q\ & (\fin_juego~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.RES_F~q\,
	datab => \fin_juego~input_o\,
	datac => \fstate.ESP_J~q\,
	datad => \reset_n~input_o\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X113_Y59_N10
\Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\reset_n~input_o\ & ((\fstate.reseteo~q\) # (!\fstate.INICIO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datac => \fstate.reseteo~q\,
	datad => \fstate.INICIO~q\,
	combout => \Selector0~4_combout\);

-- Location: IOIBUF_X115_Y61_N22
\empate~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_empate,
	o => \empate~input_o\);

-- Location: IOOBUF_X115_Y62_N23
\E_maquina~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fstate.ESP_J~q\,
	devoe => ww_devoe,
	o => \E_maquina~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\e_tablero~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fstate.ESP_J~q\,
	devoe => ww_devoe,
	o => \e_tablero~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\E_teclado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fstate.ESP_J~q\,
	devoe => ww_devoe,
	o => \E_teclado~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\modo_actual~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \modo_actual~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\puntos_j1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => puntos1(0),
	devoe => ww_devoe,
	o => \puntos_j1[0]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\puntos_j1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => puntos1(1),
	devoe => ww_devoe,
	o => \puntos_j1[1]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\puntos_j2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => puntos2(0),
	devoe => ww_devoe,
	o => \puntos_j2[0]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\puntos_j2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => puntos2(1),
	devoe => ww_devoe,
	o => \puntos_j2[1]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\victoria_final[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => victoria_final_int(0),
	devoe => ww_devoe,
	o => \victoria_final[0]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\victoria_final[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => victoria_final_int(1),
	devoe => ww_devoe,
	o => \victoria_final[1]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\resultado_final~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado_final_int~q\,
	devoe => ww_devoe,
	o => \resultado_final~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\limpiar_tablero~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~combout\,
	devoe => ww_devoe,
	o => \limpiar_tablero~output_o\);

-- Location: IOIBUF_X0_Y36_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X111_Y59_N0
\contador_partidas[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_partidas[1]~1_combout\ = contador_partidas(1) $ (((!\fstate.FIN_P~q\ & (contador_partidas(0) & \Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.FIN_P~q\,
	datab => contador_partidas(0),
	datac => contador_partidas(1),
	datad => \Selector5~0_combout\,
	combout => \contador_partidas[1]~1_combout\);

-- Location: IOIBUF_X0_Y36_N8
\reset_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: CLKCTRL_G2
\reset_n~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~inputclkctrl_outclk\);

-- Location: FF_X111_Y59_N1
\contador_partidas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_partidas[1]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_partidas(1));

-- Location: FF_X112_Y59_N5
\fstate.FIN_P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector5~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.FIN_P~q\);

-- Location: LCCOMB_X112_Y59_N24
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\fstate.FIN_P~q\ & \Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fstate.FIN_P~q\,
	datad => \Selector5~0_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X112_Y59_N12
\contador_partidas[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_partidas[2]~0_combout\ = contador_partidas(2) $ (((contador_partidas(1) & (contador_partidas(0) & \process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_partidas(1),
	datab => contador_partidas(0),
	datac => contador_partidas(2),
	datad => \process_0~0_combout\,
	combout => \contador_partidas[2]~0_combout\);

-- Location: FF_X112_Y59_N13
\contador_partidas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_partidas[2]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_partidas(2));

-- Location: LCCOMB_X112_Y59_N14
\Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\fstate.VER_F~q\ & ((contador_partidas(2)) # ((contador_partidas(0) & contador_partidas(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.VER_F~q\,
	datab => contador_partidas(0),
	datac => contador_partidas(1),
	datad => contador_partidas(2),
	combout => \Selector7~2_combout\);

-- Location: IOIBUF_X115_Y60_N15
\confirmar_modo~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirmar_modo,
	o => \confirmar_modo~input_o\);

-- Location: LCCOMB_X113_Y59_N8
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\fstate.RES_F~q\) # (\fstate.reseteo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.RES_F~q\,
	datac => \fstate.reseteo~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X113_Y59_N9
\fstate.reseteo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.reseteo~q\);

-- Location: LCCOMB_X112_Y59_N30
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (!\fstate.VER_F~q\ & (!\fstate.FIN_P~q\ & !\fstate.IN_P~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.VER_F~q\,
	datac => \fstate.FIN_P~q\,
	datad => \fstate.IN_P~q\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X112_Y59_N6
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\confirmar_modo~input_o\ & (!\fstate.reseteo~q\ & (\fstate.INICIO~q\ & \fstate.SEL_MOD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmar_modo~input_o\,
	datab => \fstate.reseteo~q\,
	datac => \fstate.INICIO~q\,
	datad => \fstate.SEL_MOD~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X113_Y59_N28
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\fstate.reseteo~q\ & \fstate.INICIO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fstate.reseteo~q\,
	datad => \fstate.INICIO~q\,
	combout => \Selector0~1_combout\);

-- Location: IOIBUF_X115_Y62_N15
\jugada_valida~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jugada_valida,
	o => \jugada_valida~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\pulso_jugada~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso_jugada,
	o => \pulso_jugada~input_o\);

-- Location: LCCOMB_X113_Y59_N20
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\fstate.ESP_J~q\ & ((\jugada_valida~input_o\) # (\pulso_jugada~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugada_valida~input_o\,
	datac => \pulso_jugada~input_o\,
	datad => \fstate.ESP_J~q\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X113_Y59_N0
\Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\Selector0~1_combout\ & (!\fstate.SEL_MOD~q\ & ((\Selector0~2_combout\) # (\Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datab => \Selector0~1_combout\,
	datac => \fstate.SEL_MOD~q\,
	datad => \Selector4~1_combout\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X113_Y59_N16
\Selector0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\Selector0~4_combout\) # (((\Selector0~0_combout\) # (\Selector0~3_combout\)) # (!\Selector2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~4_combout\,
	datab => \Selector2~2_combout\,
	datac => \Selector0~0_combout\,
	datad => \Selector0~3_combout\,
	combout => \Selector0~5_combout\);

-- Location: LCCOMB_X113_Y59_N12
\fstate.INICIO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.INICIO~0_combout\ = (\Selector0~5_combout\ & (((!\fstate.reseteo~q\)) # (!\reset_n~input_o\))) # (!\Selector0~5_combout\ & (((\fstate.INICIO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \fstate.reseteo~q\,
	datac => \fstate.INICIO~q\,
	datad => \Selector0~5_combout\,
	combout => \fstate.INICIO~0_combout\);

-- Location: FF_X113_Y59_N13
\fstate.INICIO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fstate.INICIO~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.INICIO~q\);

-- Location: LCCOMB_X113_Y59_N14
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\reset_n~input_o\ & (!\fstate.reseteo~q\ & !\fstate.INICIO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datac => \fstate.reseteo~q\,
	datad => \fstate.INICIO~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X113_Y59_N4
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\fstate.SEL_MOD~q\ & !\Selector0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector1~0_combout\,
	datac => \fstate.SEL_MOD~q\,
	datad => \Selector0~5_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X113_Y59_N5
\fstate.SEL_MOD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.SEL_MOD~q\);

-- Location: IOIBUF_X115_Y59_N22
\fin_juego~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fin_juego,
	o => \fin_juego~input_o\);

-- Location: LCCOMB_X113_Y59_N18
\Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\fstate.SEL_MOD~q\ & (!\confirmar_modo~input_o\)) # (!\fstate.SEL_MOD~q\ & (((\Selector0~1_combout\) # (!\reset_n~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmar_modo~input_o\,
	datab => \reset_n~input_o\,
	datac => \fstate.SEL_MOD~q\,
	datad => \Selector0~1_combout\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X113_Y59_N24
\Selector4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = (\fstate.VERIF~q\ & (\Selector2~2_combout\ & (!\fin_juego~input_o\ & \Selector4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.VERIF~q\,
	datab => \Selector2~2_combout\,
	datac => \fin_juego~input_o\,
	datad => \Selector4~2_combout\,
	combout => \Selector4~3_combout\);

-- Location: LCCOMB_X113_Y59_N6
\Selector4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~4_combout\ = (\reset_n~input_o\ & ((\Selector4~1_combout\) # ((\Selector4~3_combout\)))) # (!\reset_n~input_o\ & (!\fstate.RES_F~q\ & ((\Selector4~1_combout\) # (\Selector4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \Selector4~1_combout\,
	datac => \fstate.RES_F~q\,
	datad => \Selector4~3_combout\,
	combout => \Selector4~4_combout\);

-- Location: FF_X113_Y59_N7
\fstate.VERIF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.VERIF~q\);

-- Location: LCCOMB_X113_Y59_N30
\Selector7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\fstate.ESP_J~q\) # ((\fstate.VERIF~q\ & (!\fin_juego~input_o\)) # (!\fstate.VERIF~q\ & ((\reset_n~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_juego~input_o\,
	datab => \reset_n~input_o\,
	datac => \fstate.ESP_J~q\,
	datad => \fstate.VERIF~q\,
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X113_Y59_N22
\Selector7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (\fstate.RES_F~q\ & ((\fstate.SEL_MOD~q\) # (!\Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fstate.SEL_MOD~q\,
	datac => \fstate.RES_F~q\,
	datad => \Selector4~1_combout\,
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X112_Y59_N18
\Selector7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~5_combout\ = (\Selector2~2_combout\ & (\Selector7~4_combout\ & ((\fstate.SEL_MOD~q\) # (\Selector7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~2_combout\,
	datab => \fstate.SEL_MOD~q\,
	datac => \Selector7~3_combout\,
	datad => \Selector7~4_combout\,
	combout => \Selector7~5_combout\);

-- Location: LCCOMB_X112_Y59_N0
\Selector7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~6_combout\ = (\Selector7~2_combout\) # ((\Selector7~5_combout\ & ((!\confirmar_modo~input_o\) # (!\fstate.SEL_MOD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.SEL_MOD~q\,
	datab => \Selector7~2_combout\,
	datac => \confirmar_modo~input_o\,
	datad => \Selector7~5_combout\,
	combout => \Selector7~6_combout\);

-- Location: FF_X112_Y59_N1
\fstate.RES_F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.RES_F~q\);

-- Location: LCCOMB_X112_Y59_N16
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\fin_juego~input_o\ & (\fstate.VERIF~q\ & ((\reset_n~input_o\) # (!\fstate.RES_F~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \fstate.RES_F~q\,
	datac => \fin_juego~input_o\,
	datad => \fstate.VERIF~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X111_Y59_N6
\contador_partidas[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_partidas[0]~2_combout\ = contador_partidas(0) $ (((!\fstate.FIN_P~q\ & \Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.FIN_P~q\,
	datac => contador_partidas(0),
	datad => \Selector5~0_combout\,
	combout => \contador_partidas[0]~2_combout\);

-- Location: FF_X111_Y59_N7
\contador_partidas[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_partidas[0]~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_partidas(0));

-- Location: FF_X112_Y59_N23
\fstate.VER_F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fstate.FIN_P~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.VER_F~q\);

-- Location: LCCOMB_X112_Y59_N22
\Selector2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\fstate.VER_F~q\ & (!contador_partidas(2) & ((!contador_partidas(0)) # (!contador_partidas(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_partidas(1),
	datab => contador_partidas(0),
	datac => \fstate.VER_F~q\,
	datad => contador_partidas(2),
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X112_Y59_N28
\Selector2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (\Selector2~4_combout\) # ((\confirmar_modo~input_o\ & (\Selector2~2_combout\ & \fstate.SEL_MOD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmar_modo~input_o\,
	datab => \Selector2~4_combout\,
	datac => \Selector2~2_combout\,
	datad => \fstate.SEL_MOD~q\,
	combout => \Selector2~5_combout\);

-- Location: FF_X112_Y59_N29
\fstate.IN_P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.IN_P~q\);

-- Location: LCCOMB_X113_Y59_N2
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\fstate.IN_P~q\) # ((!\pulso_jugada~input_o\ & (\fstate.ESP_J~q\ & !\jugada_valida~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso_jugada~input_o\,
	datab => \fstate.IN_P~q\,
	datac => \fstate.ESP_J~q\,
	datad => \jugada_valida~input_o\,
	combout => \Selector3~0_combout\);

-- Location: FF_X113_Y59_N3
\fstate.ESP_J\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.ESP_J~q\);

-- Location: IOIBUF_X115_Y61_N15
\gana_j1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gana_j1,
	o => \gana_j1~input_o\);

-- Location: IOIBUF_X115_Y55_N15
\gana_j2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gana_j2,
	o => \gana_j2~input_o\);

-- Location: LCCOMB_X114_Y59_N28
\puntos1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puntos1[0]~0_combout\ = (\process_0~0_combout\ & ((\gana_j1~input_o\) # ((\empate~input_o\ & !\gana_j2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \empate~input_o\,
	datab => \gana_j1~input_o\,
	datac => \gana_j2~input_o\,
	datad => \process_0~0_combout\,
	combout => \puntos1[0]~0_combout\);

-- Location: LCCOMB_X114_Y59_N8
\puntos1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puntos1[0]~1_combout\ = puntos1(0) $ (\puntos1[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => puntos1(0),
	datad => \puntos1[0]~0_combout\,
	combout => \puntos1[0]~1_combout\);

-- Location: FF_X114_Y59_N9
\puntos1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \puntos1[0]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => puntos1(0));

-- Location: LCCOMB_X114_Y59_N10
\puntos1[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puntos1[1]~2_combout\ = puntos1(1) $ (((puntos1(0) & \puntos1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => puntos1(0),
	datac => puntos1(1),
	datad => \puntos1[0]~0_combout\,
	combout => \puntos1[1]~2_combout\);

-- Location: FF_X114_Y59_N11
\puntos1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \puntos1[1]~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => puntos1(1));

-- Location: LCCOMB_X114_Y59_N2
\puntos2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puntos2[0]~0_combout\ = (!\gana_j1~input_o\ & (\process_0~0_combout\ & ((\empate~input_o\) # (\gana_j2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \empate~input_o\,
	datab => \gana_j1~input_o\,
	datac => \gana_j2~input_o\,
	datad => \process_0~0_combout\,
	combout => \puntos2[0]~0_combout\);

-- Location: LCCOMB_X114_Y59_N0
\puntos2[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puntos2[0]~1_combout\ = puntos2(0) $ (\puntos2[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => puntos2(0),
	datad => \puntos2[0]~0_combout\,
	combout => \puntos2[0]~1_combout\);

-- Location: FF_X114_Y59_N1
\puntos2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \puntos2[0]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => puntos2(0));

-- Location: LCCOMB_X114_Y59_N18
\puntos2[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puntos2[1]~2_combout\ = puntos2(1) $ (((puntos2(0) & \puntos2[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => puntos2(0),
	datac => puntos2(1),
	datad => \puntos2[0]~0_combout\,
	combout => \puntos2[1]~2_combout\);

-- Location: FF_X114_Y59_N19
\puntos2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \puntos2[1]~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => puntos2(1));

-- Location: LCCOMB_X112_Y59_N2
\victoria_final_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \victoria_final_int~0_combout\ = (puntos2(1) & (puntos1(1) & ((puntos1(0)) # (!puntos2(0))))) # (!puntos2(1) & ((puntos1(1)) # ((puntos1(0)) # (!puntos2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puntos2(1),
	datab => puntos1(1),
	datac => puntos2(0),
	datad => puntos1(0),
	combout => \victoria_final_int~0_combout\);

-- Location: LCCOMB_X112_Y59_N8
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!\fstate.RES_F~q\ & ((\Selector7~2_combout\) # ((!\Selector2~3_combout\ & \Selector7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~3_combout\,
	datab => \fstate.RES_F~q\,
	datac => \Selector7~2_combout\,
	datad => \Selector7~5_combout\,
	combout => \process_0~1_combout\);

-- Location: FF_X112_Y59_N3
\victoria_final_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \victoria_final_int~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => victoria_final_int(0));

-- Location: LCCOMB_X112_Y59_N20
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (puntos2(1) & (((puntos2(0)) # (!puntos1(0))) # (!puntos1(1)))) # (!puntos2(1) & (!puntos1(1) & ((puntos2(0)) # (!puntos1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puntos2(1),
	datab => puntos1(1),
	datac => puntos2(0),
	datad => puntos1(0),
	combout => \LessThan0~0_combout\);

-- Location: FF_X112_Y59_N21
\victoria_final_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan0~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => victoria_final_int(1));

-- Location: LCCOMB_X112_Y59_N26
\resultado_final_int~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado_final_int~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \resultado_final_int~feeder_combout\);

-- Location: FF_X112_Y59_N27
resultado_final_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \resultado_final_int~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado_final_int~q\);

-- Location: LCCOMB_X112_Y59_N4
WideOr0 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\fstate.reseteo~q\) # ((\fstate.IN_P~q\) # (!\fstate.INICIO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.reseteo~q\,
	datab => \fstate.INICIO~q\,
	datad => \fstate.IN_P~q\,
	combout => \WideOr0~combout\);

ww_E_maquina <= \E_maquina~output_o\;

ww_e_tablero <= \e_tablero~output_o\;

ww_E_teclado <= \E_teclado~output_o\;

ww_modo_actual <= \modo_actual~output_o\;

ww_puntos_j1(0) <= \puntos_j1[0]~output_o\;

ww_puntos_j1(1) <= \puntos_j1[1]~output_o\;

ww_puntos_j2(0) <= \puntos_j2[0]~output_o\;

ww_puntos_j2(1) <= \puntos_j2[1]~output_o\;

ww_victoria_final(0) <= \victoria_final[0]~output_o\;

ww_victoria_final(1) <= \victoria_final[1]~output_o\;

ww_resultado_final <= \resultado_final~output_o\;

ww_limpiar_tablero <= \limpiar_tablero~output_o\;
END structure;


