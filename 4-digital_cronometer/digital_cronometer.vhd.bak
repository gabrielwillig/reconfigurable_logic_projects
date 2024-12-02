Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Gabriel Freitas Willig
Entity digital_cronometer is
	port(   
		CLK              :   IN  std_logic;
		SW_1             :   IN std_logic;
		SW_2             :   IN std_logic;
		SWITCH           :	 IN std_logic;
		Q_M, Q_L         :   OUT std_logic_vector(6 downto 0);
		Q_CENT_M, Q_CENT_L : OUT std_logic_vector(6 downto 0)
    );
End entity;
Architecture X of digital_cronometer is
signal CLOCK, EN_SEC: std_logic;
signal CLR, EN      : std_logic := '0';
signal STATE        : std_logic_vector(1 downto 0):= "00"; -- 3 STATEs
signal CONT_L_SEC, CONT_M_SEC  : std_logic_vector(3 downto 0);
signal CONT_L_CENT, CONT_M_CENT:	std_logic_vector(3 downto 0);

component cont_sec is
    port( 
        RST:  					IN  std_logic;
        CLK:  					IN  std_logic;
        Q_M, Q_L :              OUT std_logic_vector(3 downto 0);
        EN:   					IN std_logic;
        CLR:  					IN std_logic
    );
    End component;
    
component cont_cent is
    port( 
        RST:  					IN  std_logic;
        CLK:  					IN  std_logic;
        Q_M, Q_L :	            OUT std_logic_vector(3 downto 0);
        EN:   					IN std_logic;
        CLR:  					IN std_logic
    );
End component;

component decoder_7seg is
        port (
            INPT  : IN std_logic_vector(3 downto 0);
            OUTT  : OUT std_logic_vector(6 downto 0)
        );
End component; 
    
component clk_gen is
    port( 
        CLK	: IN std_logic;
        Q	: OUT std_logic
    );
End component;


Begin

	Process(CLK)
	Begin
        f (SWITCH='1') then
            STATE <= "00";
		If rising_edge(CLK) then
			If (STATE = "00") then -- Inicial
                If (SW_1='0') then
                    STATE <= "01"; -- Contando
                End If;
			Elsif (STATE = "01") then
                If (SW_1 = '0') then
                    STATE <= "10"; -- Pausando
                End If;
			Elsif (STATE = "10" or STATE="11") then -- Pausado
				 If (SW_1 = '0') then
					  STATE <= "01"; -- Contando
				 Elsif (SW_2 = '0') then
					  STATE <= "11"; -- Limpando
				 End If;
			End If;
		End If;
	End process;
		
	EN <= '1' when STATE = "01" else '0';
	CLR <= '1' when STATE = "11" else '0';
	EN_SEC <= '1' when CONT_L_CENT="1001" and CONT_M_CENT = "1001"
					else '0';

	clock_gen : clk_gen port map(
		CLK  => CLK,
		Q    => CLOCK
	);

	cont_seconds : cont_sec port map(
		CLK => CLOCK,
		RST => SWITCH,
		EN => EN,
		CLR => CLR,
		Q_M => CONT_M_SEC,
		Q_L => CONT_L_SEC
	);
 
	cont_hundredths : cont_cent port map(
		CLK => CLOCK,
		RST => SWITCH,
		EN => EN,
		CLR => CLR,
		Q_M => CONT_M_CENT,
		Q_L => CONT_L_CENT
	 );
	 
    decoder_m_sec : decoder_7seg port map(
        INPT => CONT_M_SEC,
        OUTT => Q_M
	 );
	 
    decoder_l_sec : decoder_7seg port map(
        INPT => CONT_L_SEC,
        OUTT => Q_L
	 );
	 
    decoder_m_cent : decoder_7seg port map(
        INPT => CONT_M_CENT,
        OUTT => Q_CENT_M
	 );
	 
     decoder_l_cent : decoder_7seg port map(
        INPT => CONT_L_CENT,
        OUTT => Q_CENT_L
	 );
	
End architecture;