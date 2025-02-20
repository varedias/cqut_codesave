
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY AC_A IS
PORT(
     LOAD_A 	: IN 	STD_LOGIC;
	  clk 		: IN 	STD_LOGIC;
	  Data_in 	: IN 	STD_LOGIC_VECTOR(15 DOWNTO 0);
	  A 			: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END AC_A;

ARCHITECTURE accu OF AC_A IS



BEGIN
	PROCESS(clk,LOAD_A,data_in)	
	BEGIN
		IF clk'event AND clk = '1' THEN
			IF LOAD_A = '1' THEN
				A <= Data_in;
			END IF;
		END IF;
	END PROCESS;
END accu; 
	  
