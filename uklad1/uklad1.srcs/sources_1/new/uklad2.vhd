library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

entity uklad2 is
    Port ( x : in std_logic_vector (1 downto 0);
           y : out std_logic_vector (3 downto 0));

end uklad2;

architecture Behavioral of uklad2 is
signal s0, s1 : std_logic;
begin
s0 <= not x(0);
s1 <= not x(1);
y(0) <= s0 and s1;
y(1) <= s1 and x(0);
y(2) <= s0 and x(1);
y(3) <= x(0) and x(1);
end Behavioral;
