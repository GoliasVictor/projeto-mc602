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

-- DATE "11/13/2024 10:12:51"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	projeto IS
    PORT (
	clock : IN std_logic;
	resetn : IN std_logic;
	update : IN std_logic;
	is_programming : IN std_logic;
	new_code : IN std_logic_vector(0 TO 7);
	code_in : IN std_logic_vector(0 TO 7);
	s : BUFFER std_logic
	);
END projeto;

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
SIGNAL ww_update : std_logic;
SIGNAL ww_is_programming : std_logic;
SIGNAL ww_new_code : std_logic_vector(0 TO 7);
SIGNAL ww_code_in : std_logic_vector(0 TO 7);
SIGNAL ww_s : std_logic;
SIGNAL \s~output_o\ : std_logic;
SIGNAL \code_in[0]~input_o\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \new_code[0]~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \code_memory|flipflop0|Q~1_combout\ : std_logic;
SIGNAL \code_in[1]~input_o\ : std_logic;
SIGNAL \new_code[1]~input_o\ : std_logic;
SIGNAL \code_memory|flipflop1|Q~1_combout\ : std_logic;
SIGNAL \code_in[2]~input_o\ : std_logic;
SIGNAL \new_code[2]~input_o\ : std_logic;
SIGNAL \code_memory|flipflop2|Q~1_combout\ : std_logic;
SIGNAL \equality_checker|O~0_combout\ : std_logic;
SIGNAL \code_in[3]~input_o\ : std_logic;
SIGNAL \new_code[3]~input_o\ : std_logic;
SIGNAL \code_memory|flipflop3|Q~1_combout\ : std_logic;
SIGNAL \code_in[4]~input_o\ : std_logic;
SIGNAL \new_code[4]~input_o\ : std_logic;
SIGNAL \code_memory|flipflop4|Q~1_combout\ : std_logic;
SIGNAL \code_in[5]~input_o\ : std_logic;
SIGNAL \new_code[5]~input_o\ : std_logic;
SIGNAL \code_memory|flipflop5|Q~1_combout\ : std_logic;
SIGNAL \equality_checker|O~1_combout\ : std_logic;
SIGNAL \code_in[6]~input_o\ : std_logic;
SIGNAL \new_code[6]~input_o\ : std_logic;
SIGNAL \code_memory|flipflop6|Q~1_combout\ : std_logic;
SIGNAL \code_in[7]~input_o\ : std_logic;
SIGNAL \new_code[7]~input_o\ : std_logic;
SIGNAL \code_memory|flipflop7|Q~1_combout\ : std_logic;
SIGNAL \equality_checker|O~2_combout\ : std_logic;
SIGNAL \is_programming~input_o\ : std_logic;
SIGNAL \update~input_o\ : std_logic;
SIGNAL \state_machine|fliflopy1|Q~1_combout\ : std_logic;
SIGNAL \state_machine|fliflopy1|Q~2_combout\ : std_logic;
SIGNAL \state_machine|fliflopy1|Q~3_combout\ : std_logic;
SIGNAL \state_machine|fliflopy2|Q~1_combout\ : std_logic;
SIGNAL \state_machine|O~0_combout\ : std_logic;
SIGNAL \ALT_INV_update~input_o\ : std_logic;
SIGNAL \ALT_INV_resetn~input_o\ : std_logic;
SIGNAL \ALT_INV_is_programming~input_o\ : std_logic;
SIGNAL \code_memory|flipflop7|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \code_memory|flipflop6|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \code_memory|flipflop2|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \code_memory|flipflop5|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \code_memory|flipflop1|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \code_memory|flipflop0|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \code_memory|flipflop4|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \state_machine|fliflopy1|ALT_INV_Q~3_combout\ : std_logic;
SIGNAL \state_machine|fliflopy1|ALT_INV_Q~2_combout\ : std_logic;
SIGNAL \code_memory|flipflop3|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \state_machine|fliflopy1|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \equality_checker|ALT_INV_O~2_combout\ : std_logic;
SIGNAL \equality_checker|ALT_INV_O~1_combout\ : std_logic;
SIGNAL \equality_checker|ALT_INV_O~0_combout\ : std_logic;
SIGNAL \state_machine|fliflopy2|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \ALT_INV_new_code[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_new_code[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_new_code[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_new_code[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_new_code[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_new_code[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_new_code[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_clock~input_o\ : std_logic;
SIGNAL \ALT_INV_new_code[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_code_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_code_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_code_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_code_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_code_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_code_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_code_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_code_in[0]~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_resetn <= resetn;
ww_update <= update;
ww_is_programming <= is_programming;
ww_new_code <= new_code;
ww_code_in <= code_in;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_update~input_o\ <= NOT \update~input_o\;
\ALT_INV_resetn~input_o\ <= NOT \resetn~input_o\;
\ALT_INV_is_programming~input_o\ <= NOT \is_programming~input_o\;
\code_memory|flipflop7|ALT_INV_Q~1_combout\ <= NOT \code_memory|flipflop7|Q~1_combout\;
\code_memory|flipflop6|ALT_INV_Q~1_combout\ <= NOT \code_memory|flipflop6|Q~1_combout\;
\code_memory|flipflop2|ALT_INV_Q~1_combout\ <= NOT \code_memory|flipflop2|Q~1_combout\;
\code_memory|flipflop5|ALT_INV_Q~1_combout\ <= NOT \code_memory|flipflop5|Q~1_combout\;
\code_memory|flipflop1|ALT_INV_Q~1_combout\ <= NOT \code_memory|flipflop1|Q~1_combout\;
\code_memory|flipflop0|ALT_INV_Q~1_combout\ <= NOT \code_memory|flipflop0|Q~1_combout\;
\code_memory|flipflop4|ALT_INV_Q~1_combout\ <= NOT \code_memory|flipflop4|Q~1_combout\;
\state_machine|fliflopy1|ALT_INV_Q~3_combout\ <= NOT \state_machine|fliflopy1|Q~3_combout\;
\state_machine|fliflopy1|ALT_INV_Q~2_combout\ <= NOT \state_machine|fliflopy1|Q~2_combout\;
\code_memory|flipflop3|ALT_INV_Q~1_combout\ <= NOT \code_memory|flipflop3|Q~1_combout\;
\state_machine|fliflopy1|ALT_INV_Q~1_combout\ <= NOT \state_machine|fliflopy1|Q~1_combout\;
\equality_checker|ALT_INV_O~2_combout\ <= NOT \equality_checker|O~2_combout\;
\equality_checker|ALT_INV_O~1_combout\ <= NOT \equality_checker|O~1_combout\;
\equality_checker|ALT_INV_O~0_combout\ <= NOT \equality_checker|O~0_combout\;
\state_machine|fliflopy2|ALT_INV_Q~1_combout\ <= NOT \state_machine|fliflopy2|Q~1_combout\;
\ALT_INV_new_code[7]~input_o\ <= NOT \new_code[7]~input_o\;
\ALT_INV_new_code[6]~input_o\ <= NOT \new_code[6]~input_o\;
\ALT_INV_new_code[5]~input_o\ <= NOT \new_code[5]~input_o\;
\ALT_INV_new_code[4]~input_o\ <= NOT \new_code[4]~input_o\;
\ALT_INV_new_code[3]~input_o\ <= NOT \new_code[3]~input_o\;
\ALT_INV_new_code[2]~input_o\ <= NOT \new_code[2]~input_o\;
\ALT_INV_new_code[1]~input_o\ <= NOT \new_code[1]~input_o\;
\ALT_INV_clock~input_o\ <= NOT \clock~input_o\;
\ALT_INV_new_code[0]~input_o\ <= NOT \new_code[0]~input_o\;
\ALT_INV_code_in[7]~input_o\ <= NOT \code_in[7]~input_o\;
\ALT_INV_code_in[6]~input_o\ <= NOT \code_in[6]~input_o\;
\ALT_INV_code_in[5]~input_o\ <= NOT \code_in[5]~input_o\;
\ALT_INV_code_in[4]~input_o\ <= NOT \code_in[4]~input_o\;
\ALT_INV_code_in[3]~input_o\ <= NOT \code_in[3]~input_o\;
\ALT_INV_code_in[2]~input_o\ <= NOT \code_in[2]~input_o\;
\ALT_INV_code_in[1]~input_o\ <= NOT \code_in[1]~input_o\;
\ALT_INV_code_in[0]~input_o\ <= NOT \code_in[0]~input_o\;

\s~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine|fliflopy2|Q~1_combout\,
	oe => \state_machine|O~0_combout\,
	devoe => ww_devoe,
	o => \s~output_o\);

\code_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code_in(0),
	o => \code_in[0]~input_o\);

\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

\new_code[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_new_code(0),
	o => \new_code[0]~input_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\code_memory|flipflop0|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \code_memory|flipflop0|Q~1_combout\ = (!\clock~input_o\ & (((\code_memory|flipflop0|Q~1_combout\)))) # (\clock~input_o\ & ((!\resetn~input_o\) # ((!\new_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111010001100111111101000110011111110100011001111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \code_memory|flipflop0|ALT_INV_Q~1_combout\,
	datac => \ALT_INV_new_code[0]~input_o\,
	datad => \ALT_INV_clock~input_o\,
	combout => \code_memory|flipflop0|Q~1_combout\);

\code_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code_in(1),
	o => \code_in[1]~input_o\);

\new_code[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_new_code(1),
	o => \new_code[1]~input_o\);

\code_memory|flipflop1|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \code_memory|flipflop1|Q~1_combout\ = (!\clock~input_o\ & (((\code_memory|flipflop1|Q~1_combout\)))) # (\clock~input_o\ & ((!\resetn~input_o\) # ((!\new_code[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111010001111110011101000111111001110100011111100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \code_memory|flipflop1|ALT_INV_Q~1_combout\,
	datac => \ALT_INV_clock~input_o\,
	datad => \ALT_INV_new_code[1]~input_o\,
	combout => \code_memory|flipflop1|Q~1_combout\);

\code_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code_in(2),
	o => \code_in[2]~input_o\);

\new_code[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_new_code(2),
	o => \new_code[2]~input_o\);

\code_memory|flipflop2|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \code_memory|flipflop2|Q~1_combout\ = (!\clock~input_o\ & (((\code_memory|flipflop2|Q~1_combout\)))) # (\clock~input_o\ & ((!\resetn~input_o\) # ((!\new_code[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111010001111110011101000111111001110100011111100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \code_memory|flipflop2|ALT_INV_Q~1_combout\,
	datac => \ALT_INV_clock~input_o\,
	datad => \ALT_INV_new_code[2]~input_o\,
	combout => \code_memory|flipflop2|Q~1_combout\);

\equality_checker|O~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \equality_checker|O~0_combout\ = ( !\code_in[2]~input_o\ & ( \code_memory|flipflop2|Q~1_combout\ & ( (!\code_in[0]~input_o\ & (\code_memory|flipflop0|Q~1_combout\ & (!\code_in[1]~input_o\ $ (!\code_memory|flipflop1|Q~1_combout\)))) # (\code_in[0]~input_o\ 
-- & (!\code_memory|flipflop0|Q~1_combout\ & (!\code_in[1]~input_o\ $ (!\code_memory|flipflop1|Q~1_combout\)))) ) ) ) # ( \code_in[2]~input_o\ & ( !\code_memory|flipflop2|Q~1_combout\ & ( (!\code_in[0]~input_o\ & (\code_memory|flipflop0|Q~1_combout\ & 
-- (!\code_in[1]~input_o\ $ (!\code_memory|flipflop1|Q~1_combout\)))) # (\code_in[0]~input_o\ & (!\code_memory|flipflop0|Q~1_combout\ & (!\code_in[1]~input_o\ $ (!\code_memory|flipflop1|Q~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001100110000000000110011000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_code_in[0]~input_o\,
	datab => \code_memory|flipflop0|ALT_INV_Q~1_combout\,
	datac => \ALT_INV_code_in[1]~input_o\,
	datad => \code_memory|flipflop1|ALT_INV_Q~1_combout\,
	datae => \ALT_INV_code_in[2]~input_o\,
	dataf => \code_memory|flipflop2|ALT_INV_Q~1_combout\,
	combout => \equality_checker|O~0_combout\);

