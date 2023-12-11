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
constant C_NOP: std_logic_vector (7 downto 0) := "00000000";
constant C_OUTP: std_logic_vector (7 downto 0) := "00000001";
constant C_B: std_logic_vector (7 downto 0) := "00000010";
constant C_BZ: std_logic_vector (7 downto 0) := "00000011";

constant MC_LDI: std_logic_vector(15 downto 0) := "10000-----------";
constant C_LDI: std_logic_vector(4 downto 0) := "10000";

constant MC_MOV: std_logic_vector(15 downto 0) := "0000000101------";
constant C_MOV: std_logic_vector(9 downto 0) := "0000000101";
constant MC_LD: std_logic_vector(15 downto 0) := "0000000110------";
constant C_LD: std_logic_vector(9 downto 0) := "0000000110";
constant MC_LDS: std_logic_vector(15 downto 0) := "11000-----------";
constant C_LDS: std_logic_vector(4 downto 0) := "11000";
constant MC_ST: std_logic_vector(15 downto 0) := "0000001000------";
constant C_ST: std_logic_vector(9 downto 0) := "0000001000";
constant MC_STS: std_logic_vector(15 downto 0) := "11100-----------";
constant C_STS: std_logic_vector(4 downto 0) := "11100";

constant MC_BSET: std_logic_vector(15 downto 0) := "11110-----------";
constant C_BSET: std_logic_vector(4 downto 0) := "11110";
constant MC_BCLR: std_logic_vector(15 downto 0) := "11111-----------";
constant C_BCLR: std_logic_vector(4 downto 0) := "11111";

constant MC_ADC: std_logic_vector(15 downto 0) := "0000001100------";
constant C_ADC: std_logic_vector(9 downto 0) := "0000001100";
constant MC_ADCI: std_logic_vector(15 downto 0) := "10111-----------";
constant C_ADCI: std_logic_vector(4 downto 0) := "10111";
constant MC_SBC: std_logic_vector(15 downto 0) := "0000001110------";
constant C_SBC: std_logic_vector(9 downto 0) := "0000001110";
constant MC_SBCI: std_logic_vector(15 downto 0) := "10011-----------";
constant C_SBCI: std_logic_vector(4 downto 0) := "10011";
constant MC_MUL: std_logic_vector(15 downto 0) := "0000010000------";
constant C_MUL: std_logic_vector(9 downto 0) := "0000010000";
constant MC_MULS: std_logic_vector(15 downto 0) := "0000010001------";
constant C_MULS: std_logic_vector(9 downto 0) := "0000010001";

constant MC_AND: std_logic_vector(15 downto 0) := "0000011000------";
constant C_AND: std_logic_vector(9 downto 0) := "0000011000";
constant MC_ANDI: std_logic_vector(15 downto 0) := "10001-----------";
constant C_ANDI: std_logic_vector(4 downto 0) := "10001";
constant MC_OR: std_logic_vector(15 downto 0) := "0000011100------";
constant C_OR: std_logic_vector(9 downto 0) := "0000011100";
constant MC_ORI: std_logic_vector(15 downto 0) := "11011-----------";
constant C_ORI: std_logic_vector(4 downto 0) := "11011";
constant MC_XOR: std_logic_vector(15 downto 0) := "0001111000------";
constant C_XOR: std_logic_vector(9 downto 0) := "0001111000";
constant MC_XORI: std_logic_vector(15 downto 0) := "11101-----------";
constant C_XORI: std_logic_vector(4 downto 0) := "11101";
--na t10 kolejnych 5 instrukcji

