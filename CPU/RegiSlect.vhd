LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY RegiSlect IS
PORT (
     RW : IN  STD_LOGIC;  -- 控制信号，用于选择寄存器
     RS : OUT STD_LOGIC; 
     RT : OUT STD_LOGIC;  
     RD : OUT STD_LOGIC 
  
);
END RegiSlect;

ARCHITECTURE BEHAVE OF RegiSlect IS
BEGIN
   
    PROCESS(RW)
    BEGIN
        CASE RW IS
            -- 如果是寄存器指令那么就必须要使用到RS, RT, RD 这三个寄存器，而其他指令不需要使用到RD寄存器
            WHEN '1' => RS <= '1'; RT <= '1'; RD <= '1';   
            WHEN '0' => RS <= '1'; RT <= '1'; RD <= '0';   
            
        END CASE;
    END PROCESS;
END BEHAVE;