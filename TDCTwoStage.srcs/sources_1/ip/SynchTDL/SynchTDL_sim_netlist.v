// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Wed May 23 19:56:56 2018
// Host        : hal running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode funcsim {/home/arkady/Documents/Vivado
//               Projects/TDCTwoStage/TDCTwoStage.srcs/sources_1/ip/SynchTDL/SynchTDL_sim_netlist.v}
// Design      : SynchTDL
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SynchTDL,c_shift_ram_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module SynchTDL
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
  SynchTDL_c_shift_ram_v12_0_10 U0
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
(* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module SynchTDL_c_shift_ram_v12_0_10
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
  SynchTDL_c_shift_ram_v12_0_10_viv i_synth
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
CyLXZWlsoXi2HdHZGRu61JdTLVo7PnozNT9W+J/Iugg7ffdbx6L8HbFS0psn8jprJZ78mFySgABz
sw0q7S2hqJANdSDIdtXboa5EWl2PicnoQd+ifZo+5T1jpw5+3BlQXesUddvOuIiWQlhDK1p6x/K/
f1t9YQEKjfu5VHyHUEKer2KpoGVSIqZmNk/A7POXOaRhzprZmffRtokrHajkilc8gcinM4r40Mrp
FUudDvfW054WqIXU3RPKpDmOjnYNSSr9e69izwdMpwLcEgat+7xeSYnlaOwXqqWMoZ0NHhXFv1un
JRla/y27s0+qd3kUwEj0QCqEwsy/KKf9by7PAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
C2mczO5tMCevO505Z4LOffzlVWxKfdT9kutNGkZSGevoD1f8njtkjFWPBH6g4VEqwSQ+iOY7760y
22nVS0RkJzx5BaSCKgxT65RKEhJHZHT8/4ADogPPv7NkcXMqjKWyo2i1k0vOloRrK6XwW5oCKvHQ
ZFsrfP3IpS2b2pp244KqvOJloH6xh+Nhz0WvCCMHN9O7elI5JpXQB4cacePuyGWYj/FwKXZoDxc2
WKPYVvxPeIHxpVPdt1WGxRQ+zEu8v6FJnHoQhMCIsq0kgfYFKsJlobf99n0DOOuOXxNXW3zzb/W8
BnNy6lLjIqFmymFcfctCc1nleec07D/LFG9pEw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5072)
`pragma protect data_block
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
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
