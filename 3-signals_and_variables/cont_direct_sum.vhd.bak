Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Gabriel Freitas Willig
Entity cont_direct_sum is
    PORT(CLK  : in std_logic;
         INP  : in std_logic_vector(3 downto 0);
         Q    : out std_logic_vector(2 downto 0)
    	);
end entity;
Architecture X of cont_direct_sum is
    Signal CONT: integer range 0 to 4 := 0;
Begin
	Process(CLK)
	Begin
        If rising_edge(CLK) then
            CONT <= to_integer(unsigned(INP(0))) 
                    + to_integer(unsigned(INP(1))) 
                    + to_integer(unsigned(INP(2))) 
                    + to_integer(unsigned(INP(3)));
        End If ;
	End process;
    Q <= std_logic_vector(to_unsigned(CONT, Q'length));
End architecture;