// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Tue May 22 13:43:11 2018
// Host        : hal running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode funcsim {/home/arkady/Documents/Vivado
//               Projects/TDCTwoStage/TDCTwoStage.srcs/sources_1/ip/LutDelayLine/LutDelayLine_sim_netlist.v}
// Design      : LutDelayLine
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LutDelayLine,c_shift_ram_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module LutDelayLine
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
  LutDelayLine_c_shift_ram_v12_0_10 U0
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
(* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module LutDelayLine_c_shift_ram_v12_0_10
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
  LutDelayLine_c_shift_ram_v12_0_10_viv i_synth
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
Yo7qc/imlqcs3NzHLaolY0v6VeP2PqtLYhVUeNScGwERS/OC5bP6/EMM5Ct3TO4U2Qq9t2SjrOeA
ZIOXulEVIGkosIncCJ7XnyaUadifBPLOQ/uf6Di3PYXiEG6QQZv3WtYws5Wh167GjI5kNKfgJXcQ
QLEssotjZPTfWuHM9eg6XJcjiNlnaw/0j6GUepcFZ/kzoDJpx5IhHY0Wnmagc/hytjxwXIc8YqjI
FIviUt5E+VTiQWo6C8UruNLyq5LSGUvFDZdVp/d+M2binSAJ4fPJiKmuALXuGGGn4paKwXnBSAGW
QU8nuropQNK33oD32HuLbDKho7vjlIj7GCDrUw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
WES2aOxYpbA1y+AHRTk2fqPYASlGPCOrXxTgQCBJ3XVZdK9n32Rrht4XLND+lfRK7PQkCZtBl6tL
bfkH5ltYsQrnmS2rZm2YU3k5p+DH+Gw2rAE8PLHpaB1zBuFJ5O9RiSrmvf6ps2aqZIHAdjpo8QKm
OEY2DNtoIaRAFjets/dZOh6+gwuS+yJy+A2oL7UqMnImsrMkgr3oF9y8nq+Wjt+CwKMDDVTOAVm4
qbVaH76dCYtBW2tVA1z/KiWnYGJKVnKA7MVS0g2oEn+0TvyqNlzXGqPh8d6Qlnslzq4MnPcu7lZu
bmarbatzW5par4jneDizkeWyQB7wx8goDeb4Lw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5120)
`pragma protect data_block
88vg+5cU+2lKKBrYP1Lae2BWuvX1t7x90CuqC3HCD+5jIxqt6F1MWORnjKE5BRFemGpY/4lfQ/Ww
I/k4DsLxbXLTne4gNqTkqECGJHLFp35ofZ/97cA0lLXdzGyzfKENM4VyVZ7rG16qipKG3agNsdGl
7RPw0fcwfjJpVYFtWs0UQB0PPNOBykTt8DCZH3hSX9t6/u6rEnb2RDFDKi4WdHtoO6ZR3xoCkG9r
oINk52dluVRvZ1M+jY+pfOsXeReA8ShxRcBw3EGgFr1gyopuM5sM9ll3ZGlxu8A+pWwQsNRms4Wo
7oDaVqNjIkP4E/8jV+rgzdteJHChRVQcq8OsN+rKpyEQQizG9E3KEXSLAqJ+w2MRpybeZIXXtPf6
0vjFyXMTwzmkfLpmrbP6yNUBKUqJ7mVpFoo8uhYo31FWwetRwSPVJgzKLkzryRjnBJhpaLktYVG8
lahIx6wH204a+6tuOsc65xpuecegBQP6qPZ7rpSgK8Er7Wn/GWOIMtT+20c803WEYXbBvJI4Sgrs
l1fYhIArRnVMNk8lYDkqFX+D4GxQju2TPFnDfgI6SGQIEhdro3XescSVscTpns3qgBtyT1A1ypQg
v4ToGlgM/9wazcR+QTqrXV4jzOAYD7yD6SyB6CQVIIzzlB7E+ZacHBCBA42ex/y/x210Nin97Pem
fsh/6MSMH6wrtpwQhur31Sb0LH9+oTr//DH/RHEgxJYOGy7PuPIxqVp1Lobj0K/FT10lpPpA+CQZ
of8DYJnV8tmObQqT3B3fEN5+9C71DfSZ3OosSUHOxTAFnMVKjlyAzjMQ8+PVnSiqgFKGjSdh3MM4
4skCFLFeWt6WcGasdJCBmxVQRF8mMCactSk3Y39L7g6IelGfTb0whLl7uYjZCTcbGU9EvGct9Txe
eHPJogVAQTySOcHejkNzCYZn6h/6AGMKr3I580BRX7d25rNs271JbL+1oXzKl45P85NIOntb8FHy
2XJqZfwLqsWfDZMzY6clFBdtFkhLpYMKtQsIH5CjPYKCaqVtRrizwCsaIR8K5g2KFqUJHTcR6jxF
/5bHGJrsbnM9nKzc02vlcbjDWAG1wbWcHgRmniSfNuDUbkyBbvJMUrZlTzhIupa8zk/WC3LmQblb
atFnD+Z4xI6L0F+BptGY8ho6KelEYOScBBdxf6xQlW6yvA8mRb8yAuVemh9jKxdVsF1fy6UDJdFX
pZjPyqFdhQdpQTUiChIKRzoMgHWkgc2a9IOtop5RQMlbiroWrE1sJhn7NfnNKff/jUU3LSwmI9+L
kuasfs49qdYQwvJn51eHAlUjSQpUwo9H1UGaVc3hSrAyTD/SdCK+OuGV6VzJOOcojW5nG+cAHUKE
BoJjeoKYe+4C4km7unRz8Bu4dS+gvXqFkM5aKTwp+yq451u+Yq10ULh46jke0nFgFXzjRYCdmx5f
iyJA4csWMvx+kKYGNjyCs1ekOEdQBlVwk0QM/Kf/aeYorwI++oPENbxwX6D+gIx+CxFkep7g4pdo
tN/BIEUytdxkXbZao/EEqV7yKmzu96EyY0hWpq0Jd0m4UmRweCUXie0B+3VLxfCQZ5uf1G+6KSXt
Rit4NFNsWlRjF5Fzv8/nMBRpitzE334MCtB7hA5jCCgMkzJKcsYKu5qLwfLdZW549jFuubm2+86y
SO2z73of/ShzFm+ddpWDxZJj2IkT3Umr1XMajGDwhsmwSSf+hmgz8y47fqeqxaSqgaDx6fM4ZwHv
MpKVW+Jaf3GyN8T6N97CfPpMH+BaeBg1tfFUy1GCOM2LXOPJb1FZEsg1S4OH9xslLmYhtw1r0Oc6
909YCSQWkBcLdPlpq5reHcywUibwkYDCvkU6zz75v3K9pifP4U9mOjGuP8fW1YXvW0VRK+QKNmlI
7gpvw1QiMGriVsjGSLtUkvTpE9N+xptrA/45qOePB7XgIyrpJdqSQVdh9sy3WAWdx8Wm7vCL0+Z1
IDVRPdnmIBjF7uXytbMKeyKa8etKGIdfPDX/NwV+nl49yUfqVd3Q5Y65VsQ+5GACJRCLSX75s5rP
F+P+a0BNbyH9Bl2hJCnu/3WdYkr11Rs1iutRXd5DHiEEho7TP0NtRRWN6gMq6pgkj2AghlB+hQZw
JwpAY4ItX3kmEVSzhD2hl5QL6+4SGWRMbjg8vcxor1IYU1hSqkDQUmExqE2DyEt1mFPx70sVhsX4
Jyjkt548a4qKIiWv/lE4507zdiUIp9v+BRYhtv6wE9p9rcPKZHbkyxk/ozTuvt96Ht7qPktysYtl
VnGpMmu4baJaetT2RGQVx9AHMw4EfWeY2Zn30zhAbn90EkxfkJYTiXe6RbPlODkEkb9+iRwcyc5A
C143k5iv+2Xl0SQfk6Uf/WDl0JuRqOOKc/XNMb1CFABZzQYuUbSkbD8EZMPPy3ZVRAxW99tpoXnp
o/M2Ebk9oGyXAQQxinD0qUyOKAii8yjyvuU879NM7TeujtndRPMzI+4nfQ0uBObCSFM3pjM+0eEA
+Z15WYoSxQkXF9RPnpCJkrEK0szGKw8ejk67SEwBkgfVE6rqIsStxiPNHME5ldqS5YLOxlge495+
UUr8h0gkHnwHa3N+H4b9donpfUANDeb6uw/jhfCXUX58OjuxNvU3tWC3zongXjtzCZuNSiidMfPI
bTY3+FP1pGUIf+vgXroWKG1cZTbLQERGBkHma38B1tcs2Z5aDiIoYw60qXfllh8o9UuS4ci+8Wua
kbNfqzG7HhDq9wMfG7RxhiltVeewndKPJ0oRkv0X+oEa9ay9rmD3EZuxlDpXW5KYAupXq5PeuyxH
Rnm7+T+TIS0s9TteqV5APSndSPkhiL1zWS9tEHHHqv9THlGBWfG/RaSPz8znKvzZqSr3IIZo0Hj1
qD8GI2OYCryp6Z4SxRkW1n+HlhJ8Rx0uIai17sGpIODXs7U9aj1xq4Cr+Lr2juBEZgfo8bZiDDTz
53TM7zCz5qLXLpCLGU2o4p+csTnDDgw39Z+cxEJhSXVhw9+oobCTVOWWv4eJn93+W3cJM9fg9JDe
mljF7OYmThFDQb1FoJVf8kROyS8bRvu2IGiQhUC7qiP/+AGmcEpUjZaaAT5EVeEcoi5nzdffL/Zq
AenNN3U9Knv6h8/l7P2LpRVvhepU25k2dnX5VQo8hO2RXAZ4ZVoeb57ksZyy/qU6kJ/0pNnW5eRf
kH2n9NZDlOJViz/wfGQ4TRdgDCPa4MDYcMXxhDJ5MFbKWnL/O2ea3zZkZw3e3yE579hCLuCZwHwQ
Prt01g25Hxo1C7haWS4R5/THfXHhpzwGWjqwhRkkRq8KCTxIwCSJ6HcAaCOoBTOXeuvPLZemG5mI
vyD4SXDD9OtVsFumnfmBK2YG1vRS3GnvJV+H9tOvONRTeI86kMeaql8kzHfZ6A9eIPEmfdNHn3wr
1aBxXMIxhSapDviLZfcsBRxNft83jDFcOg+67XgArSK6DkfOzzBTZefgTAVSbggwvv7DIlC2RPUU
MQ27+eACMRnWdm6aLu9DaV0Udlg749NSQvs+aimgjvXC7R7AwjqJH8MRJBA+tHqmlUx4hDC62pEA
kJOixjIXIIe8+JFadBkcl2LL/YC8mHt7WB/bwfEUfae/XHl3KR2hVmPd+VchHT5bXgbpfH9vD/lJ
tOv1in+qo4g5ulNxb75R24yYZNellWpVAgJKqeiL+kyUPIIsZ64CWgXvTFLd7DhJnYLnlEznOefD
Ns1srXChh88ROa88CijVq2CMbyNmXlhE2668T7oebU+odMQBPeI6qfQXhGkzoTJWhKtpommuoeGj
CgSDsSFOd6K1Pko02J6sbYAX5MlV0N+80wsy9UIbDPzCV1bS25ydtyRvPwrpQ4mDmtr6b6TUKxR+
S8WdMpQMe2KVC5g1sojgRJWZMLIQzoSV3N4BTwhKvGMuT7GpeUoImdhe+O+MpbAhH8jA7XljWYVg
XJqwjP93du0lZMK5nstCYRWp6zP9/DAHW8jIL5WtJPu+Ru+T3ZlG5jukFcV8DX/1I7wiuxbPI6cN
P2DPM/ppQJmVFoc0JLX2ek9pdQ8YgaDaV3F9W+25QGrL1gIdDivEc04qhzSWjSwYyxdH1r/mmWoG
fz8wIYOb5+pLM6jnfPFIxHrtMQP6ZDxnFpLBIJBzBb9pQshScr+ivIs0OlOEHWralDn1t/8Z+oEw
IB89+Zkctou1DIIDAAub6jg79guwLc48sYfUueMzhbe0jACswxLdIJaldEpAS0+BFuuCh89rhAth
obFuxrDVphUBTR1ADFklKbosPXYkOg6Ocv9p8HijIqY2HGVs4O0uma3cQEEc9QPEmPE1TF2bgNtF
CBZSzc3WflONqyP7bcl4WYjFPIzXiBOWV4PzANArEjvJDZkLCXxDi8wVwP+BS2NsTJnSQlMdAFDD
sAo+u7s4snBf7jrJBcO/FQTh8pfsz47Q/1+huG8NibT4NsID3YEAE+a0kNQiCvQGqgUAu1UoEkAN
2SBQxu2b05+2CjU+WCTEV3h2dp1YMnxECYRW7ysriNdH0q/POKr308eS9zYAcclYihw5vYovmAzc
s3MM/li4J51HkEKVqGX3wMOXfM5Yv6SixJXOnrt2Ky7D8cs/3RBDwV1yBHZLkpQdVvaXNyDagN4B
tgfp1KPQ3opu98SHAsVrqRkzM7QYs9yrzGfvAZvGwZxW/wPO0L4cEn+X9BGOa2rTSTMPur1sc8zx
uVHl8Ti1Iba4LrynpetYpVgoIacKN3/i+zz1DP/lq3+bi7zoojzxcgBPpK+I9mOODDrhCrX0bXDa
kE3/uevXKtmKrv20dL5fWEPaZrCeQvg/PP31yGdRZoahjw/BUxd4au6QEW166eVqtMCsTowc9OIr
7YeYcR6cDwv/ZjOFDaRGQVcgEYkTxkrBHNzMv9iwpIs++pTEtblUKTNhXh+SFBrJmAR6UKrup7h/
9ht0Pjh+ECV4wMMVsxh9PIV95WZKp47rKFqBg3aXvBhRI9zNDliBD1f7roRTkuzPOMPp0SYVtJiD
beBdiV8rcbTmpmxRkFNJZ/zgyl6os9iMCCqKsGFZ2L4BTgP8sidvKqAOsp2aPWzb5AAvwAJ/RRd7
jBVCK24tu/E40An0sXhGekd93Tt7udzSJkgSxB+id8XX36WDBR0RrdRsPhzCtvCn8+9kcrpw8OW2
ylM8fYpGscZgbpu7Np9rD2+yVxx3qIpFwQG9C1Zzn158gVVshGFiXeQ9OASUg+pF/E3xLPGzjFj+
UvSc05Idgsz/qQg2fgge5KocmOYH6lLfIdTwp4f/R8RQytdZguUZaFhmzmzBWITcYuK9+VNs/Bjj
OdwVnSnN0aWTdXcn8QoF5o67QG+rixLBk0WWS4awnWpUp0EuXG7QSgEJuxqxBGymEWT1JNQSL1xD
ITrM8zLEtQZ6x6hUXairg+E3TIFsyEcNoaiPaLDGfYAUHpcnBGz38YQL/0td4X7iR5QGi3mEBwE2
gk8YETWfEGLgmDGbmMQ5vqpYGAZi78TyUWtcnVzb/b+WTAWfWS8QWkVco+haaZna3ePMbrZd0bWO
vMEq+JLYffjTR3T+XHib+OPeyZfA/trUGhyg3MGVS47Fu5y+Hglxl1rso97MCAvwC34eZQ7tIux9
BT5CMzON1XUjXqnAyW9ZD0ViJ2+71D0U+wgfiVHQUxjNMNXaAYO5EvEKISxRCHSEgHvTcACm3uLE
XFaEYyFyEwpfDFtQl/XkFRQlzxR9IMxVcmyv8nKnhyNWIhRLrDISZvNQG9VmzDcP1MXYoJ3n7huk
q4D+Nxub6aNt/AcGe2arcWjheIjCcPCG+bVUP08EOnpW9jt5tH7GIy0/Bh+WZY2cZ5v7Ck0pu/RL
lxEpuqn3eHphb3MFKi+JfR16sGZoIQCrJIX/ztkeQrBjpQ3do1JTd6rQrCDIhjJfOXq9BRZC7BHG
xKrHUtBHLZo4MfrQbpdxIJXjh+4j7xR8u1erQuSNnTQMuA+QwfMGBo/gXNTQjkXbZCEFpTDTDdVP
BdNyaQ2j1QYlG26U6FzKH++ZhjF8SH7eA4zFb9JfW86j4Ls7VGsUHUJsjfP4TnZEEVdcgdUofkjB
bq/lg2V8rAuwNTv/taUK6AVlhqy0RJaWbPYUTyFo3zymXIR/1/CsKo9GW3zoHAgxPED+6pQQhLxc
qnbwHeYA01UefKJW6jkGvSVm23I+2hnHCRaisISZf1rfd2Fu5Dv43R4oUcJ558ZGj1Sf3CpnlySp
mQour4zijxaUQbTBa4Dw9LYbYDqkfQnVOYMv9ZsvY195Azx+LHdFjO5EnXxtGYDTsMCrdmCxEgrX
M24OvzFzi1cbHn7eU0MUSl1+r/LoUavdZY2b1Rzf1k8N5rgo0yC9fmYaJjgxrP1EWLQusW0+IcUV
KJVGv6YxRpyE43kjW9/o55bgk1dwim2onF6M3sVlQX8BTTtyb0RcPpNILcxvI7WSK8KBgbUhWhmo
vfHn5yxi+2afG1UXmnCGkc+IpDwM9KZycZCscv5PaiWra2tM69cm/PvhjDExHkSxC77XA+suRhgh
NfLcK6YdYIO3eIDwjjjzx7ItukDcKma1tRc31C0aBIQPg2VdHfU6dkBz3VGhGGV8qMwIyYz/r6uW
XI85akH985s251eKVpHUKs/GBoHRwcIWEjsvM0gXgkYLH0vT4bvCoV8/MyahYDqJncmb+t5+fG7q
8ekVtJvp0vpZFtqup0tmF0aZPn8LiXDp+w0Y7/nkNCEL+iLIUQL7NJMyX/17zyTNl0JpXroYB13R
pyKWayY5XEnX5fo1s0jgYx1ueaL4peoBJlf7Ad+cWOoxiGjuCQWFQr2PMhakb7A=
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
