library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity seq_order is
    Port ( Z : in STD_LOGIC;
           GPIO : out STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           RESET : in STD_LOGIC);
end seq_order;

architecture Behavioral of seq_order is
type ram_array is array (0 to 31) of std_logic_vector(7 downto 0);
signal RAM: ram_array;
type reg_array is array (0 to 7) of std_logic_vector(7 downto 0);
signal R: reg_array;
type rom_t is array (0 to 31) of std_logic_vector(15 downto 0);
constant C_NOP: std_logic_vector (7 downto 0) := x"00";
constant C_OUTP: std_logic_vector (7 downto 0) := x"01";
constant C_B: std_logic_vector (7 downto 0) := x"02";
constant C_BZ: std_logic_vector (7 downto 0) := x"03";

constant MC_LDI: std_logic_vector(15 downto 0) := "00100-----------";
constant C_LDI: std_logic_vector(4 downto 0) := "00100";
constant MC_MOV: std_logic_vector(15 downto 0) := "0000000101------";
constant C_MOV: std_logic_vector(9 downto 0) := "0000000101";
constant MC_LD: std_logic_vector(15 downto 0) := "0000000110------";
constant C_LD: std_logic_vector(9 downto 0) := "0000000110";
constant MC_LDS: std_logic_vector(15 downto 0) := "00111-----------";
constant C_LDS: std_logic_vector(4 downto 0) := "00111";
constant MC_ST: std_logic_vector(15 downto 0) := "0000001000------";
constant C_ST: std_logic_vector(9 downto 0) := "0000001000";
constant MC_STS: std_logic_vector(15 downto 0) := "01001-----------";
constant C_STS: std_logic_vector(4 downto 0) := "01001";

signal PC: unsigned (7 downto 0) := x"00";
signal IR: std_logic_vector(15 downto 0);
alias OPCODE: std_logic_vector(7 downto 0) is IR(15 downto 8);
alias ARG: std_logic_vector(7 downto 0) is IR(7 downto 0);
alias Rd: std_logic_vector(2 downto 0) is IR(5 downto 3); 
alias Rs: std_logic_vector(2 downto 0) is IR(2 downto 0);
alias Id: std_logic_vector(2 downto 0) is IR(10 downto 8); 

type state_t is (S_FETCH, S_EX);
signal state: state_t;
constant ROM: rom_t := (
C_OUTP & x"FF",
C_OUTP & x"55",
C_BZ & x"02",
C_OUTP & x"00",
C_NOP & x"00",
C_B & x"00",
others => x"0000");

begin
process(RESET, CLK)
    begin
    if RESET = '1' then
        state <= S_FETCH;
        PC <= x"00";
    elsif rising_edge(CLK) then
        case state is
            when S_FETCH =>
            IR <= ROM(to_integer(unsigned(PC)));
            state <= S_EX;
            when S_EX =>
                PC <= PC + 1;
                if OPCODE = C_NOP then 
                    state <= S_FETCH;
                elsif OPCODE = C_OUTP then
                    GPIO <= ARG;
                    state <= S_FETCH;
                elsif OPCODE = C_B then
                    PC <= unsigned(ARG);
                    state <= S_FETCH;
                elsif OPCODE = C_BZ then
                    if Z = '1' then
                        PC <= unsigned(ARG);
                    end if; 
                elsif std_match(IR, MC_MOV) then 
                    R(TO_INTEGER(unsigned(Rd))) <= R(TO_INTEGER(unsigned(Rs)));
                elsif std_match(IR, MC_LDI) then
                    R(TO_INTEGER(unsigned(Id))) <= ARG;
                elsif std_match(IR, MC_LD) then
                    R(TO_INTEGER(unsigned(Rd))) <= RAM(TO_INTEGER(unsigned(R(TO_INTEGER(unsigned(Rs))))));
                elsif std_match(IR, MC_LDS) then
                    R(TO_INTEGER(unsigned(Id))) <= RAM(TO_INTEGER(unsigned(ARG)));
                elsif std_match(IR, MC_ST) then
                    RAM(TO_INTEGER(unsigned(R(TO_INTEGER(unsigned(Rd)))))) <= R(TO_INTEGER(unsigned(Rs)));
                elsif std_match(IR, MC_STS) then  
                    RAM(TO_INTEGER(unsigned(ARG))) <= R(TO_INTEGER(unsigned(Rs)));                 
                 end if;
                  state <= S_FETCH;    
              end case;
       end if;         
end process;           
        

end Behavioral;
