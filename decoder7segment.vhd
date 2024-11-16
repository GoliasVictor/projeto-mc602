LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY decoder7segment IS
	PORT (
		input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		hex : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END ENTITY decoder7segment;

ARCHITECTURE behv_decoder7segment OF decoder7segment IS

BEGIN
	PROCESS (input)
	BEGIN
		CASE input IS
			WHEN "0000" => hex <= "1000000"; ---0
			WHEN "0001" => hex <= "1111001"; ---1
			WHEN "0010" => hex <= "0100100"; ---2
			WHEN "0011" => hex <= "0110000"; ---3
			WHEN "0100" => hex <= "0011001"; ---4
			WHEN "0101" => hex <= "0010010"; ---5
			WHEN "0110" => hex <= "0000010"; ---6
			WHEN "0111" => hex <= "1111000"; ---7
			WHEN "1000" => hex <= "0000000"; ---8
			WHEN "1001" => hex <= "0010000"; ---9
			WHEN OTHERS => hex <= "1111111"; ---null
		END CASE;
	END PROCESS;
END ARCHITECTURE behv_decoder7segment;