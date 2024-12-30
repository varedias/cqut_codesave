
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
-- 这是用于确定寄存器指令应该执行什么操作

ENTITY Decoder2 IS
	PORT(
     op  :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);	-- 数位选择
	  S   :  OUT STD_LOGIC_VECTOR(3 DOWNTO 0)		-- 译码输出
	);
END Decoder2;


ARCHITECTURE BEHAVE OF Decoder2 IS
	


BEGIN
	PROCESS(op)	
	BEGIN
		CASE op IS
			WHEN "000" => S <= "1111";	-- 或运算
			WHEN "001" => S <= "0001";	-- 与运算
			WHEN "010" => S <= "0010";	-- 加法运算
			WHEN "011" => S <= "0011";	-- 减法运算
			WHEN "100" => S <= "0100";	-- 逻辑左移
			WHEN "101" => S <= "0101";	-- 逻辑右移
			WHEN "110" => S <= "0110";	-- 算数右移
			WHEN "111" => S <= "0111";	-- 比大小
		END CASE;
	END PROCESS;
END BEHAVE; 
