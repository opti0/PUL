library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main is
    Port ( clk : in STD_LOGIC;
           btnC : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (7 downto 0));
end main;

architecture Behavioral of main is
    signal cnt: std_logic_vector(26 downto 0);
begin
    process(clk, btnC)
    begin
        if btnC = '1' then
            cnt <= (others => '0');
       elsif rising_edge(clk) then
            cnt <= std_logic_vector(unsigned(cnt)+1);
        end if;
     end process;
     led <= cnt(26 downto 19);
end Behavioral;
