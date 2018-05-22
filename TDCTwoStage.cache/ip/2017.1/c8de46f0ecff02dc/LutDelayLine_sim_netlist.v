// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Tue May 22 13:12:39 2018
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
  (* c_depth = "5" *) 
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
(* C_DEPTH = "5" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
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
  (* c_depth = "5" *) 
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
BK3zhS+dthaktsWp5D4NaC+FRaJfyGAeIhSf0Pub2kFv9SadDG5vcda7rxjTWrZj9HCsFxEEjPH1
IboWUrDBSrPtnHHDnfJSkepk+hLxUWTAaqJ1dTiz6C51wJDgMrm3IRht05S4+vFwuT+nYURfP9ZE
9eRK1CJMxc4p0vzyRGjiwcY5N/fvcQrXDSNs7SrVogE4Z09LpJ7J9flXkg1WB9Rg64FtJRA+e9Pm
1olj1eHp+aN+nxtky00LUtiepi1gKvkARLx7dv7lRi5bvrSRAgQJMGW4BM2cEid/kdbornDmahNG
jP/hjj7fMjJJaFWUSDshuLN1P4x8NmcC896iew==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
tSYkhLOHAuD+8ROLk6LW4LfQoD1IesxUaQng4BEi2Qt6TFd9D053m8MWKBNn/h3oHe4Jl5t0j37T
DBHubEQ+nxDXUjhs53OK4H2F32TCpILJe8FrOZx3EazN9IejKWOqArPL97FeKrrlbhL6xDsEq3KJ
ivC8zBtxU74WlrD7UmBaxxBIeWbKSSno++ouzIYJsWUOVnLwkaS4wPEaCUmtqseOH5E9x3qKZLtd
Rb523plOs+zQGv4pvkluO7JtEp3pDKmRayQW9HZH7d2Jti9XFGTm7vgl3a/ZfvtBtsHeiL1QbTzB
Q1EjWqRVbNusNqB6acqRENAnRXtZxHYmKRKfcg==

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
