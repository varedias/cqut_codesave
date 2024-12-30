LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Decoder1 IS
PORT(
    op         : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);  
    s          : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);  
    WE         : OUT STD_LOGIC;                   
    Smux       : OUT STD_LOGIC;                    
    Exop       : OUT STD_LOGIC;                   
    Lmux       : OUT STD_LOGIC;                    
    INCR_PC       : OUT STD_LOGIC;                   
    PC_LOAD       : OUT STD_LOGIC;                   
    R_ORNOT    : OUT STD_LOGIC;                     
	 JUMP : OUT STD_LOGIC;
	 RT_CHOSE : OUT STD_LOGIC;
	 BEQ : OUT STD_LOGIC ;
	 RAM_WRITE : OUT STD_LOGIC;
	 RAM_READ : OUT STD_LOGIC
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
					 RT_CHOSE <= '0';
					 BEQ<='0';
					 RAM_WRITE<='0';
					 RAM_READ<='0';

            -- 立即数
            WHEN "0010" => 
                s <= "1000"; 
                WE <= '1'; 
                Smux <= '0'; 
                Exop <= '0'; 
                Lmux <= '0'; 
                INCR_PC <= '1'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  -- lui 立即数左移
					 JUMP <='0';
					 RT_CHOSE <= '1';
					  BEQ<='0';
					  RAM_WRITE<='0';
					 RAM_READ<='0';

            WHEN "0011" => 
                s <= "1111"; 
                WE <= '1'; 
                Smux <= '0'; 
                Exop <= '0'; 
                Lmux <= '0'; 
                INCR_PC <= '1'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  -- ori 逻辑或
					 JUMP <='0';
					 RT_CHOSE <= '1';
					  BEQ<='0';
					  RAM_WRITE<='0';
					 RAM_READ<='0';

            WHEN "0100" => 
                s <= "0001"; 
                WE <= '1'; 
                Smux <= '0'; 
                Exop <= '0'; 
                Lmux <= '0'; 
                INCR_PC <= '1'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  -- andi 逻辑与
					 JUMP <='0';
					 RT_CHOSE <= '1';
					  BEQ<='0';
					  RAM_WRITE<='0';
					 RAM_READ<='0';

            WHEN "0101" => 
                s <= "0010"; 
                WE <= '1'; 
                Smux <= '0'; 
                Exop <= '1'; 
                Lmux <= '0'; 
                INCR_PC <= '1'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  -- addi 算术加
					 JUMP <='0';
					 RT_CHOSE <= '1';
					  BEQ<='0';
					  RAM_WRITE<='0';
					 RAM_READ<='0';

            WHEN "0110" => 
                s <= "0010"; 
                WE <= '1'; 
                Smux <= '0'; 
                Exop <= '1'; 
                Lmux <= '1'; 
                INCR_PC <= '1'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  -- lw 读
					 JUMP <='0';
					 RT_CHOSE <= '1';
					  BEQ<='0';
					  RAM_WRITE<='0';
					 RAM_READ<='1';

            WHEN "0111" => 
                s <= "0010"; 
                WE <= '0'; 
                Smux <= '0'; 
                Exop <= '1'; 
                Lmux <= '0'; 
                INCR_PC <= '1'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  -- sw 写
					 JUMP <='0';
					 RT_CHOSE <= '0';
					  BEQ<='0';
					  RAM_WRITE<='1';
					 RAM_READ<='0';
					 
				WHEN "1000" =>   --BEQ   跳转
				    s <= "0010"; 
                WE <= '0'; 
                Smux <= '0'; 
                Exop <= '1'; 
                Lmux <= '0'; 
                INCR_PC <= '0'; 
                PC_LOAD <= '1'; 
                R_ORNOT <= '0';  
					 JUMP <='0';
					 RT_CHOSE <= '0';
					  BEQ<='1';
					  RAM_WRITE<='0';
					 RAM_READ<='0';

            WHEN "1011" => --JUMP
                s <= "0000"; 
                WE <= '1'; 
                Smux <= '0'; 
                Exop <= '0'; 
                Lmux <= '0'; 
                INCR_PC <= '0'; 
                PC_LOAD <= '1'; 
                R_ORNOT <= '0';
					 JUMP <='1';
					 RT_CHOSE <= '0';
					  BEQ<='0';
					  RAM_WRITE<='0';
					 RAM_READ<='0';

            WHEN "1100" => --HALT
                s <= "1101"; 
                WE <= '1'; 
                Smux <= '1'; 
                Exop <= '0'; 
                Lmux <= '0'; 
                INCR_PC <= '0'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  
					 JUMP <='0';
					 RT_CHOSE <= '0';
					  BEQ<='0';
					  RAM_WRITE<='0';
					 RAM_READ<='0';

            WHEN "1111" | "1110" => 
                s <= "0000";  
                WE <= '1'; 
                Smux <= '0'; 
                Exop <= '1'; 
                Lmux <= '0'; 
                INCR_PC <= '1'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';  
					 JUMP <='0';
					 RT_CHOSE <= '0';
					  BEQ<='0';
					  RAM_WRITE<='0';
					 RAM_READ<='0';

            WHEN OTHERS => 
                s <= "1101";  
                WE <= '0'; 
                Smux <= '0'; 
                Exop <= '0'; 
                Lmux <= '0'; 
                INCR_PC <= '0'; 
                PC_LOAD <= '0'; 
                R_ORNOT <= '0';
					 JUMP <='0';
					 RT_CHOSE <= '0';
					  BEQ<='0';
					  RAM_WRITE<='0';
					 RAM_READ<='0';
        END CASE;
    END PROCESS;
END func; -- 结构体 结束