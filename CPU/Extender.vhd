
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY Extender IS
PORT(
     in_c 	: IN 	STD_LOGIC_VECTOR(7 DOWNTO 0);
	  out_c 	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	  went 	: IN 	STD_LOGIC_VECTOR(0 DOWNTO 0)
);
END Extender;


ARCHITECTURE BEHAVE OF Extender IS
	SIGNAL TEMP : STD_LOGIC;	
	
BEGIN
	TEMP <= in_c(7);	
	PROCESS(in_c) 
   begin
		case went IS
			when "0"=> out_c<=("0000000000000000"+in_c);	
			when "1"=> out_c<=("1111111100000000"+in_c); 
		end case;
	end process;
END BEHAVE;
    