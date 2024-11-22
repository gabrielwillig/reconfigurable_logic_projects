Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Gabriel Freitas Willig
Entity cont_4_tb is
end entity;

Architecture test of cont_4_tb is

component cont_4 is
	PORT(CLK  		 : in std_logic;
		INP  		 : in std_logic_vector (3 downto 0);
		Q_FOR        : out std_logic_vector(2 downto 0);
		Q_WHILE      : out std_logic_vector(2 downto 0);
		Q_CASE_WHEN  : out std_logic_vector(2 downto 0);
		Q_IF_THEN    : out std_logic_vector(2 downto 0);
		Q_DIRECT_SUM : out std_logic_vector(2 downto 0)
	);
end component;

signal clk     : std_logic;
signal inp     : std_logic_vector (3 downto 0);
signal q_for, q_while, q_case_when, q_if_then, q_direct_sum : std_logic_vector (2 downto 0);
begin

-- instanciacao do componente a ser testado
DUT : cont_4
	port map(
		CLK => clk,
		INP => inp,
		Q_FOR         => q_for,
		Q_WHILE       => q_while,
		Q_CASE_WHEN   => q_case_when,
		Q_IF_THEN     => q_if_then,
		Q_DIRECT_SUM  => q_direct_sum
	);

clk_gen: Process
begin 
	clk <= '0';
	wait for 10 ns;
	clk <= '1';
	wait for 10 ns;
End process;

 inp_gen: Process
	  variable i : integer := 0;
	  variable loop_count : integer := 0;
 begin
	  while loop_count < 10 loop -- repete 10 vezes
			for j in 0 to 15 loop -- conta de "0000" a "1111"
				 inp <= std_logic_vector(to_unsigned(j, inp'length));
				 wait for 20 ns;
			end loop;
			loop_count := loop_count + 1;
	  end loop;
	  wait;
 End process;

End architecture;
