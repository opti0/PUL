library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

entity uklad2 is
    Port ( x1 : in STD_LOGIC;
           x2 : in STD_LOGIC;
           y1 : out STD_LOGIC;
           y2 : out STD_LOGIC;
           y3 : out STD_LOGIC;
           y4 : out STD_LOGIC);

end uklad2;

architecture Behavioral of uklad2 is

begin
y4 <= x1 and x2;
y3 <= x2 and not x1;
y2 <= x1 and not x2;
y1 <= not x1 and not x2;
end Behavioral;
