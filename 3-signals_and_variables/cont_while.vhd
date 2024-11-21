Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Gabriel Freitas Willig
Entity cont_while is
    PORT(CLK  : in std_logic;
         INP  : in std_logic_vector(3 downto 0);
         Q    : out std_logic_vector(2 downto 0)
    	);
end entity;
Architecture X of cont_while is
Begin
	Process(CLK)
		Variable CONT : integer range 0 to 4 := 0;
        Variable ITR : integer := 0;
	Begin
		If rising_edge(CLK) then
			CONT := 0;
            ITR  := 0;
			While ITR < 4 loop
				If INP(ITR) = '1' then
					CONT := CONT + 1.
				End If;
                ITR := ITR + 1;
			End loop;
		End If;
	End process;
	Q <= str_logic_vetctor(to_unsigned(CONT, 3));
End X;