// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Tue May 22 13:43:10 2018
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

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "4" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
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
VK/JeItgx9NnnQFxZ1W0j3dNLjS12ZS8gCRo4BZf15JBKklCKtDG6KZolWOVPVSwk05L9W3de1VJ
tREgFhiBKJjNrQ0CRSfYc2gLzWBqbP5Fb1/EmG+Li6nDbjVJPLS3XsP9+zXxWJWhu6+cDSsB5PNV
uR/uyzeZrR66DOSsyZJu9qcNSixBBvdTsVgFppd/jy5vPUgD6Xch5HucZ8PSqYw+Xq7Ln/wkjLGH
C5lcpIFJN8FLHZzXqEtWZLGyhUu5C9WqhoHqcUWOCCq0BEM82ZcCTSC/SYCN7bgHCWTnJYif7E5r
0NDWmfjJa4pEa0jaxvn1Rhlr8VS4BLVDsobTTgA/0jEJ2m7sZ77Sawaogi/i8Yana+NuZbaiUbqG
2YSGXPA73wCrjpTX2hZUt/1ULn19DjTghwGnvW6dPVHT5Ax6AlHQvqUdlH7Mp7uGop/ilhrR/1jt
rNAWcWwA0PwOFVZqC4vFnhXgL5yCsndwzkl4tZfykRlJ3pPF9znj5F+t84vW4R3DUnmBCsUXLCtr
oBD+uNNkInROXj40VQg/AYSQt23J4LVn95DLN+htjo8byh57qPZa75U5qAKtGnXxD1LZW9tD0srg
Ab8oVcqSznXVLYfFIdK3fdk8RFuPOff37KnKLdyF79Ry1WwrAwiZSciGFWgqHC7EYaco6mRQA+Dw
P3IBFmY7wq9MBvcvxpLzan2qreZh9oELsPV/d04h0jXMXISEKCAUxXWgA5NV5nUQaFcPuo4QHeMO
jia3yBVC9PbeQjTNv6Cowk7qNKKO6sW5yiiytgjhzocNgkJ26gykH5Y+UKDfxmeluMygmLiYvU3K
Rdn4qNNFAe+VTuk6XHAb4FUuGxVal8su4iA4hhTDlG5LpPIhFPJcP3T4zix9RgKYxXAxmMfwgzB1
3QWBV2jD0ZhIFjTV5pvjglmNfnK0Eh29VbRDhiu4uXR+bC/rDC2lPoNncpRJ/ca7nphWbBl3Fpd9
7yelpyFhU7zlOWVDzax9YvEPdzQLcaLxo6cFm4bNs1nUbHpblBbQaKctZF4XUxmLvBCDNlLROvaC
9nMpAQLZi63WkSdLZiU0rxSntibvrULDycrZeiXLJ1xkGwLoyZZ0Ps56LpMqRR7iSkLkf1MOkRBr
EZ4z3X5EV4PxJ8tq3GoA4pKcj7VxGMieSrZmEeBcCqfYqdXwV4QfqAHamB5Fcsyj718qhf3x0xFm
S2CC6+EdrBkDmL3YDcNN3RhS4QAAv7mxigKgXACFu+xJuKovnO3YCcyHGhz+lqxe2gmwCL6jBbE4
cRbFC6MXZEDexdJ2Lt9sJ/GT3SnICk5ljqIheDH7jjFSeeouE98FlwuPpKxgFMcus5UbRY8SNF6Y
sr4+wUnLKtnAqXdt9AlkAU4NCketrZSYL0qWPo5DZYGUZ+jDcvWz2CxKO3LO91LPzYpl5jU3np02
UovFsa1UR3arTEa2pEDhyTRrhjN5zp1IHa30gQUF6+M9KXdeXPWVLg4ZvjMeYUxSUXHMJG6pbvsK
mvZaWZIkdJepMaqFAepHsEU1+IcGbX47EIiopZPnYNjfEnT7f12YZF+rLP33KwRmOal6J7LNA3l8
QCl3Wz9gdi3TL6HvrhH+oFhfPN/EMHj1kM8qqqy0m+Kq+HpY/gUvTmucI+jascAbMv6t+mjxATk4
EoTxCNFTB6MsW+EEyAzp0HCNCYFH5LZTMYCFM+MuO0onfXpo+kk6+525rWGnJQudfq7Occjv680T
gav2PfjvXJSmGjGtf6lDPxv/Pe2b5+qA0S4DH6M3Mr6axqcvSRVkRrtJGlK/jj7cMAQdiyS+w9ti
fgInTQw0ohSuMhcYndarKrDyG2+y7iH8Wzwm5Cyr+vrD4HH6wCuv6gADUy8hbQJYgsgFGEvQct3F
wzb+JNNHwTgBt24xQvxqqIYASXf1MOuiJsM8dT34nqZH1KM430VQh23uxbsBmdpTWcC7Viny5qSq
qHJPClGoe7msaalB1mQa5kxZYvnsxYt3Mq7hPYlK/RNkVogdS/Mcn3ka3RYLMKrG7eZEcbEA/Ahh
q/rR4bhRnjxT6qnrbkr18X2PnFLVZ9l+YOy4ohl+xuayTEzAx9cwx3Gnpln5ifrai4Bd7PvakZgr
dMtX22sCbH7f1WIxTlJWHIC9e3ugPNW3tVaOqa3zLkonSBLb2F6sd1W1EeACRNFc02I2bfLOtqAi
zOuaJYzS81E/zgdD7S/dseaSwNn5J4nckxB0Jotl/5eftw2QhGQ/HpJq6odRoXknEbCvLh3agcm1
PIRN3vf+3iBXlYKojICFt4sJTN5Z9E18l7o2wtGoDbM55PRxBEwGAOGs4/PgiMY7oBVtVjFnQDT5
knw8QYbl/zdR091zTFOK97fc+uJ7dxUUkSV1sLH5/YoIEVxx65rIVv3dCTrhzARJBM/K0PVHEjHA
bdNZvFD2rybXaRmGHkSnjBfXHhtgvsBt4MsAZhwHUQM7T7J93rcDS44pM8PJE105rK+QsNkCDa6+
9a70/YbrRl4EK+8JbMs0Pkq+pVUmtmsshMmLu6s9B7iMpBCopyJsBN1HVAAM1YH06TcnBP2K8TbT
XC74BDiD2jPRdPd09uLrFnooCqWIrvacoOChOej3iO7APOoC+iQcd4zwN6mev1pOf3YMYaHG4s3z
kqecROUhpEI1e926Q0oJm4zEmg0T3YVDVW118lwbLu7n29VMzVI1l5QD/6DWoXPIcSbiVtSijQH+
zVWgmIGpsS70n3zPEH3OfTTm/GaRoDzqh+apqUnd4bBRPUbjlxEPImPtvyFRmhXt+8gmTfo5TahQ
Em/+h1aOPi+ZtS7ukHifZEG18bihbooiC5Hi8b9TJ7VJ1jcF4SZfxLaGWgttJnG+c7Va6xEwQyIy
lVVE5VKcvdxNiKrOc26YwtcmYWpYvbvhBlgui0qF1yB0O/vj5jVFh9royrVmoo1PsebCgyXbABYg
HNDbrBjBS8GjNpPjNn528t3txCgz++M3rzVuv7NT2rehcqI06S8mMjOnTasvPYkyFuNqvtD6c8S5
GBprJUPIQcZPCr65aI26lQAZAj5Goe6zKWSab/OpGGIhdUJEf/amdyyCs0ybI8EjFO0dWVlweoew
49sma3RoTo0XmpM2T9sAllnCwZqp7hdBA6RJHgYWzswMALkqUyez2AzQk6oVcsLgfIKyQFBQEged
g4IEL5NMRUz5AnCxfdyEJeuMyFIAvjm7SuIgVdQ0dyLpTjgc2SgBfujy3KXE0RntKREoCycyLDW4
4TC40lHJGBOQENKWE5kRBf4sAV/dlTcwW7xFQpyXL/4dKC/FDKGfcw/I0qWNQJKin5YV4qK/x0U7
KXsUVQjqx+QEFowYlfDURGUDHr27DY9ngR5f2MQlON+sEEfs/Jje9aS/ozKOaZg8gvCGekltpQyt
O5zjF14OwQCISCAUM07K/ic9+GhZRWzsbwncfy/GPA52snYvAC5FUGsuYztfZL6FY4f+0dDdEsCM
dUelY2RL6o0lpIGAraWve+sDHcmjOPzE8J1qN/cXovc1uJ4oEQKYhURUPupsdjusavJ0AF7eCtsv
AG+aElszsMwZr6hX0dwcIgzYNEVj5MDB+lN3pSLjvNFaF097TX6pOJsHPODm934qmM3/P0UBXQAw
/WOL0jt1tJw50z78jaF8iOVRv87DjTD7oZ1fMStTck21e7brk8fSNyvoUAz2mhSSyi1Io7Y9i/yd
cc/+GBraOsRDnAhfCoFL/uZERKJ+ChkZnl4tisflNoVkZwLE9jCFpZhUfa5RHMUzZTzG9gSJITzj
HDX8lWLH+RZvs2OAPqUgRijJMoaUB9CbgNoB99ckMpcyUWei0rzovKfquJtDpstcwqt8tCwGelxr
SJ6Tq+aPQzjkvmDyccrNquvbW+VYwjN9wvQVkIj0BOtskyV33dpKrJ9lXOhs7nV+foUGxdodPA9I
NFu++XrxhBBr/YcW+33uuNUow3PERkme4vNaLjQfbb2GzeD/IuldglzGEC4iLTStibVPw3M4YB5G
FyUZ3q7EQFD1gu1lmdiaAac501TxChWBmknKjddSDGQIYM2ivUOeB3vHF+pBBUxgnYDtJUGlxXyc
44OcwS5PnqwyPEvOnUcQrPtGHBrvwz8pBERZ398wMc2pRi2ZNOvWvdCgK5C+MSqSocRH+76kQYqQ
Jjs4mZr0UaSBDvfKocfdgQlVHThma66cNIrG6vYY+eeUmnFyYtkRw+HPTTSO87Fe4Gd+2ZmUS/hj
VxYmJAh4UnRI7HRuRCmUy3vAg0xW1JECSRiMJWEtBEn4Da78+JDOL48+cpIob8NRHg2f9T8v5cUg
Zelhx9fSvCSMRXV/x4e89PPWwsWS6mvMCTcRoRmDUQZh4+fCMcmNlJqXxwCKNKbFEp144swoKhJV
6G6AAwSKYrSuZyGbnn+YJfe1WmnZ/qAAKia6AXceiaPD/IYQ149AAGwnUdVIhd4pZM0dyu7fZw7a
8DaYr/8Rt3hZ0ApilFAqI/42rBWD9RSvt6SBpV/Cwq69OXxv+ThaVj700yj4GsifHaynpod8Fln8
rQJKFNJd6iQ0LMuowU9PN7o1DO7crE7hJMa6pZnc2E8eHrXDhhGWEpxfLJbUpiffC/nFoyEUDsSV
jT3o8FJlWZzQ4EH93K/I4bVT8DG1s+OichbVISzFjNeWOamNWMZNlXmOEVjahfpS+71Q5iDTS8us
setHpMePMEGU9aI310TXYpv1xFJcQvMo+M2ZFuQ3jkb1lBOw8azyQ4sg/IsMSkOO4zEUK9M08gMN
CCdSVpzvqeaI4oCU2mhahVurcuO1h62DQR6QeOmB0mJl9JRnZnjM4jHUTZYyo3n3GaTXshu45gAH
JUVdx+x0oXZUtfbHhU/vnMxbpBLZ5jTraj6XAhQHGPWJWW45K1hSzNZbkufR1yG74Zacm6GUmp7d
3MnKkGkg3/1+NnJ6e6KQOCiPAXTVO5EU1swRuWYYVOwY6Bfug4aoVMhMkEApOHEvkeh95mVnfBqM
Qnf16qTK9h7ytYQxuaf5cmdwZxzPsGT8hrReU+RKNXMBgUsMl9KPbCwv6jFZThcZirssdcWHciXc
eclgH7oRGn4ufEkRMbwyVjSsuyenTWS6CSXsgFG7pw//7HyErAjl0WQcLSAU77nwqSY5tgCgw3WG
U5rrRMaSWvV8soEGlnlJF6QY7b9EtWwk4agPzkY7lVZkP8lSua0L7MBrAROu9gOxx6ADmibKF4Ex
7UE2uaMuieGzc9caO37R7XT7n4CpzyAihhHlgtJlFUDGaIofUjsB7PVAZMmonP2TTaKlu4v2FoM9
b9nVPi5eKjxZCgyTB3FScIldjuhCzValgANu1WZ8soiJKOC6oPOqtbMd3ecTDowp2aRBGzhMTWrH
9mVuT3ro+l334QXxxRLmKsnJ34/2XArf9Yj4OHjjwrrCtVR+Bs+wRh74oiE3aqoDvzgPLsKMk4gX
H5BdAoDpoMC6PfJhtsZ9fGeS+3JA2zsuF7euc61icme/PKne0OSSz8qwXWyasLQnA99SLb+YhuTb
47zUOlBUr82U2OQkwTJzFJaAS/0qhd3/btXLCExkTU1CjRhsqERg6pmGiaBS7688TOZh/02nKin0
bSC/ufYnzpp+pCo8ccJd5YrZfGRsPUyhBVjyaO6Z6spkq+A6WiHdKJn3XXxwOVXrnEY6WtOQGUV8
GjNwG9Ue22O6E3YqvaBUJRNym918OvXBdQBDTwbpQtNtib7ZG2VEzZ2I34cobQwWlO/s+4sk1Bxl
hNFBOEEV1M9WxSZOFnSdf3w/Zf8wzl3NX2x/lz2VPMNsP+nMbCJsVfb5ijW5oA2XAJJ8DBlgjndt
gDA8NTanLlOykC3UrAFt6U8OsmHrqpqPfX/M/wxkezfWo98/OindIxi792Eze/SvTy6Et5OTgTaK
DBS7YQsNFnNC1yyTZ6Jsw7s/7Eo5Inrd0EmkY01jmP5uHA+ATKwHfTVa78uOETMhwUAZl4mwHGCH
Gq8a7YCMo6DHiEZTi0fziLGKVDyVAJCWOFdsl5i2HxaumxvmO1ztXfwRX0FxWmqoCyEEeZ++KFgN
Har/vy5MQN8Vz3ctAMc2s6UFJMqQrEUNsI9JvzKGlXgIpGiRP4hn0tMcGkdYgfiP8Kn+x1hycllf
Fhrz2oO6pGM3NZ/sKoLe23jDMHA0qstufvXg+kKtaBGWlfPviWDzxueClGEFCUEsxVqrP/1VdNR4
C8ksBHE/u0ebQlMKUJaHFHmDMIMjYPz5LWtkS3tcCsE4Ik6nVnoYoI+wssiHI9D9POOCXp0WpDT0
13p4WkqCrITKwgK2Qq4w3bFeygEeRDAudKqF3GjThDtE1rMOtXbJTgFLYI7Pik9opaqyZGy4zA1m
9p6E3O1hVzCg28VGX7ambyKGzQE4iMLxI6lvIWoAPwpkRYNvpbR0CFxKANv4IVBuD3G37U+ddjLD
vGH8XzAgPzBxIWdRPXilToe2YxqmuUv5d+OIOZZy1fBvcMuMUuT1niteheaLauyeWbFEiiAjlGir
ED2Xc6VMXSNuqDjw5rnr1CcUY55dCHJtvrLwbyTDJ3hTRxtecjADDUuF1FdwNQEtM/DWqbIPHico
//vHbfWuVylrOtqgv2K2MvXMIZD4dH0oa9eDAHCH/k+4fbDMxdcBpAF1GvVSN9MNJ2QBaOhjZXWg
CodTlJWbq3W5krwZiJU6x42pG3BfGg+RsnibkV8nw8J1GDtZHwp8buMEBpYMFgC00L2GMHDIZDxU
NnSxMyKYUvfOgd3bO9IxV7igyi4xY5k0eipj3wuhsskYzyHtB2mCacSsNWScrV0=
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
