Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Gabriel Freitas Willig
Entity cont_if_then is
    PORT(CLK  : in std_logic;
         INP  : in std_logic_vector(3 downto 0);
         Q    : out std_logic_vector(2 downto 0)
    	);
end entity;
Architecture X of cont_if_then is
    Signal CONT: integer range 0 to 4 := 0;
Begin
    Process(CLK)
    Begin
        If rising_edge(CLK) then
            If INP = "0000" then
                CONT <= 0;
            Elsif INP = "0001" or INP = "0010" or INP = "0100" or INP = "1000" then
                CONT <= 1;
            Elsif INP = "0011" or INP = "0101" or INP = "0110" or INP = "1001" or
                INP = "1010" or INP = "1100" then
                CONT <= 2;
            Elsif INP = "0111" or INP = "1011" or INP = "1101" or INP = "1110" then
                CONT <= 3;
            Elsif INP = "1111" then
                CONT <= 4;
            Else
                CONT <= 0;
            End If;
        End If;
    End process;
    Q <= std_logic_vector(to_unsigned(CONT, Q'length));
End architecture;