\code_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code_in(3),
	o => \code_in[3]~input_o\);

\new_code[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_new_code(3),
	o => \new_code[3]~input_o\);

\code_memory|flipflop3|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \code_memory|flipflop3|Q~1_combout\ = (!\clock~input_o\ & (((\code_memory|flipflop3|Q~1_combout\)))) # (\clock~input_o\ & ((!\resetn~input_o\) # ((!\new_code[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111010001111110011101000111111001110100011111100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \code_memory|flipflop3|ALT_INV_Q~1_combout\,
	datac => \ALT_INV_clock~input_o\,
	datad => \ALT_INV_new_code[3]~input_o\,
	combout => \code_memory|flipflop3|Q~1_combout\);

\code_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code_in(4),
	o => \code_in[4]~input_o\);

\new_code[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_new_code(4),
	o => \new_code[4]~input_o\);

\code_memory|flipflop4|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \code_memory|flipflop4|Q~1_combout\ = (!\clock~input_o\ & (((\code_memory|flipflop4|Q~1_combout\)))) # (\clock~input_o\ & ((!\resetn~input_o\) # ((!\new_code[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111010001111110011101000111111001110100011111100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \code_memory|flipflop4|ALT_INV_Q~1_combout\,
	datac => \ALT_INV_clock~input_o\,
	datad => \ALT_INV_new_code[4]~input_o\,
	combout => \code_memory|flipflop4|Q~1_combout\);

