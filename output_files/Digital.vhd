library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DIGITAL is 
port (
    BLANK : STD_LOGIC;
    TEST : STD_LOGIC;
    DATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    RQ1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    RQ2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
) ;
end DIGITAL;

architecture Behavioral of DIGITAL is
signal DH : STD_LOGIC_VECTOR(3 DOWNTO 0);
signal DL : STD_LOGIC_VECTOR(3 DOWNTO 0);
    begin
        DH <= DATA(7)&DATA(6)&DATA(5)&DATA(4);
        DL <= DATA(3)&DATA(2)&DATA(1)&DATA(0);
        process(DH,DL)
        begin 
            if(BLANK = '1') then
                RQ1 <= "1111111";
                RQ2 <= "1111111";
                elsif BLANK = '0' and TEST = '0' then 
                RQ1 <= "1111110";
                RQ2 <= "1111110";
                elsif BLANK = '0' and TEST = '1' then
                case DL is 
                when "0000" => RQ2 <= "1000000";
                when "0001" => RQ2 <= "1001111";
                when "0010" => RQ2 <= "0100100";
                when "0011" => RQ2 <= "0000110";
                when "0100" => RQ2 <= "0001011";
                when "0101" => RQ2 <= "0010010";
                when "0110" => RQ2 <= "0010000";
                when "0111" => RQ2 <= "1000111";
                when "1000" => RQ2 <= "0000000";
                when "1001" => RQ2 <= "0000010";
                when "1010" => RQ2 <= "0000001";
                when "1011" => RQ2 <= "0011000";
                when "1100" => RQ2 <= "1110000";
                when "1101" => RQ2 <= "0001100";
                when "1110" => RQ2 <= "0110000";
                when "1111" => RQ2 <= "0110001";
                when others => RQ2 <= "1111111";
                end case;
                case DH is 
                when "0000" => RQ1 <= "1000000";
                when "0001" => RQ1 <= "1001111";
                when "0010" => RQ1 <= "0100100";
                when "0011" => RQ1 <= "0000110";
                when "0100" => RQ1 <= "0001011";
                when "0101" => RQ1 <= "0010010";
                when "0110" => RQ1 <= "0010000";
                when "0111" => RQ1 <= "1000111";
                when "1000" => RQ1 <= "0000000";
                when "1001" => RQ1 <= "0000010";
                when "1010" => RQ1 <= "0000001";
                when "1011" => RQ1 <= "0011000";
                when "1100" => RQ1 <= "1110000";
                when "1101" => RQ1 <= "0001100";
                when "1110" => RQ1 <= "0110000";
                when "1111" => RQ1 <= "0110001";
                when others => RQ1 <= "1111111";
                end case;
                else 
                RQ1<="0000000";
                RQ2<="0000000";
             end if;
     end process;
end Behavioral;