signal PC: unsigned (7 downto 0) := x"00";
signal SREG: std_logic_vector(7 downto 0);
signal IR: std_logic_vector(15 downto 0);
alias OPCODE: std_logic_vector(7 downto 0) is IR(15 downto 8);
alias ARG: std_logic_vector(7 downto 0) is IR(7 downto 0);
alias Rd: std_logic_vector(2 downto 0) is IR(5 downto 3); 
alias Rs: std_logic_vector(2 downto 0) is IR(2 downto 0);
alias Id: std_logic_vector(2 downto 0) is IR(10 downto 8); 
alias SREG_C: std_logic is SREG(0);
alias SREG_Z: std_logic is SREG(1);
alias SREG_N: std_logic is SREG(2);
alias SREG_I: std_logic is SREG(7);

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
    variable src1, src2: signed(7 downto 0);
    variable src3, src4: unsigned(7 downto 0);
    variable res: signed(8 downto 0);
    variable res2: signed(15 downto 0);
    variable res1: unsigned (15 downto 0);
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
                elsif std_match(IR, MC_BSET) then  
                    SREG <= SREG or ARG;
                elsif std_match(IR, MC_BCLR) then  
                    SREG <= SREG and not ARG;
                elsif std_match(IR, MC_ADC) then
                    src1 := signed(R(TO_INTEGER(unsigned(Rd))));
                    src2 := signed(R(TO_INTEGER(unsigned(Rs))));
                    res := "00000000" & SREG_C;
                    -- SREG_C jest aliasem bitu SREG(0)
                    res := res + ('0' & src1) + ('0' & src2);
                    -- Wyznaczanie bitu przeniesienia C bazuj¹ce na rozszerzonej
                    -- o jeden bit d³ugoœci s³owa
                    SREG_C <= res(8);
                    -- Wyznaczenie bitu przeniesienia bazuj¹ce na dokumentacji
                    -- rozkazu ADC uC Atmega
                    SREG_C <= (src1(7) and src2(7)) or (src1(7) and not res(7)) or
                    (src2(7) and not res(7));
                    -- Obs³uga flagi zera, SREG_Z jest aliasem bitu SREG(1)
                    if res(7 downto 0) = x"00" then
                    SREG_Z <= '1';
                    else
                    SREG_Z <= '0';
                    end if;
                    -- Przepisanie wyniku obliczeñ do rejestru docelowego
                    R(to_integer(unsigned(Rd))) <= std_logic_vector(res(7 downto 0));
                elsif std_match(IR, MC_ADCI) then
                    src1 := signed(R(TO_INTEGER(unsigned(Rd))));
                    src2 := signed(R(TO_INTEGER(unsigned(ARG))));
                    res := "00000000" & SREG_C;
                    res := res + ('0' & src1) + ('0' & src2);
                    SREG_C <= res(8);
                    SREG_C <= (src1(7) and src2(7)) or (src1(7) and not res(7)) or
                    (src2(7) and not res(7));
                    if res(7 downto 0) = x"00" then
                    SREG_Z <= '1';
                    else
                    SREG_Z <= '0';
                    end if;
                    R(to_integer(unsigned(Rd))) <= std_logic_vector(res(7 downto 0));
                elsif std_match(IR, MC_SBC) then
                    src1 := signed(R(TO_INTEGER(unsigned(Rd))));
                    src2 := signed(R(TO_INTEGER(unsigned(Rs))));
                    res := "00000000" & SREG_C;
                    res := -res + ('0' & src1) - ('0' & src2);
                    SREG_C <= res(8);
                    SREG_C <= (src1(7) and src2(7)) or (src1(7) and not res(7)) or
                    (src2(7) and not res(7));
                    if res(7 downto 0) = x"00" then
                    SREG_Z <= '1';
                    else
                    SREG_Z <= '0';
                    end if;
                    R(to_integer(unsigned(Rd))) <= std_logic_vector(res(7 downto 0));
                elsif std_match(IR, MC_SBCI) then
                    src1 := signed(R(TO_INTEGER(unsigned(Rd))));
                    src2 := signed(R(TO_INTEGER(unsigned(ARG))));
                    res := "00000000" & SREG_C;
                    res := -res + ('0' & src1) - ('0' & src2);
                    SREG_C <= res(8);
                    SREG_C <= (src1(7) and src2(7)) or (src1(7) and not res(7)) or
                    (src2(7) and not res(7));
                    if res(7 downto 0) = x"00" then
                        SREG_Z <= '1';
                    else
                        SREG_Z <= '0';
                    end if;
                    R(to_integer(unsigned(Rd))) <= std_logic_vector(res(7 downto 0));
                elsif std_match(IR, MC_MUL) then
                    src3 := unsigned(R(TO_INTEGER(unsigned(Rd))));
                    src4 := unsigned(R(TO_INTEGER(unsigned(Rs))));
                    res1 := src3 * src4;
                    R(TO_INTEGER(unsigned(Rd)) + 1) <= std_logic_vector(res1(15 downto 8));
                    R(TO_INTEGER(unsigned(Rd))) <= std_logic_vector(res1(7 downto 0));
                elsif std_match(IR, MC_MULS) then
                    src1 := signed(R(TO_INTEGER(unsigned(Rd))));
                    src2 := signed(R(TO_INTEGER(unsigned(Rs))));
                    res2 := src1 * src2;
                    R(TO_INTEGER(unsigned(Rd)) + 1) <= std_logic_vector(res2(15 downto 8));
                    R(TO_INTEGER(unsigned(Rd))) <= std_logic_vector(res2(7 downto 0));
                elsif std_match(IR, MC_AND) then
                    -- AND Rd, Rs - logical AND of registers Rs and Rd (Rd ? Rd and Rs)
                    R(TO_INTEGER(unsigned(Rd))) <= R(TO_INTEGER(unsigned(Rd))) and R(TO_INTEGER(unsigned(Rs)));
                    if R(TO_INTEGER(unsigned(Rd))) = "00000000" then
                        SREG_Z <= '1';
                    else
                        SREG_Z <= '0';
                    end if;
                    SREG_N <= R(TO_INTEGER(unsigned(Rd)))(7);
                    SREG_I <= '0';
                
                elsif std_match(IR, MC_ANDI) then
                    -- ANDI Rd, K - logical AND of register Rd and constant K (Rd ? Rd and K)
                    R(TO_INTEGER(unsigned(Rd))) <= R(TO_INTEGER(unsigned(Rd))) and ARG;
                    if R(TO_INTEGER(unsigned(Rd))) = "00000000" then
                        SREG_Z <= '1';
                    else
                        SREG_Z <= '0';
                    end if;
                    SREG_N <= R(TO_INTEGER(unsigned(Rd)))(7);
                    SREG_I <= '0';
                
                elsif std_match(IR, MC_OR) then
                    -- OR Rd, Rs - logical OR of registers Rs and Rd (Rd ? Rd or Rs)
                    R(TO_INTEGER(unsigned(Rd))) <= R(TO_INTEGER(unsigned(Rd))) or R(TO_INTEGER(unsigned(Rs)));
                    if R(TO_INTEGER(unsigned(Rd))) = "00000000" then
                        SREG_Z <= '1';
                    else
                        SREG_Z <= '0';
                    end if;
                    SREG_N <= R(TO_INTEGER(unsigned(Rd)))(7);
                    SREG_I <= '0';
                
                elsif std_match(IR, MC_ORI) then
                    -- ORI Rd, K - logical OR of register Rd and constant K (Rd ? Rd or K)
                    R(TO_INTEGER(unsigned(Rd))) <= R(TO_INTEGER(unsigned(Rd))) or ARG;
                   if R(TO_INTEGER(unsigned(Rd))) = "00000000" then
                        SREG_Z <= '1';
                    else
                        SREG_Z <= '0';
                    end if;
                    SREG_N <= R(TO_INTEGER(unsigned(Rd)))(7);
                    SREG_I <= '0';
                
                elsif std_match(IR, MC_XOR) then
                    -- XOR Rd, Rs - logical XOR of registers Rs and Rd (Rd ? Rd xor Rs)
                    R(TO_INTEGER(unsigned(Rd))) <= R(TO_INTEGER(unsigned(Rd))) xor R(TO_INTEGER(unsigned(Rs)));
                    if R(TO_INTEGER(unsigned(Rd))) = "00000000" then
                        SREG_Z <= '1';
                    else
                        SREG_Z <= '0';
                    end if;
                    SREG_N <= R(TO_INTEGER(unsigned(Rd)))(7);
                    SREG_I <= '0';
                
                elsif std_match(IR, MC_XORI) then
                    -- XORI Rd, K - logical XOR of register Rd and constant K (Rd ? Rd xor K)
                    R(TO_INTEGER(unsigned(Rd))) <= R(TO_INTEGER(unsigned(Rd))) xor ARG;
                    if R(TO_INTEGER(unsigned(Rd))) = "00000000" then
                        SREG_Z <= '1';
                    else
                        SREG_Z <= '0';
                    end if;
                    SREG_N <= R(TO_INTEGER(unsigned(Rd)))(7);
                    SREG_I <= '0';
                end if;
                  state <= S_FETCH;    
              end case;
       end if;         
end process;           
        

end Behavioral;
