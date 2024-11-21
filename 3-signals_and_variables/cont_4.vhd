Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Gabriel Freitas Willig
Entity cont_4 is
   PORT(CLK  		 : in std_logic;
        INP  		 : in std_logic_vector (3 downto 0);
		Q_FOR        : out std_logic_vector(2 downto 0);
		Q_WHILE      : out std_logic_vector(2 downto 0);
		Q_CASE_WHEN  : out std_logic_vector(2 downto 0);
		Q_IF_THEN    : out std_logic_vector(2 downto 0);
		Q_DIRECT_SUM : out std_logic_vector(2 downto 0)
		);
end entity;
Architecture X of cont_4 is

component cont_for is
	PORT(CLK : in std_logic;
		 INP : in std_logic_vector(3 downto 0);
		 Q 	 : out std_logic_vector(2 downto 0));
end component;

component cont_while is
	PORT(CLK : in std_logic;
		 INP : in std_logic_vector(3 downto 0);
		 Q   : out std_logic_vector(2 downto 0));
end component;

component cont_case_when is
	PORT(CLK : in std_logic;
		 INP : in std_logic_vector(3 downto 0);
		 Q   : out std_logic_vector(2 downto 0));
end component;

component cont_if_then is
	PORT(CLK : in std_logic;
		 INP : in std_logic_vector(3 downto 0);
		 Q   : out std_logic_vector(2 downto 0));
end component;

component cont_direct_sum is
	PORT(CLK : in std_logic;
		 INP : in std_logic_vector(3 downto 0);
		 Q   : out std_logic_vector(2 downto 0));
end component;

begin
--Devices under test
DUT_FOR: cont_for port map (
	CLK => CLK,
	INP => INP,
	Q   => Q_FOR
);

DUT_WHILE: cont_while port map (
	CLK => CLK,
	INP => INP,
	Q   => Q_WHILE
);

DUT_CASE_WHEN: cont_case_when port map (
	CLK => CLK,
	INP => INP,
	Q   => Q_CASE_WHEN
);

DUT_IF_THEN: cont_if_then port map (
	CLK => CLK,
	INP => INP,
	Q   => Q_IF_THEN
);

DUT_DIRECT_SUM: cont_direct_sum port map (
	CLK => CLK,
	INP => INP,
	Q   => Q_DIRECT_SUM
);

End architecture;