-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Tue May 22 13:43:10 2018
-- Host        : hal running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top ShiftRegister -prefix
--               ShiftRegister_ LutDelayLine_sim_netlist.vhdl
-- Design      : LutDelayLine
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
ApI3eFfJuNrZw7QeGh71Bg+dMBk5BENu46Tk0nBUpj2PhP2bzi0ios/saw9G5N1nnc6pbVegj9Sg
eEsr6BHJUg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
TRqHSNUf9hrHqUBSivwolOi75ixSMxBvCGZPaMxEEtZNtI/ttuu0L9xOaHreA1TKQZdoAwJAzTQq
Z0Rx9nBDI/FnNHh9sI8jNl3V72cMQQinRq24u7clcKec1nc31NcBwz2Lu8SokN/rQyOwZZlLksAy
7ab0MFB4KhL5jTCfgQs=

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Xtmb2v2WPsCewWJoF3WCF9SZQeJqoONWnYZLG8qwqDQnJvpZRMS9trlsDbnPrrhc7HeZOyjIB0Y3
9GFFhglWdD0aiuorQnQZ7t1Eyb3PT7Hq4Dlgb+Yyqh6o5CbIzX4rLBUPnl9xiijoQPq3fN1D3E0h
j5BBtH6m1siTAICTtZU=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
iVBzLzZ6H8OROYOi2JdTMQqDFo/s0XDpfWOn1p7+3cfTD7NCJozI0KhypkL47WQWk3ZReLkNau8e
/vESWyHjcYjqM6KaFv4SB2+GqBMwHqUvIXUJO1ToeI3zm5BEiPw9jQ76B1FueF4kqYRCPpNcnwBJ
exm4V4UA2qfmn9RMsceI5IGk7vjqxg2uyr/8j5WIPld1KPa0Rua3aliSZJZL85V7krEoZ/KT5dgF
/MZJgpJrdDIB25MYT8JiuWD6eDo73RzZ2SDvG9IuvhQ+xMm1AReaXMCf+PrhXXCu4NOsquLkv9Wq
kHJR4Nx5aXHky5O2+LXOv81iGY94QeHIDHTNiQ==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
lv4Sbm4uEEo0mDLqn9MlaLAu8MwfXUvbKPA46bcJZlSejp4Oo+X6LMpFi8Q8oZTN/CDo/hV/GxYN
rkF21HhOQjFcJSdXR8+vR3f46LrScRw60MFhFr1FKWm3S8AXAVFVHkyjXb6HYegTvsCmffaj0fS2
qKzbMjb1Y5mlTjeP9s0v2L493FI66rWeLrylzC9wJ+VNr2nOOmb2V4PfVEsavAN294AM0qjuCexn
Et3w7sKP9O1s4Np5uLUF5p8wliWbyzMp6+/YffutfEWRnoyJvvGgn8+yG8qP74hlkmpog1T1ITfQ
bmmZ+VdUhYuHPTjhb6M/0h01htvudJGEAgHCaQ==

`protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ucY+5+8ewXhGQPso94ZHpHY4wTXBXTEUo7kqUsrYYnvovYXHMHc7zY4noPCkCQ+bgnozLemUtMgE
0x0JG8nb5R4mcet6bq6p7j7iF+sDXrtL3+CHxei1p9EWBEeCQDlONef5rjuphISO9+u2z2Bx+99e
v6jjBpp4slGeHdFO4aosMKezIt22sYhOR76aVrpylhDbv2S/lsjyrwZdhen3vTDuXAqlvyRH7jNt
X39eoOo7cyQ3ckLUqhYphDmmxkSqKYt3iW1ooZIVYd4JMPqa/9y6vWGYHPAhXxLol8lNnGtngFNN
KurC0aFm5whKrfXD27OfKtjpynpLyGJPsWOGbg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="base64", line_length=76, bytes=256)
`protect key_block
Dtk7WOEm1oQ++IRrJzbzkTu6/4yJzIo3TRoJPAueN+69qawLPlf7lDGqR6luidCZ8p6gLmFxHbpY
jPoade6ELQ+s4RPSkcYSsmpsg+QkVAJB5b9MKDDfOwAZIF2QDaBcsgdnyUHby25/G8mEooEFYY4X
bVcUKljsag7AgD1ZksFRcmfjR8+IYOTylYOBQPR8CyLxf5nQtKYxYejdzhQKp7n2Sal5kued1EUp
7QbLZ1Vl60mRxdnpEociHtFErne+49wDnKGlGRH15Svm8lhnRHH6lMvAlxS9eX0qDUbQMDl4r9VC
gxNw3ovSqxa4LBWV4p/CXgFkFf/aaRCTcN3ORA==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="base64", line_length=76, bytes=256)
`protect key_block
ld512LUnjmLprzVJ/a1LvzOxsqXKQYYG4WJYTbv8TOtfK6mzgRh1XiUGXj6ym71tDFZARjbzxFAq
ViqBNxUXuf6MiSVynijm6Gd7UlFJcHVc2ETnOPoapyUwDopIgvjGnzR0hhwJe5IKDQGLaHR81sDr
s93E84AqhcMlSbg520jlnL2Cihfw36nOKUiSVAmUPAK+ncKvMGah+pCK+izycBzjETfsurmX5VZU
UhdwwW1LLpCUVRtea3nju2/RwuMufkh9JOFL1U0kGiz8AtjyKrHC8gAoK3JX3D1jPVq72Swxw0aw
WFNeAVpR61ThT9c6XqEP7rkTP/QVx37lWoOCcA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14864)
`protect data_block
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
DoDkFD9R6zk2w+zq4IA=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ShiftRegister_c_shift_ram_v12_0_10 is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of ShiftRegister_c_shift_ram_v12_0_10 : entity is 4;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of ShiftRegister_c_shift_ram_v12_0_10 : entity is "0";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of ShiftRegister_c_shift_ram_v12_0_10 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of ShiftRegister_c_shift_ram_v12_0_10 : entity is 4;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of ShiftRegister_c_shift_ram_v12_0_10 : entity is "./";
  attribute C_HAS_A : integer;
  attribute C_HAS_A of ShiftRegister_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of ShiftRegister_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of ShiftRegister_c_shift_ram_v12_0_10 : entity is 1;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of ShiftRegister_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of ShiftRegister_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of ShiftRegister_c_shift_ram_v12_0_10 : entity is "no_coe_file_loaded";
  attribute C_OPT_GOAL : integer;
  attribute C_OPT_GOAL of ShiftRegister_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of ShiftRegister_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of ShiftRegister_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_REG_LAST_BIT : integer;
  attribute C_REG_LAST_BIT of ShiftRegister_c_shift_ram_v12_0_10 : entity is 1;
  attribute C_SHIFT_TYPE : integer;
  attribute C_SHIFT_TYPE of ShiftRegister_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of ShiftRegister_c_shift_ram_v12_0_10 : entity is "0";
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of ShiftRegister_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_SYNC_PRIORITY : integer;
  attribute C_SYNC_PRIORITY of ShiftRegister_c_shift_ram_v12_0_10 : entity is 1;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of ShiftRegister_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of ShiftRegister_c_shift_ram_v12_0_10 : entity is 1;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of ShiftRegister_c_shift_ram_v12_0_10 : entity is "virtex7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ShiftRegister_c_shift_ram_v12_0_10 : entity is "yes";
