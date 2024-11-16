LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY state_machine IS
	PORT (
		clock : IN STD_LOGIC;		
		resetn : IN STD_LOGIC;
		is_equal : IN STD_LOGIC;
		is_programming : IN STD_LOGIC;
		O : OUT STD_LOGIC
	);
END;

--------------------------------------------------------

 ARCHITECTURE behv_state_machine OF state_machine IS
 	signal state0:  STD_LOGIC;
	signal nstate0:  STD_LOGIC;
 	signal state1:  STD_LOGIC;
	signal nstate1:  STD_LOGIC;
 BEGIN
 	o <= 'Z' when  (state0 and state1) = '1'  else state1;
 	fliflopy1 : work.flipflop port map (
		clock, 
		resetn, 
		(not is_programming and not is_equal and nstate1) or (state0 and state1),
		state0,
		nstate0
	);
	fliflopy2 : work.flipflop port map (
		clock, 
		resetn, 
		(not is_programming and state1) or (not state0 and is_programming) or (state0 and state1),
		state1,
		nstate1
	);
 END;
-- ARCHITECTURE behv_state_machine OF state_machine IS
-- 	TYPE mstate IS (start, witherror, opened, disabled);
-- 	SIGNAL state : mstate ;
-- 
-- BEGIN
-- 	o <= 'Z' WHEN state = disabled ELSE
-- 		'1' WHEN state = opened ELSE
-- 		'0';
-- 		
-- 	PROCESS (clock)
-- 	BEGIN
--  
-- 		IF (rising_edge(clock)) THEN
-- 			IF (not (state = disabled)) THEN
-- 				IF (is_programming = '1' and not (state = opened)) THEN
-- 					state <= start;
-- 				ELSE
-- 				case State is
-- 					when start => 
-- 						if(is_equal = '1') then
-- 							state <=  opened;
-- 						else
-- 							state <= witherror;
-- 						end if; 
-- 					
-- 					when witherror => 
-- 						if(is_equal = '1') then
-- 							state <=  opened;
-- 						else
-- 							state <= disabled;
-- 						end if;
-- 					when others => null;
-- 				end case;
-- 				END IF;
-- 
-- 			END IF;
-- 		END IF;
-- 	END PROCESS;
-- END;