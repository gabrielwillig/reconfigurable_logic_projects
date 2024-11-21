Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Gabriel Freitas Willig
Entity cont_for is
    PORT(CLK  : in std_logic;
         INP  : in std_logic_vector(3 downto 0);
         Q    : out std_logic_vector(2 downto 0)
    	);
end entity;
Architecture X of cont_for is
Begin
	Process(CLK)
		Variable CONT : integer range 0 to 4 := 0;
	Begin
		If rising_edge(CLK) then
			CONT := 0;
			 For ITR in 0 to 3 loop
				If INP(ITR) = '1' then
					CONT := CONT + 1;
				End If;
			End loop;
		End If;
		Q <= std_logic_vector(to_unsigned(CONT, Q'length));
	End process;
End architecture;