Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Gabriel Freitas Willig

Entity cont_57 is
   PORT(RST  : in std_logic;
        CLK  : in std_logic;
        Q    : out std_logic_vector(7 downto 0);
        EN   : in std_logic;
        CLR  : in std_logic;
        LD   : in std_logic;
end entity;
Architecture X of cont_57 is

Signal MSD   : std_logic_vector(3 downto 0); -- Dezenas
Signal LSD   : std_logic_vector(3 downto 0); -- Unidades

Signal LOAD_M: std_logic_vector(3 downto 0); -- Dezenas
Signal LOAD_L: std_logic_vector(3 downto 0); -- Unidades

Signal EN_M  : std_logic := '0';
Signal EN_L  : std_logic := '0';

component cont_4 is
   PORT(RST  : in std_logic;
        CLK  : in std_logic;
        Q    : out std_logic_vector(3 downto 0);
        EN   : in std_logic;
        CLR  : in std_logic;
        LD   : in std_logic;
        LOAD : in std_logic_vector (3 downto 0));
end component;

Begin
Process (CLK, RST)
   Begin
	If RST = '1' then
	   CONT <= "0000";
	Elsif CLK' event and CLK = '1' then
	   If CLR = '1'then
		CONT <= "0000";
	   Else
			If EN = '1' then
				If LD = '1' then
					CONT <= LOAD;
				Else
					CONT <= std_logic_vector(unsigned(CONT)+1);
				End IF;
			End If;
	   End If;
	End If;
End process;
Q <= CONT;
End architecture;