end ShiftRegister_c_shift_ram_v12_0_10;

architecture STRUCTURE of ShiftRegister_c_shift_ram_v12_0_10 is
  attribute C_AINIT_VAL of i_synth : label is "0";
  attribute C_HAS_CE of i_synth : label is 0;
  attribute C_HAS_SCLR of i_synth : label is 1;
  attribute C_HAS_SINIT of i_synth : label is 0;
  attribute C_HAS_SSET of i_synth : label is 0;
  attribute C_SINIT_VAL of i_synth : label is "0";
  attribute C_SYNC_ENABLE of i_synth : label is 0;
  attribute C_SYNC_PRIORITY of i_synth : label is 1;
  attribute C_WIDTH of i_synth : label is 1;
  attribute c_addr_width of i_synth : label is 4;
  attribute c_default_data of i_synth : label is "0";
  attribute c_depth of i_synth : label is 4;
  attribute c_elaboration_dir of i_synth : label is "./";
  attribute c_has_a of i_synth : label is 0;
  attribute c_mem_init_file of i_synth : label is "no_coe_file_loaded";
  attribute c_opt_goal of i_synth : label is 0;
  attribute c_parser_type of i_synth : label is 0;
  attribute c_read_mif of i_synth : label is 0;
  attribute c_reg_last_bit of i_synth : label is 1;
  attribute c_shift_type of i_synth : label is 0;
  attribute c_verbosity of i_synth : label is 0;
  attribute c_xdevicefamily of i_synth : label is "virtex7";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
i_synth: entity work.ShiftRegister_c_shift_ram_v12_0_10_viv
     port map (
      A(3 downto 0) => B"0000",
      CE => '0',
      CLK => CLK,
      D(0) => D(0),
      Q(0) => Q(0),
      SCLR => SCLR,
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ShiftRegister is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ShiftRegister : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ShiftRegister : entity is "LutDelayLine,c_shift_ram_v12_0_10,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ShiftRegister : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ShiftRegister : entity is "c_shift_ram_v12_0_10,Vivado 2017.1";
end ShiftRegister;

architecture STRUCTURE of ShiftRegister is
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "0";
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 1;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of U0 : label is 0;
  attribute C_SYNC_PRIORITY : integer;
  attribute C_SYNC_PRIORITY of U0 : label is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of U0 : label is 1;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 4;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 4;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_a : integer;
  attribute c_has_a of U0 : label is 0;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "no_coe_file_loaded";
  attribute c_opt_goal : integer;
  attribute c_opt_goal of U0 : label is 0;
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 0;
  attribute c_reg_last_bit : integer;
  attribute c_reg_last_bit of U0 : label is 1;
  attribute c_shift_type : integer;
  attribute c_shift_type of U0 : label is 0;
  attribute c_verbosity : integer;
  attribute c_verbosity of U0 : label is 0;
  attribute c_xdevicefamily : string;
  attribute c_xdevicefamily of U0 : label is "virtex7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.ShiftRegister_c_shift_ram_v12_0_10
     port map (
      A(3 downto 0) => B"0000",
      CE => '1',
      CLK => CLK,
      D(0) => D(0),
      Q(0) => Q(0),
      SCLR => SCLR,
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
