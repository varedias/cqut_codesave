library ieee;
use ieee.std_logic_1164.all;

entity Jumper is 
port(
    EnJum : in std_logic;
    Addr : in std_logic_vector(7 downto 0); -- 8位地址由于PC只有7位的处理所以我直接设置成为7位而不是需求的12位

    Out_Addr : out std_logic_vector(7 downto 0) -- 输出地址
);
end Jumper;

architecture Behavioral of Jumper is
begin
    process(EnJum, Addr)
    begin
        if EnJum = '1' then
            Out_Addr <= Addr;
        else
            Out_Addr <= (others => '0');
        end if;
    end process;
end Behavioral;