// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Wed May 23 19:56:55 2018
// Host        : hal running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SynchTDL_sim_netlist.v
// Design      : SynchTDL
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SynchTDL,c_shift_ram_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) input [5:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [5:0]Q;

  wire CLK;
  wire [5:0]D;
  wire [5:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "000000" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "000000" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "6" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "000000" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_10 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "000000" *) (* C_DEFAULT_DATA = "000000" *) 
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "000000" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "6" *) 
(* C_XDEVICEFAMILY = "virtex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_10
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [5:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [5:0]Q;

  wire CLK;
  wire [5:0]D;
  wire [5:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "000000" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "000000" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "6" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "000000" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_10_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ApI3eFfJuNrZw7QeGh71Bg+dMBk5BENu46Tk0nBUpj2PhP2bzi0ios/saw9G5N1nnc6pbVegj9Sg
eEsr6BHJUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TRqHSNUf9hrHqUBSivwolOi75ixSMxBvCGZPaMxEEtZNtI/ttuu0L9xOaHreA1TKQZdoAwJAzTQq
Z0Rx9nBDI/FnNHh9sI8jNl3V72cMQQinRq24u7clcKec1nc31NcBwz2Lu8SokN/rQyOwZZlLksAy
7ab0MFB4KhL5jTCfgQs=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Xtmb2v2WPsCewWJoF3WCF9SZQeJqoONWnYZLG8qwqDQnJvpZRMS9trlsDbnPrrhc7HeZOyjIB0Y3
9GFFhglWdD0aiuorQnQZ7t1Eyb3PT7Hq4Dlgb+Yyqh6o5CbIzX4rLBUPnl9xiijoQPq3fN1D3E0h
j5BBtH6m1siTAICTtZU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iVBzLzZ6H8OROYOi2JdTMQqDFo/s0XDpfWOn1p7+3cfTD7NCJozI0KhypkL47WQWk3ZReLkNau8e
/vESWyHjcYjqM6KaFv4SB2+GqBMwHqUvIXUJO1ToeI3zm5BEiPw9jQ76B1FueF4kqYRCPpNcnwBJ
exm4V4UA2qfmn9RMsceI5IGk7vjqxg2uyr/8j5WIPld1KPa0Rua3aliSZJZL85V7krEoZ/KT5dgF
/MZJgpJrdDIB25MYT8JiuWD6eDo73RzZ2SDvG9IuvhQ+xMm1AReaXMCf+PrhXXCu4NOsquLkv9Wq
kHJR4Nx5aXHky5O2+LXOv81iGY94QeHIDHTNiQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lv4Sbm4uEEo0mDLqn9MlaLAu8MwfXUvbKPA46bcJZlSejp4Oo+X6LMpFi8Q8oZTN/CDo/hV/GxYN
rkF21HhOQjFcJSdXR8+vR3f46LrScRw60MFhFr1FKWm3S8AXAVFVHkyjXb6HYegTvsCmffaj0fS2
qKzbMjb1Y5mlTjeP9s0v2L493FI66rWeLrylzC9wJ+VNr2nOOmb2V4PfVEsavAN294AM0qjuCexn
Et3w7sKP9O1s4Np5uLUF5p8wliWbyzMp6+/YffutfEWRnoyJvvGgn8+yG8qP74hlkmpog1T1ITfQ
bmmZ+VdUhYuHPTjhb6M/0h01htvudJGEAgHCaQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ucY+5+8ewXhGQPso94ZHpHY4wTXBXTEUo7kqUsrYYnvovYXHMHc7zY4noPCkCQ+bgnozLemUtMgE
0x0JG8nb5R4mcet6bq6p7j7iF+sDXrtL3+CHxei1p9EWBEeCQDlONef5rjuphISO9+u2z2Bx+99e
v6jjBpp4slGeHdFO4aosMKezIt22sYhOR76aVrpylhDbv2S/lsjyrwZdhen3vTDuXAqlvyRH7jNt
X39eoOo7cyQ3ckLUqhYphDmmxkSqKYt3iW1ooZIVYd4JMPqa/9y6vWGYHPAhXxLol8lNnGtngFNN
KurC0aFm5whKrfXD27OfKtjpynpLyGJPsWOGbg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
oprlf/fVnvYz2B3/IcbZExhPRj4ovLJjpdK8Kd3cr9o/RQ8NP2KPYoy2/PHXDDhJuV7A54N6XXs8
Sm7t2XGkThMABhDOHGLcuFPi+Pm5PN9Jmbm7+/MuA9aKWxhYzj9jsTKl+Hyt3cnttGrqlNokKPdm
KR2MgqPeHtUUNNfPk0cUlYNYddlu75LPhhAknevy1sJeK+BLYtLYApddsNFHn3wyAeP8APGelG9+
Gq0+DHRw9QMu433rC+uJ+MjnELcQ2yC8GeDIWCT406yKHeUjsDP9CGh1Zz9F6HwnQXMhIBW/b6Pf
SDRw/kzkJrB4U6I02pDunAnWKlBB2LBPrjWWdg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
BlnB+j/fiG5i7Dsi71zXX4JzExMQl2g2RUrAC1bZV0GTtNUVTN/gRxaecCQcdpzZvXs9dA1EAT7W
uNdQ7xPuU8m46YayVf1xOkKhU8d+EjtTfUcCK4qaoLjBH0EUNKJ1pqpTMeXHpwsT7fM8XCm0QOFf
XcGw3k4hGw0R5C6lFNp3my2UPpg3ByV8voHPUO5xrpBptL2mBQi5LjkvvGiPqKZ+syi5WOlIV6Su
o1vTGZk2KjGIAz4mP0HezW6TA9Nsx09aHMV+tTzNfuUhMZDfEB+3Y5SCgV3FvEqSP7Gaey26yZjE
2HLWIx58gMjrq7G+sMvuazrepae18VVVLj3Aug==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5088)
`pragma protect data_block
1nv/8BJtI+talJt4/PQelyJodscp5a3zQ8+2M0VXziv5Z1RUry4kgu2UT1cg3N5SWL88jcjkxz7E
q0VT7pBhk2LMdSuHVTXgKGingcK3uT7XC+1toilXzPZukZejYFrBHH8J3SsligNyc2O0lt3PpWyB
jep+pTWcRZxFEUrdm0R+Yca9c3muTApLEbXQRObxlqpdGsVyvlndIqwwZnV0SZR1fdDPP4HQMqyG
37aV7YfhRhCGdwsKJYWPu0K4oU4XsbjIy8TwK25rMCXDKDOw91uzggPA0w2Bvep7gkK9HxOn84/F
gwa4YLRccsCrYUmfFdXhnFQTve9lf+tSGStGlsiVU1Tdfsy7G/FStgcdf/+i8xpsQt/py7Go+8Hw
8ZYEvM7x88MDiCfxis8xdhpkvMwW600Es46j4zXUr/k2is7RS8PRwjJCe9zcxjyMzN5hHYhdNof7
0LQjBRaZc9TNoIhhS5EiKNOLtO3ds0Zw6Q5yoTJpEbHDKczncjm+aTi2mgsb/vK21zkHLQaf+ybh
1ZnROi6FPd/dICGUVwbcsnnaDa/+knSl8QpXltUe05xlYc2Adbbdok+dkml7q4K306kiPDwlN/2f
EVDtKz5KFR+gwk/u3hgTElX/2EQAIeJlHdN70r69MXDB7CbC9JNLwGc3ARE0udHk4xeH0o+ZM/bP
GEQq3ryuJnMxRG58D45hsiQFLewLkHXYbeiNdl4zxyc2pNggl6hYd9uTdWwt+jqZOdMCCDG06lfr
S8eLqsKZ8fWvhWWscxlDnxflmZMiaaG10sVGDMPX8i/P9wKf67QQvYURY3UsVHa6wdjdWKCmcn5o
IzK7OsoaomowFJtt2bP7ZbQiZoAtdsue1sE99Xo7TejhHBHJbbCELF4AUzHiOqOmuM70n9S9T82+
qKWGMdgdZNg0s49YdKefOILUwYxMlU/iEcq0SFhBkA6BlpsOlnxeKQpY54JAz+tqDSs8shKT8V2R
43V6dzVKTjNhTPKHSFrXh9TDyhvWB3cZq8cnu+l+0/30FWJMiLwC0mPIKVaXMKJk6omAfy4df99c
YntfFHxYO0CbxultVYeD4rB1m8pLDJu6f02ca71YYlWxhWcrrVjQJ6Z+wdjt7JXRF50nGThL0tqM
RDpeB6kSON0sNA1w2+EDvwju13I8WujOLmtVCDvr/TMgdb37QeEovKe58oFDZlhv0zeG4hbNq0NQ
5lbTwe34/KqcoW90/Hzxzw+Nsxp4A9jUMLRUMQ44wM8+Xx9oqiB8DW36eAiVPlE+A3q3Y5YC69IK
QMkqlqXUPURmD54p55f/hchFcJ4JpWgvXy5mDGhQha2nwn5jyZVja4eu7pbyw7fkg5VxnK4UkaVm
Nklt3LaZUblicTpjv39b/D3YKjFiBHUNWNZmTYG0oTpswFfHsZWrTQqUC3OknmEl0x/8PbEw3dFf
/huM44FR8X09xAf/o0i0uew3J2D+3yohc2nAJn1AUVVFOSm83Zw+Lui1v5TzKO9TmRUZNwKHJGM9
Yy2XwAhSMnbLSo3YiSpuF596mxkiseX6SoZ5BesK+Z/DoN00AMAx4TSJEHhb0V9WANTvGdorGGMF
khJzCn067KSZctRk1dDN7FsuWFCVTuCpOJtKK7FPoL1xTmdARP4rDVxk3yZ1EkRvAJowE2xSi+WH
TXqJhKmdjsFocFR0sReEizod6K9AN8E6jTtTg41bJ/FqwAuglFB17i9CchZrSkjGKSAsl8BE4Jk2
S+AQ1FtY2/cuSDu7/3NwWrnHsZhHoL4ErC43/6ws9WTVBIqP51WcUV+NCkcQK8EYvv+ritFBRK82
BafdJEzMdc8UsWj6GJJpdkSetnbFVi49twH0hbLEBObUU2DtCQnMPvPFoLTMme/JKqBux6gxq6k0
yVhWX7VsgkezYhQyqtx/7dRPWFdniyRcrcIWbqeYMLBqQWmU8NYwzMDNElrAWNwXJ/6J1ZmUsICK
wZKW8rz4rrCC+QnmhMyyTHYRapmar+b7LDRt06Z6RXVULpi3TINkiERgPWhGhfHiiEJyvI+GtHPU
D1Y+Vms2sKAwEvxEeB0I03LEexJKCXcbDpROWtWQ2JqkQuNMk9Q3g1MRVv55XfrBpONhwGMweCKe
S+7SXu9Hub11G6Z+2DDwzxnmbbyMHcN7Bsaymxtmb854qhdJhiqy53d4wj7ScoPTnQL/CtnvgLMC
mtcvw8tEYmn+jAZMz8QYBLnQ6WRp1obNClnVxm9IPTi+qc7s8zLn0003rd/M0CqmxcpUWRo99QCo
XC0MujOI6DbDSzLQU8VrP9PV+/WST9Z93o++wFQtpQVZLH0vm01vDVo1s6PXGqtKE2g8JTVo2pld
NiuheBHILDNrmpmYl23FE0qK4T0zxbnsdGpTKpjwe6Z36BW22YlE3BhtKrksEQZ3Ml7v4udw9+l3
ApR0irYkDF+MXSYPLH/OjBVrcIHmoUQpqYhIjzZpKy3aRYh6WWVDS2BPQtXhBQbBwMUY1kLVgFf2
msQfQ70pG6fDQBJ6Yw9n5yZqehXCvBvTF2cXxwWkNM4grD3MOBT+SkxOG70GEdUVQN1iBCvYjrRZ
nBtynoRtFmQ8D7IqybiXGlBxA5X5zzcqCAl1eDHuLNSYzfN6LLbnPTWI44T3gAPLPiF0GwKnAHyD
fkMq5Nkz6jtvWGaIfNpQgcEITMAxXelC/PAzUtxlc/evT9keIjaAeLJfMA/JbgFF7ywSBgn7wrZr
AiWVCeWmMX+uJQbc1FZ8fy+F+YR51vFJ1pSZCFLAgj0UJUXl+kmWGgxEXEW7NLJbbsxG9S91q9/l
VFa1KpvI99cqEzvIX+YrDaNLFyhDKdP3LLgsaXZGK4nDB77iDKpJegq8eN+FLUzJh6GcNhuHQ4YA
Dni5GyxRMAPQS2tG+BbZwXGq5whoGh7GtHG59uINerH8PlJBF9EYvCungK4SGbI1J5oP9e9SViVJ
hZSHgJdY8SLnOpk+CeSnu3d4oxI0fKLVaynBhfzn/tpnOYJBK2MmT9LsHGhhvfeTykuF3NSaEqie
Vykiebbwz+gBeXrjo2dpvHkdo9/BepEWII6NSYNy8HM/y66j71kd2kJIGhB1ccHtWBHF0G4ScQli
zD6XclkciwSXS8MkL2GY8s5jOx/6XGcsJ6EeSPLuHsBZicTFsyU6z5Td+qH80H4+WoJ5juYh75+X
sWNcxlBzYKFER3CSzQv6IRAins6IXKELtdn7jnft5FYkS40Q5FVPzN3rt6EjBsuYE/TN3ghaWJfS
ZDTBB98wXo7+C/dt56/E1HcG9SHJxD4NMp4WXw2C8B+ZXqJMmuMR65LO4ssunr3cW2MbLNeBMxBo
T1x0fgtm683WySZ/QsZLcvrt+TQScMlaO5LJ5B9buYYNgvedvgz1efgjCA1UR/zG/X59MZ1FSe2E
HW5ZPdr1DSQhEx0KbbPamjngc7xJn+eAzHhA2u2+D74x4Y88HNQ0WORe/sQ58+ZAYMy/M9+QDPNc
NAZsKGB+4BDrr2gMu2ir6ZoJrgWUj2ywe5uiNk70CW1y118qlTT03FRLPJFgJOoIUKQoOUTDLQHL
FiHMWpM08dqkYVMBNaq1/nUvyNPuLxdVXBHzKgzBYxp5J4hs5EJf1Nyg5zBNRHGFyP2xEl0MZRsL
hrL/kHa0NpWF4FRFd639yZBAxxjdolPfdP9LOsNTEPELUS28KZXsofZ1HWBE4EkI7I5dGbOtPU91
hHd+P6qLM7NvY8rpm1Pb+8qEycrCMucXsr2NAFqUX+hVQdmjDP2ZWmtATsgWwI0UN2XD6MZRT/gn
WB2ClgpwPrYnD0zEwJVu3vQqJhwnJIyKKvZ1ntTI1/5G17Rzd2EcxTvO1C6AMdHgyry+gkqmnZqD
AA0uepLZI93qCjJoTjG90xnSk42ES0mR5bvjKMF5ZM02LzKxnUafPmzN55yfxZG7Q0zMnhZvYXWJ
QHfgOCxXpcxb3DkAWyoTYd9ZWSqhQHmGVSoE0C97QjfDm8Fta4m7SZyOqQq5caTu5DTuFdjXaLZq
ZDm2a7OdBw6pCpJBJ8KOPKACLOl4z0jezzM4KfehoSQI9AIGqaT1aeWI5SO4ULdJ7XTdhz7+YM3e
cAJO2ECYePyr2ogen+j3IkpkUNxSLJnRJsKqGrWAk6oR5dOcvSXmcW5tyvjAU/u95eDO+PQGyXpg
c5pSMkM96ckZsmBfkkbuDGJ1aA6iJio4y10wUhl4FdWza2KW8Y4ygPjcb2NecOyU8uUSiPYk4Nut
iHuFnvndo/ZLjmKWFEDDRxiUZtwSn3rsPwnLHbZoapjgMK8DMqwoGLpV1mgmQzNaWWfbwiFzjWHd
PlvsyG64MTZGSspA51VWe3qfYypWZ82sQqu2FmZarDFpfloYqRJ2GwqaW4rUF9LVBsS4AHcqH3N6
NBQBo0PjtJxNTRduUs/T3wvliwb8ks7dgvDrhyUztoiklwjVfNtuQaFKoYiffxj9iUou9gWJyS6B
Oz6SS7At4dOHZi98Q/q9plXXSlX6NgW2drXPQY0BzHbPoVoLlAtyR9UOfx27C0a34NGiTPhLof0e
sSrf4q+bSulJOw0JGhTliBdUalGDKMT94ykp6CoVq3CoO/XNjbe3uGs1vusgH6cY4AaqpzLDMSqe
GXD7zItONlNvaRct7svER4XXkejziEB0Y0NCUFNdD3hvijcpvzbvkzrFIj2kSFXEz6v8/nED5BBU
je5qRnceCLzZGmjbBq6KLfFOmI0ZSWw2IuM0NOewlEWMraWLtvQmkcOLyS3wuFzU9t3w1rrP9AuX
QQRKfBOUQDUPBhS/Lxkqux8uypOLwt+q+R1wVl1ykoYSkUOuKkNmc++FxhRLkUjjCF/2PT27xPh+
r4C2fM/dnKoA2yl7Ohw2DGIUYK5cIDMux4R8Upkbq/AnGm77gXMuF+ONkW4ztC+JZCRX2l5B9bG7
rFrKo6zGuk4eVf7umYkJpIdet4w0Op3TyWQDqk+wOiqs0F0hi1SFpTkosXuJkJOWElB3/dPY31HG
2wpHzHJa2I5ry2+yz8s7WLtdM+PjANvcaOpopjzxg51FGBFWeHVhpIOUttbEeBxAKcmehFtpi9gE
FicamJRCt3HTG2JSoUbo3aXtwKuUY7fW/ejsYcf0oToDVTPoyQiqmFKvPA8md+Rhy3F1AF661h1B
0P5JpjYUTdcWBtZQZpjuf3pRvCSMgdL2HTE8slbuWsvPPDbSVSb9e3JqhkafW2iP/sQCUEQ/GLGu
8Nhrsu8+CM8c/okXSuUSAMtCxpVPYEu7BrFct6K2ZKgLImBspVUycEoDj5WmcjG8TRGzA8E2H5Yr
RN46OZS1DaBdtJe9U+z7sLwSpTs+u/vRJJ1fJhf7p+1D5qbtQ39HjBOeEsN0MaqKXPMUH+D3M+a8
4rpe/yuM9uImijVgivrhgEYHzSHpmWb/3xqO2CrO14o3BMyuiO6DgjbDlHiceWLNyMznb176ny8I
5Bi5FhHQ2I114/tooAx0cIVdUsTG+j8Wtgqr+mojyw4GexkZAx52y0VrMQYoBCUpn6PzClyMSr8o
ZbC1Mz5QDpkM1MUKdyUW0/iezQevLkVOEBlMq+xdAa5fAIqDEH9qk+2brYQD2E/WLCLc3JFkUJY6
8heqvVPsd1BvglyRlLifieXzitDhVx2Gxp/88i99s5ODTfR2tn6dhqhenHy78Lt5voTrXAaN0Lej
l1qnNYPyo3aeMSXh+RANG5XrQdRydgxOOcVlSBYvlbeSsNfEpTbpBQApmrv0NIBu8Tz7VLgry+HO
eCv24q662yFgXdrXkTYLkpG2M0phZR+YOHDRPJ/Qo1ft3mXTm7bSyPQiJlaqyH/WdisrxPy0g/9d
C4DqmgB/qv2Ihe1k/7DIgsg4c5oRcrFZZPkhurYqL87woGrxkBX/sdpRaXV3olnsf7zityTnsBMF
WZ8jGsh6GA3E9xCFz6Msb6oKTgYmgyETbZBqg833ARFBkNe/Zvt9Q/fDieuv4T43+8K/mq4ItcKm
7RNhHJiOqTzCCaXz8d5spgB1D3OhgvN0dMgF51hYuQOoWH0/JxT2+Zl3NO5aYiDpAd29E0Bh6w6b
K89UG9m29UWt2OUbZKycQVvwHRrCotrbInHkBDVKE2RpnJwtzvEOj4LQpHlGbtpljIec/4n0fJV3
ovY5iR6fiem0pslRyMSkUgjlnMAdFdqdg/mC57LJp5jd8WVT7PU7IRuKCws5P+t0H2nCxDDNqyX1
GMmWZ8GsTnmgPqwVq1he+7/A8OWEIVdWcQ2XdOsoE6mLH9RWYacaMH3oiqeJYHthhIJRyI9KQxVt
DgsmxaWF9KfxNr+HKzMv1Cc2SFQ1bQh22xR5HTckTu6z0HA6BQ14D3Ev8Buk92arBIOOidlS/fH+
yJYRjuS5ntKFT3bB+X5RVFChzvpCdfCYX+DCFIh6AG0puqxct9CB9ykamQCs/ufmwyXwlcVz7NHn
khZSnhwB4TGcVi3YFQAA+1fJoHakqwupZLGBd3mQQJTVXtdZylw4XPaOohy3lAFJQARiWT3o0RoS
rEZhfq7swi/3HWa65011bL8rLYY2yOGbghp6eQ/FG6PyC15sHeTDK5OsFEs/MBMn6xZQ+HLt+BfW
zgDe2ln+C9Iw1PIByO4ai2yqY3RENyNT/CubaXj4hnMgJumW4r8ZV8YLvWi1y1t8HqHdZzaAvCUK
LRrFQSBgVYFN6JPsTVsZx0nH15D1XSO8peXWdc3lSz1LJtnTVUjBYrleGkBs+6W5eXtD6N1mFXN5
6DvqOvv6RyWAUhE/0EQd
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
