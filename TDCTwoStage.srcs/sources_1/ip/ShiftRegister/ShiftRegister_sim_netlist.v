// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Tue May 22 13:43:10 2018
// Host        : hal running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top ShiftRegister -prefix
//               ShiftRegister_ LutDelayLine_sim_netlist.v
// Design      : LutDelayLine
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LutDelayLine,c_shift_ram_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module ShiftRegister
   (D,
    CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "4" *) 
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
  ShiftRegister_c_shift_ram_v12_0_10 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "4" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "virtex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module ShiftRegister_c_shift_ram_v12_0_10
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
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "4" *) 
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
  ShiftRegister_c_shift_ram_v12_0_10_viv i_synth
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
QLJmXNIMLB4jc9BfiRrQP1OQI7YtOoHihDIenHE6LHevZt1xh3m422//cdFFRDbIDdIflCLBBIeJ
NXR+vwBfn8asOm7qEEOEaAFHoFGzUxtPPUJbZgWkE2rZ8iokwSJQ5G80C5pZtETVClB6jVzg5t8x
bTePz09ZRAmBEO67V1FT2trEWDjikIfL62/V8KCZopwR8/ya6Yoeii2jj0IGi4Qnbgl3R3iSCow6
qtytMl4s2hq3jL26/pbEeVtrdcvtCWTn497ZlZ0qgIrVbUigsL4BSmEtuC206S+wu+bQSpzlaJ4F
AlgvQ6yUdUVLV7mDyFbqDoUMc5jXqjoK1Q3uSg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
l4eEYZvr55y4BZvd4Q20j0coLRv5W/TNuWEEp3NholGp2+rc0ii2ztlh9TAFWqY/k7x3gA+OkhYq
2HuDoCJAPQreP+ciFtCvU/089qu+Y0cLhelaZd8v9z3kdW0+cCENdcWF7teZ89Ib6i3xauT4lmaz
xtiCgcetnJ7TYftYR8iqBZsbQ3US5KifqWoIj5o+tIPkbIyZszpu7orTsoMBGMGEhkYP12j0JW7t
IjuTnlAtjrb+UuaxnFeaNUbeAZX1WM4/2mhpIpRObnuk8jR+4Y+ft28ZX7AtIUN444BO2QMoO93G
cswmjq796LC2FFq49FA400CGCI+gvgBqw1CiXw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5120)
`pragma protect data_block
KQFymhVOxFwuvVMmLSSGrp+Q69VRGZtVxzBQxMpw3HeP3Jr/dmrc/aRlHCEVZxUu8wTs5J0dBdou
ctKJdBSl/PnXHuthkVWVh9cTVadfuc3vMbY7g1IWYz3odcLsKW3w9n8CE4P1dU8LYkRmdqYg/vQ6
gj+k/up2cC5AzeciTB2rxkMW0pFOtbEqcCExYI7c8YHMPmK663XdJbg6BOH0SDiNdLoe1VmxVzin
d8LCu1tJNyO+h0OFWknDG2lnWk3IwYbmJiWiOPlldblMgVoQ54RQZnFi5ajjtjCGCCdW8Pp+YMz9
YqSEI/x+6ZPJ4aRvMleHV3xEb/ADRE+jp2uYyakJUxSydZEZJAK7YOOTONUwlPHTcJNG7XRNhQ2U
V1yghSik1CTdgsPvj9yBAUZVX3fRf2DN2ypj1IZ9DO1kqTczmMv+7uf/hL6r+RUIs4L4TMpQGmD6
s6uXntZodUHhZ1WUH3Ui6u0AfkDkL5hYA2VUNqU6t285Xy4aSJmtuwcIqGWAH29ie2lVwFe8be1R
DMqJj/rRY3agkgYMgTeNMKmzc3lVsBDB7ln+Q4zO1TPmD4dP4SlfHa7JXm7ENWV7Bq21dTDzpq97
L0xxkWsLRuefnkbjCIWDvFXhfqfU464NHl/cRVA8jCYbAA6wvCsNJ1IG3AcVBgdMRhxfgR3ynzux
vborLo2uA8Q19KDtQ0cvhhg6x1v6dvHTjP7irfZmyzcJgj8J7/jTJf8bBNtElM+EKhOtOj6vUHhE
bNV13RUK+BBJAlRYTYEPu4PfhRixmhbMc5l60zskuDZVCLg2IN9dXHM2+4R/gQTndVXb9y6+Jh0y
mzH1th8KFgE5gVWGHPvacXGBj0J1LtvTXo1VnKDbz7qxCjGH1p0LBR24BD/P1Te7tP02jCMyT/JI
qXEOfiYsGyyq14Ep3iWxbPceRHoqBYSKdPUmD0NhtyQh10w0FuucTMijZPooBnq7SXbRbZwdWnYV
/EfS7N13JtOLgmmJWGVNjf9YrDcMMYC3W4R3uq0LJduB6uAmYI0o28KSPwCIiBYIRAwOKmqw9Zr2
rozJj0DhPLBgvmLPmqNdwBsMMqrk5yCOokI9/y9rj6d2KVO0Rr1581f6yXVFmGYGpupGKbdaeWUM
NqjTHbqnx+N7KpnPpkLokDbyBlvldoe9QLy66Fd7R4WZ4ngmpyMbotEFoNMz6rCl1VqSLE9qRKwc
ZFNCe8iF7jpX07qhx2CV4ujo403XJs6UJRKUh7ciZulQdzMzELD0Ryg3LJ3pzLwi/wGFXvP02E4u
N7xAFRgKdLJ/8CK3OIrsL4eZhIt1GLEQqgRWY6Bn8Vlq4urhPcH8DSEjGtzU2k7NT6Ed6FvytcdH
POCn2db6mvr+8si8TJf+4MjrZ/dtBhlTuIZ3Y4y+aw1Oq4YJ7AR5dq5u6uBapeLxU3OOebuvBRNm
BkZmgoQIfa4laa3mgwvA0kCoVeVGG+fIHAirSXmiERjUuHO+T/tp17IXdgT/PTjcJHvpiVx6uO7c
WAiQ5eIvpAXoWIfRdz8+3euBSN7gCjVc5RjdLj+KtFtNd8t7zRzDAJCZexC/2sqRSG0QskmS4Srr
SlGrRcvVKcIfVYdDywDM40knu87ws144TNzRhFAOwtOuKMR21gdtgfay6IZeR0Yl9N8WhKfHFTbl
H7K5Nfi+NcJp6OXbD5XiGq3Jg39Jg38axLtx35eond5VqCJortmElPS3uNuKqDRorCdfYGOQ9uk/
tPCxEcZGb5tvbHvKyYv1BkejSBPVFWP8kSGy71vWdFp2fSjwjFMElpSFIIUN2fnRgDds1x7D78xg
8mrWcoDJcNtCAXHy0RXOj2qQgmGXlKyJDSPzul023Z5D3K7W77lP/hAW0El7N6Yd0ZUletF8ogW1
KQs/i00og4vlNxmFrZrgQP1rBhuYRD5Af0PiqnVxvS2Oukt/Ga23k73XdfJmUdCQz43rbwo2BdF6
47YRYVUAl+6WPPKk7j1zeSZ55w6JGZ+pW36quYnj+AHSb4nTr2HakbF3D6cAwqeJIx+iLUrVoDqr
lFd7iZLBIq5BH8KH+n9+1M25DWICnNrbhL5HgmJ3abuCmzDyuAZquKuCQtiuH8DyVHw1parUX0dt
e1ZqMCs68haeTXMCQApCMwmSgY/5f6pAIWpLMWXld+1KhuCbb9WGqOOZ9Y214zFxnSw5oqtR/QBY
q2CTXuQqN2dV9gaOYlfDlCSkoGPCA6aQzNYMHdq+3UbIIzJnCltjW3a2zgv9zGy+aujE4GoD0Ofw
sTfY4LlMQuUsc8n+E0bC2wP5/+bJgIbgW3HMmotOdae2olMiERPD5FmAJu+22SJ7qSpn+m0wAHDf
X7kJ6DqSpZlR0qnEhgKDehPdk5yRbKWU9a76YGqawMYJ6gqq8wkV/ZMr54NmNqur5QhlqJY8HDAt
TsdQJCorhYwpBqFvZ5nveLhmQoQK+FGMiguq4MTFY2jdMkxraenfE1T7RwuSgRkUah6AJTE4kg9o
CrJnvvXXBzGLmw4dG3fCy1xNasnLE2oqmmkSpYGU/8KJr+C3AuXepl6gNKcwse29AVYVKQEeo80h
ofAV1i9CtqrHjKzfA25xGYQsl6yJT9GMSKJdVfoaCrxFQQkdDek+lJBjPencD0ivdidWzNXX9/4e
41H6TCxodLFf6LwXpEd/OTnkLgTjmL/9DdNzedqR4OdQaoVCVp/dHw+L/XnUL1qf+eu+BwhfAoMS
8SH6OSegBO2GSl+1bUmWfyw2vaXTfmHQzsy5dKqX9kTF0q6/zT+Bnv6pcKK7rtbUGsaZth2W0afY
KFOqIhQdKs8uU1GTqGs6StJUIoSg6x43zzEPrPCHp7V66O65GQDE3cIfJf5LAIZhSlGnReTEH2uy
oRmy+TzLwCjUTUMwjOHoRwNyRqtxRQglLAIN4CA7nIKrppZizjIs7QgLVVgzN8QtrrJuoEnJsUnu
Jlu0aFVtWFzUplGeAM3XzpTNVX0giWYnjZHCWw/t3p/5+L/9sVEOfPO+jB04xPCh3ZK08P8w/vIa
+mWRL4QiRUJjn9n+GAHJ0t3svm38tPb6jA1CKczkr0raIm5fGdWgO9gRABn49pz32dTKeEcCZ/XG
KR5J4amdtGVLg161m15ZcD7b5kXyQDukcRFSBRe/HBexlRU6wm8eX212fjZf0ElrCUWx3TBZdcAB
JNbb472uKfBXfmKxQ0om3hU4WxIP6nzUxUPtKbdrPWplOvYmU0NMFj+pmtFGaSbIC4lQqsPStz+K
zamFxl8Q3RsIVSBWBc0dxSJbYc4WFeTsNqnweKiRd30UIxWHNz0UQI3/wY7se6cPObdmWLL6Psh4
DnoDcfQwjXLGKgUB3s7bbqn1bJw1uKw73kJcgzirfgBL4XkxBLFatzgMElL0hnlCyXLOaCdTpEKK
NkhTGcfFWYFFEskMKUlkPuFahYMan3+/tMPpphuTzfu1GSAx5Q9j4SszHf22utJkFwsgDPG4ZIBh
FBWlvPEbo50gXnzv6uMXnn2Ugp39OOVwFz2L4rXfVuc3M9snZNjjmc1ZfmApDAJIWmoIwBKLaPmo
qDBk5u8ZKakgjWbgg6l70CHyeIom3rmzMBocL/p5SqILgzkVnpctOstPeX8ql1mL2v97YPt312TR
OU5DkNt687jXlwXOGUGzpg2YTSPbz5iTWwOcjY/RP+DNBbTaKGtb67s6CzKp+vuXKzNA33zE6QMZ
g4Ysqg3MVfXr15MKMji1MKh7caw+w8MVAIGYMdCU3vEKR2sBfLledW/nxmhLDUJ/CRO/TXfx1RZV
o0eIRvrBZ3bq3vh45Lr8ERiy6cvJAHKRdqVXbpbCVvMCSwXF3Hys1nyYwonhrTAoSSf5IwBDcS6i
mwqWM3aHpYLdeuf/6atRl6C7W4Cqe7uambRQduGYO8NQmbo9O5eTut9VrTD+doF4aEsNchlUguye
rruu3KM3suZyqCltBbnnlfBNTgmxs69AJ7/zLkDiSskk/EMeZJvYyzm/aPAyTn1NFv5M5qKofuYw
wi92iNZtLvD/vxlNNE2jAEam0q/z6cOExOgOQ9CHwFwnVgOnQ52P0C/eK56lKuXf1rKMDHX1rbc+
3b6nwLrmKNreG2er608yuMZXAefobNnNKIGwZik5GngvFrQQwtGZJt8IYoZx0USnzHGduju/MYrb
K3+3mr8pOZXgCdsB8yAUtq5w66EKFMKzhmI9sGX9rYMxAY9xvNEwFuqHDUQdtE/iEcZXo7OMHRu8
6Uaq+q+lsgZP5PX9ywE8WaicaRaFzPx/+pdf1w8/6NFZaZp3Z+d3A6Tgn5aWcPK0yy4J47t2Ih2M
GHAiy0HPRNRXLNJr9No0aBAPFeqUmlj3IfnVC9zAmCwkSFu+ec+d8n0d1BAtnPswv8+MX11QCZEh
c65NxcvHIL5k42xUJMGgm27He7E5BtIMH8PEm0EINA8fTSWh9QyRL8RWuKM1i9iEa3RbwlRb1tPU
XHomU3uGMUG7qvVDD+71Ru3tUF95V64FRoSLNZZXt0v5wCm2Ow4U3LH/UBAB1i0LyF5uDR3+KzlH
UdvioIDWfKbZjfF3RueiUc3xtadDQoq2t4mddZGwMTzTp5MNQ/un8sHEpvn8gJwgyqu7BwnMRCXW
3/4eTKxKKt/3DYXmHqWJ1nKLK/vOaEgnIj89ZrZ94kSlWT5Ve9qQMr+TEG2LukZvvRs81T5HTg3Z
+WMYfvu33fa/aHtNgqNgEzAf6DmzUiqpSZAzdAkwEF7EGuJCMJBOoB3I6YGLItAcWlDoGXRG8/+s
GnIoeXkIW+m3xmxRPYUvjRemZ+fikMcl63iYsSMAzKFuFcQMsYMhVpAgI1G588b6HAf0DQL7KS96
H09AbeWS/OxfyCWuLta5mKBugaInQQO91W3ChoHv9SCdm4Bb8KQjIUOkWjNuQQXdgtK2/Vae+QnG
MfdTiHJuJnD4ONBlvYOSp1P0QR5ArVf5Tqc9EDszVRbnqXYnLYRINFe9jqEHzpF0aktBKdR3dXdh
5nDO7N4PimInccr1R5qqMAfi7+05xXFLE/gyg94KW09dko/QqGSxeeJ5oPwJBWQYTKa3hrAUbqA2
ZoYBicz0Xpi+MBtWqUJEEQvuygEVv4QjNzYVPvUJwjFP2lsTsu4omsaxFsACExkHLUo7592GsSd1
yE2RUqfQpl51r5hsw6TJ1c++mzwmoVD2wgkN6jujiY8MLcvkyaEeDkY3h4DYSHm2RJUtYyEHjT0v
/6suvgj13Ow7vJI8qA8eibf+edWcX8V1Ym4i9HN9P9d8pN7PaDd+pmAXFKmO0xbFeib2TCcRGqmR
XaX8BacPuMgbdardwE50wx3KNONBtJfxaX3/+xI7Z4iCqao5Jbeo5gqxozv7PdZiccHZDb867zaK
KNojNiWNxNQtHEDLa0D9pX1/zfX2ffApaf54V3ak/nCu0Q/w8KOhgca991yAtLMy7h2jrT1CdFwX
gImVr1BeU+R0jJ4pMlAtCXNCDYrBAwS2r27EEkIUhhulgjxZbkWi1Zim2B3iuyvDKHU8jsek8Cg0
p6/pRX0YzpiGjuGEg58Cm71RqV7T59GhV0Dn7XA7lcTr1OtOUG77C+as+SxaXhVksMHoC+bbiAO7
sy6GMjsxJxhK6iO/vIe39mqlhZmPnVuYFphbC8NlCP4eG91FniI8FPIYWTWGR331+r7+SE58brpL
vwQAsa0Mb6VETP+i6Yu3H0bxyarG4NvRmdHnSBypIJrKgiSBHRvtXCCaCkUWaUPA7jX5GobFRNF4
pk3nwfYIIUMNlxOx3XEF1REVr05atR4P9SE0dBxRSS9c/wVimoQ8O3gOJU8gOHo8YWHvzGer0jqY
NGijbPjB89IjCnkz8JzYhB30p4u237cSLsTqRPW3UFaWaY7wZTzpJf+H7irjvA/uM7kPCJklbcBq
rbHjzO4OFe4y1tXfCX0BxRLD+RIKWRzwQrkFpagazwECfWNErXM4dYHpkELyTfiWmsqMSmnD15Uh
aIiVP47GuFlj60qAN6p5Tz8O8ZKQQomAZ54WWOGGZ6IFic8c/6RjBCKj1upXe1Ohi3LaRXYSGgkO
5xWFM2hJlDtXB4UADYU7j/liXROxQNhjSXEDeofaMVzUW4pAmscYuP7ZqbRdEGL/xytdtIVASbOd
UmmEeNeXJfUNQIsCosCp9ufbcVd4muCLfR7KCzhc1RP2QjSup3l8zJUhcPiWv3MrqBK9g9LFhpkF
WeyrBVns4msJ/LXOHoRXs6t0jz/QxEcEB+40VJfNx1gOBZqX3+IXitjLNzDdm1NkbDeGY7oNg08b
3XdrW54+meBF15T8fQlQy57RAqwd7O2863087LZ/DtFQq6r2G9yhFU1T6eGc/cpbewA1k4VLlcXQ
JEpbd6a7se6X6NRFUfFrcCixheZsC1cawIonmYjuTCcmGsI58X7SJbGkEoGsuhSU58/J/TBhdX+j
ePuGtGptdbNVF4QW5D8ZXFDK09szsuXV/M2LN2+XD0uBf+U6XwJGU8aSx8qcYuJ39vJO6vMFG5Cn
69s19J3k2ij6r33BkRn3RsaFvehJfDfbeZ6MWlY12+7zr98FPn93XlMoQfr6gxYxTOKCreLns4vN
cpkTcLUlgOLSSblK5bydr70=
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
