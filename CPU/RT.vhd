LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


ENTITY RT IS
PORT(
    LOAD_A    : IN    STD_LOGIC;
    Data_in   : IN    STD_LOGIC_VECTOR(15 DOWNTO 0);
    A         : OUT   STD_LOGIC_VECTOR(15 DOWNTO 0)
  
);
END RT;

ARCHITECTURE accu OF RT IS
BEGIN
    PROCESS(LOAD_A, Data_in) -- 敏感列表包含LOAD_A和Data_in
    BEGIN
        IF LOAD_A = '1' THEN -- 当LOAD_A为高时
            A <= Data_in; -- 将Data_in的值赋给A
      
        END IF;
    END PROCESS;
END accu;