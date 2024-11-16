LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY flipflop IS
	PORT (
		clock, Resetn, load, D : IN STD_LOGIC;
		Q : BUFFER STD_LOGIC
	);
END flipflop;
ARCHITECTURE Behavior OF flipflop IS
BEGIN
	PROCESS (Resetn, Clock)
	BEGIN
		IF Resetn = '0' THEN
			Q <= '0';
		ELSIF Clock'EVENT AND Clock = '1' AND load = '1' THEN
			Q <= D;
		END IF;
	END PROCESS;
END Behavior;