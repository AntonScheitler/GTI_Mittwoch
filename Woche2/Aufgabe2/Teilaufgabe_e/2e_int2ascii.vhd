LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_unsigned.all;
USE IEEE.numeric_std.all;

ENTITY int2ascii IS
    Port ( i_number : IN  integer RANGE 0 TO 59;
           o_ascii0   : OUT std_logic_vector(7 downto 0); -- 8 bits vector 
           o_ascii1   : OUT std_logic_vector(7 downto 0)); -- 8 bits vector
END ENTITY int2ascii;

ARCHITECTURE behavioral OF int2ascii IS
    SIGNAL s_bcd0 : unsigned(3 DOWNTO 0); -- 4 bits
    SIGNAL s_bcd1 : unsigned(3 DOWNTO 0); -- 4 bits
BEGIN
    PROCESS (i_number)
        VARIABLE v_bcd0   : unsigned(3 DOWNTO 0);
        VARIABLE v_bcd1   : unsigned(3 DOWNTO 0);
        VARIABLE v_number : unsigned(7 DOWNTO 0); 
    BEGIN
        v_bcd0 := "0000";
        v_bcd1 := "0000";
        v_number := to_unsigned(i_number, v_number'length);

        

        FOR i IN 0 TO 7 LOOP
            --TODO: Pseudocode umsetzen
            IF v_bcd0 > 4 then
                v_bcd0 := v_bcd0 + 3;
            END IF;
            IF v_bcd1 > 4 then
                v_bcd1 := v_bcd1 + 3;
            END IF;


            v_bcd1 := shift_left(v_bcd1, 1);
            v_bcd1(0) := v_bcd0(3);

            v_bcd0 := shift_left(v_bcd0, 1);
            v_bcd0(0) := v_number(7 - i); -- Laut Pseudocode: 8, aber 7 da A 0-indexed ist
            ----------------------------
        END LOOP;
        s_bcd0 <= v_bcd0;
        s_bcd1 <= v_bcd1;
    END PROCESS;
    o_ascii0 <= "0011" & std_logic_vector(s_bcd0); -- converting to 8 bits ascii
    o_ascii1 <= "0011" & std_logic_vector(s_bcd1); -- converting to 8 bits ascii
END ARCHITECTURE behavioral;
