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

-- DATE "11/15/2024 23:56:30"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	toplevel IS
    PORT (
	clock_50 : IN std_logic;
	key : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(9 DOWNTO 0);
	hex5 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex4 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex1 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex0 : BUFFER std_logic_vector(6 DOWNTO 0);
	ledr : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- key[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(9 DOWNTO 0);
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \projeto|code_memory|flipflop5|Q~q\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \projeto|code_memory|flipflop3|Q~q\ : std_logic;
SIGNAL \projeto|code_memory|flipflop4|Q~q\ : std_logic;
SIGNAL \projeto|equality_checker|O~2_combout\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \projeto|flipflop_update|Q~0_combout\ : std_logic;
SIGNAL \projeto|flipflop_update|Q~q\ : std_logic;
SIGNAL \projeto|state_machine|state_machine_newstate|new_state~0_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \projeto|code_memory|flipflop6|Q~q\ : std_logic;
SIGNAL \projeto|code_memory|flipflop7|Q~q\ : std_logic;
SIGNAL \projeto|equality_checker|O~0_combout\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \projeto|code_memory|flipflop0|Q~q\ : std_logic;
SIGNAL \projeto|code_memory|flipflop2|Q~q\ : std_logic;
SIGNAL \projeto|code_memory|flipflop1|Q~q\ : std_logic;
SIGNAL \projeto|equality_checker|O~1_combout\ : std_logic;
SIGNAL \projeto|state_machine|fliflopy1|Q~0_combout\ : std_logic;
SIGNAL \projeto|state_machine|fliflopy1|Q~1_combout\ : std_logic;
SIGNAL \projeto|state_machine|fliflopy1|Q~q\ : std_logic;
SIGNAL \projeto|state_machine|fliflopy2|Q~q\ : std_logic;
SIGNAL \projeto|state_machine|O~1_combout\ : std_logic;
SIGNAL \display1|Mux6~0_combout\ : std_logic;
SIGNAL \display1|Mux5~0_combout\ : std_logic;
SIGNAL \display1|Mux4~0_combout\ : std_logic;
SIGNAL \display1|Mux3~0_combout\ : std_logic;
SIGNAL \display1|Mux2~0_combout\ : std_logic;
SIGNAL \display1|Mux1~0_combout\ : std_logic;
SIGNAL \display1|Mux0~0_combout\ : std_logic;
SIGNAL \display2|Mux6~0_combout\ : std_logic;
SIGNAL \display2|Mux5~0_combout\ : std_logic;
SIGNAL \display2|Mux4~0_combout\ : std_logic;
SIGNAL \display2|Mux3~0_combout\ : std_logic;
SIGNAL \display2|Mux2~0_combout\ : std_logic;
SIGNAL \display2|Mux1~0_combout\ : std_logic;
SIGNAL \display2|Mux0~0_combout\ : std_logic;
SIGNAL \display3|Mux6~0_combout\ : std_logic;
SIGNAL \display3|Mux5~0_combout\ : std_logic;
SIGNAL \display3|Mux4~0_combout\ : std_logic;
SIGNAL \display3|Mux3~0_combout\ : std_logic;
SIGNAL \display3|Mux2~0_combout\ : std_logic;
SIGNAL \display3|Mux1~0_combout\ : std_logic;
SIGNAL \display3|Mux0~0_combout\ : std_logic;
SIGNAL \display4|Mux6~0_combout\ : std_logic;
SIGNAL \display4|Mux5~0_combout\ : std_logic;
SIGNAL \display4|Mux4~0_combout\ : std_logic;
SIGNAL \display4|Mux3~0_combout\ : std_logic;
SIGNAL \display4|Mux2~0_combout\ : std_logic;
SIGNAL \display4|Mux1~0_combout\ : std_logic;
SIGNAL \display4|Mux0~0_combout\ : std_logic;
SIGNAL \projeto|state_machine|state_machine_newstate|new_state\ : std_logic_vector(0 TO 1);
SIGNAL \ALT_INV_key[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[6]~input_o\ : std_logic;
SIGNAL \projeto|state_machine|fliflopy1|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \projeto|equality_checker|ALT_INV_O~2_combout\ : std_logic;
SIGNAL \projeto|equality_checker|ALT_INV_O~1_combout\ : std_logic;
SIGNAL \projeto|state_machine|state_machine_newstate|ALT_INV_new_state~0_combout\ : std_logic;
SIGNAL \projeto|equality_checker|ALT_INV_O~0_combout\ : std_logic;
SIGNAL \projeto|flipflop_update|ALT_INV_Q~q\ : std_logic;
SIGNAL \projeto|state_machine|fliflopy1|ALT_INV_Q~q\ : std_logic;
SIGNAL \projeto|state_machine|fliflopy2|ALT_INV_Q~q\ : std_logic;
SIGNAL \display4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \projeto|code_memory|flipflop4|ALT_INV_Q~q\ : std_logic;
SIGNAL \projeto|code_memory|flipflop5|ALT_INV_Q~q\ : std_logic;
SIGNAL \projeto|code_memory|flipflop6|ALT_INV_Q~q\ : std_logic;
SIGNAL \projeto|code_memory|flipflop7|ALT_INV_Q~q\ : std_logic;
SIGNAL \display3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \projeto|code_memory|flipflop0|ALT_INV_Q~q\ : std_logic;
SIGNAL \projeto|code_memory|flipflop1|ALT_INV_Q~q\ : std_logic;
SIGNAL \projeto|code_memory|flipflop2|ALT_INV_Q~q\ : std_logic;
SIGNAL \projeto|code_memory|flipflop3|ALT_INV_Q~q\ : std_logic;
SIGNAL \display2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
ww_key <= key;
ww_sw <= sw;
hex5 <= ww_hex5;
hex4 <= ww_hex4;
hex1 <= ww_hex1;
hex0 <= ww_hex0;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_key[0]~input_o\ <= NOT \key[0]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[5]~input_o\ <= NOT \sw[5]~input_o\;
\ALT_INV_sw[4]~input_o\ <= NOT \sw[4]~input_o\;
\ALT_INV_sw[3]~input_o\ <= NOT \sw[3]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_sw[9]~input_o\ <= NOT \sw[9]~input_o\;
\ALT_INV_sw[8]~input_o\ <= NOT \sw[8]~input_o\;
\ALT_INV_sw[7]~input_o\ <= NOT \sw[7]~input_o\;
\ALT_INV_sw[6]~input_o\ <= NOT \sw[6]~input_o\;
\projeto|state_machine|fliflopy1|ALT_INV_Q~0_combout\ <= NOT \projeto|state_machine|fliflopy1|Q~0_combout\;
\projeto|equality_checker|ALT_INV_O~2_combout\ <= NOT \projeto|equality_checker|O~2_combout\;
\projeto|equality_checker|ALT_INV_O~1_combout\ <= NOT \projeto|equality_checker|O~1_combout\;
\projeto|state_machine|state_machine_newstate|ALT_INV_new_state~0_combout\ <= NOT \projeto|state_machine|state_machine_newstate|new_state~0_combout\;
\projeto|equality_checker|ALT_INV_O~0_combout\ <= NOT \projeto|equality_checker|O~0_combout\;
\projeto|flipflop_update|ALT_INV_Q~q\ <= NOT \projeto|flipflop_update|Q~q\;
\projeto|state_machine|fliflopy1|ALT_INV_Q~q\ <= NOT \projeto|state_machine|fliflopy1|Q~q\;
\projeto|state_machine|fliflopy2|ALT_INV_Q~q\ <= NOT \projeto|state_machine|fliflopy2|Q~q\;
\display4|ALT_INV_Mux0~0_combout\ <= NOT \display4|Mux0~0_combout\;
\projeto|code_memory|flipflop4|ALT_INV_Q~q\ <= NOT \projeto|code_memory|flipflop4|Q~q\;
\projeto|code_memory|flipflop5|ALT_INV_Q~q\ <= NOT \projeto|code_memory|flipflop5|Q~q\;
\projeto|code_memory|flipflop6|ALT_INV_Q~q\ <= NOT \projeto|code_memory|flipflop6|Q~q\;
\projeto|code_memory|flipflop7|ALT_INV_Q~q\ <= NOT \projeto|code_memory|flipflop7|Q~q\;
\display3|ALT_INV_Mux0~0_combout\ <= NOT \display3|Mux0~0_combout\;
\projeto|code_memory|flipflop0|ALT_INV_Q~q\ <= NOT \projeto|code_memory|flipflop0|Q~q\;
\projeto|code_memory|flipflop1|ALT_INV_Q~q\ <= NOT \projeto|code_memory|flipflop1|Q~q\;
\projeto|code_memory|flipflop2|ALT_INV_Q~q\ <= NOT \projeto|code_memory|flipflop2|Q~q\;
\projeto|code_memory|flipflop3|ALT_INV_Q~q\ <= NOT \projeto|code_memory|flipflop3|Q~q\;
\display2|ALT_INV_Mux0~0_combout\ <= NOT \display2|Mux0~0_combout\;
\display1|ALT_INV_Mux0~0_combout\ <= NOT \display1|Mux0~0_combout\;

-- Location: IOOBUF_X52_Y0_N19
\ledr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \projeto|state_machine|fliflopy2|Q~q\,
	oe => \projeto|state_machine|O~1_combout\,
	devoe => ww_devoe,
	o => ww_ledr(1));

-- Location: IOOBUF_X89_Y20_N62
\hex5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex5(0));

-- Location: IOOBUF_X89_Y21_N56
\hex5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex5(1));

