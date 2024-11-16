LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY equality_checker IS
	PORT (
		A : IN STD_LOGIC_VECTOR(0 TO 7);
		B : IN STD_LOGIC_VECTOR(0 TO 7);
		O : OUT STD_LOGIC
	);
END;

--------------------------------------------------------

ARCHITECTURE behv_equality_checker OF equality_checker IS
BEGIN
	O <= (A(0) XNOR B(0))
		AND (A(1) XNOR B(1))
		AND (A(2) XNOR B(2))
		AND (A(3) XNOR B(3))
		AND (A(4) XNOR B(4))
		AND (A(5) XNOR B(5))
		AND (A(6) XNOR B(6))
		AND (A(7) XNOR B(7))
		;
END;