LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY half_adder IS
	PORT (
		A : IN STD_LOGIC;
		B : IN STD_LOGIC;
		carry : OUT STD_LOGIC;
		sum : OUT STD_LOGIC
	);
END half_adder;

--------------------------------------------------------

ARCHITECTURE behv_half_adder OF half_adder IS
BEGIN

	-- the 3rd bit should be carry

	sum <= A XOR B;
	carry <= A AND B;

END behv_half_adder;
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY adder IS
	PORT (
		carry_in : IN STD_LOGIC;
		A : IN STD_LOGIC;
		B : IN STD_LOGIC;
		carry_out : OUT STD_LOGIC;
		sum : OUT STD_LOGIC
	);
END adder;

--------------------------------------------------------

ARCHITECTURE behv_adder OF adder IS
	COMPONENT half_adder IS
		PORT (
			A : IN STD_LOGIC;
			B : IN STD_LOGIC;
			carry : OUT STD_LOGIC;
			sum : OUT STD_LOGIC
		);
	END COMPONENT;

	SIGNAL AsB : STD_LOGIC;
	SIGNAL AsB_cout : STD_LOGIC;
	SIGNAL AsBsC_cout : STD_LOGIC;
BEGIN

	-- the 3rd bit should be carry
	s1 : half_adder
	PORT MAP(
		A => A,
		B => B,
		sum => AsB,
		carry => AsB_cout

	);
	s2 : half_adder
	PORT MAP(
		A => AsB,
		B => carry_in,
		sum => sum,
		carry => AsBsC_cout

	);
	carry_out <= AsB_cout OR AsBsC_cout;
END;