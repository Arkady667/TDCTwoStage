// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Wed May 23 19:55:42 2018
// Host        : hal running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SynchVDL_sim_netlist.v
// Design      : SynchVDL
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SynchVDL,c_shift_ram_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "00000" *) (* C_DEFAULT_DATA = "00000" *) 
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "00000" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "5" *) 
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
ou8WUelcuTkjKCn4aQYAmMFelikCLbN9CljIZVcTieeWNRAbHAEoBu3NrLWAEOe9OvjUijn6YO1x
JylBS+VzaQ7FPqsJ/oVhUAljyblwtmF0SdPlqZPCDitjNccqgR435gougkmA6GUIbinZmwVbON+I
KBfo558WnJ5jGWMI8SJ+thiBh4QtA9rv18D0RtvYOuIZOxxIExaJNPimJfW4UdmMiSp2mvXA0RmD
Khjmr62TJzad2hfuzivfPqd5ld1idMQATFClGKTdM+M0dVBl0gUhky+N9eIGBx+0jYoVNiL5qyW9
js3PChVYrUN9mSRqCJEm3DjyXRQ90v2xjSZRDg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
oGoCvlqOEARkUXOo1R85IVVPSG0EZAE4SJ9fIBuRufW5Zv+uqUWYXwMic0fi+rNnBp+vmoSL+B/Z
sSzMnNBRmsDd8UhCxx3lcLHhv9Cmq9UW4CghvA9YsyUoY7Y4agwAjNDiykzStw2ebI/oMZht4qaB
ncfZqi2oRoGpIJhPA3DCL/KXJf1LsAwqPRGqiXSqXf+qIc1lm+PUiZWdyjLCzOEWJbOrlpSuum/9
66aSxvonBgCAAeJRg4iobE+VBy/Pcu/Le1B85/M9E97Lr3ft/Av6lgLWvyFiF++I5e1uiV47mOP3
UstYGwK4mo8GXeEAgxXWmrvh2Df7/h9fNqfQPg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4912)
`pragma protect data_block
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
4awHzsP9Kz1/CA==
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
