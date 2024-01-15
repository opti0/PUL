library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity seq_order is
    port ( Z : in STD_LOGIC;
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

	type state_t is (S_FETCH, S_EX);
	signal STATE : state_t;

	signal PC : std_logic_vector(7 downto 0) := (others => '0');
	signal IR : std_logic_vector(15 downto 0) := (others => '0');

	--R
	constant C_MOV : std_logic_vector (9 downto 0)     := "0000000001";
	constant MC_MOV : std_logic_vector (15 downto 0)   := "0000000001------";
	constant C_ST : std_logic_vector (9 downto 0)      := "0000000010";
	constant MC_ST : std_logic_vector (15 downto 0)    := "0000000010------";
	constant C_LD : std_logic_vector (9 downto 0)      := "0000000011";
	constant MC_LD : std_logic_vector (15 downto 0)    := "0000000011------";
	constant C_ADC : std_logic_vector (9 downto 0)     := "0000000100";
	constant MC_ADC : std_logic_vector (15 downto 0)   := "0000000100------";
	constant C_SBC : std_logic_vector (9 downto 0)     := "0000000101";
	constant MC_SBC : std_logic_vector (15 downto 0)   := "0000000101------";
	constant C_MUL : std_logic_vector (9 downto 0)     := "0000000111";
	constant MC_MUL : std_logic_vector (15 downto 0)   := "0000000111------";
	constant C_MULS : std_logic_vector (9 downto 0)    := "0000001000";
	constant MC_MULS : std_logic_vector (15 downto 0)  := "0000001000------";
	constant C_AND : std_logic_vector (9 downto 0)     := "0000001001";
	constant MC_AND : std_logic_vector (15 downto 0)   := "0000001001------";
	constant C_OR : std_logic_vector (9 downto 0)      := "0000001010";
	constant MC_OR : std_logic_vector (15 downto 0)    := "0000001010------";
	constant C_XOR : std_logic_vector (9 downto 0)     := "0000001011";
	constant MC_XOR : std_logic_vector (15 downto 0)   := "0000001011------";
	constant C_CP : std_logic_vector (9 downto 0)      := "0000001100";
	constant MC_CP : std_logic_vector (15 downto 0)    := "0000001100------";
	constant C_BZ : std_logic_vector(7 downto 0)       := "00000100";
	constant MC_BZ : std_logic_vector(15 downto 0)     := "00000100--------";
	constant C_BR : std_logic_vector(7 downto 0)       := "00000101";
	constant MC_BR : std_logic_vector(15 downto 0)     := "00000101--------";
	--I/O & interrupts
	constant C_NOP : std_logic_vector(15 downto 0)     := "0000000000000000";
	constant MC_NOP : std_logic_vector(15 downto 0)    := "0000000000000000";
	constant C_RET : std_logic_vector(15 downto 0)     := "0000000000000001";
	constant MC_RET : std_logic_vector(15 downto 0)    := "0000000000000001";
	constant C_RETI : std_logic_vector(15 downto 0)    := "0000000000000010";
	constant MC_RETI : std_logic_vector(15 downto 0)   := "0000000000000010";
	constant C_RETIN : std_logic_vector(15 downto 0)   := "0000000000000011";
	constant MC_RETIN : std_logic_vector(15 downto 0)  := "0000000000000011";
	--I
	constant C_LDI : std_logic_vector (4 downto 0)     := "01001";
	constant MC_LDI : std_logic_vector (15 downto 0)   := "01001-----------";
	constant C_STS : std_logic_vector (4 downto 0)     := "01010";
	constant MC_STS : std_logic_vector (15 downto 0)   := "01010-----------";
	constant C_LDS : std_logic_vector (4 downto 0)     := "01011";
	constant MC_LDS : std_logic_vector (15 downto 0)   := "01011-----------";
	constant C_ADCI : std_logic_vector (4 downto 0)    := "01110";
	constant MC_ADCI : std_logic_vector (15 downto 0)  := "01110-----------";
	constant C_SBCI : std_logic_vector (4 downto 0)    := "01101";
	constant MC_SBCI : std_logic_vector (15 downto 0)  := "01101-----------";
	constant C_BSET : std_logic_vector (7 downto 0)    := "01100001";
	constant MC_BSET : std_logic_vector (15 downto 0)  := "01100001--------";
	constant C_BCLR : std_logic_vector (7 downto 0)    := "01100010";
	constant MC_BCLR : std_logic_vector (15 downto 0)  := "01100010--------";
	constant C_RCALL : std_logic_vector(7 downto 0)    := "01000000";
	constant MC_RCALL : std_logic_vector(15 downto 0)  := "01000000--------";
	constant C_CALL : std_logic_vector(7 downto 0)     := "01111111";
	constant MC_CALL : std_logic_vector(15 downto 0)   := "01111111--------";
	--byte
	constant C_ANDI : std_logic_vector (4 downto 0)    := "10000";
	constant MC_ANDI : std_logic_vector (15 downto 0)  := "10000-----------";
	constant C_ORI : std_logic_vector (4 downto 0)     := "10001";
	constant MC_ORI : std_logic_vector (15 downto 0)   := "10001-----------";
	constant C_XORI : std_logic_vector (4 downto 0)    := "10010";
	constant MC_XORI : std_logic_vector (15 downto 0)  := "10010-----------";
	--software jumps
	constant C_BRBS : std_logic_vector (4 downto 0)    := "10011";
	constant MC_BRBS : std_logic_vector (15 downto 0)  := "10011-----------";
	constant C_BRBC : std_logic_vector (4 downto 0)    := "10100";
	constant MC_BRBC : std_logic_vector (15 downto 0)  := "10100-----------";
	--comparison
	constant C_CPI : std_logic_vector (4 downto 0)     := "10101";
	constant MC_CPI : std_logic_vector (15 downto 0)   := "10101-----------";
	--jump back
	constant C_B : std_logic_vector (7 downto 0)       := "11000000";
	constant MC_B : std_logic_vector (15 downto 0)     := "11000000--------";
	constant C_OUTP : std_logic_vector(4 downto 0)     := "11100";
	constant MC_OUTP : std_logic_vector(15 downto 0)   := "11100-----------";
	constant C_INP : std_logic_vector(4 downto 0)      := "11101";
	constant MC_INP : std_logic_vector(15 downto 0)    := "11101-----------";

	-------

	type ram_array is array (0 to 31) of std_logic_vector (7 downto 0);
	signal RAM : ram_array;

	type reg_array is array (0 to 7) of std_logic_vector (7 downto 0);
	signal REG : reg_array;

	-------

	alias OPCODE : std_logic_vector(7 downto 0) is IR(15 downto 8);
	alias ARG : std_logic_vector(7 downto 0) is IR(7 downto 0);

	alias DATA_R : std_logic_vector(2 downto 0) is IR(5 downto 3);
	alias SOURCE_R : std_logic_vector(2 downto 0) is IR(2 downto 0);
	alias DATA_I : std_logic_vector(2 downto 0) is IR(10 downto 8);
	alias CONST_I : std_logic_vector(7 downto 0) is IR(7 downto 0);
	alias JUMP_ADDRESS : std_logic_vector(7 downto 0) is IR(7 downto 0);

	-------

	signal SREG : std_logic_vector(7 downto 0);
	alias SREG_C : std_logic is SREG(0);
	alias SREG_Z : std_logic is SREG(1);
	alias SREG_N : std_logic is SREG(2);
	alias SREG_V : std_logic is SREG(3);
	alias SREG_S : std_logic is SREG(4);
	alias SREG_H : std_logic is SREG(5);
	alias SREG_I : std_logic is SREG(7);

	type rom_t is array(0 to 31) of STD_LOGIC_VECTOR(15 downto 0);
	constant ROM : rom_t := (
--		 C_LDI & "001" & x"35",   -- zaladowanie wartosci x35 do rejestru R1                              | ok
--		 C_LDI & "010" & x"12",   -- zaladowanie wartosci x12 do rejestru R3                              | ok
--		 C_MOV & "101" & "001",   -- przeslanie zawartosci rejestru R1 do rejestru R5                     | ok
--		 C_ADC & "010" & "001",   -- dodanie zawartoœci rejestru R1 do rejestru R2                        | ok
--		 C_SBC & "010" & "001",   -- odejmowanie zawartoœci rejestru R1 od rejestru R2                    | ok
--		 C_SBCI & "010" & x"35",  -- odejmowanie zawartoœci rejestru R1 od rejestru R2 18 - 53            | ok
--		 C_LDI & "000" & x"02",   -- za³adowanie do rejestru R0 wartoœci 2                                | ok
--		 C_LDI & "011" & x"02",   -- za³adowanie do rejestru R4 wartoœci 2                                | ok
--		 C_MUL & "011" & "000",   -- mno¿enie rejestru R4 i rejestru R0                                   | ok
--		 C_ANDI & "011" & x"10",  -- iloczyn logiczny rejestru R4 ze sta³¹ x"10" -> x"00"                 | ok
--		 C_BSET & x"01",          -- ustawienie bitu przeniesienia na 1                                   | ok                        
		 
----------------------------------------------------------------------------------------------------------
		-- PETLA                                                                                          | ok
--        C_LDI & "011" & x"03",   -- za³aduj wartoœæ 3 do rejestru R3
--        C_BCLR & x"01",          -- wyzeruj bit przeniesienia
--        C_ADCI & "000" & x"01",  -- inkrementuj wartoœæ rejestru R0 (x = x + 1)
--        C_BCLR & x"01",          -- wyzeruj bit przeniesienia ponownie
--        C_SBCI & "011" & x"01",  -- dekrementuj wartoœæ rejestru R3 (i = i - 1)
        
--        -- SprawdŸ czy licznik pêtli osi¹gn¹³ 0 i ewentualnie skocz do pocz¹tku pêtli
--        C_BRBC & "001" & x"FC", -- skocz do instrukcji C_ADCI jeœli R3 != 0

----------------------------------------------------------------------------------------------------------
		-- POTEGOWANIE                                                                                    | ok
        C_LDI & "000" & x"02",  -- zaladowanie liczby potegowanej do rejestru R0 
        C_LDI & "001" & x"03",  -- zaladowanie wykladnika do rejestru R1
        C_LDI & "010" & x"01",  -- zaladowanie 1 do rejestru R2
        C_BCLR & x"41",         -- wyczyszczenie SREG
        C_MUL & "010" & "000",  -- pomnozenie wartosci w R2 i R0
        C_MOV & "010" & "011",  -- przeniesienie wyniki z R3 do R2
        C_BCLR & x"41",         -- wyczyszczenie SREG
        C_SBCI & "001" & x"01", -- odjecie 1 od wykladnika
        C_BRBC & "001" & x"FC", -- skok na poczatek petli

		--C_B & x"00", -- skok na poczatek programu
		others => x"0000"
	);
begin
	main : process (RESET, CLK)
		variable src1, src2 : signed (7 downto 0);
		variable urc1, urc2 : unsigned (7 downto 0);

		variable res : signed (8 downto 0);
		variable resc : signed (8 downto 0);
		variable sres : signed (15 downto 0);
		variable ures : unsigned (15 downto 0);

		variable lres : std_logic_vector (7 downto 0);

	begin
		if RESET = '1' then
			STATE <= S_FETCH;
			IR <= (others => '0');
			GPIO <= (others => '0');
			PC <= (others => '0');
			RAM <= (others => x"00");
			REG <= (others => x"00");
			SREG <= (others => '0');
		elsif rising_edge(CLK) then

			case(STATE) is
				when S_FETCH => 
					IR <= ROM(to_integer(unsigned(PC)));
					STATE <= S_EX;

				when S_EX => 

					if std_match(IR, MC_LDI) then
						REG(to_integer(unsigned(DATA_I))) <= CONST_I;
						PC <= PC + 1;

					elsif std_match(IR, MC_MOV) then
						REG(to_integer(unsigned(DATA_R))) <= REG(to_integer(unsigned(SOURCE_R)));
						PC <= PC + 1;

					elsif std_match(IR, MC_ST) then
						RAM(to_integer(unsigned(REG(to_integer(unsigned(DATA_R)))))) <= REG(to_integer(unsigned(SOURCE_R)));
						PC <= PC + 1;

					elsif std_match(IR, MC_STS) then
						RAM(to_integer(unsigned(CONST_I))) <= REG(to_integer(unsigned(DATA_I)));
						PC <= PC + 1;

					elsif std_match(IR, MC_LD) then
						REG(to_integer(unsigned(DATA_R))) <= RAM(to_integer(unsigned(SOURCE_R)));
						PC <= PC + 1;

					elsif std_match(IR, MC_LDS) then
						REG(to_integer(unsigned(DATA_I))) <= RAM(to_integer(unsigned(CONST_I)));
						PC <= PC + 1;

					elsif std_match(IR, MC_ADC) then
						src1 := signed(REG(to_integer(unsigned(DATA_R))));
						src2 := signed(REG(to_integer(unsigned(SOURCE_R))));
						res := "00000000" & SREG_C;
						res := res + ('0' & src1) + ('0' & src2);
						SREG_C <= res(8);
						SREG_C <= (src1(7) and src2(7)) or (src1(7) and not res(7)) or (src2(7) and not res(7));

						if res (7 downto 0) = x"00" then
							SREG_Z <= '1';
						else
							SREG_Z <= '0';
						end if;

						SREG_V <= (src1(7) and src2(7) and not res(7)) or (not src1(7) and not src2(7) and res(7));
						SREG_S <= SREG_N xor SREG_V;
						REG(TO_INTEGER(unsigned(DATA_R))) <= std_logic_vector(res(7 downto 0));
						PC <= PC + 1;

					elsif std_match(IR, MC_ADCI) then
						src1 := signed(REG(TO_INTEGER(unsigned(DATA_I))));
						src2 := signed(CONST_I);
						res := "00000000" & SREG_C;
						res := res + ('0' & src1) + ('0' & src2);
						SREG_C <= res(8);
						SREG_C <= (src1(7) and src2(7)) or (src1(7) and not res(7)) or (src2(7) and not res(7));

						if res (7 downto 0) = x"00" then
							SREG_Z <= '1';
						else
							SREG_Z <= '0';
						end if;
						SREG_N <= res(7);
						SREG_V <= (src1(7) and src2(7) and not res(7)) or (not src1(7) and not src2(7) and res(7));
						SREG_S <= SREG_N xor SREG_V;
						REG(TO_INTEGER(unsigned(DATA_I))) <= std_logic_vector(res(7 downto 0));
						PC <= PC + 1;

					elsif std_match(IR, MC_SBC) then
						src1 := signed(REG(TO_INTEGER(unsigned(DATA_R))));
						src2 := signed(REG(TO_INTEGER(unsigned(SOURCE_R))));
						resc := "00000000" & SREG_C;
						res := ('0' & src1) - ('0' & src2) - resc;
						SREG_C <= res(8);
						SREG_C <= (not src1(7) and src2(7)) or (src2(7) and res(7)) or (res(7) and not src1(7));
						if (res (7 downto 0) = x"00") then
							SREG_Z <= '1';
						else
							SREG_Z <= '0';
						end if;
						SREG_N <= res(7);
						SREG_V <= (src1(7) and not src2(7) and not res(7)) or (not src1(7) and src2(7) and res(7));
						SREG_S <= SREG_N xor SREG_V;
						SREG_H <= (not src1(3) and src2(3)) or (src2(3) and res(3)) or (res(3) and not src1(3));
						REG(TO_INTEGER(unsigned(DATA_R))) <= std_logic_vector(res(7 downto 0));
						PC <= PC + 1;

					elsif std_match(IR, MC_SBCI) then
						src1 := signed(REG(TO_INTEGER(unsigned(DATA_I))));
						src2 := signed(CONST_I);
						resc := "00000000" & SREG_C;
						res := ('0' & src1) - ('0' & src2) - resc;
						SREG_C <= res(8);
						SREG_C <= (not src1(7) and src2(7)) or (src2(7) and res(7)) or (res(7) and not src1(7));
						if (res (7 downto 0) = x"00") then
							SREG_Z <= '1';
						else
							SREG_Z <= '0';
						end if;
						SREG_N <= res(7);
						SREG_V <= (src1(7) and not src2(7) and not res(7)) or (not src1(7) and src2(7) and res(7));
						SREG_S <= SREG_N xor SREG_V;
						SREG_H <= ((not src1(3) and src2(3)) or (src2(3) and res(3)) or (res(3) and not src1(3)));
						REG(TO_INTEGER(unsigned(DATA_I))) <= std_logic_vector(res(7 downto 0));
						PC <= PC + 1;

					elsif std_match(IR, MC_MUL) then
						urc1 := unsigned(REG(TO_INTEGER(unsigned(DATA_R))));
						urc2 := unsigned(REG(TO_INTEGER(unsigned(SOURCE_R))));
						ures := urc1 * urc2;
						SREG_C <= ures(15);
						if ures = x"0000" then
							SREG_Z <= '1';
						else
							SREG_Z <= '0';
						end if;
						REG(TO_INTEGER(unsigned(DATA_R))) <= std_logic_vector(ures(15 downto 8));
						REG(TO_INTEGER(unsigned(DATA_R) + 1)) <= std_logic_vector(ures(7 downto 0));
						PC <= PC + 1;

					elsif std_match(IR, MC_MULS) then
						src1 := signed(REG(TO_INTEGER(unsigned(DATA_R))));
						src2 := signed(REG(TO_INTEGER(unsigned(SOURCE_R))));
						sres := src1 * src2;
						SREG_C <= sres(15);
						if sres = x"0000" then
							SREG_Z <= '1';
						else
							SREG_Z <= '0';
						end if;
						REG(TO_INTEGER(unsigned(DATA_R))) <= std_logic_vector(sres(15 downto 8));
						REG(TO_INTEGER(unsigned(DATA_R) + 1)) <= std_logic_vector(sres(7 downto 0));
						PC <= PC + 1;

					elsif std_match(IR, MC_AND) then
						lres := REG(TO_INTEGER(unsigned(DATA_R))) and REG(TO_INTEGER(unsigned(SOURCE_R)));
						if lres = x"00" then
							SREG_Z <= '1';
						else
							SREG_Z <= '0';
						end if;
						SREG_N <= lres(7);
						SREG_V <= '0';
						SREG_S <= SREG_N xor SREG_V;
						REG(TO_INTEGER(unsigned(DATA_R))) <= lres;
						PC <= PC + 1;

					elsif std_match(IR, MC_ANDI) then
						lres := REG(TO_INTEGER(unsigned(DATA_I))) and CONST_I;
						if lres = x"00" then
							SREG_Z <= '1';
						else
							SREG_Z <= '0';
						end if;
						SREG_N <= lres(7);
						SREG_V <= '0';
						SREG_S <= SREG_N xor SREG_V;
						REG(TO_INTEGER(unsigned(DATA_I))) <= lres;
						PC <= PC + 1;

					elsif std_match(IR, MC_OR) then
						lres := REG(TO_INTEGER(unsigned(DATA_R))) or REG(TO_INTEGER(unsigned(SOURCE_R)));
						if lres = x"00" then
							SREG_Z <= '1';
						else
							SREG_Z <= '0';
						end if;
						SREG_N <= lres(7);
						SREG_V <= '0';
						SREG_S <= SREG_N xor SREG_V;
						REG(TO_INTEGER(unsigned(DATA_R))) <= lres;
						PC <= PC + 1;

					elsif std_match(IR, MC_ORI) then
						lres := REG(TO_INTEGER(unsigned(DATA_I))) or CONST_I;
						if lres = x"00" then
							SREG_Z <= '1';
						else
							SREG_Z <= '0';
						end if;
						SREG_N <= lres(7);
						SREG_V <= '0';
						SREG_S <= SREG_N xor SREG_V;
						REG(TO_INTEGER(unsigned(DATA_I))) <= lres;
						PC <= PC + 1;

					elsif std_match(IR, MC_XOR) then
						lres := REG(TO_INTEGER(unsigned(DATA_R))) xor REG(TO_INTEGER(unsigned(SOURCE_R)));
						if lres = x"00" then
							SREG_Z <= '1';
						else
							SREG_Z <= '0';
						end if;
						SREG_N <= lres(7);
						SREG_V <= '0';
						SREG_S <= SREG_N xor SREG_V;
						REG(TO_INTEGER(unsigned(DATA_R))) <= lres;
						PC <= PC + 1;

					elsif std_match(IR, MC_XORI) then
						lres := REG(TO_INTEGER(unsigned(DATA_I))) xor CONST_I;
						if lres = x"00" then
							SREG_Z <= '1';
						else
							SREG_Z <= '0';
						end if;
						SREG_N <= lres(7);
						SREG_V <= '0';
						SREG_S <= SREG_N xor SREG_V;
						PC <= PC + 1;
						REG(TO_INTEGER(unsigned(DATA_I))) <= lres;

					elsif std_match(IR, MC_BSET) then
						lres := SREG or CONST_I;
						SREG <= lres;
						PC <= PC + 1;

					elsif std_match(IR, MC_BCLR) then
						lres := SREG and not CONST_I;
						SREG <= lres;
						PC <= PC + 1;
					elsif std_match(IR, MC_CP) then
						src1 := signed(REG(TO_INTEGER(unsigned(DATA_R))));
						src2 := signed(REG(TO_INTEGER(unsigned(SOURCE_R))));
						res := '0' & (src1 - src2);
						SREG_C <= res(8);
						SREG_C <= (not src1(7) and src2(7)) or (src2(7) and res(7)) or (res(7) and not src1(7));
						if (res (7 downto 0) = x"00") then
							SREG_Z <= '1';
						else
							SREG_Z <= '0';
						end if;
						SREG_N <= res(7);
						SREG_V <= (src1(7) and not src2(7) and not res(7)) or (not src1(7) and src2(7) and res(7));
						SREG_S <= SREG_N xor SREG_V;
						SREG_H <= (not src1(3) and src2(3)) or (src2(3) and res(3)) or (res(3) and not src1(3));
						PC <= PC + 1;

					elsif std_match(IR, MC_CPI) then
						src1 := signed(REG(TO_INTEGER(unsigned(DATA_I))));
						src2 := signed(CONST_I);
						resc := "00000000" & SREG_C;
						res := '0' & (src1 - src2);
						SREG_C <= res(8);
						SREG_C <= (not src1(7) and src2(7)) or (src2(7) and res(7)) or (res(7) and not src1(7));
						if (res (7 downto 0) = x"00") then
							SREG_Z <= '1';
						else
							SREG_Z <= '0';
						end if;
						SREG_N <= res(7);
						SREG_V <= (src1(7) and not src2(7) and not res(7)) or (not src1(7) and src2(7) and res(7));
						SREG_S <= SREG_N xor SREG_V;
						SREG_H <= ((not src1(3) and src2(3)) or (src2(3) and res(3)) or (res(3) and not src1(3)));
						PC <= PC + 1;

					elsif std_match(IR, MC_BRBC) then
						if SREG(TO_INTEGER(unsigned(DATA_I))) = '0' then
							PC <= PC + CONST_I;
						else
							PC <= PC + 1;
						end if;

					elsif std_match(IR, MC_BRBS) then
						if SREG(TO_INTEGER(unsigned(DATA_I))) = '1' then
							PC <= PC + CONST_I;
						else
							PC <= PC + 1;
						end if;

					elsif std_match(IR, MC_OUTP) then
						GPIO <= ARG;
						PC <= PC + 1;

					elsif std_match(IR, MC_NOP) then
						PC <= PC + 1;

					elsif std_match(IR, MC_B) then 
						PC <= JUMP_ADDRESS;
						REG <= (others => x"00");
						RAM <= (others => x"00");

					elsif std_match(IR, MC_BZ) then
						if Z = '1' then
							PC <= ARG;
						else
							PC <= PC + 1;
						end if;

					else
						PC <= (others => '0');
					end if;

					STATE <= S_FETCH;
			end case;
		end if;
	end process;

end Behavioral;