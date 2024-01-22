library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity test is
end test;

architecture Behavioral of test is

component seq_order is
    Port ( Z : in STD_LOGIC;
           INT : in STD_LOGIC;
           IOIN: in STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           IOADR : out STD_LOGIC_VECTOR (7 downto 0);
           IOOUT : out STD_LOGIC_VECTOR (7 downto 0);
           IOWR : out STD_LOGIC;
           IORD : out STD_LOGIC;
           GPIO : out std_logic_vector(7 downto 0));
end component;

signal Z: std_logic := '0';
signal RESET : std_logic := '0';
signal CLK : std_logic :='0';
signal INT: std_logic := '0';
signal IOWR: std_logic := '0';
signal IORD: std_logic := '0';
signal GPIO: std_logic_vector(7 downto 0):="00000000";
signal IOIN: std_logic_vector(7 downto 0):="00100000";
signal IOADR: std_logic_vector(7 downto 0):="00000000";
signal IOOUT: std_logic_vector(7 downto 0):="00000000";

constant CLK_period : time := 20 ns;
--signal PC: unsigned (7 downto 0);

begin
    ROM1: seq_order port map (RESET => RESET, CLK => CLK, Z=>Z, GPIO=>GPIO, INT=>INT, IOIN=>IOIN, IOADR=>IOADR, IOOUT=>IOOUT, IOWR=>IOWR, IORD=>IORD);
    
    CLK_process :process
    begin
        CLK <= '0';
        wait for CLK_period/2;
        CLK <= '1';
        wait for CLK_period/2;
   end process;

    stim_proc: process
    begin
        RESET <= '1';
        wait for CLK_period*2;
        RESET <= '0';
        wait for CLK_period*10;
        Z <= '0';
        wait for CLK_period*2;
        Z <= '1';
        wait for CLK_period*10;
        Z <= '0';
        INT <= '1';
        wait for CLK_period*2;
        INT <= '0';
        wait;
        
       end process;

end Behavioral;
