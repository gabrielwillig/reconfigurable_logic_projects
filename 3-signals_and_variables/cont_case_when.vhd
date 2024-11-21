Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Gabriel Freitas Willig
Entity cont_case_when is
    PORT(CLK  : in std_logic;
         INP  : in std_logic_vector(3 downto 0);
         Q    : out std_logic_vector(2 downto 0)
    	);
end entity;
Architecture X of cont_case_when is
    Signal CONT: integer range 0 to 4 := 0;
Begin
	Process(CLK)
    Begin
        If rising_edge(CLK) then
            Case INP is
                When "0000" => CONT <= 0;
                When "0001" | "0010" | "0100" | "1000" => CONT <= 1;
                When "0011" | "0101" | "0110" | "1001" | "1010" | "1100" => CONT <= 2;
                When "0111" | "1011" | "1101" | "1110" => CONT <= 3;
                When "1111" => CONT <= 4;
                When Others => CONT <= 0;
            End Case;
        End If;
    End process;
	Q <= std_logic_vector(to_unsigned(CONT, Q'length));
End architecture;