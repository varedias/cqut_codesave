LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Decoder1 IS
PORT(
    op         : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);  
    s          : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);  
    WE         : OUT STD_LOGIC;                    -- 0，数据写入RAM；    1，读取RAM数据
    Smux       : OUT STD_LOGIC;                    -- 0，时钟打开；      1，时钟停止
    Exop       : OUT STD_LOGIC;                    -- 0，无符号立即数扩展；1，有符号立即数扩展
    Lmux       : OUT STD_LOGIC;                    -- 0，ALU结果写入AC；  1，RAM数据读入AC
    INCR_PC       : OUT STD_LOGIC;                    -- 0，PC地址加1；      1，PC为跳转地址
    PC_LOAD       : OUT STD_LOGIC;                    -- 0，上次PC输出放入PC；1，PC_LOAD地址放入PC
    R_ORNOT    : OUT STD_LOGIC;                     -- 0，不是R型指令；    1，R型指令
	 JUMP : OUT STD_LOGIC
);
END Decoder1;


ARCHITECTURE func OF Decoder1 IS
BEGIN
    PROCESS(op)  
    BEGIN
        CASE op IS
            -- R型
            WHEN "0000" => 
                s <= "0000"; 
                WE <= '1'; 
                Smux <= '0'; 
                Exop <= '0'; 
                Lmux <= '0'; 
                INCR_PC <= '1'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '1';  -- R型指令
					 JUMP <='0';

            -- 立即数
            WHEN "0001" => 
                s <= "1000"; 
                WE <= '1'; 
                Smux <= '0'; 
                Exop <= '0'; 
                Lmux <= '0'; 
                INCR_PC <= '1'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  -- lui 立即数左移
					 JUMP <='0';

            WHEN "0010" => 
                s <= "0000"; 
                WE <= '1'; 
                Smux <= '0'; 
                Exop <= '0'; 
                Lmux <= '0'; 
                INCR_PC <= '1'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  -- ori 逻辑或
					 JUMP <='0';

            WHEN "0011" => 
                s <= "0001"; 
                WE <= '1'; 
                Smux <= '0'; 
                Exop <= '0'; 
                Lmux <= '0'; 
                INCR_PC <= '1'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  -- andi 逻辑与
					 JUMP <='0';

            WHEN "0100" => 
                s <= "0010"; 
                WE <= '1'; 
                Smux <= '0'; 
                Exop <= '1'; 
                Lmux <= '0'; 
                INCR_PC <= '1'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  -- addi 算术加
					 JUMP <='0';

            WHEN "0101" => 
                s <= "0010"; 
                WE <= '1'; 
                Smux <= '0'; 
                Exop <= '1'; 
                Lmux <= '1'; 
                INCR_PC <= '1'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  -- lw 读
					 JUMP <='0';

            WHEN "0110" => 
                s <= "0010"; 
                WE <= '0'; 
                Smux <= '0'; 
                Exop <= '1'; 
                Lmux <= '0'; 
                INCR_PC <= '1'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  -- sw 写
					 JUMP <='0';

            WHEN "0111" => --JUMP
                s <= "0000"; 
                WE <= '1'; 
                Smux <= '0'; 
                Exop <= '0'; 
                Lmux <= '0'; 
                INCR_PC <= '0'; 
                PC_LOAD <= '1'; 
                R_ORNOT <= '0';  -- PC_LOAD 直接跳转
					 JUMP <='1';

            WHEN "1011" => --HALT
                s <= "1101"; 
                WE <= '1'; 
                Smux <= '1'; 
                Exop <= '0'; 
                Lmux <= '0'; 
                INCR_PC <= '0'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  -- halt 时钟停止
					 JUMP <='0';

            WHEN "1111" | "1110" =>  -- 假设两者处理相同
                s <= "1111";  -- 或 "1110" 根据具体需求
                WE <= '1'; 
                Smux <= '0'; 
                Exop <= '1'; 
                Lmux <= '0'; 
                INCR_PC <= '1'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  -- 加载数据
					 JUMP <='0';

            WHEN OTHERS => 
                s <= "1101";  -- 其他清零
                WE <= '0'; 
                Smux <= '0'; 
                Exop <= '0'; 
                Lmux <= '0'; 
                INCR_PC <= '0'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';
					 JUMP <='0';
        END CASE;
    END PROCESS;
END func; -- 结构体 结束