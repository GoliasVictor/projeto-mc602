-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "11/13/2024 02:02:23"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	projeto IS
    PORT (
	clock : IN std_logic;
	resetn : IN std_logic;
	check_input : IN std_logic;
	is_programming : IN std_logic;
	new_code : IN std_logic_vector(0 TO 3);
	code_in : IN std_logic_vector(0 TO 3);
	s : BUFFER std_logic
	);
END projeto;

-- Design Ports Information
-- check_input	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code_in[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_programming	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code_in[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code_in[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code_in[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_code[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_code[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_code[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_code[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_check_input : std_logic;
SIGNAL ww_is_programming : std_logic;
SIGNAL ww_new_code : std_logic_vector(0 TO 3);
SIGNAL ww_code_in : std_logic_vector(0 TO 3);
SIGNAL ww_s : std_logic;
SIGNAL \check_input~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \new_code[0]~input_o\ : std_logic;
SIGNAL \code_memory|flipflop0|Q~feeder_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \code_memory|flipflop0|Q~q\ : std_logic;
SIGNAL \new_code[2]~input_o\ : std_logic;
SIGNAL \code_memory|flipflop2|Q~feeder_combout\ : std_logic;
SIGNAL \code_memory|flipflop2|Q~q\ : std_logic;
SIGNAL \code_in[0]~input_o\ : std_logic;
SIGNAL \code_in[1]~input_o\ : std_logic;
SIGNAL \code_in[2]~input_o\ : std_logic;
SIGNAL \new_code[1]~input_o\ : std_logic;
SIGNAL \code_memory|flipflop1|Q~feeder_combout\ : std_logic;
SIGNAL \code_memory|flipflop1|Q~q\ : std_logic;
SIGNAL \equality_checker|O~0_combout\ : std_logic;
SIGNAL \new_code[3]~input_o\ : std_logic;
SIGNAL \code_memory|flipflop3|Q~feeder_combout\ : std_logic;
SIGNAL \code_memory|flipflop3|Q~q\ : std_logic;
SIGNAL \code_in[3]~input_o\ : std_logic;
SIGNAL \state_machine|state~10_combout\ : std_logic;
SIGNAL \is_programming~input_o\ : std_logic;
SIGNAL \state_machine|state.disabled~0_combout\ : std_logic;
SIGNAL \state_machine|state.disabled~q\ : std_logic;
SIGNAL \state_machine|state~8_combout\ : std_logic;
SIGNAL \state_machine|state.start~q\ : std_logic;
SIGNAL \state_machine|state~9_combout\ : std_logic;
SIGNAL \state_machine|state.witherror~q\ : std_logic;
SIGNAL \state_machine|state~7_combout\ : std_logic;
SIGNAL \state_machine|state.opened~q\ : std_logic;
SIGNAL \ALT_INV_clock~input_o\ : std_logic;
SIGNAL \ALT_INV_code_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_code_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_code_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_is_programming~input_o\ : std_logic;
SIGNAL \ALT_INV_code_in[3]~input_o\ : std_logic;
SIGNAL \state_machine|ALT_INV_state~10_combout\ : std_logic;
SIGNAL \equality_checker|ALT_INV_O~0_combout\ : std_logic;
SIGNAL \code_memory|flipflop2|ALT_INV_Q~q\ : std_logic;
SIGNAL \code_memory|flipflop1|ALT_INV_Q~q\ : std_logic;
SIGNAL \code_memory|flipflop0|ALT_INV_Q~q\ : std_logic;
SIGNAL \state_machine|ALT_INV_state.witherror~q\ : std_logic;
SIGNAL \state_machine|ALT_INV_state.start~q\ : std_logic;
SIGNAL \code_memory|flipflop3|ALT_INV_Q~q\ : std_logic;
SIGNAL \state_machine|ALT_INV_state.disabled~q\ : std_logic;
SIGNAL \state_machine|ALT_INV_state.opened~q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_resetn <= resetn;
ww_check_input <= check_input;
ww_is_programming <= is_programming;
ww_new_code <= new_code;
ww_code_in <= code_in;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clock~input_o\ <= NOT \clock~input_o\;
\ALT_INV_code_in[2]~input_o\ <= NOT \code_in[2]~input_o\;
\ALT_INV_code_in[1]~input_o\ <= NOT \code_in[1]~input_o\;
\ALT_INV_code_in[0]~input_o\ <= NOT \code_in[0]~input_o\;
\ALT_INV_is_programming~input_o\ <= NOT \is_programming~input_o\;
\ALT_INV_code_in[3]~input_o\ <= NOT \code_in[3]~input_o\;
\state_machine|ALT_INV_state~10_combout\ <= NOT \state_machine|state~10_combout\;
\equality_checker|ALT_INV_O~0_combout\ <= NOT \equality_checker|O~0_combout\;
\code_memory|flipflop2|ALT_INV_Q~q\ <= NOT \code_memory|flipflop2|Q~q\;
\code_memory|flipflop1|ALT_INV_Q~q\ <= NOT \code_memory|flipflop1|Q~q\;
\code_memory|flipflop0|ALT_INV_Q~q\ <= NOT \code_memory|flipflop0|Q~q\;
\state_machine|ALT_INV_state.witherror~q\ <= NOT \state_machine|state.witherror~q\;
\state_machine|ALT_INV_state.start~q\ <= NOT \state_machine|state.start~q\;
\code_memory|flipflop3|ALT_INV_Q~q\ <= NOT \code_memory|flipflop3|Q~q\;
\state_machine|ALT_INV_state.disabled~q\ <= NOT \state_machine|state.disabled~q\;
\state_machine|ALT_INV_state.opened~q\ <= NOT \state_machine|state.opened~q\;

-- Location: IOOBUF_X89_Y37_N56
\s~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine|state.opened~q\,
	oe => \state_machine|ALT_INV_state.disabled~q\,
	devoe => ww_devoe,
	o => ww_s);

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y35_N78
\new_code[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_new_code(0),
	o => \new_code[0]~input_o\);

-- Location: MLABCELL_X87_Y35_N9
\code_memory|flipflop0|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \code_memory|flipflop0|Q~feeder_combout\ = ( \clock~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_clock~input_o\,
	combout => \code_memory|flipflop0|Q~feeder_combout\);

-- Location: IOIBUF_X89_Y36_N21
\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: FF_X87_Y35_N10
\code_memory|flipflop0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_code[0]~input_o\,
	d => \code_memory|flipflop0|Q~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \code_memory|flipflop0|Q~q\);

-- Location: IOIBUF_X89_Y35_N44
\new_code[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_new_code(2),
	o => \new_code[2]~input_o\);

-- Location: LABCELL_X88_Y35_N54
\code_memory|flipflop2|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \code_memory|flipflop2|Q~feeder_combout\ = \clock~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clock~input_o\,
	combout => \code_memory|flipflop2|Q~feeder_combout\);

-- Location: FF_X88_Y35_N56
\code_memory|flipflop2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_code[2]~input_o\,
	d => \code_memory|flipflop2|Q~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \code_memory|flipflop2|Q~q\);

-- Location: IOIBUF_X89_Y37_N38
\code_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code_in(0),
	o => \code_in[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\code_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code_in(1),
	o => \code_in[1]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\code_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code_in(2),
	o => \code_in[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\new_code[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_new_code(1),
	o => \new_code[1]~input_o\);

-- Location: LABCELL_X88_Y36_N6
\code_memory|flipflop1|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \code_memory|flipflop1|Q~feeder_combout\ = ( \clock~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_clock~input_o\,
	combout => \code_memory|flipflop1|Q~feeder_combout\);

-- Location: FF_X88_Y36_N7
\code_memory|flipflop1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_code[1]~input_o\,
	d => \code_memory|flipflop1|Q~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \code_memory|flipflop1|Q~q\);

-- Location: MLABCELL_X87_Y35_N54
\equality_checker|O~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \equality_checker|O~0_combout\ = ( \code_in[2]~input_o\ & ( \code_memory|flipflop1|Q~q\ & ( (\code_memory|flipflop2|Q~q\ & (\code_in[1]~input_o\ & (!\code_memory|flipflop0|Q~q\ $ (\code_in[0]~input_o\)))) ) ) ) # ( !\code_in[2]~input_o\ & ( 
-- \code_memory|flipflop1|Q~q\ & ( (!\code_memory|flipflop2|Q~q\ & (\code_in[1]~input_o\ & (!\code_memory|flipflop0|Q~q\ $ (\code_in[0]~input_o\)))) ) ) ) # ( \code_in[2]~input_o\ & ( !\code_memory|flipflop1|Q~q\ & ( (\code_memory|flipflop2|Q~q\ & 
-- (!\code_in[1]~input_o\ & (!\code_memory|flipflop0|Q~q\ $ (\code_in[0]~input_o\)))) ) ) ) # ( !\code_in[2]~input_o\ & ( !\code_memory|flipflop1|Q~q\ & ( (!\code_memory|flipflop2|Q~q\ & (!\code_in[1]~input_o\ & (!\code_memory|flipflop0|Q~q\ $ 
-- (\code_in[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \code_memory|flipflop0|ALT_INV_Q~q\,
	datab => \code_memory|flipflop2|ALT_INV_Q~q\,
	datac => \ALT_INV_code_in[0]~input_o\,
	datad => \ALT_INV_code_in[1]~input_o\,
	datae => \ALT_INV_code_in[2]~input_o\,
	dataf => \code_memory|flipflop1|ALT_INV_Q~q\,
	combout => \equality_checker|O~0_combout\);

-- Location: IOIBUF_X89_Y35_N95
\new_code[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_new_code(3),
	o => \new_code[3]~input_o\);

-- Location: LABCELL_X88_Y35_N39
\code_memory|flipflop3|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \code_memory|flipflop3|Q~feeder_combout\ = ( \clock~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_clock~input_o\,
	combout => \code_memory|flipflop3|Q~feeder_combout\);

-- Location: FF_X88_Y35_N41
\code_memory|flipflop3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \new_code[3]~input_o\,
	d => \code_memory|flipflop3|Q~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \code_memory|flipflop3|Q~q\);

