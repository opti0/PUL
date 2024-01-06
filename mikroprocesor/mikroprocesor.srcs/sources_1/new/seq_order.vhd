library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity seq_order is
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
end seq_order;

architecture Behavioral of seq_order is

--kody rozkazow
constant C_OUTP: std_logic_vector(7 downto 0) := x"01";
constant C_BZ: std_logic_vector(7 downto 0) := x"11";
constant C_B: std_logic_vector (7 downto 0) := x"10";
constant C_NOP: std_logic_vector (7 downto 0) := x"00";
constant C_BSET: std_logic_vector (7 downto 0):= x"02";
constant C_BCLR: std_logic_vector (7 downto 0):= x"03";
constant C_CALL : std_logic_vector(7 downto 0) := x"04";
constant C_RCALL : std_logic_vector(7 downto 0) := x"05";
constant C_RET : std_logic_vector(7 downto 0) := x"06";
constant C_RETI : std_logic_vector(7 downto 0) := x"07";

constant C_MOV: std_logic_vector(9 downto 0) := "0100000001";
constant C_LD: std_logic_vector(9 downto 0) := "0100000010";
constant C_ST: std_logic_vector(9 downto 0) := "0100000011";
constant C_ADC: std_logic_vector (9 downto 0) := "0100000100";
constant C_SBC: std_logic_vector (9 downto 0) := "0100000101";
constant C_MUL: std_logic_vector (9 downto 0) := "0100000110";
constant C_MULS: std_logic_vector (9 downto 0) := "0100000111";
constant C_AND: std_logic_vector (9 downto 0) := "0100001000";
constant C_OR: std_logic_vector (9 downto 0) := "0100001001";
constant C_XOR: std_logic_vector (9 downto 0) := "0100001010";
constant C_CP: std_logic_vector (9 downto 0) := "0100100000";

constant C_LDI: std_logic_vector(4 downto 0) := "10001";
constant C_LDS: std_logic_vector(4 downto 0) := "10010";
constant C_STS: std_logic_vector(4 downto 0) := "10011";
constant C_ADCI: std_logic_vector (4 downto 0) := "10000";
constant C_SBCI: std_logic_vector (4 downto 0) := "10100";
constant C_ANDI: std_logic_vector (4 downto 0) := "10101";
constant C_ORI: std_logic_vector (4 downto 0) := "10110";
constant C_XORI: std_logic_vector (4 downto 0) := "10111";

constant C_BRBS: std_logic_vector (4 downto 0) := "11000";
constant C_BRBC: std_logic_vector (4 downto 0) := "11001";
constant C_CPI: std_logic_vector (4 downto 0) := "11010";
constant C_IOUTP : std_logic_vector(4 downto 0) := "11011";
constant C_INP : std_logic_vector(4 downto 0) := "11100";

--instrukcje ioutp i inp trwaja wiecej niz jeden cykl i potrzebuje masek
constant M_IOUTP : std_logic_vector(15 downto 0) := "11011-----------";
constant M_INP : std_logic_vector(15 downto 0) := "11100-----------";

--wybor formatu rozkazu (format R lub I)
constant Format1: std_logic_vector(1 downto 0) := "00";
constant FormatR: std_logic_vector(1 downto 0) := "01";
constant FormatI: std_logic_vector(1 downto 0) := "10";
constant FormatI2: std_logic_vector(1 downto 0) := "11";

