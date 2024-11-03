library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Gabriel Freitas Willig

entity cont_57 is
   port (
       RST  : in std_logic;
       CLK  : in std_logic;
       EN   : in std_logic;
       CLR  : in std_logic;
       Q_L_U: out std_logic_vector(3 downto 0);
       Q_M_U: out std_logic_vector(3 downto 0);
       Q    : out std_logic_vector(7 downto 0)
   );
end entity;

architecture X of cont_57 is
    
    component cont_4 is
        PORT(RST  : in std_logic;
        CLK  : in std_logic;
        Q    : out std_logic_vector(3 downto 0);
        EN   : in std_logic;
        CLR  : in std_logic;
        LD   : in std_logic;
        LOAD : in std_logic_vector (3 downto 0));
    end component;

    -- Sinais Unidades (LSD)
    signal en_l  : std_logic;
    signal q_l   : std_logic_vector(3 downto 0) := "0010";
    signal clr_l : std_logic;
    signal ld_l  : std_logic;
    signal load_l: std_logic_vector(3 downto 0) := "0010";  -- LSD inicia em 2

    -- Sinais Dezenas (MSD)
    signal en_m  : std_logic;
    signal q_m   : std_logic_vector(3 downto 0) := "0001";
    signal clr_m : std_logic;
    signal ld_m  : std_logic;
    signal load_m: std_logic_vector(3 downto 0) := "0001";  -- MSD inicia em 1


begin
    -- Instanciação do contador LSD (Unidades)
    U_LSD: cont_4 port map (
        RST => RST,
        CLK => CLK,
        Q => q_l,
        EN => en_l,
        CLR => clr_l,
        LD => ld_l,
        LOAD => load_l
    );

    -- Instanciação do contador MSD (Dezenas)
    U_MSD: cont_4 port map (
        RST => RST,
        CLK => CLK,
        Q => q_m,
        EN => en_m,
        CLR => clr_m,
        LD => ld_m,
        LOAD => load_m
    );

    ld_l <= '1' when RST = '1' or (q_m = "0110" and q_l = "1000") or CLR = '1' else '0';
    ld_m <= '1' when RST = '1' or (q_m = "0110" and q_l = "1000") or CLR = '1' else '0';
    
    en_l <= '1' when EN = '1' else '0';
    en_m <= '1' when q_l = "1001" or ld_m = '1' else '0';
    
    clr_l <= '1' when q_l = "1001" else '0';
    clr_m <= '0';
    
    Q_L_U <= q_l;
    Q_M_U <= q_m; 
	 -- Junta a saida dos 2 bcd's
    Q <= std_logic_vector(to_unsigned((to_integer(unsigned(q_m)) * 10 + to_integer(unsigned(q_l))), 8));

end architecture;