-- Location: IOOBUF_X89_Y25_N22
\hex5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex5(2));

-- Location: IOOBUF_X89_Y23_N22
\hex5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex5(3));

-- Location: IOOBUF_X89_Y9_N56
\hex5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex5(4));

-- Location: IOOBUF_X89_Y23_N5
\hex5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex5(5));

-- Location: IOOBUF_X89_Y9_N39
\hex5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex5(6));

-- Location: IOOBUF_X89_Y11_N45
\hex4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex4(0));

-- Location: IOOBUF_X89_Y13_N5
\hex4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex4(1));

-- Location: IOOBUF_X89_Y13_N22
\hex4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex4(2));

-- Location: IOOBUF_X89_Y8_N22
\hex4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex4(3));

-- Location: IOOBUF_X89_Y15_N22
\hex4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex4(4));

-- Location: IOOBUF_X89_Y15_N5
\hex4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex4(5));

-- Location: IOOBUF_X89_Y20_N45
\hex4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex4(6));

-- Location: IOOBUF_X89_Y6_N39
\hex1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(0));

-- Location: IOOBUF_X89_Y6_N56
\hex1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(1));

-- Location: IOOBUF_X89_Y16_N39
\hex1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(2));

-- Location: IOOBUF_X89_Y16_N56
\hex1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(3));

-- Location: IOOBUF_X89_Y15_N39
\hex1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(4));

-- Location: IOOBUF_X89_Y15_N56
\hex1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(5));

-- Location: IOOBUF_X89_Y8_N56
\hex1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(6));

-- Location: IOOBUF_X89_Y8_N39
\hex0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(0));

-- Location: IOOBUF_X89_Y11_N79
\hex0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(1));

-- Location: IOOBUF_X89_Y11_N96
\hex0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(2));

-- Location: IOOBUF_X89_Y4_N79
\hex0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(3));

-- Location: IOOBUF_X89_Y13_N56
\hex0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(4));

-- Location: IOOBUF_X89_Y13_N39
\hex0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(5));

-- Location: IOOBUF_X89_Y4_N96
\hex0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(6));

-- Location: IOOBUF_X52_Y0_N2
\ledr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \projeto|state_machine|fliflopy2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_ledr(0));

-- Location: IOOBUF_X60_Y0_N2
\ledr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(2));

-- Location: IOOBUF_X80_Y0_N2
\ledr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(3));

