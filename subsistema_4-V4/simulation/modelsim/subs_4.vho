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

-- DATE "11/22/2025 11:53:09"

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
	modo_1 : IN std_logic;
	modo_2 : IN std_logic;
	jugada_valida : IN std_logic;
	gana_j1 : IN std_logic;
	gana_j2 : IN std_logic;
	empate : IN std_logic;
	E_maquina : OUT std_logic;
	e_tablero : OUT std_logic;
	E_teclado : OUT std_logic;
	modo_actual : OUT std_logic;
	victoria_final : OUT std_logic_vector(1 DOWNTO 0);
	resultado_final : OUT std_logic;
	hubo_ganador : OUT std_logic;
	limpiar_tablero : OUT std_logic;
	turno_jugador : OUT std_logic;
	inicio_partida : OUT std_logic
	);
END Subsistema_4;

-- Design Ports Information
-- E_maquina	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_tablero	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E_teclado	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modo_actual	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- victoria_final[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- victoria_final[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado_final	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hubo_ganador	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limpiar_tablero	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- turno_jugador	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inicio_partida	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modo_1	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modo_2	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jugada_valida	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gana_j1	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gana_j2	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- empate	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_modo_1 : std_logic;
SIGNAL ww_modo_2 : std_logic;
SIGNAL ww_jugada_valida : std_logic;
SIGNAL ww_gana_j1 : std_logic;
SIGNAL ww_gana_j2 : std_logic;
SIGNAL ww_empate : std_logic;
SIGNAL ww_E_maquina : std_logic;
SIGNAL ww_e_tablero : std_logic;
SIGNAL ww_E_teclado : std_logic;
SIGNAL ww_modo_actual : std_logic;
SIGNAL ww_victoria_final : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_resultado_final : std_logic;
SIGNAL ww_hubo_ganador : std_logic;
SIGNAL ww_limpiar_tablero : std_logic;
SIGNAL ww_turno_jugador : std_logic;
SIGNAL ww_inicio_partida : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \puntos2[1]~2_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \contador_partidas[1]~0_combout\ : std_logic;
SIGNAL \E_maquina~output_o\ : std_logic;
SIGNAL \e_tablero~output_o\ : std_logic;
SIGNAL \E_teclado~output_o\ : std_logic;
SIGNAL \modo_actual~output_o\ : std_logic;
SIGNAL \victoria_final[0]~output_o\ : std_logic;
SIGNAL \victoria_final[1]~output_o\ : std_logic;
SIGNAL \resultado_final~output_o\ : std_logic;
SIGNAL \hubo_ganador~output_o\ : std_logic;
SIGNAL \limpiar_tablero~output_o\ : std_logic;
SIGNAL \turno_jugador~output_o\ : std_logic;
SIGNAL \inicio_partida~output_o\ : std_logic;
SIGNAL \modo_2~input_o\ : std_logic;
SIGNAL \modo_1~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \empate~input_o\ : std_logic;
SIGNAL \gana_j2~input_o\ : std_logic;
SIGNAL \jugada_valida~input_o\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \modo_sel~0_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector4~4_combout\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \fstate.VERIF~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector0~6_combout\ : std_logic;
SIGNAL \fstate.INICIO~0_combout\ : std_logic;
SIGNAL \fstate.INICIO~q\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \fstate.SEL_MOD~q\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Selector7~5_combout\ : std_logic;
SIGNAL \fstate.RES_F~q\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \fstate.FIN_P~q\ : std_logic;
SIGNAL \fstate.VER_F~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \contador_partidas[0]~2_combout\ : std_logic;
SIGNAL \contador_partidas[2]~1_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \fstate.IN_P~q\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \fstate.ESP_J~q\ : std_logic;
SIGNAL \modo_sel~combout\ : std_logic;
SIGNAL \E_maquina~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \puntos1[0]~0_combout\ : std_logic;
SIGNAL \puntos1[1]~1_combout\ : std_logic;
SIGNAL \puntos1[0]~2_combout\ : std_logic;
SIGNAL \puntos2[1]~0_combout\ : std_logic;
SIGNAL \puntos2[0]~1_combout\ : std_logic;
SIGNAL \victoria_final_int~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \resultado_final_int~feeder_combout\ : std_logic;
SIGNAL \resultado_final_int~q\ : std_logic;
SIGNAL \gana_j1~input_o\ : std_logic;
SIGNAL \hubo_ganador_int~0_combout\ : std_logic;
SIGNAL \hubo_ganador_int~q\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \turno_jugador_int~0_combout\ : std_logic;
SIGNAL \turno_jugador_int~q\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \inicio_partida_int~0_combout\ : std_logic;
SIGNAL \inicio_partida_int~q\ : std_logic;
SIGNAL victoria_final_int : std_logic_vector(1 DOWNTO 0);
SIGNAL puntos2 : std_logic_vector(1 DOWNTO 0);
SIGNAL puntos1 : std_logic_vector(1 DOWNTO 0);
SIGNAL contador_partidas : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_modo_1 <= modo_1;
ww_modo_2 <= modo_2;
ww_jugada_valida <= jugada_valida;
ww_gana_j1 <= gana_j1;
ww_gana_j2 <= gana_j2;
ww_empate <= empate;
E_maquina <= ww_E_maquina;
e_tablero <= ww_e_tablero;
E_teclado <= ww_E_teclado;
modo_actual <= ww_modo_actual;
victoria_final <= ww_victoria_final;
resultado_final <= ww_resultado_final;
hubo_ganador <= ww_hubo_ganador;
limpiar_tablero <= ww_limpiar_tablero;
turno_jugador <= ww_turno_jugador;
inicio_partida <= ww_inicio_partida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

-- Location: FF_X3_Y44_N7
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

-- Location: FF_X3_Y44_N11
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

-- Location: LCCOMB_X2_Y44_N26
\Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (!\fstate.SEL_MOD~q\ & (\jugada_valida~input_o\ & \fstate.ESP_J~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.SEL_MOD~q\,
	datab => \jugada_valida~input_o\,
	datad => \fstate.ESP_J~q\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X3_Y44_N6
\puntos2[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puntos2[1]~2_combout\ = puntos2(1) $ (((puntos2(0) & \puntos2[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => puntos2(0),
	datac => puntos2(1),
	datad => \puntos2[1]~0_combout\,
	combout => \puntos2[1]~2_combout\);

-- Location: LCCOMB_X3_Y44_N2
\Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\fstate.VER_F~q\ & ((contador_partidas(2)) # ((contador_partidas(1) & contador_partidas(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_partidas(1),
	datab => contador_partidas(2),
	datac => \fstate.VER_F~q\,
	datad => contador_partidas(0),
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X2_Y44_N12
\Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\modo_2~input_o\) # ((\modo_1~input_o\) # ((\jugada_valida~input_o\ & !\fstate.SEL_MOD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo_2~input_o\,
	datab => \modo_1~input_o\,
	datac => \jugada_valida~input_o\,
	datad => \fstate.SEL_MOD~q\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X3_Y44_N10
\contador_partidas[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_partidas[1]~0_combout\ = contador_partidas(1) $ (((\fstate.FIN_P~q\ & contador_partidas(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fstate.FIN_P~q\,
	datac => contador_partidas(1),
	datad => contador_partidas(0),
	combout => \contador_partidas[1]~0_combout\);

-- Location: IOOBUF_X0_Y46_N16
\E_maquina~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_maquina~0_combout\,
	devoe => ww_devoe,
	o => \E_maquina~output_o\);

-- Location: IOOBUF_X0_Y46_N23
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

-- Location: IOOBUF_X0_Y45_N23
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

-- Location: IOOBUF_X0_Y47_N16
\modo_actual~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \modo_sel~combout\,
	devoe => ww_devoe,
	o => \modo_actual~output_o\);

-- Location: IOOBUF_X0_Y42_N9
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

-- Location: IOOBUF_X0_Y48_N2
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

-- Location: IOOBUF_X0_Y47_N23
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

-- Location: IOOBUF_X0_Y35_N2
\hubo_ganador~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hubo_ganador_int~q\,
	devoe => ww_devoe,
	o => \hubo_ganador~output_o\);

-- Location: IOOBUF_X0_Y47_N2
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

-- Location: IOOBUF_X0_Y48_N9
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
	i => \inicio_partida_int~q\,
	devoe => ww_devoe,
	o => \inicio_partida~output_o\);

-- Location: IOIBUF_X0_Y44_N15
\modo_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_modo_2,
	o => \modo_2~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\modo_1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_modo_1,
	o => \modo_1~input_o\);

-- Location: LCCOMB_X1_Y44_N16
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\jugada_valida~input_o\ & (!\modo_2~input_o\ & (!\modo_1~input_o\ & \fstate.ESP_J~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugada_valida~input_o\,
	datab => \modo_2~input_o\,
	datac => \modo_1~input_o\,
	datad => \fstate.ESP_J~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X2_Y44_N30
\Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\fstate.SEL_MOD~q\ & ((\modo_2~input_o\) # ((\modo_1~input_o\)))) # (!\fstate.SEL_MOD~q\ & (\fstate.ESP_J~q\ & ((\modo_2~input_o\) # (\modo_1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.SEL_MOD~q\,
	datab => \modo_2~input_o\,
	datac => \modo_1~input_o\,
	datad => \fstate.ESP_J~q\,
	combout => \Selector0~2_combout\);

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

-- Location: LCCOMB_X2_Y44_N4
\Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (!\fstate.SEL_MOD~q\ & !\fstate.ESP_J~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fstate.SEL_MOD~q\,
	datad => \fstate.ESP_J~q\,
	combout => \Selector2~3_combout\);

-- Location: IOIBUF_X0_Y44_N1
\empate~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_empate,
	o => \empate~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\gana_j2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gana_j2,
	o => \gana_j2~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\jugada_valida~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jugada_valida,
	o => \jugada_valida~input_o\);

-- Location: LCCOMB_X1_Y44_N26
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\fstate.ESP_J~q\ & ((\modo_1~input_o\) # ((\modo_2~input_o\) # (\jugada_valida~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo_1~input_o\,
	datab => \modo_2~input_o\,
	datac => \jugada_valida~input_o\,
	datad => \fstate.ESP_J~q\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X3_Y44_N24
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (!\reset_n~input_o\ & \fstate.RES_F~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \fstate.RES_F~q\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X1_Y44_N22
\Selector4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = (\fstate.VERIF~q\ & (!\process_0~3_combout\ & ((\fstate.SEL_MOD~q\) # (!\Selector0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.VERIF~q\,
	datab => \fstate.SEL_MOD~q\,
	datac => \Selector0~4_combout\,
	datad => \process_0~3_combout\,
	combout => \Selector4~3_combout\);

-- Location: LCCOMB_X1_Y44_N30
\modo_sel~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \modo_sel~0_combout\ = (\fstate.SEL_MOD~q\ & ((\modo_1~input_o\) # (\modo_2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo_1~input_o\,
	datab => \modo_2~input_o\,
	datad => \fstate.SEL_MOD~q\,
	combout => \modo_sel~0_combout\);

-- Location: LCCOMB_X1_Y44_N8
\Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (!\Selector4~1_combout\ & (!\Selector4~0_combout\ & (\Selector7~0_combout\ & !\modo_sel~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~1_combout\,
	datab => \Selector4~0_combout\,
	datac => \Selector7~0_combout\,
	datad => \modo_sel~0_combout\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X1_Y44_N0
\Selector4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~4_combout\ = (\process_0~3_combout\ & (((\Selector4~3_combout\ & \Selector4~2_combout\)))) # (!\process_0~3_combout\ & ((\Selector4~1_combout\) # ((\Selector4~3_combout\ & \Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \Selector4~1_combout\,
	datac => \Selector4~3_combout\,
	datad => \Selector4~2_combout\,
	combout => \Selector4~4_combout\);

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

-- Location: FF_X1_Y44_N1
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

-- Location: LCCOMB_X1_Y44_N14
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\fstate.VERIF~q\ & ((\gana_j1~input_o\) # ((\empate~input_o\) # (\gana_j2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gana_j1~input_o\,
	datab => \empate~input_o\,
	datac => \gana_j2~input_o\,
	datad => \fstate.VERIF~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X2_Y44_N24
\Selector0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~6_combout\ = (\Selector2~3_combout\ & ((\fstate.RES_F~q\ & (!\reset_n~input_o\)) # (!\fstate.RES_F~q\ & ((\Selector4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.RES_F~q\,
	datab => \reset_n~input_o\,
	datac => \Selector2~3_combout\,
	datad => \Selector4~0_combout\,
	combout => \Selector0~6_combout\);

-- Location: LCCOMB_X2_Y44_N10
\fstate.INICIO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.INICIO~0_combout\ = (\Selector0~5_combout\) # ((\fstate.INICIO~q\) # (\Selector0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~5_combout\,
	datac => \fstate.INICIO~q\,
	datad => \Selector0~6_combout\,
	combout => \fstate.INICIO~0_combout\);

-- Location: FF_X2_Y44_N11
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

-- Location: LCCOMB_X2_Y44_N0
\Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\reset_n~input_o\ & !\fstate.INICIO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \fstate.INICIO~q\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X2_Y44_N8
\Selector0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\Selector0~3_combout\) # (((\Selector0~2_combout\) # (\Selector0~4_combout\)) # (!\Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \Selector7~0_combout\,
	datac => \Selector0~2_combout\,
	datad => \Selector0~4_combout\,
	combout => \Selector0~5_combout\);

-- Location: LCCOMB_X2_Y44_N6
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Selector0~4_combout\) # ((!\Selector0~5_combout\ & (\fstate.SEL_MOD~q\ & !\Selector0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~4_combout\,
	datab => \Selector0~5_combout\,
	datac => \fstate.SEL_MOD~q\,
	datad => \Selector0~6_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X2_Y44_N7
\fstate.SEL_MOD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector1~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.SEL_MOD~q\);

-- Location: LCCOMB_X2_Y44_N16
\Selector7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\Selector7~0_combout\ & (((!\fstate.SEL_MOD~q\ & !\fstate.ESP_J~q\)) # (!\Selector7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datab => \fstate.SEL_MOD~q\,
	datac => \Selector7~0_combout\,
	datad => \fstate.ESP_J~q\,
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X2_Y44_N28
\Selector7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (\Selector2~3_combout\ & ((\Selector4~0_combout\) # ((!\reset_n~input_o\ & !\fstate.VERIF~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \Selector2~3_combout\,
	datac => \fstate.VERIF~q\,
	datad => \Selector4~0_combout\,
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X2_Y44_N20
\Selector7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~5_combout\ = (\Selector7~1_combout\) # ((\Selector7~3_combout\ & (\fstate.RES_F~q\ & !\Selector7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~1_combout\,
	datab => \Selector7~3_combout\,
	datac => \fstate.RES_F~q\,
	datad => \Selector7~4_combout\,
	combout => \Selector7~5_combout\);

-- Location: FF_X2_Y44_N21
\fstate.RES_F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.RES_F~q\);

-- Location: LCCOMB_X2_Y44_N22
\Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Selector4~0_combout\ & ((\reset_n~input_o\) # (!\fstate.RES_F~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \fstate.RES_F~q\,
	datad => \reset_n~input_o\,
	combout => \Selector5~2_combout\);

-- Location: FF_X2_Y44_N23
\fstate.FIN_P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.FIN_P~q\);

-- Location: FF_X2_Y44_N27
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

-- Location: LCCOMB_X2_Y44_N14
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\fstate.FIN_P~q\ & (!\fstate.VER_F~q\ & !\fstate.IN_P~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.FIN_P~q\,
	datac => \fstate.VER_F~q\,
	datad => \fstate.IN_P~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X4_Y44_N4
\contador_partidas[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_partidas[0]~2_combout\ = !contador_partidas(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador_partidas(0),
	combout => \contador_partidas[0]~2_combout\);

-- Location: FF_X4_Y44_N5
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
	ena => \fstate.FIN_P~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_partidas(0));

-- Location: LCCOMB_X3_Y44_N8
\contador_partidas[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_partidas[2]~1_combout\ = contador_partidas(2) $ (((contador_partidas(1) & (\fstate.FIN_P~q\ & contador_partidas(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_partidas(1),
	datab => \fstate.FIN_P~q\,
	datac => contador_partidas(2),
	datad => contador_partidas(0),
	combout => \contador_partidas[2]~1_combout\);

-- Location: FF_X3_Y44_N9
\contador_partidas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_partidas[2]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_partidas(2));

-- Location: LCCOMB_X3_Y44_N14
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!contador_partidas(2) & (\fstate.VER_F~q\ & ((!contador_partidas(0)) # (!contador_partidas(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_partidas(1),
	datab => contador_partidas(2),
	datac => \fstate.VER_F~q\,
	datad => contador_partidas(0),
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X2_Y44_N2
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector2~1_combout\) # ((\Selector7~0_combout\ & \modo_sel~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector7~0_combout\,
	datac => \Selector2~1_combout\,
	datad => \modo_sel~0_combout\,
	combout => \Selector2~2_combout\);

-- Location: FF_X2_Y44_N3
\fstate.IN_P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.IN_P~q\);

-- Location: LCCOMB_X2_Y44_N18
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # (\fstate.IN_P~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector3~0_combout\,
	datad => \fstate.IN_P~q\,
	combout => \Selector3~1_combout\);

-- Location: FF_X2_Y44_N19
\fstate.ESP_J\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.ESP_J~q\);

-- Location: LCCOMB_X1_Y44_N4
modo_sel : cycloneiii_lcell_comb
-- Equation(s):
-- \modo_sel~combout\ = (\modo_sel~0_combout\ & ((!\modo_1~input_o\))) # (!\modo_sel~0_combout\ & (\modo_sel~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \modo_sel~combout\,
	datac => \modo_sel~0_combout\,
	datad => \modo_1~input_o\,
	combout => \modo_sel~combout\);

-- Location: LCCOMB_X1_Y46_N12
\E_maquina~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \E_maquina~0_combout\ = (\fstate.ESP_J~q\ & \modo_sel~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fstate.ESP_J~q\,
	datad => \modo_sel~combout\,
	combout => \E_maquina~0_combout\);

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

-- Location: LCCOMB_X3_Y44_N18
\puntos1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puntos1[0]~0_combout\ = (\fstate.FIN_P~q\ & ((\gana_j1~input_o\) # ((\empate~input_o\ & !\gana_j2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gana_j1~input_o\,
	datab => \empate~input_o\,
	datac => \gana_j2~input_o\,
	datad => \fstate.FIN_P~q\,
	combout => \puntos1[0]~0_combout\);

-- Location: LCCOMB_X3_Y44_N4
\puntos1[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puntos1[1]~1_combout\ = puntos1(1) $ (((puntos1(0) & \puntos1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puntos1(0),
	datac => puntos1(1),
	datad => \puntos1[0]~0_combout\,
	combout => \puntos1[1]~1_combout\);

-- Location: FF_X3_Y44_N5
\puntos1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \puntos1[1]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => puntos1(1));

-- Location: LCCOMB_X3_Y44_N30
\puntos1[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puntos1[0]~2_combout\ = puntos1(0) $ (\puntos1[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => puntos1(0),
	datad => \puntos1[0]~0_combout\,
	combout => \puntos1[0]~2_combout\);

-- Location: FF_X3_Y44_N31
\puntos1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \puntos1[0]~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => puntos1(0));

-- Location: LCCOMB_X3_Y44_N28
\puntos2[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puntos2[1]~0_combout\ = (!\gana_j1~input_o\ & (\fstate.FIN_P~q\ & ((\empate~input_o\) # (\gana_j2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gana_j1~input_o\,
	datab => \empate~input_o\,
	datac => \gana_j2~input_o\,
	datad => \fstate.FIN_P~q\,
	combout => \puntos2[1]~0_combout\);

-- Location: LCCOMB_X3_Y44_N16
\puntos2[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puntos2[0]~1_combout\ = puntos2(0) $ (\puntos2[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => puntos2(0),
	datad => \puntos2[1]~0_combout\,
	combout => \puntos2[0]~1_combout\);

-- Location: FF_X3_Y44_N17
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

-- Location: LCCOMB_X3_Y44_N20
\victoria_final_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \victoria_final_int~0_combout\ = (puntos2(1) & (puntos1(1) & ((puntos1(0)) # (!puntos2(0))))) # (!puntos2(1) & ((puntos1(1)) # ((puntos1(0)) # (!puntos2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puntos2(1),
	datab => puntos1(1),
	datac => puntos1(0),
	datad => puntos2(0),
	combout => \victoria_final_int~0_combout\);

-- Location: FF_X3_Y44_N21
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
	ena => \process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => victoria_final_int(0));

-- Location: LCCOMB_X3_Y44_N22
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (puntos2(1) & (((puntos2(0)) # (!puntos1(0))) # (!puntos1(1)))) # (!puntos2(1) & (!puntos1(1) & ((puntos2(0)) # (!puntos1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => puntos2(1),
	datab => puntos1(1),
	datac => puntos1(0),
	datad => puntos2(0),
	combout => \LessThan0~0_combout\);

-- Location: FF_X3_Y44_N23
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
	ena => \process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => victoria_final_int(1));

-- Location: LCCOMB_X3_Y44_N12
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

-- Location: FF_X3_Y44_N13
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
	ena => \process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado_final_int~q\);

-- Location: IOIBUF_X0_Y45_N15
\gana_j1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gana_j1,
	o => \gana_j1~input_o\);

-- Location: LCCOMB_X1_Y44_N28
\hubo_ganador_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hubo_ganador_int~0_combout\ = (\gana_j2~input_o\) # ((\gana_j1~input_o\) # ((!\empate~input_o\ & \hubo_ganador_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gana_j2~input_o\,
	datab => \empate~input_o\,
	datac => \hubo_ganador_int~q\,
	datad => \gana_j1~input_o\,
	combout => \hubo_ganador_int~0_combout\);

-- Location: FF_X1_Y44_N29
hubo_ganador_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hubo_ganador_int~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fstate.FIN_P~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hubo_ganador_int~q\);

-- Location: LCCOMB_X1_Y44_N10
WideOr0 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\fstate.IN_P~q\) # (!\fstate.INICIO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.IN_P~q\,
	datac => \fstate.INICIO~q\,
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X1_Y44_N20
\turno_jugador_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \turno_jugador_int~0_combout\ = \jugada_valida~input_o\ $ (\turno_jugador_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugada_valida~input_o\,
	datac => \turno_jugador_int~q\,
	combout => \turno_jugador_int~0_combout\);

-- Location: FF_X1_Y44_N21
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

-- Location: LCCOMB_X3_Y44_N0
\process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (!contador_partidas(1) & (!contador_partidas(2) & (\fstate.IN_P~q\ & !contador_partidas(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_partidas(1),
	datab => contador_partidas(2),
	datac => \fstate.IN_P~q\,
	datad => contador_partidas(0),
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X3_Y44_N26
\inicio_partida_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inicio_partida_int~0_combout\ = (\inicio_partida_int~q\) # (\process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inicio_partida_int~q\,
	datad => \process_0~4_combout\,
	combout => \inicio_partida_int~0_combout\);

-- Location: FF_X3_Y44_N27
inicio_partida_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inicio_partida_int~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inicio_partida_int~q\);

ww_E_maquina <= \E_maquina~output_o\;

ww_e_tablero <= \e_tablero~output_o\;

ww_E_teclado <= \E_teclado~output_o\;

ww_modo_actual <= \modo_actual~output_o\;

ww_victoria_final(0) <= \victoria_final[0]~output_o\;

ww_victoria_final(1) <= \victoria_final[1]~output_o\;

ww_resultado_final <= \resultado_final~output_o\;

ww_hubo_ganador <= \hubo_ganador~output_o\;

ww_limpiar_tablero <= \limpiar_tablero~output_o\;

ww_turno_jugador <= \turno_jugador~output_o\;

ww_inicio_partida <= \inicio_partida~output_o\;
END structure;


