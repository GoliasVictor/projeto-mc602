LIBRARY ieee;
USE ieee.std_logic_1164.ALL; 
ENTITY equality_checker IS
	PORT (  
		A: IN STD_LOGIC_VECTOR(0 to 3);
		B: IN STD_LOGIC_VECTOR(0 to 3);
		O: OUT STD_LOGIC
	);
END;

--------------------------------------------------------

ARCHITECTURE behv_equality_checker OF equality_checker IS
BEGIN
	O <= (A(0) xnor B(0)) and (A(1) xnor B(1)) and (A(2) xnor B(2)) and (A(3) xnor B(3)) ;
END;