-- Location: IOOBUF_X60_Y0_N19
\ledr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(4));

-- Location: IOOBUF_X80_Y0_N19
\ledr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(5));

-- Location: IOOBUF_X84_Y0_N2
\ledr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(6));

-- Location: IOOBUF_X89_Y6_N5
\ledr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(7));

-- Location: IOOBUF_X89_Y8_N5
\ledr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \projeto|state_machine|fliflopy1|Q~q\,
	devoe => ww_devoe,
	o => ww_ledr(8));

-- Location: IOOBUF_X89_Y6_N22
\ledr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \projeto|state_machine|fliflopy2|Q~q\,
	devoe => ww_devoe,
	o => ww_ledr(9));

-- Location: IOIBUF_X32_Y0_N1
\clock_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G6
\clock_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~input_o\,
	outclk => \clock_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X4_Y0_N35
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\key[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: FF_X87_Y8_N41
\projeto|code_memory|flipflop5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \sw[4]~input_o\,
	clrn => \key[1]~input_o\,
	sload => VCC,
	ena => \sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \projeto|code_memory|flipflop5|Q~q\);

-- Location: IOIBUF_X16_Y0_N18
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: FF_X87_Y8_N56
\projeto|code_memory|flipflop3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \sw[6]~input_o\,
	clrn => \key[1]~input_o\,
	sload => VCC,
	ena => \sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \projeto|code_memory|flipflop3|Q~q\);

-- Location: FF_X87_Y8_N50
\projeto|code_memory|flipflop4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \sw[5]~input_o\,
	clrn => \key[1]~input_o\,
	sload => VCC,
	ena => \sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \projeto|code_memory|flipflop4|Q~q\);

