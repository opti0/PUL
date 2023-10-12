----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.10.2023 11:41:45
-- Design Name: 
-- Module Name: test - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test is
--  Port ( );
end test;

architecture Behavioral of test is
component uklad is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : out STD_LOGIC;
           e : out STD_LOGIC);
end component;
    signal a, b, c, d, e: std_logic;
begin   
    u1:uklad port map (a => a, b => b, c => c, d => d, e =>e);
    process
    begin
    a <= '1'; 
    b <= '1';
    c <= '0';
    wait for 10ns;
    a <= '1'; 
    b <= '0';
    c <= '0';
    wait for 10ns;
    a <= '0'; 
    b <= '1';
    c <= '0';
    wait for 10ns;
    a <= '0'; 
    b <= '0';
    c <= '0';
    wait for 10ns;
    a <= '1'; 
    b <= '1';
    c <= '1';
    wait for 10ns;
    a <= '1'; 
    b <= '0';
    c <= '1';
    wait for 10ns;
    a <= '0'; 
    b <= '1';
    c <= '1';
    wait for 10ns;
    a <= '0'; 
    b <= '0';
    c <= '1';
    wait for 10ns;
    wait;
    
    end process;

end Behavioral;
