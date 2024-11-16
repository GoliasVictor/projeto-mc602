

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY projeto IS
	PORT (
		clock : IN STD_LOGIC;
		resetn : IN STD_LOGIC;
		update : IN STD_LOGIC;
		is_programming : IN STD_LOGIC;
		new_code : IN STD_LOGIC_VECTOR(0 TO 7);
		code_in : IN STD_LOGIC_VECTOR(0 TO 7);
		saved_code : OUT STD_LOGIC_VECTOR(0 TO 7);
		s : OUT STD_LOGIC;
		state_out : OUT STD_LOGIC_VECTOR(0 TO 1)
	);
END;

--------------------------------------------------------

ARCHITECTURE behv_projeto OF projeto IS
	SIGNAL is_equal : STD_LOGIC;
	SIGNAL code : STD_LOGIC_VECTOR(0 TO 7);
	SIGNAL last_update : STD_LOGIC;
BEGIN

	flipflop_update : work.flipflop PORT MAP (clock, resetn, '1', update, last_update);
	code_memory : work.code_memory
	PORT MAP(
		clock => clock,
		resetn => resetn,
		load => is_programming,
		new_code => new_code,
		code => code
	);
	equality_checker : work.equality_checker PORT MAP (code_in, code, is_equal);
	state_machine : work.state_machine
	PORT MAP(
		clock => clock,
		resetn => resetn,
		is_equal => is_equal,
		is_programming => is_programming,
		update => update AND NOT last_update,
		o => s,
		state_out => state_out
	);
	saved_code <= code;
END;