LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY state_machine IS
	PORT (
		clock : IN STD_LOGIC;
		resetn : IN STD_LOGIC;
		is_equal : IN STD_LOGIC;
		is_programming : IN STD_LOGIC;
		update : IN STD_LOGIC;
		O : OUT STD_LOGIC;
		state_out : OUT STD_LOGIC_VECTOR(0 TO 1)
	);
END;
ARCHITECTURE behv_state_machine OF state_machine IS
	SIGNAL state : STD_LOGIC_VECTOR(0 TO 1);
	SIGNAL newstate : STD_LOGIC_VECTOR(0 TO 1);
BEGIN

	o <= 'Z' WHEN (state(0) AND state(1)) = '1' ELSE
		state(1);
	state_machine_newstate : work.state_machine_newstate
	PORT MAP(
		is_equal,
		is_programming,
		update,
		state,
		newstate
	);

	fliflopy1 : work.flipflop
	PORT MAP(
		clock,
		resetn,
		'1',
		newstate(0),
		state(0)
	);
	fliflopy2 : work.flipflop
	PORT MAP(
		clock,
		resetn,
		'1',
		newstate(1),
		state(1)
	);
	state_out <= state;
END;