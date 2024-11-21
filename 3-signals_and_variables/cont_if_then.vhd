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
			If input = "0000" then
				CONT <= 0;
            Elsif input = "0001" then
                CONT <= 1;
            Elsif input = "0010" then
                CONT <= 1;
            Elsif input = "0011" then
                CONT <= 2;
            Elsif input = "0100" then
                CONT <= 1;
            Elsif input = "0101" then
                CONT <= 2;
            Elsif input = "0110" then
                CONT <= 2;
            Elsif input = "0111" then
                CONT <= 3;
            Elsif input = "1000" then
                CONT <= 1;
            Elsif input = "1001" then
                CONT <= 2;
            Elsif input = "1010" then
                CONT <= 2;
            Elsif input = "1011" then
                CONT <= 3;
            Elsif input = "1100" then
                CONT <= 2;
            Elsif input = "1101" then
                CONT <= 3;
            Elsif input = "1110" then
                CONT <= 3;
            Elsif input = "1111" then
                CONT <= 4;
            Else
                CONT <= 0;
            End If;
        End If ;
	End process;
    Q <= std_logic_vector(to_unsigned(CONT, 3));
End X;