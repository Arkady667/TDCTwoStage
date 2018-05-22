// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Tue May 22 10:13:04 2018
// Host        : hal running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LutDelayLine_sim_netlist.v
// Design      : LutDelayLine
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LutDelayLine,c_shift_ram_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "4" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_10 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "4" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
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
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "4" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_10_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
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
jbAfnJ0v1+WyXFyoA4HPEEFIjct7HgnI0mu4TSa25NsNE/pLj2WtLSLh+MgbV27MIMC9UvROBVjP
gqB0QczG1A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iArFgKcNA28U2Eexs8OyquuJbt26oJGHI2dVz82DefbgkIzwBZqRgMwV9QYXm3aSgPselv0tTo5n
g01rsqZEeGqnYZbTBqWQoIg7HHNsAobFWltw26z04KJTen3TN34K5FEB8uoz2RWkigJqGWtmFPf5
0LfPAPn1r0GZJF2V37Y=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Fn+SZPTjAfffsgcrEnynRmIKdcysZiMgAm4t45a80RTQO/upKBokh7+MXzpbDkyg0TPtzn06JI7W
PAM0XFAkpOgjpT4f3CGMfDqNVk15KN4lgWq+YFoni+IwUxQe1pdFYvR6mA9pXmIe2yqiRnhO/VZi
GIL+pupoQnmFpmpCErQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j2RoUfZbcSXmNIzxefei/9VueCswS9iqM6vR0gy30/l0lsabB1PnK8/EGfqhLHWuljQj/btb8BxZ
iJUWbspySxj2874/wZAqKfeErsEKhr35DuI3pSf4rZSOjyLWEaUsgwUy7Z+RaiU8xGRrv01+HBOb
1FaZei3Kf57I3zGcircXpwkHdwkW3h5c/ZNQ1AvaH5okCT1Ca5AH3+b+cLpc+m0TTgWWZuRY4cAc
9r4kxh7LsaspJoAkbkIlkJeWcuzQP2uuUn1THyZB8bz7LwrljiZ4KVd1rMDA7u2kd1vVW/YZNUhk
B7lpBrnHngJ+C8XLe9Ld6pgZaWouuy6YPEn5Uw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pw1TRZ/vl3ANpl2F4u8LQ5ifhzF0xWd/IGtqFEz6kU+lVygFOiabJ0QxeiyiyIQ1polveGf1HnVu
QthLjsqYV+jh8HigpspBEPPrp9iKqON4iNNnTW55BkbEX/8wUAQKcrx3/GaUIyYeXBkM7XXzbMTw
13gppUFc9YfWn2ORjNaHgk6333CMd8CBXXvYs191nisVBSnZRBu26nhpKUPegoovXe6lszRLfcqg
gJJUywmOKg9v1mbPIj9DFIRfJPAZ7gTQ5ICFVApYL+qzyTGl2ZgQNnWms9NSILbKwUyMQ++bepJc
u1fPdlRL55RchnK9cii6NJwsNKLkkaE5yHbZYw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bliYkWBfAu5u7gMOkHFrEDyrD602ES2dC5b2Mp6Ja0IFKckKKXk7Bgw1utw617aNUpPh4s08Ttfx
xRSnsQO0XXdGm7SgNrPaiqIkwg8w5ZjdBFsx/symDCtR2CjTXWcyYeqqRv3BbWZTAQ4qRjPg0B7J
YuVZ53jL2vbNn7z4opAiMZ7C4uXnVveIG8flQoOdhfZBvELa0kSGgz/3DGz4fmoTUz5+MJQlVtQL
7dcffYHAt84qk6zzPtSwshrkJbh5k6Vkc6qYRqqHuix7G1hj0/+oMAd4aZtYIYQKl0R8RXunIuu1
sms1PFkGFS9jsZu1EAtYAzTT8Qvra3RyX5jTSw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
TU62kRqu/Xu6wyhDayGA3mj4+leTUR29QIq28EfVKMoyEH3KKTLPSctc8mgxm1tSpuXodM2KpVmL
+2FQXjGTU37L3/1pBsaWQmppOnJmTEaHL04a4aWguQs8R7StZ+h5X4Nqqk67e5Q6P7Z/huWO2W1I
fgSFHZfW4CENNfWfjRC/Lb+VHh0h/s2MgxdMzIre74Mk5/CJvnXenOUZuISw51qmEqngkTgeyPaq
qG+i33Oub/EQIaLMH0+Njxw07xcCVyy/dZOADGzEa59kFJ7wYeDVGe0P05htO5t7GcjomOWAypRp
BtjG+zbwVLSb9cktrXyprUXyS3krLytNtXRKFA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
U+f0OO5vaemByKDsDkefbpklnxjenFJ27GV03d7zObBGGhw8RQRTNDEh3wO7+95LZUf+A1GpmqX9
gLwiWPqxJOmO+1930lOTgp5nJB6hIOhfvR6AkgQc5d9LHHh64BrdhM77oofryulP0qgykk60l2CU
te4w47KREVt4lYvEj9aQMnWI/isv5yba/SGvA4SCCJnqtO55M8KA7A3LfiqOmJLmlbUu79EnZ6W6
JNyX/TZrMikqN4yiyJRh0FRKMleIaLBDisz1Tn5ePb6n5+Xm1xQFNDw04D+zBCVNoQD8e+lrNlG9
9JeOxQu/S9V3NfcSMVOEhahBah6f/NJ8+xUR6Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4480)
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
