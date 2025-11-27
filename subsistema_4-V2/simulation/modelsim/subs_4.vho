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

-- DATE "11/13/2025 11:10:38"

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
	movimiento_valido : IN std_logic;
	E_maquina : OUT std_logic;
	e_tablero : OUT std_logic;
	E_teclado : OUT std_logic;
	modo_actual : OUT std_logic;
	puntos_j1 : OUT std_logic_vector(1 DOWNTO 0);
	puntos_j2 : OUT std_logic_vector(1 DOWNTO 0);
	victoria_final : OUT std_logic_vector(1 DOWNTO 0);
	resultado_final : OUT std_logic;
	limpiar_tablero : OUT std_logic;
	turno_jugador : OUT std_logic;
	inicio_partida : OUT std_logic
	);
END Subsistema_4;

-- Design Ports Information
-- E_maquina	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_tablero	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E_teclado	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modo_actual	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puntos_j1[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puntos_j1[1]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puntos_j2[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puntos_j2[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- victoria_final[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- victoria_final[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado_final	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limpiar_tablero	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- turno_jugador	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inicio_partida	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso_jugada	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jugada_valida	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gana_j1	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- empate	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gana_j2	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirmar_modo	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fin_juego	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- movimiento_valido	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_movimiento_valido : std_logic;
SIGNAL ww_E_maquina : std_logic;
SIGNAL ww_e_tablero : std_logic;
SIGNAL ww_E_teclado : std_logic;
SIGNAL ww_modo_actual : std_logic;
SIGNAL ww_puntos_j1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_puntos_j2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_victoria_final : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_resultado_final : std_logic;
SIGNAL ww_limpiar_tablero : std_logic;
SIGNAL ww_turno_jugador : std_logic;
SIGNAL ww_inicio_partida : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \fstate.INICIO~0_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \contador_partidas[1]~0_combout\ : std_logic;
SIGNAL \contador_partidas[0]~1_combout\ : std_logic;
SIGNAL \contador_partidas[2]~2_combout\ : std_logic;
SIGNAL \jugada_valida~input_o\ : std_logic;
SIGNAL \gana_j2~input_o\ : std_logic;
SIGNAL \confirmar_modo~input_o\ : std_logic;
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
SIGNAL \turno_jugador~output_o\ : std_logic;
SIGNAL \inicio_partida~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pulso_jugada~input_o\ : std_logic;
SIGNAL \fin_juego~input_o\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \fstate.reseteo~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \fstate.INICIO~1_combout\ : std_logic;
SIGNAL \fstate.INICIO~q\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \fstate.SEL_MOD~q\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \Selector4~4_combout\ : std_logic;
SIGNAL \Selector4~5_combout\ : std_logic;
SIGNAL \fstate.VERIF~q\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Selector7~5_combout\ : std_logic;
SIGNAL \Selector7~6_combout\ : std_logic;
SIGNAL \fstate.RES_F~q\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \fstate.FIN_P~q\ : std_logic;
SIGNAL \fstate.VER_F~feeder_combout\ : std_logic;
SIGNAL \fstate.VER_F~q\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \fstate.IN_P~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \fstate.ESP_J~q\ : std_logic;
SIGNAL \gana_j1~input_o\ : std_logic;
SIGNAL \empate~input_o\ : std_logic;
SIGNAL \puntos1[0]~0_combout\ : std_logic;
SIGNAL \puntos1[0]~1_combout\ : std_logic;
SIGNAL \puntos1[1]~2_combout\ : std_logic;
SIGNAL \puntos2[0]~0_combout\ : std_logic;
SIGNAL \puntos2[0]~1_combout\ : std_logic;
SIGNAL \puntos2[1]~2_combout\ : std_logic;
SIGNAL \victoria_final_int~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \resultado_final_int~feeder_combout\ : std_logic;
SIGNAL \resultado_final_int~q\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \movimiento_valido~input_o\ : std_logic;
SIGNAL \turno_jugador_int~0_combout\ : std_logic;
SIGNAL \turno_jugador_int~q\ : std_logic;
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
ww_movimiento_valido <= movimiento_valido;
E_maquina <= ww_E_maquina;
e_tablero <= ww_e_tablero;
E_teclado <= ww_E_teclado;
modo_actual <= ww_modo_actual;
puntos_j1 <= ww_puntos_j1;
puntos_j2 <= ww_puntos_j2;
victoria_final <= ww_victoria_final;
resultado_final <= ww_resultado_final;
limpiar_tablero <= ww_limpiar_tablero;
turno_jugador <= ww_turno_jugador;
inicio_partida <= ww_inicio_partida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

-- Location: FF_X1_Y42_N13
\contador_partidas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_partidas[1]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_partidas(1));

-- Location: FF_X1_Y42_N31
\contador_partidas[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_partidas[0]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_partidas(0));

-- Location: FF_X1_Y42_N25
\contador_partidas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_partidas[2]~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_partidas(2));

-- Location: LCCOMB_X1_Y42_N26
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!contador_partidas(2) & ((!contador_partidas(1)) # (!contador_partidas(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_partidas(2),
	datac => contador_partidas(0),
	datad => contador_partidas(1),
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X3_Y42_N30
\fstate.INICIO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.INICIO~0_combout\ = (!\fstate.reseteo~q\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~input_o\,
	datad => \fstate.reseteo~q\,
	combout => \fstate.INICIO~0_combout\);

-- Location: LCCOMB_X2_Y42_N12
\Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\fin_juego~input_o\ & \fstate.VERIF~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fin_juego~input_o\,
	datad => \fstate.VERIF~q\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X3_Y42_N26
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\fstate.INICIO~q\ & (\reset_n~input_o\ & !\fstate.reseteo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.INICIO~q\,
	datac => \reset_n~input_o\,
	datad => \fstate.reseteo~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X1_Y42_N12
\contador_partidas[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_partidas[1]~0_combout\ = contador_partidas(1) $ (((contador_partidas(0) & \fstate.FIN_P~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_partidas(0),
	datac => contador_partidas(1),
	datad => \fstate.FIN_P~q\,
	combout => \contador_partidas[1]~0_combout\);

-- Location: LCCOMB_X1_Y42_N30
\contador_partidas[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_partidas[0]~1_combout\ = contador_partidas(0) $ (\fstate.FIN_P~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador_partidas(0),
	datad => \fstate.FIN_P~q\,
	combout => \contador_partidas[0]~1_combout\);

-- Location: LCCOMB_X1_Y42_N24
\contador_partidas[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_partidas[2]~2_combout\ = contador_partidas(2) $ (((contador_partidas(0) & (\fstate.FIN_P~q\ & contador_partidas(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_partidas(0),
	datab => \fstate.FIN_P~q\,
	datac => contador_partidas(2),
	datad => contador_partidas(1),
	combout => \contador_partidas[2]~2_combout\);

-- Location: IOIBUF_X0_Y44_N22
\jugada_valida~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jugada_valida,
	o => \jugada_valida~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\gana_j2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gana_j2,
	o => \gana_j2~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\confirmar_modo~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirmar_modo,
	o => \confirmar_modo~input_o\);

-- Location: IOOBUF_X0_Y33_N16
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

-- Location: IOOBUF_X0_Y33_N23
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

-- Location: IOOBUF_X0_Y32_N16
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

-- Location: IOOBUF_X83_Y73_N2
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

-- Location: IOOBUF_X0_Y44_N16
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

-- Location: IOOBUF_X0_Y34_N23
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

-- Location: IOOBUF_X0_Y45_N23
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

-- Location: IOOBUF_X0_Y35_N9
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

-- Location: IOOBUF_X0_Y35_N16
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

-- Location: IOOBUF_X0_Y44_N9
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

-- Location: IOOBUF_X0_Y35_N2
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

-- Location: IOOBUF_X0_Y44_N2
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

-- Location: IOOBUF_X0_Y55_N23
\turno_jugador~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \turno_jugador_int~q\,
	devoe => ww_devoe,
	o => \turno_jugador~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\inicio_partida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fstate.IN_P~q\,
	devoe => ww_devoe,
	o => \inicio_partida~output_o\);

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

-- Location: IOIBUF_X0_Y34_N1
\pulso_jugada~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso_jugada,
	o => \pulso_jugada~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\fin_juego~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fin_juego,
	o => \fin_juego~input_o\);

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

-- Location: LCCOMB_X3_Y42_N4
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\fstate.reseteo~q\) # (\fstate.RES_F~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fstate.reseteo~q\,
	datad => \fstate.RES_F~q\,
	combout => \Selector8~0_combout\);

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

-- Location: FF_X3_Y42_N5
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

-- Location: LCCOMB_X3_Y42_N28
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

-- Location: LCCOMB_X2_Y42_N16
\Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\fstate.ESP_J~q\ & ((\fstate.RES_F~q\ & (!\reset_n~input_o\)) # (!\fstate.RES_F~q\ & ((\fin_juego~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \fin_juego~input_o\,
	datac => \fstate.ESP_J~q\,
	datad => \fstate.RES_F~q\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X2_Y42_N8
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\fstate.ESP_J~q\ & ((\jugada_valida~input_o\) # (\pulso_jugada~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugada_valida~input_o\,
	datab => \pulso_jugada~input_o\,
	datad => \fstate.ESP_J~q\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X3_Y42_N12
\Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\Selector0~0_combout\) # ((\Selector0~1_combout\ & ((\Selector0~2_combout\) # (\Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector0~2_combout\,
	datad => \Selector4~1_combout\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X3_Y42_N22
\fstate.INICIO~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.INICIO~1_combout\ = (\Selector0~4_combout\ & (\fstate.INICIO~0_combout\)) # (!\Selector0~4_combout\ & ((\Selector0~3_combout\ & (\fstate.INICIO~0_combout\)) # (!\Selector0~3_combout\ & ((\fstate.INICIO~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.INICIO~0_combout\,
	datab => \Selector0~4_combout\,
	datac => \fstate.INICIO~q\,
	datad => \Selector0~3_combout\,
	combout => \fstate.INICIO~1_combout\);

-- Location: FF_X3_Y42_N23
\fstate.INICIO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fstate.INICIO~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.INICIO~q\);

-- Location: LCCOMB_X3_Y42_N14
\Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = ((\reset_n~input_o\ & ((\fstate.reseteo~q\) # (!\fstate.INICIO~q\)))) # (!\Selector7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.reseteo~q\,
	datab => \reset_n~input_o\,
	datac => \fstate.INICIO~q\,
	datad => \Selector7~2_combout\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X3_Y42_N10
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((!\Selector0~4_combout\ & (\fstate.SEL_MOD~q\ & !\Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector0~4_combout\,
	datac => \fstate.SEL_MOD~q\,
	datad => \Selector0~3_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X3_Y42_N11
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

-- Location: LCCOMB_X3_Y42_N8
\Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\confirmar_modo~input_o\ & \fstate.SEL_MOD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmar_modo~input_o\,
	datac => \fstate.SEL_MOD~q\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X3_Y42_N18
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\fstate.INICIO~q\ & (!\fstate.reseteo~q\ & !\fstate.SEL_MOD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.INICIO~q\,
	datac => \fstate.reseteo~q\,
	datad => \fstate.SEL_MOD~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X3_Y42_N24
\Selector4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = (!\Selector0~1_combout\ & ((\fstate.SEL_MOD~q\ & (\confirmar_modo~input_o\)) # (!\fstate.SEL_MOD~q\ & ((\reset_n~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmar_modo~input_o\,
	datab => \reset_n~input_o\,
	datac => \fstate.SEL_MOD~q\,
	datad => \Selector0~1_combout\,
	combout => \Selector4~3_combout\);

-- Location: LCCOMB_X2_Y42_N10
\Selector4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~4_combout\ = (\Selector4~2_combout\) # ((\Selector4~1_combout\) # ((\Selector4~3_combout\) # (!\Selector7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~2_combout\,
	datab => \Selector4~1_combout\,
	datac => \Selector7~2_combout\,
	datad => \Selector4~3_combout\,
	combout => \Selector4~4_combout\);

-- Location: LCCOMB_X2_Y42_N6
\Selector4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~5_combout\ = (!\process_0~2_combout\ & ((\Selector4~1_combout\) # ((\fstate.VERIF~q\ & !\Selector4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => \Selector4~1_combout\,
	datac => \fstate.VERIF~q\,
	datad => \Selector4~4_combout\,
	combout => \Selector4~5_combout\);

-- Location: FF_X2_Y42_N7
\fstate.VERIF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.VERIF~q\);

-- Location: LCCOMB_X2_Y42_N18
\Selector7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\fstate.VERIF~q\ & ((!\fin_juego~input_o\))) # (!\fstate.VERIF~q\ & (\reset_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \fin_juego~input_o\,
	datad => \fstate.VERIF~q\,
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X2_Y42_N0
\Selector7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (\fstate.ESP_J~q\ & (!\jugada_valida~input_o\ & (!\pulso_jugada~input_o\))) # (!\fstate.ESP_J~q\ & (((\Selector7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugada_valida~input_o\,
	datab => \pulso_jugada~input_o\,
	datac => \fstate.ESP_J~q\,
	datad => \Selector7~3_combout\,
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X2_Y42_N2
\Selector7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~5_combout\ = (\fstate.RES_F~q\ & (\Selector7~2_combout\ & ((\fstate.SEL_MOD~q\) # (\Selector7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.SEL_MOD~q\,
	datab => \fstate.RES_F~q\,
	datac => \Selector7~2_combout\,
	datad => \Selector7~4_combout\,
	combout => \Selector7~5_combout\);

-- Location: LCCOMB_X2_Y42_N24
\Selector7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~6_combout\ = (\Selector2~0_combout\ & (((!\Selector7~1_combout\ & \Selector7~5_combout\)))) # (!\Selector2~0_combout\ & ((\fstate.VER_F~q\) # ((!\Selector7~1_combout\ & \Selector7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \fstate.VER_F~q\,
	datac => \Selector7~1_combout\,
	datad => \Selector7~5_combout\,
	combout => \Selector7~6_combout\);

-- Location: FF_X2_Y42_N25
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

-- Location: LCCOMB_X2_Y42_N30
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!\reset_n~input_o\ & \fstate.RES_F~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \fstate.RES_F~q\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X2_Y42_N26
\Selector5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = (\fstate.VERIF~q\ & (\fin_juego~input_o\ & (!\process_0~2_combout\ & \Selector4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.VERIF~q\,
	datab => \fin_juego~input_o\,
	datac => \process_0~2_combout\,
	datad => \Selector4~4_combout\,
	combout => \Selector5~4_combout\);

-- Location: FF_X2_Y42_N27
\fstate.FIN_P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.FIN_P~q\);

-- Location: LCCOMB_X2_Y42_N28
\fstate.VER_F~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.VER_F~feeder_combout\ = \fstate.FIN_P~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fstate.FIN_P~q\,
	combout => \fstate.VER_F~feeder_combout\);

-- Location: FF_X2_Y42_N29
\fstate.VER_F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fstate.VER_F~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.VER_F~q\);

-- Location: LCCOMB_X2_Y42_N14
\Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (!\fstate.VER_F~q\ & (!\fstate.FIN_P~q\ & !\fstate.IN_P~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fstate.VER_F~q\,
	datac => \fstate.FIN_P~q\,
	datad => \fstate.IN_P~q\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X2_Y42_N20
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\ & ((\fstate.VER_F~q\) # ((\Selector7~2_combout\ & \Selector7~1_combout\)))) # (!\Selector2~0_combout\ & (\Selector7~2_combout\ & (\Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Selector7~2_combout\,
	datac => \Selector7~1_combout\,
	datad => \fstate.VER_F~q\,
	combout => \Selector2~1_combout\);

-- Location: FF_X2_Y42_N21
\fstate.IN_P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.IN_P~q\);

-- Location: LCCOMB_X2_Y42_N4
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\fstate.IN_P~q\) # ((!\jugada_valida~input_o\ & (!\pulso_jugada~input_o\ & \fstate.ESP_J~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugada_valida~input_o\,
	datab => \pulso_jugada~input_o\,
	datac => \fstate.ESP_J~q\,
	datad => \fstate.IN_P~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X2_Y42_N5
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

-- Location: IOIBUF_X0_Y42_N8
\gana_j1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gana_j1,
	o => \gana_j1~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\empate~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_empate,
	o => \empate~input_o\);

-- Location: LCCOMB_X1_Y42_N28
\puntos1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puntos1[0]~0_combout\ = (\fstate.FIN_P~q\ & ((\gana_j1~input_o\) # ((!\gana_j2~input_o\ & \empate~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gana_j2~input_o\,
	datab => \gana_j1~input_o\,
	datac => \empate~input_o\,
	datad => \fstate.FIN_P~q\,
	combout => \puntos1[0]~0_combout\);

-- Location: LCCOMB_X1_Y42_N8
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

-- Location: FF_X1_Y42_N9
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

-- Location: LCCOMB_X1_Y42_N2
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

-- Location: FF_X1_Y42_N3
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

-- Location: LCCOMB_X1_Y42_N10
\puntos2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puntos2[0]~0_combout\ = (!\gana_j1~input_o\ & (\fstate.FIN_P~q\ & ((\gana_j2~input_o\) # (\empate~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gana_j2~input_o\,
	datab => \gana_j1~input_o\,
	datac => \empate~input_o\,
	datad => \fstate.FIN_P~q\,
	combout => \puntos2[0]~0_combout\);

-- Location: LCCOMB_X1_Y42_N0
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

-- Location: FF_X1_Y42_N1
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

-- Location: LCCOMB_X1_Y42_N22
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

-- Location: FF_X1_Y42_N23
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

-- Location: LCCOMB_X1_Y42_N16
\victoria_final_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \victoria_final_int~0_combout\ = (puntos2(1) & (puntos1(1) & ((puntos1(0)) # (!puntos2(0))))) # (!puntos2(1) & (((puntos1(0)) # (puntos1(1))) # (!puntos2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puntos2(1),
	datab => puntos2(0),
	datac => puntos1(0),
	datad => puntos1(1),
	combout => \victoria_final_int~0_combout\);

-- Location: FF_X2_Y42_N19
\victoria_final_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \victoria_final_int~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => victoria_final_int(0));

-- Location: LCCOMB_X1_Y42_N6
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (puntos2(1) & ((puntos2(0)) # ((!puntos1(1)) # (!puntos1(0))))) # (!puntos2(1) & (!puntos1(1) & ((puntos2(0)) # (!puntos1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puntos2(1),
	datab => puntos2(0),
	datac => puntos1(0),
	datad => puntos1(1),
	combout => \LessThan0~0_combout\);

-- Location: FF_X2_Y42_N9
\victoria_final_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \LessThan0~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => victoria_final_int(1));

-- Location: LCCOMB_X2_Y42_N22
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

-- Location: FF_X2_Y42_N23
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
	ena => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado_final_int~q\);

-- Location: LCCOMB_X3_Y42_N20
WideOr0 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\fstate.reseteo~q\) # ((\fstate.IN_P~q\) # (!\fstate.INICIO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.reseteo~q\,
	datac => \fstate.INICIO~q\,
	datad => \fstate.IN_P~q\,
	combout => \WideOr0~combout\);

-- Location: IOIBUF_X0_Y55_N15
\movimiento_valido~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_movimiento_valido,
	o => \movimiento_valido~input_o\);

-- Location: LCCOMB_X1_Y55_N12
\turno_jugador_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \turno_jugador_int~0_combout\ = \turno_jugador_int~q\ $ (\movimiento_valido~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \turno_jugador_int~q\,
	datad => \movimiento_valido~input_o\,
	combout => \turno_jugador_int~0_combout\);

-- Location: FF_X1_Y55_N13
turno_jugador_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \turno_jugador_int~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \turno_jugador_int~q\);

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

ww_turno_jugador <= \turno_jugador~output_o\;

ww_inicio_partida <= \inicio_partida~output_o\;
END structure;