-- Location: MLABCELL_X87_Y8_N51
\projeto|equality_checker|O~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \projeto|equality_checker|O~2_combout\ = ( \projeto|code_memory|flipflop3|Q~q\ & ( \projeto|code_memory|flipflop4|Q~q\ & ( (\sw[6]~input_o\ & (\sw[5]~input_o\ & (!\sw[4]~input_o\ $ (\projeto|code_memory|flipflop5|Q~q\)))) ) ) ) # ( 
-- !\projeto|code_memory|flipflop3|Q~q\ & ( \projeto|code_memory|flipflop4|Q~q\ & ( (!\sw[6]~input_o\ & (\sw[5]~input_o\ & (!\sw[4]~input_o\ $ (\projeto|code_memory|flipflop5|Q~q\)))) ) ) ) # ( \projeto|code_memory|flipflop3|Q~q\ & ( 
-- !\projeto|code_memory|flipflop4|Q~q\ & ( (\sw[6]~input_o\ & (!\sw[5]~input_o\ & (!\sw[4]~input_o\ $ (\projeto|code_memory|flipflop5|Q~q\)))) ) ) ) # ( !\projeto|code_memory|flipflop3|Q~q\ & ( !\projeto|code_memory|flipflop4|Q~q\ & ( (!\sw[6]~input_o\ & 
-- (!\sw[5]~input_o\ & (!\sw[4]~input_o\ $ (\projeto|code_memory|flipflop5|Q~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[6]~input_o\,
	datab => \ALT_INV_sw[4]~input_o\,
	datac => \projeto|code_memory|flipflop5|ALT_INV_Q~q\,
	datad => \ALT_INV_sw[5]~input_o\,
	datae => \projeto|code_memory|flipflop3|ALT_INV_Q~q\,
	dataf => \projeto|code_memory|flipflop4|ALT_INV_Q~q\,
	combout => \projeto|equality_checker|O~2_combout\);

-- Location: IOIBUF_X36_Y0_N1
\key[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: MLABCELL_X87_Y8_N21
\projeto|flipflop_update|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \projeto|flipflop_update|Q~0_combout\ = !\key[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key[0]~input_o\,
	combout => \projeto|flipflop_update|Q~0_combout\);

-- Location: FF_X87_Y8_N11
\projeto|flipflop_update|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \projeto|flipflop_update|Q~0_combout\,
	clrn => \key[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \projeto|flipflop_update|Q~q\);

-- Location: MLABCELL_X87_Y8_N45
\projeto|state_machine|state_machine_newstate|new_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \projeto|state_machine|state_machine_newstate|new_state~0_combout\ = ( !\projeto|flipflop_update|Q~q\ & ( (!\sw[1]~input_o\ & !\key[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[1]~input_o\,
	datac => \ALT_INV_key[0]~input_o\,
	dataf => \projeto|flipflop_update|ALT_INV_Q~q\,
	combout => \projeto|state_machine|state_machine_newstate|new_state~0_combout\);

-- Location: IOIBUF_X4_Y0_N52
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: FF_X87_Y8_N2
\projeto|code_memory|flipflop6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \sw[3]~input_o\,
	clrn => \key[1]~input_o\,
	sload => VCC,
	ena => \sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \projeto|code_memory|flipflop6|Q~q\);

-- Location: FF_X87_Y8_N59
\projeto|code_memory|flipflop7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \sw[2]~input_o\,
	clrn => \key[1]~input_o\,
	sload => VCC,
	ena => \sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \projeto|code_memory|flipflop7|Q~q\);

-- Location: MLABCELL_X87_Y8_N24
\projeto|equality_checker|O~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \projeto|equality_checker|O~0_combout\ = ( \projeto|code_memory|flipflop7|Q~q\ & ( (\sw[2]~input_o\ & (!\sw[3]~input_o\ $ (\projeto|code_memory|flipflop6|Q~q\))) ) ) # ( !\projeto|code_memory|flipflop7|Q~q\ & ( (!\sw[2]~input_o\ & (!\sw[3]~input_o\ $ 
-- (\projeto|code_memory|flipflop6|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[3]~input_o\,
	datac => \ALT_INV_sw[2]~input_o\,
	datad => \projeto|code_memory|flipflop6|ALT_INV_Q~q\,
	dataf => \projeto|code_memory|flipflop7|ALT_INV_Q~q\,
	combout => \projeto|equality_checker|O~0_combout\);

-- Location: IOIBUF_X2_Y0_N58
\sw[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\sw[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: FF_X87_Y8_N32
\projeto|code_memory|flipflop0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \sw[9]~input_o\,
	clrn => \key[1]~input_o\,
	sload => VCC,
	ena => \sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \projeto|code_memory|flipflop0|Q~q\);

-- Location: FF_X87_Y8_N23
\projeto|code_memory|flipflop2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \sw[7]~input_o\,
	clrn => \key[1]~input_o\,
	sload => VCC,
	ena => \sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \projeto|code_memory|flipflop2|Q~q\);

-- Location: FF_X87_Y8_N20
\projeto|code_memory|flipflop1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \sw[8]~input_o\,
	clrn => \key[1]~input_o\,
	sload => VCC,
	ena => \sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \projeto|code_memory|flipflop1|Q~q\);

-- Location: MLABCELL_X87_Y8_N54
\projeto|equality_checker|O~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \projeto|equality_checker|O~1_combout\ = ( \projeto|code_memory|flipflop2|Q~q\ & ( \projeto|code_memory|flipflop1|Q~q\ & ( (\sw[7]~input_o\ & (\sw[8]~input_o\ & (!\sw[9]~input_o\ $ (\projeto|code_memory|flipflop0|Q~q\)))) ) ) ) # ( 
-- !\projeto|code_memory|flipflop2|Q~q\ & ( \projeto|code_memory|flipflop1|Q~q\ & ( (!\sw[7]~input_o\ & (\sw[8]~input_o\ & (!\sw[9]~input_o\ $ (\projeto|code_memory|flipflop0|Q~q\)))) ) ) ) # ( \projeto|code_memory|flipflop2|Q~q\ & ( 
-- !\projeto|code_memory|flipflop1|Q~q\ & ( (\sw[7]~input_o\ & (!\sw[8]~input_o\ & (!\sw[9]~input_o\ $ (\projeto|code_memory|flipflop0|Q~q\)))) ) ) ) # ( !\projeto|code_memory|flipflop2|Q~q\ & ( !\projeto|code_memory|flipflop1|Q~q\ & ( (!\sw[7]~input_o\ & 
-- (!\sw[8]~input_o\ & (!\sw[9]~input_o\ $ (\projeto|code_memory|flipflop0|Q~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[9]~input_o\,
	datab => \ALT_INV_sw[7]~input_o\,
	datac => \ALT_INV_sw[8]~input_o\,
	datad => \projeto|code_memory|flipflop0|ALT_INV_Q~q\,
	datae => \projeto|code_memory|flipflop2|ALT_INV_Q~q\,
	dataf => \projeto|code_memory|flipflop1|ALT_INV_Q~q\,
	combout => \projeto|equality_checker|O~1_combout\);

-- Location: MLABCELL_X87_Y8_N42
\projeto|state_machine|fliflopy1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \projeto|state_machine|fliflopy1|Q~0_combout\ = ( \projeto|state_machine|fliflopy1|Q~q\ & ( ((!\sw[1]~input_o\ & ((\projeto|flipflop_update|Q~q\) # (\key[0]~input_o\)))) # (\projeto|state_machine|fliflopy2|Q~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111011101110110011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[1]~input_o\,
	datab => \projeto|state_machine|fliflopy2|ALT_INV_Q~q\,
	datac => \ALT_INV_key[0]~input_o\,
	datad => \projeto|flipflop_update|ALT_INV_Q~q\,
	dataf => \projeto|state_machine|fliflopy1|ALT_INV_Q~q\,
	combout => \projeto|state_machine|fliflopy1|Q~0_combout\);

-- Location: MLABCELL_X87_Y8_N12
\projeto|state_machine|fliflopy1|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \projeto|state_machine|fliflopy1|Q~1_combout\ = ( \projeto|equality_checker|O~1_combout\ & ( \projeto|state_machine|fliflopy1|Q~0_combout\ ) ) # ( !\projeto|equality_checker|O~1_combout\ & ( \projeto|state_machine|fliflopy1|Q~0_combout\ ) ) # ( 
-- \projeto|equality_checker|O~1_combout\ & ( !\projeto|state_machine|fliflopy1|Q~0_combout\ & ( (\projeto|state_machine|state_machine_newstate|new_state~0_combout\ & (!\projeto|state_machine|fliflopy2|Q~q\ & ((!\projeto|equality_checker|O~2_combout\) # 
-- (!\projeto|equality_checker|O~0_combout\)))) ) ) ) # ( !\projeto|equality_checker|O~1_combout\ & ( !\projeto|state_machine|fliflopy1|Q~0_combout\ & ( (\projeto|state_machine|state_machine_newstate|new_state~0_combout\ & 
-- !\projeto|state_machine|fliflopy2|Q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100100000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \projeto|equality_checker|ALT_INV_O~2_combout\,
	datab => \projeto|state_machine|state_machine_newstate|ALT_INV_new_state~0_combout\,
	datac => \projeto|equality_checker|ALT_INV_O~0_combout\,
	datad => \projeto|state_machine|fliflopy2|ALT_INV_Q~q\,
	datae => \projeto|equality_checker|ALT_INV_O~1_combout\,
	dataf => \projeto|state_machine|fliflopy1|ALT_INV_Q~0_combout\,
	combout => \projeto|state_machine|fliflopy1|Q~1_combout\);

-- Location: FF_X87_Y8_N14
\projeto|state_machine|fliflopy1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \projeto|state_machine|fliflopy1|Q~1_combout\,
	clrn => \key[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \projeto|state_machine|fliflopy1|Q~q\);

-- Location: MLABCELL_X87_Y8_N6
\projeto|state_machine|state_machine_newstate|new_state[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \projeto|state_machine|state_machine_newstate|new_state\(1) = ( \projeto|state_machine|fliflopy2|Q~q\ & ( \projeto|equality_checker|O~1_combout\ ) ) # ( !\projeto|state_machine|fliflopy2|Q~q\ & ( \projeto|equality_checker|O~1_combout\ & ( 
-- (\projeto|state_machine|state_machine_newstate|new_state~0_combout\ & (((\projeto|equality_checker|O~2_combout\ & \projeto|equality_checker|O~0_combout\)) # (\projeto|state_machine|fliflopy1|Q~q\))) ) ) ) # ( \projeto|state_machine|fliflopy2|Q~q\ & ( 
-- !\projeto|equality_checker|O~1_combout\ ) ) # ( !\projeto|state_machine|fliflopy2|Q~q\ & ( !\projeto|equality_checker|O~1_combout\ & ( (\projeto|state_machine|fliflopy1|Q~q\ & \projeto|state_machine|state_machine_newstate|new_state~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111111111111100000000001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \projeto|equality_checker|ALT_INV_O~2_combout\,
	datab => \projeto|state_machine|fliflopy1|ALT_INV_Q~q\,
	datac => \projeto|equality_checker|ALT_INV_O~0_combout\,
	datad => \projeto|state_machine|state_machine_newstate|ALT_INV_new_state~0_combout\,
	datae => \projeto|state_machine|fliflopy2|ALT_INV_Q~q\,
	dataf => \projeto|equality_checker|ALT_INV_O~1_combout\,
	combout => \projeto|state_machine|state_machine_newstate|new_state\(1));

-- Location: FF_X87_Y8_N8
\projeto|state_machine|fliflopy2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \projeto|state_machine|state_machine_newstate|new_state\(1),
	clrn => \key[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \projeto|state_machine|fliflopy2|Q~q\);

-- Location: LABCELL_X57_Y8_N51
\projeto|state_machine|O~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \projeto|state_machine|O~1_combout\ = ( !\projeto|state_machine|fliflopy1|Q~q\ & ( \projeto|state_machine|fliflopy2|Q~q\ ) ) # ( \projeto|state_machine|fliflopy1|Q~q\ & ( !\projeto|state_machine|fliflopy2|Q~q\ ) ) # ( 
-- !\projeto|state_machine|fliflopy1|Q~q\ & ( !\projeto|state_machine|fliflopy2|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \projeto|state_machine|fliflopy1|ALT_INV_Q~q\,
	dataf => \projeto|state_machine|fliflopy2|ALT_INV_Q~q\,
	combout => \projeto|state_machine|O~1_combout\);

-- Location: LABCELL_X88_Y8_N39
\display1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux6~0_combout\ = ( \sw[8]~input_o\ & ( ((!\sw[6]~input_o\ & !\sw[7]~input_o\)) # (\sw[9]~input_o\) ) ) # ( !\sw[8]~input_o\ & ( (!\sw[9]~input_o\ & (\sw[6]~input_o\ & !\sw[7]~input_o\)) # (\sw[9]~input_o\ & ((\sw[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111110101111000011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[6]~input_o\,
	datac => \ALT_INV_sw[9]~input_o\,
	datad => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \display1|Mux6~0_combout\);

-- Location: LABCELL_X88_Y8_N6
\display1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux5~0_combout\ = ( \sw[8]~input_o\ & ( (!\sw[6]~input_o\ $ (!\sw[7]~input_o\)) # (\sw[9]~input_o\) ) ) # ( !\sw[8]~input_o\ & ( (\sw[9]~input_o\ & \sw[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[9]~input_o\,
	datac => \ALT_INV_sw[6]~input_o\,
	datad => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \display1|Mux5~0_combout\);

-- Location: LABCELL_X88_Y8_N9
\display1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux4~0_combout\ = ( \sw[8]~input_o\ & ( \sw[9]~input_o\ ) ) # ( !\sw[8]~input_o\ & ( (\sw[7]~input_o\ & ((!\sw[6]~input_o\) # (\sw[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[6]~input_o\,
	datac => \ALT_INV_sw[9]~input_o\,
	datad => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \display1|Mux4~0_combout\);

-- Location: LABCELL_X88_Y8_N0
\display1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux3~0_combout\ = ( \sw[8]~input_o\ & ( (!\sw[7]~input_o\ $ (\sw[6]~input_o\)) # (\sw[9]~input_o\) ) ) # ( !\sw[8]~input_o\ & ( (!\sw[9]~input_o\ & (!\sw[7]~input_o\ & \sw[6]~input_o\)) # (\sw[9]~input_o\ & (\sw[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000111100001111110011001111111111001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[9]~input_o\,
	datac => \ALT_INV_sw[7]~input_o\,
	datad => \ALT_INV_sw[6]~input_o\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \display1|Mux3~0_combout\);

-- Location: LABCELL_X88_Y8_N45
\display1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux2~0_combout\ = ( \sw[8]~input_o\ & ( ((!\sw[7]~input_o\) # (\sw[9]~input_o\)) # (\sw[6]~input_o\) ) ) # ( !\sw[8]~input_o\ & ( ((\sw[9]~input_o\ & \sw[7]~input_o\)) # (\sw[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111111111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[6]~input_o\,
	datac => \ALT_INV_sw[9]~input_o\,
	datad => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \display1|Mux2~0_combout\);

-- Location: LABCELL_X88_Y8_N48
\display1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux1~0_combout\ = ( \sw[8]~input_o\ & ( ((\sw[7]~input_o\ & \sw[6]~input_o\)) # (\sw[9]~input_o\) ) ) # ( !\sw[8]~input_o\ & ( ((!\sw[9]~input_o\ & \sw[6]~input_o\)) # (\sw[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[9]~input_o\,
	datac => \ALT_INV_sw[7]~input_o\,
	datad => \ALT_INV_sw[6]~input_o\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \display1|Mux1~0_combout\);

-- Location: LABCELL_X88_Y8_N36
\display1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|Mux0~0_combout\ = ( \sw[8]~input_o\ & ( (!\sw[9]~input_o\ & ((!\sw[6]~input_o\) # (!\sw[7]~input_o\))) ) ) # ( !\sw[8]~input_o\ & ( !\sw[9]~input_o\ $ (!\sw[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011001000110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[6]~input_o\,
	datab => \ALT_INV_sw[9]~input_o\,
	datac => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \display1|Mux0~0_combout\);

-- Location: LABCELL_X88_Y8_N54
\display2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|Mux6~0_combout\ = ( \sw[5]~input_o\ & ( (\sw[4]~input_o\) # (\sw[3]~input_o\) ) ) # ( !\sw[5]~input_o\ & ( (!\sw[3]~input_o\ & (!\sw[2]~input_o\ $ (!\sw[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[3]~input_o\,
	datab => \ALT_INV_sw[2]~input_o\,
	datad => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \display2|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y8_N18
\display2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|Mux5~0_combout\ = (!\sw[4]~input_o\ & (\sw[3]~input_o\ & ((\sw[5]~input_o\)))) # (\sw[4]~input_o\ & ((!\sw[3]~input_o\ $ (!\sw[2]~input_o\)) # (\sw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001110111000100100111011100010010011101110001001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[3]~input_o\,
	datab => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[2]~input_o\,
	datad => \ALT_INV_sw[5]~input_o\,
	combout => \display2|Mux5~0_combout\);

-- Location: LABCELL_X88_Y8_N57
\display2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|Mux4~0_combout\ = ( \sw[5]~input_o\ & ( (\sw[4]~input_o\) # (\sw[3]~input_o\) ) ) # ( !\sw[5]~input_o\ & ( (\sw[3]~input_o\ & (!\sw[2]~input_o\ & !\sw[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[3]~input_o\,
	datab => \ALT_INV_sw[2]~input_o\,
	datac => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \display2|Mux4~0_combout\);

-- Location: LABCELL_X88_Y8_N27
\display2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|Mux3~0_combout\ = ( \sw[5]~input_o\ & ( (\sw[4]~input_o\) # (\sw[3]~input_o\) ) ) # ( !\sw[5]~input_o\ & ( (!\sw[3]~input_o\ & (!\sw[4]~input_o\ $ (!\sw[2]~input_o\))) # (\sw[3]~input_o\ & (\sw[4]~input_o\ & \sw[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[3]~input_o\,
	datac => \ALT_INV_sw[4]~input_o\,
	datad => \ALT_INV_sw[2]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \display2|Mux3~0_combout\);

-- Location: LABCELL_X88_Y8_N30
\display2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|Mux2~0_combout\ = ( \sw[5]~input_o\ & ( ((\sw[4]~input_o\) # (\sw[3]~input_o\)) # (\sw[2]~input_o\) ) ) # ( !\sw[5]~input_o\ & ( ((!\sw[3]~input_o\ & \sw[4]~input_o\)) # (\sw[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[2]~input_o\,
	datac => \ALT_INV_sw[3]~input_o\,
	datad => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \display2|Mux2~0_combout\);

-- Location: LABCELL_X88_Y8_N33
\display2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|Mux1~0_combout\ = ( \sw[5]~input_o\ & ( (\sw[4]~input_o\) # (\sw[3]~input_o\) ) ) # ( !\sw[5]~input_o\ & ( (!\sw[3]~input_o\ & (\sw[2]~input_o\ & !\sw[4]~input_o\)) # (\sw[3]~input_o\ & ((!\sw[4]~input_o\) # (\sw[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[3]~input_o\,
	datab => \ALT_INV_sw[2]~input_o\,
	datac => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \display2|Mux1~0_combout\);

-- Location: LABCELL_X88_Y8_N42
\display2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|Mux0~0_combout\ = ( \sw[5]~input_o\ & ( (!\sw[4]~input_o\ & !\sw[3]~input_o\) ) ) # ( !\sw[5]~input_o\ & ( (!\sw[4]~input_o\ & (\sw[3]~input_o\)) # (\sw[4]~input_o\ & ((!\sw[3]~input_o\) # (!\sw[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111100001111110011110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[3]~input_o\,
	datad => \ALT_INV_sw[2]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \display2|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y8_N36
\display3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|Mux6~0_combout\ = ( \projeto|code_memory|flipflop0|Q~q\ & ( (\projeto|code_memory|flipflop1|Q~q\) # (\projeto|code_memory|flipflop2|Q~q\) ) ) # ( !\projeto|code_memory|flipflop0|Q~q\ & ( (!\projeto|code_memory|flipflop2|Q~q\ & 
-- (!\projeto|code_memory|flipflop3|Q~q\ $ (!\projeto|code_memory|flipflop1|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \projeto|code_memory|flipflop3|ALT_INV_Q~q\,
	datac => \projeto|code_memory|flipflop2|ALT_INV_Q~q\,
	datad => \projeto|code_memory|flipflop1|ALT_INV_Q~q\,
	dataf => \projeto|code_memory|flipflop0|ALT_INV_Q~q\,
	combout => \display3|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y8_N3
\display3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|Mux5~0_combout\ = ( \projeto|code_memory|flipflop0|Q~q\ & ( (\projeto|code_memory|flipflop1|Q~q\) # (\projeto|code_memory|flipflop2|Q~q\) ) ) # ( !\projeto|code_memory|flipflop0|Q~q\ & ( (\projeto|code_memory|flipflop1|Q~q\ & 
-- (!\projeto|code_memory|flipflop2|Q~q\ $ (!\projeto|code_memory|flipflop3|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \projeto|code_memory|flipflop2|ALT_INV_Q~q\,
	datab => \projeto|code_memory|flipflop1|ALT_INV_Q~q\,
	datad => \projeto|code_memory|flipflop3|ALT_INV_Q~q\,
	dataf => \projeto|code_memory|flipflop0|ALT_INV_Q~q\,
	combout => \display3|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y8_N30
\display3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|Mux4~0_combout\ = (!\projeto|code_memory|flipflop1|Q~q\ & (\projeto|code_memory|flipflop2|Q~q\ & ((!\projeto|code_memory|flipflop3|Q~q\) # (\projeto|code_memory|flipflop0|Q~q\)))) # (\projeto|code_memory|flipflop1|Q~q\ & 
-- (((\projeto|code_memory|flipflop0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111111000010000011111100001000001111110000100000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \projeto|code_memory|flipflop3|ALT_INV_Q~q\,
	datab => \projeto|code_memory|flipflop1|ALT_INV_Q~q\,
	datac => \projeto|code_memory|flipflop2|ALT_INV_Q~q\,
	datad => \projeto|code_memory|flipflop0|ALT_INV_Q~q\,
	combout => \display3|Mux4~0_combout\);

-- Location: MLABCELL_X87_Y8_N33
\display3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|Mux3~0_combout\ = ( \projeto|code_memory|flipflop0|Q~q\ & ( (\projeto|code_memory|flipflop2|Q~q\) # (\projeto|code_memory|flipflop1|Q~q\) ) ) # ( !\projeto|code_memory|flipflop0|Q~q\ & ( (!\projeto|code_memory|flipflop3|Q~q\ & 
-- (\projeto|code_memory|flipflop1|Q~q\ & !\projeto|code_memory|flipflop2|Q~q\)) # (\projeto|code_memory|flipflop3|Q~q\ & (!\projeto|code_memory|flipflop1|Q~q\ $ (\projeto|code_memory|flipflop2|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \projeto|code_memory|flipflop3|ALT_INV_Q~q\,
	datac => \projeto|code_memory|flipflop1|ALT_INV_Q~q\,
	datad => \projeto|code_memory|flipflop2|ALT_INV_Q~q\,
	dataf => \projeto|code_memory|flipflop0|ALT_INV_Q~q\,
	combout => \display3|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y8_N0
\display3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|Mux2~0_combout\ = ( \projeto|code_memory|flipflop0|Q~q\ & ( ((\projeto|code_memory|flipflop3|Q~q\) # (\projeto|code_memory|flipflop1|Q~q\)) # (\projeto|code_memory|flipflop2|Q~q\) ) ) # ( !\projeto|code_memory|flipflop0|Q~q\ & ( 
-- ((!\projeto|code_memory|flipflop2|Q~q\ & \projeto|code_memory|flipflop1|Q~q\)) # (\projeto|code_memory|flipflop3|Q~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \projeto|code_memory|flipflop2|ALT_INV_Q~q\,
	datab => \projeto|code_memory|flipflop1|ALT_INV_Q~q\,
	datac => \projeto|code_memory|flipflop3|ALT_INV_Q~q\,
	dataf => \projeto|code_memory|flipflop0|ALT_INV_Q~q\,
	combout => \display3|Mux2~0_combout\);

-- Location: LABCELL_X88_Y8_N24
\display3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|Mux1~0_combout\ = ( \projeto|code_memory|flipflop0|Q~q\ & ( (\projeto|code_memory|flipflop1|Q~q\) # (\projeto|code_memory|flipflop2|Q~q\) ) ) # ( !\projeto|code_memory|flipflop0|Q~q\ & ( (!\projeto|code_memory|flipflop3|Q~q\ & 
-- (\projeto|code_memory|flipflop2|Q~q\ & !\projeto|code_memory|flipflop1|Q~q\)) # (\projeto|code_memory|flipflop3|Q~q\ & ((!\projeto|code_memory|flipflop1|Q~q\) # (\projeto|code_memory|flipflop2|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \projeto|code_memory|flipflop3|ALT_INV_Q~q\,
	datac => \projeto|code_memory|flipflop2|ALT_INV_Q~q\,
	datad => \projeto|code_memory|flipflop1|ALT_INV_Q~q\,
	dataf => \projeto|code_memory|flipflop0|ALT_INV_Q~q\,
	combout => \display3|Mux1~0_combout\);

-- Location: LABCELL_X88_Y8_N51
\display3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|Mux0~0_combout\ = ( \projeto|code_memory|flipflop0|Q~q\ & ( (!\projeto|code_memory|flipflop2|Q~q\ & !\projeto|code_memory|flipflop1|Q~q\) ) ) # ( !\projeto|code_memory|flipflop0|Q~q\ & ( (!\projeto|code_memory|flipflop2|Q~q\ & 
-- (\projeto|code_memory|flipflop1|Q~q\)) # (\projeto|code_memory|flipflop2|Q~q\ & ((!\projeto|code_memory|flipflop1|Q~q\) # (!\projeto|code_memory|flipflop3|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011010010111110101101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \projeto|code_memory|flipflop2|ALT_INV_Q~q\,
	datac => \projeto|code_memory|flipflop1|ALT_INV_Q~q\,
	datad => \projeto|code_memory|flipflop3|ALT_INV_Q~q\,
	dataf => \projeto|code_memory|flipflop0|ALT_INV_Q~q\,
	combout => \display3|Mux0~0_combout\);

-- Location: LABCELL_X88_Y8_N3
\display4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|Mux6~0_combout\ = ( \projeto|code_memory|flipflop5|Q~q\ & ( ((!\projeto|code_memory|flipflop6|Q~q\ & !\projeto|code_memory|flipflop7|Q~q\)) # (\projeto|code_memory|flipflop4|Q~q\) ) ) # ( !\projeto|code_memory|flipflop5|Q~q\ & ( 
-- (!\projeto|code_memory|flipflop6|Q~q\ & (!\projeto|code_memory|flipflop4|Q~q\ & \projeto|code_memory|flipflop7|Q~q\)) # (\projeto|code_memory|flipflop6|Q~q\ & (\projeto|code_memory|flipflop4|Q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100101000001011010010110101111000011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \projeto|code_memory|flipflop6|ALT_INV_Q~q\,
	datac => \projeto|code_memory|flipflop4|ALT_INV_Q~q\,
	datad => \projeto|code_memory|flipflop7|ALT_INV_Q~q\,
	dataf => \projeto|code_memory|flipflop5|ALT_INV_Q~q\,
	combout => \display4|Mux6~0_combout\);

-- Location: LABCELL_X88_Y8_N12
\display4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|Mux5~0_combout\ = (!\projeto|code_memory|flipflop4|Q~q\ & (\projeto|code_memory|flipflop5|Q~q\ & (!\projeto|code_memory|flipflop6|Q~q\ $ (!\projeto|code_memory|flipflop7|Q~q\)))) # (\projeto|code_memory|flipflop4|Q~q\ & 
-- (((\projeto|code_memory|flipflop5|Q~q\)) # (\projeto|code_memory|flipflop6|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100011011000101110001101100010111000110110001011100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \projeto|code_memory|flipflop6|ALT_INV_Q~q\,
	datab => \projeto|code_memory|flipflop4|ALT_INV_Q~q\,
	datac => \projeto|code_memory|flipflop5|ALT_INV_Q~q\,
	datad => \projeto|code_memory|flipflop7|ALT_INV_Q~q\,
	combout => \display4|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y8_N39
\display4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|Mux4~0_combout\ = ( \projeto|code_memory|flipflop4|Q~q\ & ( (\projeto|code_memory|flipflop5|Q~q\) # (\projeto|code_memory|flipflop6|Q~q\) ) ) # ( !\projeto|code_memory|flipflop4|Q~q\ & ( (\projeto|code_memory|flipflop6|Q~q\ & 
-- (!\projeto|code_memory|flipflop7|Q~q\ & !\projeto|code_memory|flipflop5|Q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \projeto|code_memory|flipflop6|ALT_INV_Q~q\,
	datac => \projeto|code_memory|flipflop7|ALT_INV_Q~q\,
	datad => \projeto|code_memory|flipflop5|ALT_INV_Q~q\,
	dataf => \projeto|code_memory|flipflop4|ALT_INV_Q~q\,
	combout => \display4|Mux4~0_combout\);

-- Location: LABCELL_X88_Y8_N18
\display4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|Mux3~0_combout\ = (!\projeto|code_memory|flipflop6|Q~q\ & (!\projeto|code_memory|flipflop5|Q~q\ $ (((!\projeto|code_memory|flipflop7|Q~q\) # (\projeto|code_memory|flipflop4|Q~q\))))) # (\projeto|code_memory|flipflop6|Q~q\ & 
-- (((\projeto|code_memory|flipflop5|Q~q\ & \projeto|code_memory|flipflop7|Q~q\)) # (\projeto|code_memory|flipflop4|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101110010111000110111001011100011011100101110001101110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \projeto|code_memory|flipflop6|ALT_INV_Q~q\,
	datab => \projeto|code_memory|flipflop4|ALT_INV_Q~q\,
	datac => \projeto|code_memory|flipflop5|ALT_INV_Q~q\,
	datad => \projeto|code_memory|flipflop7|ALT_INV_Q~q\,
	combout => \display4|Mux3~0_combout\);

-- Location: LABCELL_X88_Y8_N21
\display4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|Mux2~0_combout\ = ( \projeto|code_memory|flipflop5|Q~q\ & ( (!\projeto|code_memory|flipflop6|Q~q\) # ((\projeto|code_memory|flipflop7|Q~q\) # (\projeto|code_memory|flipflop4|Q~q\)) ) ) # ( !\projeto|code_memory|flipflop5|Q~q\ & ( 
-- ((\projeto|code_memory|flipflop6|Q~q\ & \projeto|code_memory|flipflop4|Q~q\)) # (\projeto|code_memory|flipflop7|Q~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \projeto|code_memory|flipflop6|ALT_INV_Q~q\,
	datac => \projeto|code_memory|flipflop4|ALT_INV_Q~q\,
	datad => \projeto|code_memory|flipflop7|ALT_INV_Q~q\,
	dataf => \projeto|code_memory|flipflop5|ALT_INV_Q~q\,
	combout => \display4|Mux2~0_combout\);

-- Location: LABCELL_X88_Y8_N15
\display4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|Mux1~0_combout\ = ( \projeto|code_memory|flipflop5|Q~q\ & ( ((\projeto|code_memory|flipflop6|Q~q\ & \projeto|code_memory|flipflop7|Q~q\)) # (\projeto|code_memory|flipflop4|Q~q\) ) ) # ( !\projeto|code_memory|flipflop5|Q~q\ & ( 
-- ((!\projeto|code_memory|flipflop4|Q~q\ & \projeto|code_memory|flipflop7|Q~q\)) # (\projeto|code_memory|flipflop6|Q~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110101010101011111010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \projeto|code_memory|flipflop6|ALT_INV_Q~q\,
	datac => \projeto|code_memory|flipflop4|ALT_INV_Q~q\,
	datad => \projeto|code_memory|flipflop7|ALT_INV_Q~q\,
	dataf => \projeto|code_memory|flipflop5|ALT_INV_Q~q\,
	combout => \display4|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y8_N27
\display4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|Mux0~0_combout\ = ( \projeto|code_memory|flipflop4|Q~q\ & ( (!\projeto|code_memory|flipflop6|Q~q\ & !\projeto|code_memory|flipflop5|Q~q\) ) ) # ( !\projeto|code_memory|flipflop4|Q~q\ & ( (!\projeto|code_memory|flipflop6|Q~q\ & 
-- (\projeto|code_memory|flipflop5|Q~q\)) # (\projeto|code_memory|flipflop6|Q~q\ & ((!\projeto|code_memory|flipflop5|Q~q\) # (!\projeto|code_memory|flipflop7|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011010010111110101101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \projeto|code_memory|flipflop6|ALT_INV_Q~q\,
	datac => \projeto|code_memory|flipflop5|ALT_INV_Q~q\,
	datad => \projeto|code_memory|flipflop7|ALT_INV_Q~q\,
	dataf => \projeto|code_memory|flipflop4|ALT_INV_Q~q\,
	combout => \display4|Mux0~0_combout\);

-- Location: IOIBUF_X40_Y0_N1
\key[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\key[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LABCELL_X73_Y34_N0
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


