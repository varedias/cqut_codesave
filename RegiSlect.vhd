LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;



ENTITY RegiSlect IS
PORT (
     RW : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);  -- 控制信号，用于选择寄存器
     R0 : OUT STD_LOGIC; 
     R1 : OUT STD_LOGIC;  
     R2 : OUT STD_LOGIC;  
     R3 : OUT STD_LOGIC   
);
END RegiSlect;


ARCHITECTURE BEHAVE OF RegiSlect IS
BEGIN
    -- 根据控制信号RW选择对应的寄存器输出
    PROCESS(RW)
    BEGIN
        CASE RW IS
            WHEN "00" => R0 <= '1'; R1 <= '0'; R2 <= '0'; R3 <= '0';  
            WHEN "01" => R0 <= '0'; R1 <= '1'; R2 <= '0'; R3 <= '0';  
            WHEN "10" => R0 <= '0'; R1 <= '0'; R2 <= '1'; R3 <= '0';  
            WHEN "11" => R0 <= '0'; R1 <= '0'; R2 <= '0'; R3 <= '1';  
           
        END CASE;
    END PROCESS;
END BEHAVE;