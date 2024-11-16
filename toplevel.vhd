--- Saidas e entradas configuradas para uma fpga de1-soc, 5csema5f31c6n

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY toplevel IS
	PORT (

		clock_50 : IN STD_LOGIC;
		key : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		sw : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		hex5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		hex4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);

		hex1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		hex0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		ledr : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END ENTITY toplevel;

ARCHITECTURE behv_top_level OF toplevel IS
	SIGNAL saved_code : STD_LOGIC_VECTOR(0 TO 7);
	SIGNAL state_out : STD_LOGIC_VECTOR(0 TO 1);
	SIGNAL s : STD_LOGIC;
BEGIN

	projeto : work.projeto 
	PORT MAP(
		clock => clock_50,
		resetn => key(1),
		update => NOT key(0),
		is_programming => sw(1),
		new_code => sw(9 DOWNTO 2),
		code_in => sw(9 DOWNTO 2),
		saved_code => saved_code,
		state_out => state_out,
		s => s
	);
	
	display1 : work.decoder7segment PORT MAP(sw(9 DOWNTO 6), hex5);
	display2 : work.decoder7segment PORT MAP(sw(5 DOWNTO 2), hex4);
	display3 : work.decoder7segment PORT MAP(saved_code(0 TO 3), hex1);
	display4 : work.decoder7segment PORT MAP(saved_code(4 TO 7), hex0);
	
	ledr(1) <= '1' WHEN (s = '1') ELSE '0';
	ledr(0) <= '1' WHEN (s = '0') ELSE '0';
	ledr(2) <= '1' WHEN ((NOT s = '1') AND (NOT s = '0')) ELSE '0';
	
	ledr(8) <= state_out(0);
	ledr(9) <= state_out(1);
END ARCHITECTURE behv_top_level;