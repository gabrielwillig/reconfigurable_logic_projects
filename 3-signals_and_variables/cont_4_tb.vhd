Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Gabriel Freitas Willig
Entity cont_4_tb is
end entity;

Architecture test of cont_4_tb is

component cont_4 is
   PORT(RST  : in std_logic;
        CLK  : in std_logic;
        Q    : out std_logic_vector(3 downto 0);
        EN   : in std_logic;
        CLR  : in std_logic;
        LD   : in std_logic;
        LOAD : in std_logic_vector (3 downto 0));
end component;

signal rst, clk, en, ld, clr: std_logic;
signal LOAD, Q : std_logic_vector (3 downto 0);
begin

-- instanciação do componente a ser testado
DUT: cont_4
	port map(
		RST => rst,
		CLK => clk,
		Q   => Q  ,
		EN  => EN ,
		CLR => CLR,
		LD	 => LD ,
		LOAD=> LOAD
	);
rst_gen: Process
begin 
	rst <= '1';
	wait for 15 ns;
	rst <= '0';
	wait;
End process;

clk_gen: Process
begin 
	clk <= '0';
	wait for 10 ns;
	clk <= '1';
	wait for 10 ns;
End process;

en_gen: process
begin
	en <= '1';
	wait for 185 ns;
	en <= '0';
	wait;
end process;

clr_gen: process
begin
	clr <= '0'; -- Baixo até 75
	wait for 75 ns;
	clr <= '1'; -- Alto entre 75 e 95
	wait for 20 ns;
	clr <= '0'; -- Baixo entre 95 e 125
	wait for 30 ns;
	clr <= '1'; -- Alto entre 125 e 145
	wait for 20 ns;
	clr <= '0'; -- Baixo no restante
	wait;
end process;

End architecture;
