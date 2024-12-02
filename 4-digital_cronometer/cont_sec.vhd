Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Gabriel Freitas Willig
-- contador de 0 a 59 segundos para 2 displays separados
Entity cont_sec is
   PORT(RST     : in std_logic;
        CLK     : in std_logic;
        Q_M, Q_L: out std_logic_vector(3 downto 0); -- M: most significant L: less significant
        EN      : in std_logic;
        CLR     : in std_logic
   );
end entity;
Architecture X of cont_sec is
SIGNAL en_m, clr_l, ld : std_logic;
SIGNAL cont_m, cont_l		    : std_logic_vector(3 downto 0);
SIGNAL ld_m, ld_l		: std_logic_vector(3 downto 0);

    Component cont_4 is
        port(   
            RST :  IN  std_logic;
            CLK :  IN  std_logic;
            Q   :  OUT std_logic_vector(3 downto 0);
            EN  :  IN  std_logic;
            CLR :  IN  std_logic;
            LD  :  IN  std_logic;
            LOAD:  IN  std_logic_vector(3 downto 0)
            );
    end Component;

Begin

ld_m <= "0000";
ld_l <= "0000";

CONT_M_PM:cont_4 port map(
	CLK   =>  CLK,
	RST   =>  RST,
	EN    =>  en_m,
	LD    =>  ld,
	LOAD  =>  ld_m,
	Q     =>  cont_m,
	CLR	  =>  CLR
);

CONT_L_PM:cont_4 port map(
	CLK   =>  CLK,
	RST   =>  RST,
	EN    =>  EN,
	LD	  =>  ld,
	LOAD  =>  ld_l,
	Q     =>  cont_l,
	CLR	  =>  clr_l
);

clr_l <= en_m or CLR;
-- ld quando for de passo '5''10' -> '0''0'
ld <= '1' when cont_m = "0101" and cont_l = "1001" else '0';
-- habilita contador mais significativo quando contador menos atingir 10
en_m <= '1' when cont_l = "1001" and EN = '1' else '0';
	
Q_M <= cont_m;
Q_L <= cont_l;

End architecture;