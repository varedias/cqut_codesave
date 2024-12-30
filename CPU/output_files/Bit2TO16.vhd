library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Bit2TO16 is
    port (
        DATA_IN  : in  STD_LOGIC_VECTOR(1 downto 0);  -- 2位输入数据
        DATA_OUT : out STD_LOGIC_VECTOR(15 downto 0)  -- 16位输出数据，高位填充0
    );
end Bit2TO16;

architecture BEHAVIORAL of Bit2TO16 is
begin
    -- 使用明确的位值拼接：将14个'0'和2位输入拼接
    DATA_OUT <= "00000000000000" & DATA_IN;
end BEHAVIORAL;
