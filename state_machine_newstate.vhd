LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY state_machine_newstate IS
	PORT (
		is_equal, is_programming, update : IN STD_LOGIC;
		state : IN STD_LOGIC_VECTOR(0 TO 1);
		new_state : OUT STD_LOGIC_VECTOR(0 TO 1)
	);
END;
ARCHITECTURE behv_state_machine_newstate OF state_machine_newstate IS
BEGIN
	new_state(0) <= ((NOT is_programming) AND (NOT update) AND state(0))
		OR ((NOT is_programming) AND update AND (NOT is_equal) AND (NOT state(1)))
		OR (state(0) AND state(1));

	new_state(1) <= state(1) 
			OR ((NOT is_programming) AND update AND is_equal) 
			OR ((NOT is_programming) AND state(0) AND update);
END;