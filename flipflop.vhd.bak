LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY flipflop IS
	PORT (
		Clock, resetn, d : IN STD_LOGIC;
		Q : buffer STD_LOGIC;
		nQ : buffer STD_LOGIC);

END flipflop;
ARCHITECTURE Behavior OF flipflop IS
signal s : std_logic;
signal r : std_logic;
signal dd : std_logic;

BEGIN
	dd <= resetn  and d;
	s <= dd nand clock;
	r <= (not dd) nand clock;
	q <= s nand nQ;
	nQ <= r nand Q;
END Behavior;