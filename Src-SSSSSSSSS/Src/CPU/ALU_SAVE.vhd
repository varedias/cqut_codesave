LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


ENTITY ALU_SAVE IS
PORT(
    LMUX      : IN    STD_LOGIC;
    clk       : IN    STD_LOGIC;
    Data_in   : IN    STD_LOGIC_VECTOR(15 DOWNTO 0);
    LMUX_OUT  : OUT   STD_LOGIC;
    A         : OUT   STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END ALU_SAVE;

ARCHITECTURE accu OF ALU_SAVE IS
BEGIN
    PROCESS(clk) 
    BEGIN
        IF clk'event AND clk = '0' THEN  -- 时钟下降沿触发
            A <= Data_in; -- 在时钟下降沿更新 A 的值
            LMUX_OUT <= LMUX; -- 同时更新 LMUX_OUT 的值
        END IF;
    END PROCESS;
END accu;