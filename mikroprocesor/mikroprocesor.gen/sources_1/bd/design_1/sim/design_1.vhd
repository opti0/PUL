--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Mon Jan 22 11:50:44 2024
--Host        : Maciek-Laptop running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlslice_0_1;
  component design_1_c_counter_binary_0_1 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component design_1_c_counter_binary_0_1;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_xlconstant_1_0;
  component design_1_seq_order_0_1 is
  port (
    Z : in STD_LOGIC;
    INT : in STD_LOGIC;
    IOIN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    IOADR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IOOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IOWR : out STD_LOGIC;
    IORD : out STD_LOGIC;
    GPIO : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_seq_order_0_1;
  signal btnC_1 : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal seq_order_0_IOOUT : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_seq_order_0_IORD_UNCONNECTED : STD_LOGIC;
  signal NLW_seq_order_0_IOWR_UNCONNECTED : STD_LOGIC;
  signal NLW_seq_order_0_GPIO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_seq_order_0_IOADR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of btnC : signal is "xilinx.com:signal:reset:1.0 RST.BTNC RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of btnC : signal is "XIL_INTERFACENAME RST.BTNC, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_clk, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
begin
  btnC_1 <= btnC;
  clk_1 <= clk;
  led(7 downto 0) <= seq_order_0_IOOUT(7 downto 0);
c_counter_binary_0: component design_1_c_counter_binary_0_1
     port map (
      CLK => clk_1,
      Q(23 downto 0) => c_counter_binary_0_Q(23 downto 0)
    );
seq_order_0: component design_1_seq_order_0_1
     port map (
      CLK => xlslice_0_Dout(0),
      GPIO(7 downto 0) => NLW_seq_order_0_GPIO_UNCONNECTED(7 downto 0),
      INT => xlconstant_0_dout(0),
      IOADR(7 downto 0) => NLW_seq_order_0_IOADR_UNCONNECTED(7 downto 0),
      IOIN(7 downto 0) => xlconstant_1_dout(7 downto 0),
      IOOUT(7 downto 0) => seq_order_0_IOOUT(7 downto 0),
      IORD => NLW_seq_order_0_IORD_UNCONNECTED,
      IOWR => NLW_seq_order_0_IOWR_UNCONNECTED,
      RESET => btnC_1,
      Z => '0'
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component design_1_xlconstant_1_0
     port map (
      dout(7 downto 0) => xlconstant_1_dout(7 downto 0)
    );
xlslice_0: component design_1_xlslice_0_1
     port map (
      Din(23 downto 0) => c_counter_binary_0_Q(23 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
