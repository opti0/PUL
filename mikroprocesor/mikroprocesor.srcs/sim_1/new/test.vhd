library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test is
end test;

architecture Behavioral of test is
    signal Z : STD_LOGIC := '0';
    signal GPIO : STD_LOGIC_VECTOR(7 downto 0);
    signal CLK : STD_LOGIC := '0';
    signal RESET : STD_LOGIC := '0';

    constant CLK_PERIOD : time := 10 ns;

    component seq_order
        port (
            Z : in STD_LOGIC;
            GPIO : out STD_LOGIC_VECTOR(7 downto 0);
            CLK : in STD_LOGIC;
            RESET : in STD_LOGIC
        );
    end component;

    signal stop : boolean := false;

begin
   UUT: seq_order port map (Z=>Z, GPIO=>GPIO, CLK=>CLK, RESET=>RESET);

    CLK_PROCESS: process
    begin
        while not stop loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process;

    STIMULI_PROCESS: process
    begin
        -- Initialize RESET_tb
        RESET <= '1';
        wait for 20 ns;
        RESET <= '0';

        -- Test  1
        wait for CLK_PERIOD * 10;
        Z <= '1';
        wait for CLK_PERIOD * 10;
        Z <= '0';

        

        
        wait;
    end process;

end Behavioral;