-- Location: IOIBUF_X89_Y36_N4
\code_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code_in(3),
	o => \code_in[3]~input_o\);

-- Location: MLABCELL_X87_Y35_N27
\state_machine|state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_machine|state~10_combout\ = ( \code_in[3]~input_o\ & ( \code_memory|flipflop3|Q~q\ ) ) # ( !\code_in[3]~input_o\ & ( !\code_memory|flipflop3|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \code_memory|flipflop3|ALT_INV_Q~q\,
	dataf => \ALT_INV_code_in[3]~input_o\,
	combout => \state_machine|state~10_combout\);

-- Location: IOIBUF_X89_Y36_N55
\is_programming~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_programming,
	o => \is_programming~input_o\);

-- Location: MLABCELL_X87_Y35_N36
\state_machine|state.disabled~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_machine|state.disabled~0_combout\ = ( \state_machine|state.disabled~q\ & ( \equality_checker|O~0_combout\ ) ) # ( !\state_machine|state.disabled~q\ & ( \equality_checker|O~0_combout\ & ( (!\is_programming~input_o\ & 
-- (\state_machine|state.witherror~q\ & (!\code_memory|flipflop3|Q~q\ $ (!\code_in[3]~input_o\)))) ) ) ) # ( \state_machine|state.disabled~q\ & ( !\equality_checker|O~0_combout\ ) ) # ( !\state_machine|state.disabled~q\ & ( !\equality_checker|O~0_combout\ & 
-- ( (!\is_programming~input_o\ & \state_machine|state.witherror~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010111111111111111100000000001010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_programming~input_o\,
	datab => \code_memory|flipflop3|ALT_INV_Q~q\,
	datac => \ALT_INV_code_in[3]~input_o\,
	datad => \state_machine|ALT_INV_state.witherror~q\,
	datae => \state_machine|ALT_INV_state.disabled~q\,
	dataf => \equality_checker|ALT_INV_O~0_combout\,
	combout => \state_machine|state.disabled~0_combout\);

-- Location: FF_X87_Y35_N38
\state_machine|state.disabled\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state_machine|state.disabled~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|state.disabled~q\);