type rom_array is array (0 to 31) of std_logic_vector(15 downto 0);
-- constant ROM: rom_t := (C_OUTP & x"FF",C_OUTP & x"55",C_BZ & x"02",C_OUTP & x"00",C_NOP & x"00",C_B & x"00",others => x"0000");
--constant ROM: rom_array := (C_LDI & "001" & x"35", C_LDI & "010" & x"12", C_ADC & "010" & "001" , C_ADCI & "010" & x"21",C_SBC & "010" & "001",C_SBCI & "010" & x"11",C_MUL & "001" & "010",C_MULS & "001" & "010",C_AND & "001" & "010",C_ANDI & "001" & x"04",C_OR & "001" & "010",C_ORI & "001" & x"02",C_XOR & "001" & "010",C_XORI & "001" & x"05", C_B & x"00", others => x"0000");
--constant ROM: rom_array := (C_BCLR & x"ff", C_LDI & "000" & x"02", C_MOV & "010" & "000", C_LDI & "001" & x"05", C_LDI & "100" & x"00", C_ADCI & "100" & x"01", C_CP & "100" & "001", C_BRBS & "001" & x"04", C_MUL & "010" & "000", C_MOV & "010" & "011",C_B & x"05", C_B & x"0b" ,others => x"0000");
constant ROM: rom_array := (C_BSET &x"80", C_LDI & "001" & x"35", C_IOUTP & "001" & x"11", C_INP & "001" & x"22", C_LDI & "100" & x"79", C_RCALL & x"0d", C_MOV &"101" &"001", C_LDI &"001" &x"02",C_ST &"001" &"100",C_STS &"100" &x"05", C_LD &"110" &"001",C_LDS &"111" &x"05", C_LDI &"000" &x"05", C_ADC &"001" &"000",C_ADCI &"001" &x"11",C_LDI &"000" &x"81",C_ADCI &"000" &x"7f", C_B & x"00", C_LDI &"000" &x"f0", C_IOUTP &"000" &x"33", C_RET &x"00", C_IOUTP &"000" &x"55",C_RETI &x"00", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", C_B &x"15");

type ram_array is array (0 to 31) of std_logic_vector(7 downto 0);
signal RAM: ram_array :=(others => x"00");

type reg_array is array (0 to 7) of std_logic_vector(7 downto 0);
signal R: reg_array :=(others => x"00");

signal PC: unsigned (7 downto 0):= x"00";
signal IR: std_logic_vector(15 downto 0);

alias TypFormatu: std_logic_vector(1 downto 0) is IR (15 downto 14);

alias OPCODE: std_logic_vector(7 downto 0) is IR(15 downto 8);
alias ARG: std_logic_vector(7 downto 0) is IR(7 downto 0);

signal SREG: unsigned (7 downto 0):= x"00";
alias SREG_Z: std_logic is SREG(1);
alias SREG_C: std_logic is SREG(0);
alias SREG_I: std_logic is SREG(7);

signal SREGM: unsigned(7 downto 0):= x"00";

type stack_array is array (0 to 31) of unsigned(7 downto 0);
signal STACK: stack_array:=(others => x"00");

signal SPTR: unsigned(7 downto 0):= x"00"; --wskaznik stosu

type state_t is (S_FETCH, S_EX);
signal state: state_t;

alias RR: std_logic_vector(9 downto 0) is IR(15 downto 6);
alias RD: std_logic_vector(2 downto 0) is IR(5 downto 3);
alias RS: std_logic_vector(2 downto 0) is IR(2 downto 0);

alias I: std_logic_vector (4 downto 0) is IR(15 downto 11);
alias K: std_logic_vector(7 downto 0) is IR(7 downto 0);
alias ID: std_logic_vector(2 downto 0) is IR(10 downto 8);

begin
    process(RESET,CLK)
    variable src1, src2: signed (7 downto 0);
    variable src3, src4: unsigned (7 downto 0);
    variable res: signed (8 downto 0);
    variable res1: signed (15 downto 0);
    variable res2: unsigned(15 downto 0);
    variable inp: std_logic; --zmnienna do wykonania instrukcji na 3 cylke
    variable adres: std_logic_vector (2 downto 0); --adres do rozkazu inp
    
    begin
        if RESET = '1' then
        PC <= (others => '0');
        SPTR <= (others => '0');
        GPIO <= (others => '0');
        IOWR <= '0';
        IORD <= '0';
        IOADR <= (others => '0');
        IOOUT <= (others => '0');
        state <= S_FETCH;
        
        elsif rising_edge(CLK) then
        
        case state is
            when S_FETCH =>
                 IR <= ROM(to_integer(PC));
                 inp := '0';
                    if std_match(IR, M_IOUTP) then
                        IOWR <= '1';
                    elsif std_match(IR, M_INP) then
                        IORD <= '1';
                        inp := '1';
                        adres := ID;
                    end if;
                  state <= S_EX;
            
             when S_EX =>
             
                if inp = '1' then
                    R(TO_INTEGER(unsigned(adres))) <= IOIN;
                end if;
               
                IOWR <= '0';
                IORD <= '0';
               
                if INT = '1' and SREG_I = '1' then
                    STACK(TO_INTEGER(SPTR)) <= PC;
                    SPTR <= SPTR + 1;
                    SREGM <= SREG;
                    SREG_I <= '0';
                    PC <= x"1f";
                    state <= S_FETCH;
                else
               
                case TypFormatu is 
                    
                    when Format1 =>
                       
                        case OPCODE is
                            when C_NOP =>
                                PC <= PC+1;
                
                            when C_B =>
                                PC <= unsigned(ARG);
                                                     
                            when C_OUTP =>
                                GPIO <= ARG;
                                PC <= PC+1;
                                
                            when C_BZ =>
                                if Z = '0' then
                                    PC <= PC+1;
                                else
                                    PC <= unsigned(ARG);
                                end if;
                                
                            when C_BSET =>
                             SREG <= SREG or unsigned(ARG);
                             PC <= PC+1;
                             
                            when C_BCLR =>
                               SREG <= SREG and not (unsigned(ARG));
                               PC <= PC+1;
                               
                            when C_RCALL =>
                                STACK(TO_INTEGER(SPTR)) <= PC + 1;
                                SPTR <= SPTR + 1;
                                PC <= PC + unsigned(ARG);
                                
                            when C_CALL =>
                                STACK(TO_INTEGER(SPTR)) <= PC + 1;
                                SPTR <= SPTR + 1;
                                PC <= unsigned(ARG); 
                                
                            when C_RET =>
                                PC <= STACK(TO_INTEGER(SPTR - 1));
                                SPTR <= SPTR - 1;
                                
                            when C_RETI =>
                                PC <= STACK(TO_INTEGER(SPTR - 1));
                                SPTR <= SPTR - 1;
                                SREG <= SREGM;        
                               
                            when others => 
                                PC <= (others => '0');
                                GPIO <= (others => '0');
                        end case;  
                        state <= S_FETCH;   
                        
                    when FormatI =>
                    state <= S_FETCH;
                    PC <= PC +1;   
                    src1 := signed (R(TO_INTEGER(unsigned(ID))));
                    src2:= signed (K); 
                       
                        case I is 
                           when C_ADCI =>      
                                res := "00000000" & SREG_C;
                                res := res + ('0' & src1) + ('0' & src2);
                                -- Wyznaczenie bitu przeniesienia bazuj¹ce na dokumentacji
                                -- rozkazu ADC uC Atmega
                                SREG_C <= (src1(7) and src2(7)) or (src1(7) and not res(7)) or (src2(7) and not res(7));
                                -- Obs³uga flagi zera, SREG_Z jest aliasem bitu SREG(1)
                                if res(7 downto 0) = x"00" then
                                    SREG_Z <= '1';
                                else
                                    SREG_Z <= '0';
                               end if;
                               -- Przepisanie wyniku obliczeñ do rejestru docelowego
                               R(to_integer(unsigned(ID))) <= std_logic_vector(res(7 downto 0));
                               
                               when C_SBCI =>
                                res := "00000000" & SREG_C;
                                res := ('0' & src1) - res - ('0' & src2);
                                -- Wyznaczenie bitu przeniesienia bazuj¹ce na dokumentacji
                                -- rozkazu ADC uC Atmega
                                SREG_C <= (not src1(7) and src2(7)) or (src2(7) and res(7)) or (res(7) and not src1(7));
                                -- Obs³uga flagi zera, SREG_Z jest aliasem bitu SREG(1)
                                SREG_Z <= not res(7) and not res(6) and not res(5) and not res(4) and not res(3) and not res(2) and not res(1) and not res(0) and SREG_Z;
                               -- Przepisanie wyniku obliczeñ do rejestru docelowego
                               R(to_integer(unsigned(ID))) <= std_logic_vector(res(7 downto 0));
                            
                            when C_ANDI =>
                                res := ('0' & src1) and ('0' & src2);
                                if res(7 downto 0) = x"00" then
                                    SREG_Z <= '1';
                                else
                                    SREG_Z <= '0';
                               end if;
                               -- Przepisanie wyniku obliczeñ do rejestru docelowego
                               R(to_integer(unsigned(ID))) <= std_logic_vector(res(7 downto 0));
                               
                            when C_ORI =>
                                res := ('0' & src1) or ('0' & src2);
                                
                                if res(7 downto 0) = x"00" then
                                    SREG_Z <= '1';
                                else
                                    SREG_Z <= '0';
                               end if;
                               -- Przepisanie wyniku obliczeñ do rejestru docelowego
                               R(to_integer(unsigned(ID))) <= std_logic_vector(res(7 downto 0));
                               
                             when C_XORI =>
                                res := ('0' & src1) xor ('0' & src2);
                                
                                if res(7 downto 0) = x"00" then
                                    SREG_Z <= '1';
                                else
                                    SREG_Z <= '0';
                               end if;
                               -- Przepisanie wyniku obliczeñ do rejestru docelowego
                               R(to_integer(unsigned(ID))) <= std_logic_vector(res(7 downto 0));
                               
                            when C_LDI =>
                                R(TO_INTEGER(unsigned(ID))) <= K;
                            when C_LDS =>
                                R(TO_INTEGER(unsigned(ID))) <= RAM(TO_INTEGER(unsigned(K)));
                            when C_STS =>
                                RAM(TO_INTEGER(unsigned(K))) <= R(TO_INTEGER(unsigned(ID)));
                            when others =>
                                PC <= (others => '0');
                                GPIO <= (others => '0');
                        end case; 
                   
                    when FormatI2 =>
                    state <= S_FETCH;   
                    src1 := signed (R(TO_INTEGER(unsigned(ID))));
                    src2:= signed (K); 
                       
                        case I is 
                     
                           when C_BRBS =>      
                                if SREG(TO_INTEGER(unsigned(ID))) = '1' then
                                    PC <= PC + unsigned(src2);
                                else 
                                    PC <= PC+1;
                                end if;
                                                        
                           when C_BRBC =>      
                                if SREG(TO_INTEGER(unsigned(ID))) = '0' then
                                    PC <= PC + unsigned(src2);
                                else 
                                    PC <= PC+1;
                                end if;    
                           
                           when C_CPI =>      
                                res := ('0' & src1) - ('0' & src2);
                                SREG_C <= (src1(7) and src2(7)) or (res(7) and not src1(7)) or (src2(7) and res(7));
                                if res(7 downto 0) = x"00" then
                                    SREG_Z <= '1';
                                else
                                    SREG_Z <= '0';
                               end if;       
                               PC <= PC +1;    
                               
                           when C_IOUTP =>
                                IOADR <= K;
                                IOOUT <= R(TO_INTEGER(unsigned(ID)));
                                PC <= PC + 1;   
                          
                           when C_INP =>
                                IOADR <= K;
                                PC <= PC + 1;  
                                                                 
                            when others =>
                                PC <= (others => '0');
                                GPIO <= (others => '0');
                        end case;
                                              
                      when FormatR =>
                      state <= S_FETCH;
                      PC <= PC +1;
                      src1 := signed (R(TO_INTEGER(unsigned(RD))));
                      src2:= signed (R(TO_INTEGER(unsigned(RS))));
                       
                        case RR is
                            when C_ADC =>
                                res := "00000000" & SREG_C;
                                res := res + ('0' & src1) + ('0' & src2);
                                -- Wyznaczenie bitu przeniesienia bazuj¹ce na dokumentacji
                                -- rozkazu ADC uC Atmega
                                SREG_C <= (src1(7) and src2(7)) or (src1(7) and not res(7)) or (src2(7) and not res(7));
                                -- Obs³uga flagi zera, SREG_Z jest aliasem bitu SREG(1)
                                if res(7 downto 0) = x"00" then
                                    SREG_Z <= '1';
                                else
                                    SREG_Z <= '0';
                               end if;
                               -- Przepisanie wyniku obliczeñ do rejestru docelowego
                               R(to_integer(unsigned(RD))) <= std_logic_vector(res(7 downto 0));
                            
                            when C_SBC =>
                                res := "00000000" & SREG_C;
                                res := ('0' & src1) - res - ('0' & src2);
                                -- Wyznaczenie bitu przeniesienia bazuj¹ce na dokumentacji
                                -- rozkazu ADC uC Atmega
                                SREG_C <= (not src1(7) and src2(7)) or (src2(7) and res(7)) or (res(7) and not src1(7));
                                -- Obs³uga flagi zera, SREG_Z jest aliasem bitu SREG(1)
                                SREG_Z <= not res(7) and not res(6) and not res(5) and not res(4) and not res(3) and not res(2) and not res(1) and not res(0) and SREG_Z;
                               -- Przepisanie wyniku obliczeñ do rejestru docelowego
                               R(to_integer(unsigned(RD))) <= std_logic_vector(res(7 downto 0));
                               
                               when C_MUL =>
                                src3 := unsigned (R(TO_INTEGER(unsigned(RS))));
                                src4:= unsigned (R(TO_INTEGER(unsigned(RD))));
                                
                                res2 := src3 * src4;
                                -- Wyznaczanie bitu przeniesienia C bazuj¹ce na rozszerzonej
                                -- o jeden bit d³ugoœci s³owa
                                SREG_C <= res2(15);
                                -- Wyznaczenie bitu przeniesienia bazuj¹ce na dokumentacji
                                -- rozkazu ADC uC Atmega 
                                if res2(15 downto 0) = x"0000" then
                                    SREG_Z <= '1';
                                else
                                    SREG_Z <= '0';
                               end if;
                               -- Przepisanie wyniku obliczeñ do rejestru docelowego
                               R(to_integer(unsigned(RD))) <= std_logic_vector(res2(15 downto 8));
                               R(to_integer(unsigned(RD))+1) <= std_logic_vector(res2(7 downto 0));
                            
                            when C_MULS => 
                                res1 := src1 * src2;   
                                -- Wyznaczanie bitu przeniesienia C bazuj¹ce na rozszerzonej
                                -- o jeden bit d³ugoœci s³owa
                                SREG_C <= res1(15);
                                -- Wyznaczenie bitu przeniesienia bazuj¹ce na dokumentacji
                                -- rozkazu ADC uC Atmega
                                if res1(15 downto 0) = x"0000" then
                                    SREG_Z <= '1';
                                else
                                    SREG_Z <= '0';
                               end if;
                               -- Przepisanie wyniku obliczeñ do rejestru docelowego
                               R(to_integer(unsigned(RD))) <= std_logic_vector(res1(15 downto 8));
                               R(to_integer(unsigned(RD))+1) <= std_logic_vector(res1(7 downto 0));
                            
                            when C_AND =>
                                res := ('0' & src1) and ('0' & src2);
                                
                                if res(7 downto 0) = x"00" then
                                    SREG_Z <= '1';
                                else
                                    SREG_Z <= '0';
                               end if;
                               -- Przepisanie wyniku obliczeñ do rejestru docelowego
                               R(to_integer(unsigned(RD))) <= std_logic_vector(res(7 downto 0));
                               
                            when C_OR =>   
                                res := ('0' & src1) or ('0' & src2);       
                                if res(7 downto 0) = x"00" then
                                    SREG_Z <= '1';
                                else
                                    SREG_Z <= '0';
                               end if;
                               -- Przepisanie wyniku obliczeñ do rejestru docelowego
                               R(to_integer(unsigned(RD))) <= std_logic_vector(res(7 downto 0));
                               
                             when C_XOR =>  
                                res := ('0' & src1) xor ('0' & src2);
                                
                                if res(7 downto 0) = x"00" then
                                    SREG_Z <= '1';
                                else
                                    SREG_Z <= '0';
                               end if;
                               -- Przepisanie wyniku obliczeñ do rejestru docelowego
                               R(to_integer(unsigned(RD))) <= std_logic_vector(res(7 downto 0));
                            
                             when C_CP =>
                                res := ('0' & src1) - ('0' & src2);
                                SREG_C <= (not src1(7) and src2(7)) or (src2(7) and res(7)) or (res(7) and not src1(7));
                                if res(7 downto 0) = x"00" then
                                    SREG_Z <= '1';
                                else
                                    SREG_Z <= '0';
                               end if;
                            
                            when C_MOV =>
                                R(TO_INTEGER(unsigned(RD))) <= R(TO_INTEGER(unsigned(RS)));
                            when C_LD =>
                                R(TO_INTEGER(unsigned(RD))) <= RAM(TO_INTEGER(unsigned(R(TO_INTEGER(unsigned(RS))))));
                            when C_ST =>
                                RAM(TO_INTEGER(unsigned(R(TO_INTEGER(unsigned(RD)))))) <= R(TO_INTEGER(unsigned(RS)));
                            when others =>
                                PC <= (others => '0');
                                GPIO <= (others => '0');
                        end case; 
                        
                    when others =>
                        PC <= (others => '0');
                        GPIO <= (others => '0');
                        state <= S_FETCH;
                end case;
                
                end if;
                
               when others =>  
                 PC <= (others => '0');
                 GPIO <= (others => '0');
                 state <= S_FETCH;
                 
        end case;
      end if;
    end process;
end Behavioral;