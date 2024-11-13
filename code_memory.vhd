LIBRARY ieee;
USE ieee.std_logic_1164.ALL; 
ENTITY code_memory IS
	PORT (
		clock : IN STD_LOGIC;
		resetn : IN STD_LOGIC;
		load : IN STD_LOGIC;
		new_code: IN STD_LOGIC_VECTOR(0 to 3);
		code: BUFFER STD_LOGIC_VECTOR(0 to 3)
	);
END;

--------------------------------------------------------

ARCHITECTURE behv_code_memory OF code_memory IS
BEGIN
	flipflop0 : work.flipflop port map (clock, resetn, new_code(0), code(0));
	flipflop1 : work.flipflop port map (clock, resetn, new_code(1), code(1));
	flipflop2 : work.flipflop port map (clock, resetn, new_code(2), code(2));
	flipflop3 : work.flipflop port map (clock, resetn, new_code(3), code(3));
END;