-- Location: MLABCELL_X87_Y35_N18
\state_machine|state~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_machine|state~8_combout\ = ( \state_machine|state.disabled~q\ & ( \state_machine|state.opened~q\ ) ) # ( !\state_machine|state.disabled~q\ & ( \state_machine|state.opened~q\ ) ) # ( \state_machine|state.disabled~q\ & ( 
-- !\state_machine|state.opened~q\ ) ) # ( !\state_machine|state.disabled~q\ & ( !\state_machine|state.opened~q\ & ( !\is_programming~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_is_programming~input_o\,
	datae => \state_machine|ALT_INV_state.disabled~q\,
	dataf => \state_machine|ALT_INV_state.opened~q\,
	combout => \state_machine|state~8_combout\);

-- Location: FF_X87_Y35_N20
\state_machine|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state_machine|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|state.start~q\);

-- Location: MLABCELL_X87_Y35_N42
\state_machine|state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_machine|state~9_combout\ = ( !\is_programming~input_o\ & ( !\state_machine|state.start~q\ & ( (!\equality_checker|O~0_combout\) # (!\code_memory|flipflop3|Q~q\ $ (!\code_in[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111010111110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \equality_checker|ALT_INV_O~0_combout\,
	datab => \code_memory|flipflop3|ALT_INV_Q~q\,
	datac => \ALT_INV_code_in[3]~input_o\,
	datae => \ALT_INV_is_programming~input_o\,
	dataf => \state_machine|ALT_INV_state.start~q\,
	combout => \state_machine|state~9_combout\);

-- Location: FF_X87_Y35_N44
\state_machine|state.witherror\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state_machine|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|state.witherror~q\);

-- Location: MLABCELL_X87_Y35_N48
\state_machine|state~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_machine|state~7_combout\ = ( \state_machine|state.opened~q\ & ( \state_machine|state.start~q\ & ( (!\state_machine|state.witherror~q\) # ((\equality_checker|O~0_combout\ & \state_machine|state~10_combout\)) ) ) ) # ( !\state_machine|state.opened~q\ 
-- & ( \state_machine|state.start~q\ & ( (\equality_checker|O~0_combout\ & (\state_machine|state~10_combout\ & (!\is_programming~input_o\ & \state_machine|state.witherror~q\))) ) ) ) # ( \state_machine|state.opened~q\ & ( !\state_machine|state.start~q\ & ( 
-- (\equality_checker|O~0_combout\ & \state_machine|state~10_combout\) ) ) ) # ( !\state_machine|state.opened~q\ & ( !\state_machine|state.start~q\ & ( (\equality_checker|O~0_combout\ & (\state_machine|state~10_combout\ & !\is_programming~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100010001000100000000000100001111111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \equality_checker|ALT_INV_O~0_combout\,
	datab => \state_machine|ALT_INV_state~10_combout\,
	datac => \ALT_INV_is_programming~input_o\,
	datad => \state_machine|ALT_INV_state.witherror~q\,
	datae => \state_machine|ALT_INV_state.opened~q\,
	dataf => \state_machine|ALT_INV_state.start~q\,
	combout => \state_machine|state~7_combout\);

-- Location: FF_X87_Y35_N50
\state_machine|state.opened\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state_machine|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine|state.opened~q\);

-- Location: IOIBUF_X89_Y4_N61
\check_input~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_check_input,
	o => \check_input~input_o\);

-- Location: LABCELL_X46_Y2_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