\code_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code_in(5),
	o => \code_in[5]~input_o\);

\new_code[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_new_code(5),
	o => \new_code[5]~input_o\);

\code_memory|flipflop5|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \code_memory|flipflop5|Q~1_combout\ = (!\clock~input_o\ & (((\code_memory|flipflop5|Q~1_combout\)))) # (\clock~input_o\ & ((!\resetn~input_o\) # ((!\new_code[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111010001111110011101000111111001110100011111100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \code_memory|flipflop5|ALT_INV_Q~1_combout\,
	datac => \ALT_INV_clock~input_o\,
	datad => \ALT_INV_new_code[5]~input_o\,
	combout => \code_memory|flipflop5|Q~1_combout\);

\equality_checker|O~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \equality_checker|O~1_combout\ = ( !\code_in[5]~input_o\ & ( \code_memory|flipflop5|Q~1_combout\ & ( (!\code_in[3]~input_o\ & (\code_memory|flipflop3|Q~1_combout\ & (!\code_in[4]~input_o\ $ (!\code_memory|flipflop4|Q~1_combout\)))) # (\code_in[3]~input_o\ 
-- & (!\code_memory|flipflop3|Q~1_combout\ & (!\code_in[4]~input_o\ $ (!\code_memory|flipflop4|Q~1_combout\)))) ) ) ) # ( \code_in[5]~input_o\ & ( !\code_memory|flipflop5|Q~1_combout\ & ( (!\code_in[3]~input_o\ & (\code_memory|flipflop3|Q~1_combout\ & 
-- (!\code_in[4]~input_o\ $ (!\code_memory|flipflop4|Q~1_combout\)))) # (\code_in[3]~input_o\ & (!\code_memory|flipflop3|Q~1_combout\ & (!\code_in[4]~input_o\ $ (!\code_memory|flipflop4|Q~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001100110000000000110011000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_code_in[3]~input_o\,
	datab => \code_memory|flipflop3|ALT_INV_Q~1_combout\,
	datac => \ALT_INV_code_in[4]~input_o\,
	datad => \code_memory|flipflop4|ALT_INV_Q~1_combout\,
	datae => \ALT_INV_code_in[5]~input_o\,
	dataf => \code_memory|flipflop5|ALT_INV_Q~1_combout\,
	combout => \equality_checker|O~1_combout\);

