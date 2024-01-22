// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jan 22 11:44:30 2024
// Host        : Maciek-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Maciek/Desktop/PUL/mikroprocesor/mikroprocesor.gen/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_1/design_1_c_counter_binary_0_1_sim_netlist.v
// Design      : design_1_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_1,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_0_1
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 24}" *) output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_c_counter_binary_0_1_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
WpplON9gajPqZwUKldyuoeqmBpIPSBxYcr5JWxrDlqNhqbxliKwmPwmbmeArplvGzrWaKVJ8yMLk
xTgTAsmnRg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
PywlUwtIgAXcje485P53GElPqY0h5tEj5ZDYGG4C1L/pCl1vhbCpI4Lfv1uBUhTCUgt0vUUApdRs
K2IImoVdVbz1EI11gNNCxuGNEsj4QbnWfiiRUf8TsfVO4gWgHDJkD4RJc+jcEVx/ZrSadMs2mHy7
KNZCnUFKCidfdRy/hkw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
unxmOFx/kGsfl24PCNNEZkygDDk8LvPrdhRZmBKwU8hEl0IYKnNbmVzy0GX33C+cHqleOLdJYv/h
wKQu75v68Cl8qlEV1Vqfa7UnK7q4w6bLjBa9BHtnG7S/H0Ywr54xnAXnSKvxTDfYX2sDgkcwSXoh
X0q3YhQRNlz6nKs2p675XjlEojeW92VNoWv8pHj8MG/qmJ8VohHbQpf0YxozMcZpH0CF/Ozm/fua
Vyb99q8DdEkMUxP21j9+F/I46Pbkcvq9zC2FY4Mv+gYZfH461p3qA1P0UNBQRmRRkOCCOAxz3PHk
qsrTTWDzAK0GxdzwQ7cbJFKBbdBVaV6+4memyA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pA50PpjJaJ8uV4EV7d4QCm5ucA0irsAJKsW/2yhM7uxfdfY6+ycy5Dlu6AXQj787AwSOkZjihqnA
0ZuEvQsnWN+aN5ZJgO/zI+HLHFGLXVZBK4YXwqHRk9mh8mtXkERd+D/Ig8IyNAjqeNFZtCo2lzge
AowqsmCoC67eYhNG5p9fzPjDy5k+MEVGOvXR621zFn4wRLcANXbLLaqTgDI902JfKeuW3HE+NVjz
0kcqt1g2MHeO7vwLhiZFHoP5uU7phxW1PW5Y7GQhQXmnbxXYl2WKNQoAt9enH/W7IaH1Se4RY/MA
HR2SD6NxDpfgAqD/XrFGW0hzhzJlI6XWA2wiLw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z2C5b5Vf7eNgxsVgM+blog4oljuJGPE5amBDDw4IFWKEcJNxmK8iNsR1/nSU618rRzWshK/Fg8uY
H1Fs2nnnxOsbeSPfDz60zapynorXwzsi0dI/KtefB5PI8A9PzP9LZmPF5GoKgCyeO5RXGRNhstIX
p1ezoG0hvuiDRGjlMKc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
et3u9Nh2LCj8dZdn07LM2qUls9+keyt7JsISbFOsxR6cpH5B16zv97Rzwn74yMYiUBGAvUZ1T1v0
O4vr5rGCW0AQjy4M5nemZ9M6vuyPMPAob/tFs+R7Jb9fpt8qHPEH64ni3rOSEVPe07L1FARbFVCK
LUHHDuIaqTmTbQ20cYPgWi7rOJGYZaRI6TwujcBF5oJDmg+gry6t509xfzd/HPgX+tLX6NJuYBCP
ePAG3UjlqodSXw8U64081MNLzzmsSrNe2EnZfEXP2ODfphEFJ/9pYKdR8lyWMJQ6+Pu3vdvO+IIy
c0Cghu/ZzVtvJ7/zrgoR8hCFeuBzbeRvdhR5Fg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m2Nc/hOcqeBJFQqyL9SEkYAeLvPo2q4UIb79AxfyebsFVgipkPXe9Fr2Ly0oEBcpASNJVxE/qNX1
ncav7fcSQJ3AUai6lNvLIkrtdkVBATFfCbWr3T9gTPaXD1ZY1pnli57FrU8DixIaFRoeIg2lfWgX
Ejddks6fcCByoDETUKwOz1fhlUulegwij55Z9od8zC/RPnW2JzX7L7mQWAla4j7M4VzHtS/8AzAP
IcrhT+J0DDWfBDrYcYDo/5IL9X+cSnPrj3CzqrbyEBZ9J0tyVT8g9z9bEph9htiA9EuYQVcpbIB1
qmVC7LtsXr7t9qeijbb4dFcovnX3H5CRc3Xybg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UPKDuDrUpCqZq5As9ryjcITL7qO0/Aj65ai6MGkRJ5fsdrAIoRtKd/gZdMexAxpHxy5h8KvNWciR
45oibPZHqHo46BRzAtonK7cDtSPx2RaIzOvjoexdDjwbvwPqiCJhCul2J8EsDU1WPbSUWx7vpKn+
MYAq9BJrKBfkewHr8CqWmQugmrAbTxft49DV5mIiIEOhVCOTMV21e+pl1SODhXcx/d88X1XTvMY+
OkEL+ZPfyhoGAg9Tj5WjHVoAT0XcCjHObI3kOJqt3hPr2RYm1+yghuhT5ntdvMHa6iEBG/En+ah4
sN9yhdXkV5VsiSpxp/EsAX5tQkOiDZCtXXHNeQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rBmtHpx5e1XZPx6PBIEZ/58/PYTolg3kUSJ5yidwAgHM+vcWKSyMd/LXtLj20j7EpJVceIapdGYF
4nkL9OaJnw2p3gO+zvHk44FY2WlPcGjJ9qy4Z8049p1vFldJbTCwn8j2kMzXfA1XD0ll2p+WVUVI
EDJhvfyMnZOPwoecUCmOKjFhw7Oe93CtOZTTQI+gL+gADbsYMQ4cpMYr3spVh2jDfyhZRzb4Bm5h
ZlvJFfItmnW4/YJNUbQXoE22pLPLOaoAtOONuU5fFYk7jrQlcGNSRbnIf7aS7oW0kJmbes5lzfoD
QmLyp2jy+Pig+uTYrKUU4x0GRLNhdkoO25o5ew==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2448)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
R+TTV2BAhe9Ek8IveLCAIK+vyB2qa4TorazWyGCbrxCKkVhTBvAD6RqPeP/JqtRuh2zDPzraR9rT
gUyNSWD83A==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XM2mYTm+gCT0AhW4S5p7IlzH34WHm/fa2tLSENK5xQp44huwLBqk+dBcYbe4GM+6wqA3pzoUNE9T
SluI3P6DpsOt14ispiaJSciB+VdlU+Q0e63sKyfq++TGO3CTW5OhLIxojUbYrTbdY4WbGkk4yG0Y
qGwauBBx1uBueCA2GC4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M9U+BjMD5E96pT2zTDB1OSiHn8IS+G+aDNa3MIF/jeClLSPAOJwufjuzRcyAtwx0354Pb7AaFOwR
6CcoWPQM1dcUC6avyG/0PRrtZP/KpXS3/9PiWsaFHPYVLfqBMCUDoraXwfpfMxmOy8hD0iI6TtWc
j1xJUXVsbv+kqOeTUloYmwdRx/8cs46FvZfnFpiZXMFMsTsT9zvmCyNxiZefgFKT064BWsCkg2fa
W2IXperFJQzpE9mXVwGSjl6xDUp55esPyEPcDI4xy0T+q2KtBQj2Qn2DJRZ8DKAvjXNQmo/tbweh
l+RGgbFge035kxDZ/t5pFweR/SYowAMdG2yOwA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
absLoVdCG0/WeiZ9M4NtAUjz+XnLze4vahkoVw40DL65GHoB/ikdBh+LyLQ7V3LckxaJp7Ihe1ow
2yXZZfuygvynBc+n/CI1EDwjo64cUTgVLg6gqySahs3D5Xkp8kFBBxARQmdoErJqqhefej6SXrxx
13OxNfq4vRGx7YG4l2M61gUhVtUX9poQdq5dxitmrLXD1kpdnUsj/YIpVBaLv/TBn9G44WiyRNIK
ojx9q2JyYKiWBfcBh+fpJV9PudrBUPMu8kvWsRizFr+r8Ya09D3o9iJUZ6FWOBiFsidvZNgmp1u/
nv56cp+qpaTesLtwmKiZbrhQtq6YXQvzPpDQXQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
t2oJ825g01R4DfbjT3g+VDPmL9PAyVC2t8Ozl94Xb2xucD77bNiPcvutyZFkA0lqWfRMp8Z3kkTE
OOo/FpGS3c1SP04/jMKLZD9E7DL6iVBRfxa3itPHxsSD0RAP4yPHw3yCiIsmB0q25x8+so3h/QOv
DKZh98m5ku9UnG+pY6c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
koDeaCPE+GNu9rMKu+nnX8UvNKbOa7mKCRwRUXCmZNo0yL7JuxnKQiStr89+6Ws9bOIbY8P6XKLC
WoSokcQl2MIZuh7gUJ+LQSPTB9HIkHPuGGPibAaiYY3e/6TBvv0+QG5gTvuf18Nz0UQyxRzNBFY7
2e0fNw+zoh4XJubbVaqqBBqTNyIM/naqx2G+DBhvJF/RlcpsJUe2eVt+uttis5ukRD1ndenp7rvA
+Ub6MDtoxunfFJsXEQ8QZkuZiT5XfcmJdkquGywSafJqKksYNJZpGleQnak/ePqKq8cYIbfpqOo1
MlqTFX2khe/WU/cqsW+5jXmRAgWueTOvg5hW2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wZaMVki09KtetQFaQKbOEpc8bkgxHSc8zyuzh+dwZ44uN2hbx3K7ITnC8dDkn3EMZGwk7C0u4eBt
eru14n5jQ1LfuUg4cKuwRNAgFxc7GaymqPYSRK9OQZHWZ+w6Alh4X9YWb6UVcsv4sCJA8YT9QeZ2
8PJYA3L+OY2t8Dcx3JcdLeVgMWDrP/zfpXyfMdPpwgBSSCqJHFsYdlG06onoQq2DDJ/SpC0W2oHU
JJAOTss7Cf3giWx2XTrorU5k4KbClTaEv4QAsogatkMf+oa9OfJQg5b7OUNbNqSzTV2IvRXtKIBC
N3mFkAtau93JXZzbow8bF+Y708RmUyIR5AX9og==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gidhQdKtgCKZpycO58SKONz/x64JxoYiDvm7CY7FhAgR8N3zqVR49qh/d9ImLGjAjXhz9ISSvhiE
1TpzIsqbVIoSEHhHCsw8fW3eNfjSKG9+5c0qMghoZBwnf9txWcso6wczPV8wSYfFgOnId+/H4w2u
MtSdrp2j2HeGCN7hmduXDeRIcLF+ekxNNZVk0wscD3yxYdFDWscebLgM1N+Cx8uwWvloVVe1fNSl
IBecuxue/tBnCdqw10D1fC8gGorhdNUhO2bTYqZL/+voIIAXkux7Z0BGx6B2uSJYuZ0j2LS23yyk
r0QDrL3YOpbEPBbFhTy9LQz59rkITBRhVeBqVg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lv7TtlI9EkMH+4ifu40NSGcF5VLP+fQr0uBXzvHjgpvggoEPEBlbTyXFtewlIbLNuHO4GjqSxFa3
oGjcKGgjJ4JKEHh9NZ/42sDCCnN1TS1zrfhPhpg3aJ3aGsOq5GxB6oAuNGvsTC7HgKk9lvgZfAiC
9ubfhd8fCUCrbS2jYuGLkpNxtwRxEbxLfMa6l2yusSJt8g6sfH0aGGBJWZjKnUZ1SyA1DmzZW3ox
o1AE17uwesEX5+JGPaqlsN+jLpbHhpv24GF4NS806LjJrXOO9qXbZScc78Z/R2xMBhLYAC0AHR8o
o8hlz9kYq3NSGSCdEMOcxNjVxDMYBrdZ+Lc+ag==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R6X7DNIB/+fA0QQwjDdQp5E3SoqTpRz9KV3BQ35e1KLaAGtbyBGNU946FysGmAfyDz3RVis3Iu+m
Xbl+FbRioy8A/I5liDc/1PZcfiAXqzT7K48KJApvCV0fiqXn6zNKfvZ4v6SiyMQS0nQ0Q6XpTls9
gaZ2rvaIkMI+8AbEnomCUNso3j9oLLmflmrc9VW0IIQsmpi8knmbnolbBLwuepRvcjBbSpRAryBP
CSwrdZYU/XxHkCZXED+/qzl6dvD/D4BvJZgOyQpARftnGGEEOAxKrOVOI5BNc4G3r+sXlMU4EOVJ
fDEw74iB8P+MVxUeObmRUbAH3M5s7QMsw1wVNw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sVhMWHlFAtoySCpR9HPhzPc7PD3W4wOZEhZihcC9uD72+ggv56zKQcNuPYJhFCKpjhUytCsxi0Vc
oxMGuSFXXqdqHhreGcfhoLI02qwn1Ulc8gjwJPc5NwjlzgbP0aIOUc9kzl2yyGy2oAFTKKAs3scs
OQgB8tQmRj9A9KB1Ub29dpNFTTHRO4DRyrs6GljK9YQn2yAuDs68PZFF+cYjoIWtjOyG140fMXXl
3c9qcpOJ5XpFEr6SdI5BoMvBhxBQv3FRp2HXwrss43WJzShapklPJSC/v7/pjp8Pq3IvdVpAbaTu
nLWwj819tJ14bitoa0uFa9H81OhaMFda0tVHgw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14032)
`pragma protect data_block
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
1dBxeBTqLFaoxA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
