library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity counter is
port (RESET : in std_logic;
      CLK : in std_logic;
      SET : in std_logic;
      EN : in STD_LOGIC;
      DIR : in STD_LOGIC;
      X : in std_logic_vector (7 downto 0);
      Y : out std_logic_vector (7 downto 0));
end counter;

architecture behavioral of counter is
signal CNT: unsigned(7 downto 0);
begin
process (RESET, CLK)
begin
if RESET = '1' then
    CNT <= (others => '0');
elsif rising_edge(CLK) then
    if EN = '1' then
        if SET = '1' then
        CNT <= unsigned(X);
        else
            if DIR = '1' then
                CNT <= CNT + 1;
            else
                CNT <= CNT - 1;
            end if;
        end if;
    end if;
end if;
end process;
Y <= std_logic_vector(CNT);
end behavioral;