\code_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code_in(6),
	o => \code_in[6]~input_o\);

\new_code[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_new_code(6),
	o => \new_code[6]~input_o\);

\code_memory|flipflop6|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \code_memory|flipflop6|Q~1_combout\ = (!\clock~input_o\ & (((\code_memory|flipflop6|Q~1_combout\)))) # (\clock~input_o\ & ((!\resetn~input_o\) # ((!\new_code[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111010001111110011101000111111001110100011111100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \code_memory|flipflop6|ALT_INV_Q~1_combout\,
	datac => \ALT_INV_clock~input_o\,
	datad => \ALT_INV_new_code[6]~input_o\,
	combout => \code_memory|flipflop6|Q~1_combout\);

\code_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code_in(7),
	o => \code_in[7]~input_o\);

\new_code[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_new_code(7),
	o => \new_code[7]~input_o\);

\code_memory|flipflop7|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \code_memory|flipflop7|Q~1_combout\ = (!\clock~input_o\ & (((\code_memory|flipflop7|Q~1_combout\)))) # (\clock~input_o\ & ((!\resetn~input_o\) # ((!\new_code[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111010001111110011101000111111001110100011111100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resetn~input_o\,
	datab => \code_memory|flipflop7|ALT_INV_Q~1_combout\,
	datac => \ALT_INV_clock~input_o\,
	datad => \ALT_INV_new_code[7]~input_o\,
	combout => \code_memory|flipflop7|Q~1_combout\);

