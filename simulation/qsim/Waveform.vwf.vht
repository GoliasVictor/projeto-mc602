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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/13/2024 10:12:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          projeto
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY projeto_vhd_vec_tst IS
END projeto_vhd_vec_tst;
ARCHITECTURE projeto_arch OF projeto_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL code_in : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL is_programming : STD_LOGIC;
SIGNAL new_code : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL resetn : STD_LOGIC;
SIGNAL s : STD_LOGIC;
SIGNAL update : STD_LOGIC;
COMPONENT projeto
	PORT (
	clock : IN STD_LOGIC;
	code_in : IN STD_LOGIC_VECTOR(0 TO 7);
	is_programming : IN STD_LOGIC;
	new_code : IN STD_LOGIC_VECTOR(0 TO 7);
	resetn : IN STD_LOGIC;
	s : BUFFER STD_LOGIC;
	update : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : projeto
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	code_in => code_in,
	is_programming => is_programming,
	new_code => new_code,
	resetn => resetn,
	s => s,
	update => update
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
-- code_in[7]
t_prcs_code_in_7: PROCESS
BEGIN
	code_in(7) <= '0';
WAIT;
END PROCESS t_prcs_code_in_7;
-- code_in[6]
t_prcs_code_in_6: PROCESS
BEGIN
	code_in(6) <= '0';
WAIT;
END PROCESS t_prcs_code_in_6;
-- code_in[5]
t_prcs_code_in_5: PROCESS
BEGIN
	code_in(5) <= '0';
WAIT;
END PROCESS t_prcs_code_in_5;
-- code_in[4]
t_prcs_code_in_4: PROCESS
BEGIN
	code_in(4) <= '0';
WAIT;
END PROCESS t_prcs_code_in_4;
-- code_in[3]
t_prcs_code_in_3: PROCESS
BEGIN
	code_in(3) <= '0';
WAIT;
END PROCESS t_prcs_code_in_3;
-- code_in[2]
t_prcs_code_in_2: PROCESS
BEGIN
	code_in(2) <= '0';
WAIT;
END PROCESS t_prcs_code_in_2;
-- code_in[1]
t_prcs_code_in_1: PROCESS
BEGIN
	code_in(1) <= '0';
WAIT;
END PROCESS t_prcs_code_in_1;
-- code_in[0]
t_prcs_code_in_0: PROCESS
BEGIN
	code_in(0) <= '0';
WAIT;
END PROCESS t_prcs_code_in_0;

-- is_programming
t_prcs_is_programming: PROCESS
BEGIN
	is_programming <= '0';
WAIT;
END PROCESS t_prcs_is_programming;
-- new_code[7]
t_prcs_new_code_7: PROCESS
BEGIN
	new_code(7) <= '0';
WAIT;
END PROCESS t_prcs_new_code_7;
-- new_code[6]
t_prcs_new_code_6: PROCESS
BEGIN
	new_code(6) <= '0';
WAIT;
END PROCESS t_prcs_new_code_6;
-- new_code[5]
t_prcs_new_code_5: PROCESS
BEGIN
	new_code(5) <= '0';
WAIT;
END PROCESS t_prcs_new_code_5;
-- new_code[4]
t_prcs_new_code_4: PROCESS
BEGIN
	new_code(4) <= '0';
WAIT;
END PROCESS t_prcs_new_code_4;
-- new_code[3]
t_prcs_new_code_3: PROCESS
BEGIN
	new_code(3) <= '0';
WAIT;
END PROCESS t_prcs_new_code_3;
-- new_code[2]
t_prcs_new_code_2: PROCESS
BEGIN
	new_code(2) <= '0';
WAIT;
END PROCESS t_prcs_new_code_2;
-- new_code[1]
t_prcs_new_code_1: PROCESS
BEGIN
	new_code(1) <= '0';
WAIT;
END PROCESS t_prcs_new_code_1;
-- new_code[0]
t_prcs_new_code_0: PROCESS
BEGIN
	new_code(0) <= '0';
WAIT;
END PROCESS t_prcs_new_code_0;

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
WAIT;
END PROCESS t_prcs_resetn;

-- update
t_prcs_update: PROCESS
BEGIN
	update <= '0';
WAIT;
END PROCESS t_prcs_update;
END projeto_arch;
