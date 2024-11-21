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
		Variable CONT : std_logic_vector(2 downto 0) := "000";
	Begin
		If rising_edge(CLK) then
			CONT := "000";
			 For itr in 0 to 3 loop
				If INP(itr) = '1' then
					CONT := std_logic_vector(unsigned(CONT)+1);
				End If;
			End loop;
			Q <= CONT;
		End If;
	End process;
End X;