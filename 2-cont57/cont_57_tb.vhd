Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Gabriel Freitas Willig

Entity cont_57_tb is
end entity;

architecture test of cont_57_tb is

	component cont_57 is
        port (
            RST  : in std_logic;
            CLK  : in std_logic;
            EN   : in std_logic;
            CLR  : in std_logic;
            Q_L_U: out std_logic_vector(3 downto 0);
            Q_M_U: out std_logic_vector(3 downto 0);
            Q    : out std_logic_vector(7 downto 0)
        );
	end component;

	signal rst, clk, en, clr : std_logic;
	signal q_l_u, q_m_u : std_logic_vector(3 downto 0);
	signal q : std_logic_vector(7 downto 0);

begin
    -- Instanciação do componente a ser testado
    DUT: cont_57 port map (
        RST => rst,
        CLK => clk,
        EN => en,
        CLR => clr,
        Q_L_U => q_l_u,
        Q_M_U => q_m_u,
        Q => q
    );

    clk_gen: process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;
    
    rst_gen: process
    begin 
        rst <= '1';
        wait for 15 ns;
        rst <= '0';
        wait;
    end process;

    en_gen: process
    begin
        en <= '1';
        wait for 2000 ns; 
        en <= '0';
        wait;
    end process;

    clr_gen: process
    begin
        clr <= '0';
        wait for 1900 ns;
        clr <= '1';
        wait for 25 ns;
        clr <= '0';
        wait;
    end process;

end architecture;