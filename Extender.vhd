LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Extender IS
    PORT (
        in_c  : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
        out_c : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        signes : IN  STD_LOGIC
    );
END Extender;

ARCHITECTURE BEHAVE OF Extender IS
BEGIN
    PROCESS (in_c, signes)
    VARIABLE temp_sign_ext : STD_LOGIC_VECTOR(15 DOWNTO 0);
    BEGIN
        CASE signes IS
            WHEN '0' =>
                -- 无符号扩展，添加8个0
                out_c <= "00000000" & in_c;  -- 直接拼接 8 个零，确保总长度为 16 位
            WHEN '1' =>
                -- 符号扩展，根据in_c的最高位（符号位）添加8个相同的位
                IF in_c(7) = '1' THEN
                    temp_sign_ext := (OTHERS => '1');  -- 创建一个全1的16位向量
                    temp_sign_ext(7 DOWNTO 0) := in_c;  -- 将in_c的值复制到低8位
                    out_c <= temp_sign_ext;
                ELSE
                    temp_sign_ext := (OTHERS => '0');  -- 创建一个全0的16位向量
                    temp_sign_ext(7 DOWNTO 0) := in_c;  -- 将in_c的值复制到低8位
                    out_c <= temp_sign_ext;
                END IF;
            -- WHEN OTHERS 分支被移除，因为signes只能是'0'或'1'
        END CASE;
    END PROCESS;
END BEHAVE;
