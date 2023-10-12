----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.10.2023 11:19:34
-- Design Name: 
-- Module Name: test - Behavioral
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test is
--  Port ( );
end test;

architecture Behavioral of test is
    component bramka is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               c : out STD_LOGIC);
    end component;
    signal a, b, c: std_logic;
begin
    b1: bramka port map(a => a, b => b, c => c);
    process
    begin
    a <= '1'; 
    b <= '1';
    wait for 10ns;
    a <= '1'; 
    b <= '0';
    wait for 10ns;
    a <= '0'; 
    b <= '1';
    wait for 10ns;
    a <= '0'; 
    b <= '0';
    wait;
    
    end process;
end Behavioral;
