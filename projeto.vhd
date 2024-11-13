

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity projeto is
port(	
	clock: in std_logic;
	resetn: in std_logic;   
	update: in std_logic;   
	is_programming : in std_logic;
	new_code: IN STD_LOGIC_VECTOR(0 to 7); 
	code_in: IN STD_LOGIC_VECTOR(0 to 7); 
	s:	out  std_logic
);
end;

--------------------------------------------------------

architecture behv_projeto of projeto is
signal is_equal : std_logic;
signal code : STD_LOGIC_VECTOR(0 to 7);
begin				

	code_memory : work.code_memory 
		port map(
		clock => clock,
		resetn => resetn,
		load => is_programming,
		new_code => new_code,
		code => code
	);   
	equality_checker : work.equality_checker port map (code_in, code, is_equal);
	state_machine : work.state_machine port map (
		clock => update,
		resetn => resetn,
		is_equal => is_equal, 
		is_programming => is_programming, 
		o => s
	);
end;


