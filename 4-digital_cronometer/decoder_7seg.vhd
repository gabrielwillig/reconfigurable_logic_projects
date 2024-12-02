Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Gabriel Freitas Willig
Entity decoder_7seg is
    port (
        INPT : in std_logic_vector(3 downto 0);
        OUTT : out std_logic_vector(6 downto 0)
    );
end entity decoder_7seg;


Architecture decoder_7seg_arch of decoder_7seg is

Begin
    Case INPT is
        When "0000" => OUTT <= "0000001"; -- 0
        When "0001" => OUTT <= "1001111"; -- 1
        When "0010" => OUTT <= "0010010"; -- 2
        When "0011" => OUTT <= "0000110"; -- 3
        When "0100" => OUTT <= "1001100"; -- 4
        When "0101" => OUTT <= "0100100"; -- 5
        When "0110" => OUTT <= "0100000"; -- 6
        When "0111" => OUTT <= "0001111"; -- 7
        When "1000" => OUTT <= "0000000"; -- 8
        When "1001" => OUTT <= "0000100"; -- 9
        When "1010" => OUTT <= "0001000"; -- A
        When "1011" => OUTT <= "1100000"; -- b
        When "1100" => OUTT <= "0110001"; -- C
        When "1101" => OUTT <= "1000010"; -- d
        When "1110" => OUTT <= "0110000"; -- E
        When "1111" => OUTT <= "0111000"; -- F
        When Others => OUTT <= "XXXXXXX";
    End Case;
end architecture;