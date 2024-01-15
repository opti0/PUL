library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test is
end test;

architecture Behavioral of test is
    component seq_order is
        Port (
            Z : in STD_LOGIC;
            CLK : in STD_LOGIC;
            RESET : in STD_LOGIC;
            GPIO : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    signal z : std_logic;
    signal clk : std_logic;
    signal reset : std_logic;
    signal gpio : std_logic_vector(7 downto 0);

    constant CLK_period : time := 10 ns;

begin
    -- instancja komponentu
    test: seq_order port map (
        Z => z, 
        CLK => clk, 
        RESET => reset, 
        GPIO => gpio
    );

    -- process CLK
    CLK_process : process
    begin
        CLK <= '0';
        wait for CLK_period/2;
        CLK <= '1';
        wait for CLK_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        z <= '0';
        reset <= '1', '0' after CLK_period*2;
        wait;
    end process;
end Behavioral;