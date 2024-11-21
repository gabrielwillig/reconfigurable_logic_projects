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
            Case input is
				When "0000" =>
					CONT <= 0;
				When "0001" =>
					CONT <= 1;
				When "0010" =>
					CONT <= 1;
				When "0011" =>
					CONT <= 2;
				When "0100" =>
					CONT <= 1;
				When "0101" =>
					CONT <= 2;
				When "0110" =>
					CONT <= 2;
				When "0111" =>
					CONT <= 3;
				When "1000" =>
					CONT <= 1;
				When "1001" =>
					CONT <= 2;
				When "1010" =>
					CONT <= 2;
				When "1011" =>
					CONT <= 3;
				When "1100" =>
					CONT <= 2;
				When "1101" =>
					CONT <= 3;
				When "1110" =>
					CONT <= 3;
				When "1111" =>
					CONT <= 4;
				When Others =>
					CONT <= 0;
			End Case;
        End If ;
	End process;
End X;