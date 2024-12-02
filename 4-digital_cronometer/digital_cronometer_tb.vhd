Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Gabriel Freitas Willig
Architecture test of digital_cronometer_tb is
component digital_cronometer is
	port(   
		CLK              :   IN  std_logic;
		SW_1             :   IN std_logic;
		SW_2             :   IN std_logic;
		SWITCH           :	 IN std_logic;
		Q_M, Q_L         :   OUT std_logic_vector(6 downto 0);
		Q_CENT_M, Q_CENT_L : OUT std_logic_vector(6 downto 0)
    );
End component;
constant PERIOD:        time := 20 ps;
constant RST_TIME:      time := 15 ns;
signal   RST:	        std_logic := '1';
signal   CLK:      		std_logic;
signal   SW_1, SW_2:   	std_logic := '0';
signal   M_SEC,L_SEC:	std_logic_vector(6 downto 0);
signal   M_CENT,L_CENT:	std_logic_vector(6 downto 0);

Begin
    DUT: digital_cronometer port map(
        CLK => CLK,
        SW_1 => SW_1,
        SW_2 => SW_2,
        SWITCH => RST,
        Q_M => M_SEC,
        Q_L => L_SEC,
        Q_CENT_M => M_CENT,
        Q_CENT_L => L_CENT
    );

    Process
    Begin
        wait for 25 ns;
        SW_1 <= '1';
        wait for 100 ns;
        SW_1 <= '0';
        wait for 10000 ns;
        SW_1 <= '1';
        wait for 10 ns;
		  SW_2 <= '1';
		  wait for 20 ns;
		  SW_2 <= '0';
		  wait for 20 ns;
        SW_1 <= '0';
        wait;
    End process;

    process
    begin
      RST <= '1';
      wait for RST_TIME;
      RST <= '0';
      wait;
    end process;

    process
    begin
      while true loop
        CLK <= '0';
        wait for PERIOD/2;
        CLK <= '1';
        wait for PERIOD/2;
      end loop;
      wait;
    end process;

end architecture;