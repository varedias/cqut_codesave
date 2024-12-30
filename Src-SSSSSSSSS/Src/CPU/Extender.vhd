
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- 实体 Extender 扩展器
ENTITY Extender IS
PORT(
     in_c 	: IN 	STD_LOGIC_VECTOR(7 DOWNTO 0);
	  out_c 	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	  went 	: IN 	STD_LOGIC_VECTOR(0 DOWNTO 0)
);
END Extender;

-- 结构体 func
ARCHITECTURE func OF Extender IS
	-- 变量声明 func
	SIGNAL TEMP : STD_LOGIC;	-- 最高位 判断是否有溢出的
	
BEGIN
	TEMP <= in_c(7);	-- 取最高位 
	PROCESS(in_c) -- 进程 变量输入
   begin
		case went IS
			when "0"=> out_c<=("0000000000000000"+in_c);	--	无符号添0
			when "1"=> out_c<=("1111111100000000"+in_c); -- 补码添1
		end case;
	end process;
END func; -- 结构体 结束
    