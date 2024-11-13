LIBRARY ieee;
USE ieee.std_logic_1164.ALL; 
ENTITY equality_checker IS
	PORT (  
		A: IN STD_LOGIC_VECTOR(0 to 7);
		B: IN STD_LOGIC_VECTOR(0 to 7);
		O: OUT STD_LOGIC
	);
END;

--------------------------------------------------------

ARCHITECTURE behv_equality_checker OF equality_checker IS
BEGIN
	O <= (A(0) xnor B(0)) 
	and (A(1) xnor B(1)) 
	and (A(2) xnor B(2)) 
	and (A(3) xnor B(3))
	and (A(4) xnor B(4)) 
	and (A(5) xnor B(5)) 
	and (A(6) xnor B(6)) 
	and (A(7) xnor B(7))	
	;
END;