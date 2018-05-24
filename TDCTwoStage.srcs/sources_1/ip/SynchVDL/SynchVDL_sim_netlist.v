// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Wed May 23 19:55:43 2018
// Host        : hal running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode funcsim {/home/arkady/Documents/Vivado
//               Projects/TDCTwoStage/TDCTwoStage.srcs/sources_1/ip/SynchVDL/SynchVDL_sim_netlist.v}
// Design      : SynchVDL
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SynchVDL,c_shift_ram_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module SynchVDL
   (D,
    CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) input [4:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [4:0]Q;

  wire CLK;
  wire [4:0]D;
  wire [4:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "00000" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "00000" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "5" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "00000" *) 
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
  SynchVDL_c_shift_ram_v12_0_10 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "00000" *) (* C_DEFAULT_DATA = "00000" *) 
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "00000" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "5" *) 
(* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module SynchVDL_c_shift_ram_v12_0_10
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [4:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [4:0]Q;

  wire CLK;
  wire [4:0]D;
  wire [4:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "00000" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "00000" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "5" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "00000" *) 
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
  SynchVDL_c_shift_ram_v12_0_10_viv i_synth
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
iKzmNsIIh2O3AF32K7d4RXcwJ4Kmvlh/7Bn1dD3euJs9ZUrPYeppMTNlWNIvVMo50FCWvzC4nhyI
uRmljRJPF2eDufJ9hxmqi81HzH5N7rM8l0je1W1Bzc+zNq+87epknFUez6zdGvIKeDbgm5W11SYR
LH9Ycafiofdpn1FTDxXrJLcMYlo+OiV7jNQrAOyhRH8Zom8YsTgkMcwMPsopEYVrH9NzrDLM7/Oh
KVIWMURBKGJvVmzU1dhgEWeLpFGVUgFTtClIU4UeST8tIvffySN5mbYpPUE7wuSQUW8WfD05OPoG
sz9X8MyAnJlLDhfa984vUyPM5wXSxdXRrg5oHg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
tB0BIaayi2CENeQM46VkMGXx9IvFAJmLu8vAaW6ACyYlLcLMC0Vv/XUjt2oJF6SUHqEhFqjAtPuK
RtOwaG8M5lSGw+v813gRJIJeTXMx7KULn12/7syd2C9OHtVpTO2DoMSIAoIQ/dv0/8f0Y4/71UKS
zF6asvQG0AHvJ5rzqplJJT9TfQkc3u1NFlMw4fAsY70aoMvAHziL6zq9YGLPXoVNIlP4PHbIX0Hg
Twt4eTztglftV9VDNES6DqlV4uFrexcHywyqhw5cBbKLTt2iVQKmg9EOnVbsO8ANrsI6a/C4XsaI
CkH3X6mfNcnvUQMHb4e+Y2PuBVrcamN1telckA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4896)
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