\equality_checker|O~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \equality_checker|O~2_combout\ = (!\code_in[6]~input_o\ & (\code_memory|flipflop6|Q~1_combout\ & (!\code_in[7]~input_o\ $ (!\code_memory|flipflop7|Q~1_combout\)))) # (\code_in[6]~input_o\ & (!\code_memory|flipflop6|Q~1_combout\ & (!\code_in[7]~input_o\ $ 
-- (!\code_memory|flipflop7|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000000000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_code_in[6]~input_o\,
	datab => \code_memory|flipflop6|ALT_INV_Q~1_combout\,
	datac => \ALT_INV_code_in[7]~input_o\,
	datad => \code_memory|flipflop7|ALT_INV_Q~1_combout\,
	combout => \equality_checker|O~2_combout\);

\is_programming~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_programming,
	o => \is_programming~input_o\);

\update~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_update,
	o => \update~input_o\);

\state_machine|fliflopy1|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_machine|fliflopy1|Q~1_combout\ = (!\state_machine|fliflopy2|Q~1_combout\ & (!\is_programming~input_o\ & (\resetn~input_o\ & \update~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|fliflopy2|ALT_INV_Q~1_combout\,
	datab => \ALT_INV_is_programming~input_o\,
	datac => \ALT_INV_resetn~input_o\,
	datad => \ALT_INV_update~input_o\,
	combout => \state_machine|fliflopy1|Q~1_combout\);

\state_machine|fliflopy1|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_machine|fliflopy1|Q~2_combout\ = (!\state_machine|fliflopy1|Q~3_combout\ & ((!\update~input_o\) # ((\state_machine|fliflopy2|Q~1_combout\ & \resetn~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000100110011000000010011001100000001001100110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|fliflopy2|ALT_INV_Q~1_combout\,
	datab => \state_machine|fliflopy1|ALT_INV_Q~3_combout\,
	datac => \ALT_INV_resetn~input_o\,
	datad => \ALT_INV_update~input_o\,
	combout => \state_machine|fliflopy1|Q~2_combout\);

\state_machine|fliflopy1|Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_machine|fliflopy1|Q~3_combout\ = ( !\state_machine|fliflopy1|Q~2_combout\ & ( (!\state_machine|fliflopy1|Q~1_combout\) # ((\equality_checker|O~0_combout\ & (\equality_checker|O~1_combout\ & \equality_checker|O~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000001000000000000000011111111000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \equality_checker|ALT_INV_O~0_combout\,
	datab => \equality_checker|ALT_INV_O~1_combout\,
	datac => \equality_checker|ALT_INV_O~2_combout\,
	datad => \state_machine|fliflopy1|ALT_INV_Q~1_combout\,
	datae => \state_machine|fliflopy1|ALT_INV_Q~2_combout\,
	combout => \state_machine|fliflopy1|Q~3_combout\);

\state_machine|fliflopy2|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_machine|fliflopy2|Q~1_combout\ = ( \update~input_o\ & ( (\resetn~input_o\ & (((\state_machine|fliflopy1|Q~3_combout\ & \is_programming~input_o\)) # (\state_machine|fliflopy2|Q~1_combout\))) ) ) # ( !\update~input_o\ & ( 
-- \state_machine|fliflopy2|Q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000101011101010101010101010000000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|fliflopy2|ALT_INV_Q~1_combout\,
	datab => \state_machine|fliflopy1|ALT_INV_Q~3_combout\,
	datac => \ALT_INV_is_programming~input_o\,
	datad => \ALT_INV_resetn~input_o\,
	datae => \ALT_INV_update~input_o\,
	combout => \state_machine|fliflopy2|Q~1_combout\);

\state_machine|O~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_machine|O~0_combout\ = (!\state_machine|fliflopy2|Q~1_combout\) # (\state_machine|fliflopy1|Q~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine|fliflopy2|ALT_INV_Q~1_combout\,
	datab => \state_machine|fliflopy1|ALT_INV_Q~3_combout\,
	combout => \state_machine|O~0_combout\);

ww_s <= \s~output_o\;
END structure;


