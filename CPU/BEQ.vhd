LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY BEQ IS
    PORT (
        BEQ_EN   : IN  STD_LOGIC;
        RT       : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
        RS       : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
        ADDR_IN  : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
        ADDR_OFF : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
        ADDR_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END BEQ;


ARCHITECTURE Behavioral OF BEQ IS
BEGIN
    PROCESS (BEQ_EN, RT, RS, ADDR_IN, ADDR_OFF)
        VARIABLE ADDR_TEMP : SIGNED(7 DOWNTO 0);
    BEGIN
        ADDR_TEMP := to_signed(to_integer(signed(ADDR_IN)), 8) + 1;

      
        IF BEQ_EN = '1' AND RT = RS THEN
            
            ADDR_TEMP := signed(ADDR_IN) + signed(ADDR_OFF);
        END IF;

        -- 将结果赋值给输出（注意可能的溢出）
        ADDR_OUT <= STD_LOGIC_VECTOR(ADDR_TEMP);
    END PROCESS;
END Behavioral;