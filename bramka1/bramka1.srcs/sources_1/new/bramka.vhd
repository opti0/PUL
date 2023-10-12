----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.10.2023 11:08:50
-- Design Name: 
-- Module Name: bramka - Behavioral
-- Description: 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bramka is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC);
end bramka;

architecture Behavioral of bramka is

begin
    c <= a and b;

end Behavioral;
