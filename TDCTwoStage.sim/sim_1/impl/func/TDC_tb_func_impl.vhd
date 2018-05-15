-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Mon May 14 09:14:33 2018
-- Host        : hal running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file {/home/arkady/Documents/Vivado
--               Projects/TDCTwoStage/TDCTwoStage.sim/sim_1/impl/func/TDC_tb_func_impl.vhd}
-- Design      : TDC
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EdgeDetector is
  port (
    iDetector : in STD_LOGIC_VECTOR ( 61 downto 0 );
    oEN : out STD_LOGIC
  );
end EdgeDetector;

architecture STRUCTURE of EdgeDetector is
  signal oEN_INST_0_i_10_n_0 : STD_LOGIC;
  signal oEN_INST_0_i_11_n_0 : STD_LOGIC;
  signal oEN_INST_0_i_12_n_0 : STD_LOGIC;
  signal oEN_INST_0_i_1_n_0 : STD_LOGIC;
  signal oEN_INST_0_i_2_n_0 : STD_LOGIC;
  signal oEN_INST_0_i_3_n_0 : STD_LOGIC;
  signal oEN_INST_0_i_4_n_0 : STD_LOGIC;
  signal oEN_INST_0_i_5_n_0 : STD_LOGIC;
  signal oEN_INST_0_i_6_n_0 : STD_LOGIC;
  signal oEN_INST_0_i_7_n_0 : STD_LOGIC;
  signal oEN_INST_0_i_8_n_0 : STD_LOGIC;
  signal oEN_INST_0_i_9_n_0 : STD_LOGIC;
begin
oEN_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => oEN_INST_0_i_1_n_0,
      I1 => oEN_INST_0_i_2_n_0,
      O => oEN
    );
oEN_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => oEN_INST_0_i_3_n_0,
      I1 => oEN_INST_0_i_4_n_0,
      I2 => oEN_INST_0_i_5_n_0,
      I3 => oEN_INST_0_i_6_n_0,
      I4 => oEN_INST_0_i_7_n_0,
      I5 => oEN_INST_0_i_8_n_0,
      O => oEN_INST_0_i_1_n_0
    );
oEN_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iDetector(60),
      I1 => iDetector(61),
      I2 => iDetector(58),
      I3 => iDetector(59),
      I4 => iDetector(57),
      I5 => iDetector(56),
      O => oEN_INST_0_i_10_n_0
    );
oEN_INST_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iDetector(48),
      I1 => iDetector(49),
      I2 => iDetector(46),
      I3 => iDetector(47),
      I4 => iDetector(45),
      I5 => iDetector(44),
      O => oEN_INST_0_i_11_n_0
    );
oEN_INST_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iDetector(42),
      I1 => iDetector(43),
      I2 => iDetector(40),
      I3 => iDetector(41),
      I4 => iDetector(39),
      I5 => iDetector(38),
      O => oEN_INST_0_i_12_n_0
    );
oEN_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iDetector(0),
      I1 => iDetector(1),
      I2 => oEN_INST_0_i_9_n_0,
      I3 => oEN_INST_0_i_10_n_0,
      I4 => oEN_INST_0_i_11_n_0,
      I5 => oEN_INST_0_i_12_n_0,
      O => oEN_INST_0_i_2_n_0
    );
oEN_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iDetector(30),
      I1 => iDetector(31),
      I2 => iDetector(28),
      I3 => iDetector(29),
      I4 => iDetector(27),
      I5 => iDetector(26),
      O => oEN_INST_0_i_3_n_0
    );
oEN_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iDetector(36),
      I1 => iDetector(37),
      I2 => iDetector(34),
      I3 => iDetector(35),
      I4 => iDetector(33),
      I5 => iDetector(32),
      O => oEN_INST_0_i_4_n_0
    );
oEN_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iDetector(18),
      I1 => iDetector(19),
      I2 => iDetector(16),
      I3 => iDetector(17),
      I4 => iDetector(15),
      I5 => iDetector(14),
      O => oEN_INST_0_i_5_n_0
    );
oEN_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iDetector(24),
      I1 => iDetector(25),
      I2 => iDetector(22),
      I3 => iDetector(23),
      I4 => iDetector(21),
      I5 => iDetector(20),
      O => oEN_INST_0_i_6_n_0
    );
oEN_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iDetector(12),
      I1 => iDetector(13),
      I2 => iDetector(10),
      I3 => iDetector(11),
      I4 => iDetector(9),
      I5 => iDetector(8),
      O => oEN_INST_0_i_7_n_0
    );
oEN_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iDetector(6),
      I1 => iDetector(7),
      I2 => iDetector(4),
      I3 => iDetector(5),
      I4 => iDetector(3),
      I5 => iDetector(2),
      O => oEN_INST_0_i_8_n_0
    );
oEN_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iDetector(54),
      I1 => iDetector(55),
      I2 => iDetector(52),
      I3 => iDetector(53),
      I4 => iDetector(51),
      I5 => iDetector(50),
      O => oEN_INST_0_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mux_exp is
  port (
    iMux : in STD_LOGIC_VECTOR ( 61 downto 0 );
    iSel : in STD_LOGIC_VECTOR ( 31 downto 0 );
    iEN : in STD_LOGIC;
    oMux : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end Mux_exp;

architecture STRUCTURE of Mux_exp is
  signal \oMux[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \oMux[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \oMux[1]\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \oMux[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal oMux_BUFG : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute TOOL_INSERTED_CLOCKBUFG : boolean;
  attribute TOOL_INSERTED_CLOCKBUFG of \oMux[1]_BUFG_inst\ : label is std.standard.true;
begin
  oMux(1 downto 0) <= oMux_BUFG(1 downto 0);
\oMux[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \oMux[0]_INST_0_i_1_n_0\,
      I1 => \oMux[0]_INST_0_i_2_n_0\,
      I2 => \oMux[0]_INST_0_i_3_n_0\,
      I3 => \oMux[0]_INST_0_i_4_n_0\,
      I4 => \oMux[0]_INST_0_i_5_n_0\,
      I5 => \oMux[0]_INST_0_i_6_n_0\,
      O => oMux_BUFG(0)
    );
\oMux[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A08F8500000000"
    )
        port map (
      I0 => iSel(15),
      I1 => iMux(32),
      I2 => iSel(16),
      I3 => iMux(30),
      I4 => iSel(17),
      I5 => \oMux[0]_INST_0_i_7_n_0\,
      O => \oMux[0]_INST_0_i_1_n_0\
    );
\oMux[0]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(7),
      I1 => iMux(10),
      I2 => iSel(6),
      I3 => iMux(12),
      I4 => iSel(5),
      O => \oMux[0]_INST_0_i_10_n_0\
    );
\oMux[0]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC8800FCCC880030"
    )
        port map (
      I0 => iMux(4),
      I1 => iSel(1),
      I2 => iMux(0),
      I3 => iSel(3),
      I4 => iSel(2),
      I5 => iMux(2),
      O => \oMux[0]_INST_0_i_11_n_0\
    );
\oMux[0]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E323"
    )
        port map (
      I0 => iMux(58),
      I1 => iSel(30),
      I2 => iSel(29),
      I3 => iMux(60),
      O => \oMux[0]_INST_0_i_12_n_0\
    );
\oMux[0]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(27),
      I1 => iMux(50),
      I2 => iSel(26),
      I3 => iMux(52),
      I4 => iSel(25),
      O => \oMux[0]_INST_0_i_13_n_0\
    );
\oMux[0]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(23),
      I1 => iMux(42),
      I2 => iSel(22),
      I3 => iMux(44),
      I4 => iSel(21),
      O => \oMux[0]_INST_0_i_14_n_0\
    );
\oMux[0]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(25),
      I1 => iMux(46),
      I2 => iSel(24),
      I3 => iMux(48),
      I4 => iSel(23),
      O => \oMux[0]_INST_0_i_15_n_0\
    );
\oMux[0]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(19),
      I1 => iMux(34),
      I2 => iSel(18),
      I3 => iMux(36),
      I4 => iSel(17),
      O => \oMux[0]_INST_0_i_16_n_0\
    );
\oMux[0]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(21),
      I1 => iMux(38),
      I2 => iSel(20),
      I3 => iMux(40),
      I4 => iSel(19),
      O => \oMux[0]_INST_0_i_17_n_0\
    );
\oMux[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A08F8500000000"
    )
        port map (
      I0 => iSel(11),
      I1 => iMux(24),
      I2 => iSel(12),
      I3 => iMux(22),
      I4 => iSel(13),
      I5 => \oMux[0]_INST_0_i_8_n_0\,
      O => \oMux[0]_INST_0_i_2_n_0\
    );
\oMux[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A08F8500000000"
    )
        port map (
      I0 => iSel(3),
      I1 => iMux(8),
      I2 => iSel(4),
      I3 => iMux(6),
      I4 => iSel(5),
      I5 => \oMux[0]_INST_0_i_9_n_0\,
      O => \oMux[0]_INST_0_i_3_n_0\
    );
\oMux[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A08F8500000000"
    )
        port map (
      I0 => iSel(7),
      I1 => iMux(16),
      I2 => iSel(8),
      I3 => iMux(14),
      I4 => iSel(9),
      I5 => \oMux[0]_INST_0_i_10_n_0\,
      O => \oMux[0]_INST_0_i_4_n_0\
    );
\oMux[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \oMux[0]_INST_0_i_11_n_0\,
      I1 => iSel(0),
      I2 => iEN,
      I3 => iSel(31),
      I4 => \oMux[0]_INST_0_i_12_n_0\,
      I5 => \oMux[0]_INST_0_i_13_n_0\,
      O => \oMux[0]_INST_0_i_5_n_0\
    );
\oMux[0]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \oMux[0]_INST_0_i_14_n_0\,
      I1 => \oMux[0]_INST_0_i_15_n_0\,
      I2 => \oMux[0]_INST_0_i_16_n_0\,
      I3 => \oMux[0]_INST_0_i_17_n_0\,
      O => \oMux[0]_INST_0_i_6_n_0\
    );
\oMux[0]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(15),
      I1 => iMux(26),
      I2 => iSel(14),
      I3 => iMux(28),
      I4 => iSel(13),
      O => \oMux[0]_INST_0_i_7_n_0\
    );
\oMux[0]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(11),
      I1 => iMux(18),
      I2 => iSel(10),
      I3 => iMux(20),
      I4 => iSel(9),
      O => \oMux[0]_INST_0_i_8_n_0\
    );
\oMux[0]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(29),
      I1 => iMux(54),
      I2 => iSel(28),
      I3 => iMux(56),
      I4 => iSel(27),
      O => \oMux[0]_INST_0_i_9_n_0\
    );
\oMux[1]_BUFG_inst\: unisim.vcomponents.BUFG
     port map (
      I => \oMux[1]\,
      O => oMux_BUFG(1)
    );
\oMux[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \oMux[1]_INST_0_i_1_n_0\,
      I1 => \oMux[1]_INST_0_i_2_n_0\,
      I2 => \oMux[1]_INST_0_i_3_n_0\,
      I3 => \oMux[1]_INST_0_i_4_n_0\,
      I4 => \oMux[1]_INST_0_i_5_n_0\,
      I5 => \oMux[1]_INST_0_i_6_n_0\,
      O => \oMux[1]\
    );
\oMux[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A08F8500000000"
    )
        port map (
      I0 => iSel(15),
      I1 => iMux(33),
      I2 => iSel(16),
      I3 => iMux(31),
      I4 => iSel(17),
      I5 => \oMux[1]_INST_0_i_7_n_0\,
      O => \oMux[1]_INST_0_i_1_n_0\
    );
\oMux[1]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(7),
      I1 => iMux(11),
      I2 => iSel(6),
      I3 => iMux(13),
      I4 => iSel(5),
      O => \oMux[1]_INST_0_i_10_n_0\
    );
\oMux[1]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC8800FCCC880030"
    )
        port map (
      I0 => iMux(5),
      I1 => iSel(1),
      I2 => iMux(1),
      I3 => iSel(3),
      I4 => iSel(2),
      I5 => iMux(3),
      O => \oMux[1]_INST_0_i_11_n_0\
    );
\oMux[1]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E323"
    )
        port map (
      I0 => iMux(59),
      I1 => iSel(30),
      I2 => iSel(29),
      I3 => iMux(61),
      O => \oMux[1]_INST_0_i_12_n_0\
    );
\oMux[1]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(27),
      I1 => iMux(51),
      I2 => iSel(26),
      I3 => iMux(53),
      I4 => iSel(25),
      O => \oMux[1]_INST_0_i_13_n_0\
    );
\oMux[1]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(23),
      I1 => iMux(43),
      I2 => iSel(22),
      I3 => iMux(45),
      I4 => iSel(21),
      O => \oMux[1]_INST_0_i_14_n_0\
    );
\oMux[1]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(25),
      I1 => iMux(47),
      I2 => iSel(24),
      I3 => iMux(49),
      I4 => iSel(23),
      O => \oMux[1]_INST_0_i_15_n_0\
    );
\oMux[1]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(19),
      I1 => iMux(35),
      I2 => iSel(18),
      I3 => iMux(37),
      I4 => iSel(17),
      O => \oMux[1]_INST_0_i_16_n_0\
    );
\oMux[1]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(21),
      I1 => iMux(39),
      I2 => iSel(20),
      I3 => iMux(41),
      I4 => iSel(19),
      O => \oMux[1]_INST_0_i_17_n_0\
    );
\oMux[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A08F8500000000"
    )
        port map (
      I0 => iSel(11),
      I1 => iMux(25),
      I2 => iSel(12),
      I3 => iMux(23),
      I4 => iSel(13),
      I5 => \oMux[1]_INST_0_i_8_n_0\,
      O => \oMux[1]_INST_0_i_2_n_0\
    );
\oMux[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A08F8500000000"
    )
        port map (
      I0 => iSel(3),
      I1 => iMux(9),
      I2 => iSel(4),
      I3 => iMux(7),
      I4 => iSel(5),
      I5 => \oMux[1]_INST_0_i_9_n_0\,
      O => \oMux[1]_INST_0_i_3_n_0\
    );
\oMux[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A08F8500000000"
    )
        port map (
      I0 => iSel(7),
      I1 => iMux(17),
      I2 => iSel(8),
      I3 => iMux(15),
      I4 => iSel(9),
      I5 => \oMux[1]_INST_0_i_10_n_0\,
      O => \oMux[1]_INST_0_i_4_n_0\
    );
\oMux[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \oMux[1]_INST_0_i_11_n_0\,
      I1 => iSel(0),
      I2 => iEN,
      I3 => iSel(31),
      I4 => \oMux[1]_INST_0_i_12_n_0\,
      I5 => \oMux[1]_INST_0_i_13_n_0\,
      O => \oMux[1]_INST_0_i_5_n_0\
    );
\oMux[1]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \oMux[1]_INST_0_i_14_n_0\,
      I1 => \oMux[1]_INST_0_i_15_n_0\,
      I2 => \oMux[1]_INST_0_i_16_n_0\,
      I3 => \oMux[1]_INST_0_i_17_n_0\,
      O => \oMux[1]_INST_0_i_6_n_0\
    );
\oMux[1]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(15),
      I1 => iMux(27),
      I2 => iSel(14),
      I3 => iMux(29),
      I4 => iSel(13),
      O => \oMux[1]_INST_0_i_7_n_0\
    );
\oMux[1]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(11),
      I1 => iMux(19),
      I2 => iSel(10),
      I3 => iMux(21),
      I4 => iSel(9),
      O => \oMux[1]_INST_0_i_8_n_0\
    );
\oMux[1]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A40505"
    )
        port map (
      I0 => iSel(29),
      I1 => iMux(55),
      I2 => iSel(28),
      I3 => iMux(57),
      I4 => iSel(27),
      O => \oMux[1]_INST_0_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDL is
  port (
    iClk : in STD_LOGIC;
    iTaps : in STD_LOGIC;
    iReset : in STD_LOGIC;
    oData : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute LENGTH : integer;
  attribute LENGTH of TDL : entity is 8;
end TDL;

architecture STRUCTURE of TDL is
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_10_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_2_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_4_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_6_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_8_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[0].g_firstcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[1].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[2].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[3].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[4].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[5].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[6].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[7].nextcarry4.cmp_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_DL[7].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute box_type : string;
  attribute box_type of \DL[0].g_firstcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[1].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[2].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[3].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[4].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[5].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[6].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[7].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[0].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[10].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[11].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[12].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[13].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[14].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[15].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[16].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[17].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[18].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[19].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[1].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[20].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[21].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[22].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[23].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[24].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[25].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[26].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[27].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[28].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[29].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[2].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[30].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[3].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[4].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[5].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[6].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[7].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[8].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[9].REG\ : label is "PRIMITIVE";
begin
  oData(31) <= 'Z';
\DL[0].g_firstcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => p_13_out(3 downto 0),
      CYINIT => iTaps,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[0].g_firstcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[1].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_13_out(3),
      CO(3 downto 0) => p_12_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[1].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[2].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_12_out(3),
      CO(3 downto 0) => p_10_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[2].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[3].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_10_out(3),
      CO(3 downto 0) => p_8_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[3].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[4].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_8_out(3),
      CO(3 downto 0) => p_6_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[4].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[5].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_6_out(3),
      CO(3 downto 0) => p_4_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[5].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[6].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_4_out(3),
      CO(3 downto 0) => p_2_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[6].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[7].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_2_out(3),
      CO(3) => \NLW_DL[7].nextcarry4.cmp_CARRY4_CO_UNCONNECTED\(3),
      CO(2 downto 0) => p_0_out(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[7].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\REG_TAPS[0].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_13_out(0),
      Q => oData(0),
      R => iReset
    );
\REG_TAPS[10].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_10_out(2),
      Q => oData(10),
      R => iReset
    );
\REG_TAPS[11].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_10_out(3),
      Q => oData(11),
      R => iReset
    );
\REG_TAPS[12].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_8_out(0),
      Q => oData(12),
      R => iReset
    );
\REG_TAPS[13].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_8_out(1),
      Q => oData(13),
      R => iReset
    );
\REG_TAPS[14].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_8_out(2),
      Q => oData(14),
      R => iReset
    );
\REG_TAPS[15].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_8_out(3),
      Q => oData(15),
      R => iReset
    );
\REG_TAPS[16].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_6_out(0),
      Q => oData(16),
      R => iReset
    );
\REG_TAPS[17].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_6_out(1),
      Q => oData(17),
      R => iReset
    );
\REG_TAPS[18].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_6_out(2),
      Q => oData(18),
      R => iReset
    );
\REG_TAPS[19].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_6_out(3),
      Q => oData(19),
      R => iReset
    );
\REG_TAPS[1].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_13_out(1),
      Q => oData(1),
      R => iReset
    );
\REG_TAPS[20].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_4_out(0),
      Q => oData(20),
      R => iReset
    );
\REG_TAPS[21].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_4_out(1),
      Q => oData(21),
      R => iReset
    );
\REG_TAPS[22].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_4_out(2),
      Q => oData(22),
      R => iReset
    );
\REG_TAPS[23].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_4_out(3),
      Q => oData(23),
      R => iReset
    );
\REG_TAPS[24].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_2_out(0),
      Q => oData(24),
      R => iReset
    );
\REG_TAPS[25].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_2_out(1),
      Q => oData(25),
      R => iReset
    );
\REG_TAPS[26].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_2_out(2),
      Q => oData(26),
      R => iReset
    );
\REG_TAPS[27].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_2_out(3),
      Q => oData(27),
      R => iReset
    );
\REG_TAPS[28].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_0_out(0),
      Q => oData(28),
      R => iReset
    );
\REG_TAPS[29].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_0_out(1),
      Q => oData(29),
      R => iReset
    );
\REG_TAPS[2].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_13_out(2),
      Q => oData(2),
      R => iReset
    );
\REG_TAPS[30].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_0_out(2),
      Q => oData(30),
      R => iReset
    );
\REG_TAPS[3].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_13_out(3),
      Q => oData(3),
      R => iReset
    );
\REG_TAPS[4].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_12_out(0),
      Q => oData(4),
      R => iReset
    );
\REG_TAPS[5].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_12_out(1),
      Q => oData(5),
      R => iReset
    );
\REG_TAPS[6].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_12_out(2),
      Q => oData(6),
      R => iReset
    );
\REG_TAPS[7].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_12_out(3),
      Q => oData(7),
      R => iReset
    );
\REG_TAPS[8].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_10_out(0),
      Q => oData(8),
      R => iReset
    );
\REG_TAPS[9].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_10_out(1),
      Q => oData(9),
      R => iReset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TermDecoder is
  port (
    iData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    oData : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end TermDecoder;

architecture STRUCTURE of TermDecoder is
  signal \^odata\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \oData[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oData[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oData[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oData[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oData[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oData[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal temp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \temp_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[3]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \oData[1]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \oData[1]_INST_0_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \oData[3]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \oData[3]_INST_0_i_2\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \temp_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \temp_reg[0]_i_2\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \temp_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \temp_reg[1]_i_3\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \temp_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \temp_reg[3]\ : label is "LD";
begin
  oData(4 downto 0) <= \^odata\(4 downto 0);
\oData[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA0A3A0A0"
    )
        port map (
      I0 => temp(0),
      I1 => iData(13),
      I2 => \^odata\(4),
      I3 => iData(11),
      I4 => \oData[0]_INST_0_i_1_n_0\,
      I5 => \oData[0]_INST_0_i_2_n_0\,
      O => \^odata\(0)
    );
\oData[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FFFFFF54"
    )
        port map (
      I0 => iData(7),
      I1 => \oData[0]_INST_0_i_3_n_0\,
      I2 => iData(6),
      I3 => iData(10),
      I4 => iData(8),
      I5 => iData(9),
      O => \oData[0]_INST_0_i_1_n_0\
    );
\oData[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000200030002"
    )
        port map (
      I0 => iData(14),
      I1 => iData(17),
      I2 => iData(16),
      I3 => iData(15),
      I4 => iData(12),
      I5 => iData(13),
      O => \oData[0]_INST_0_i_2_n_0\
    );
\oData[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEEFE"
    )
        port map (
      I0 => iData(4),
      I1 => iData(2),
      I2 => iData(0),
      I3 => iData(1),
      I4 => iData(3),
      I5 => iData(5),
      O => \oData[0]_INST_0_i_3_n_0\
    );
\oData[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCAAAACCCCAAFA"
    )
        port map (
      I0 => \oData[1]_INST_0_i_1_n_0\,
      I1 => temp(1),
      I2 => \oData[1]_INST_0_i_2_n_0\,
      I3 => iData(11),
      I4 => \^odata\(4),
      I5 => iData(12),
      O => \^odata\(1)
    );
\oData[1]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(13),
      I1 => iData(14),
      O => \oData[1]_INST_0_i_1_n_0\
    );
\oData[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF02"
    )
        port map (
      I0 => \oData[1]_INST_0_i_3_n_0\,
      I1 => iData(7),
      I2 => iData(8),
      I3 => iData(10),
      I4 => iData(9),
      O => \oData[1]_INST_0_i_2_n_0\
    );
\oData[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1110"
    )
        port map (
      I0 => iData(3),
      I1 => iData(4),
      I2 => iData(1),
      I3 => iData(2),
      I4 => iData(6),
      I5 => iData(5),
      O => \oData[1]_INST_0_i_3_n_0\
    );
\oData[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEFEEEEEEEA"
    )
        port map (
      I0 => \oData[3]_INST_0_i_1_n_0\,
      I1 => temp(2),
      I2 => iData(17),
      I3 => iData(16),
      I4 => iData(15),
      I5 => \oData[2]_INST_0_i_1_n_0\,
      O => \^odata\(2)
    );
\oData[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => iData(5),
      I1 => iData(6),
      I2 => iData(3),
      I3 => iData(4),
      I4 => \oData[3]_INST_0_i_2_n_0\,
      O => \oData[2]_INST_0_i_1_n_0\
    );
\oData[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFAFAFAEE"
    )
        port map (
      I0 => \oData[3]_INST_0_i_1_n_0\,
      I1 => \oData[3]_INST_0_i_2_n_0\,
      I2 => temp(3),
      I3 => iData(17),
      I4 => iData(16),
      I5 => iData(15),
      O => \^odata\(3)
    );
\oData[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => iData(13),
      I1 => iData(14),
      I2 => iData(11),
      I3 => iData(12),
      I4 => \^odata\(4),
      O => \oData[3]_INST_0_i_1_n_0\
    );
\oData[3]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(10),
      I1 => iData(8),
      I2 => iData(9),
      I3 => iData(7),
      O => \oData[3]_INST_0_i_2_n_0\
    );
\oData[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => iData(17),
      I1 => iData(16),
      I2 => iData(15),
      O => \^odata\(4)
    );
\temp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(0),
      G => \^odata\(4),
      GE => '1',
      Q => temp(0)
    );
\temp_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4F4F444"
    )
        port map (
      I0 => \temp_reg[1]_i_3_n_0\,
      I1 => iData(28),
      I2 => \temp_reg[0]_i_2_n_0\,
      I3 => iData(22),
      I4 => \temp_reg[0]_i_3_n_0\,
      I5 => \temp_reg[0]_i_4_n_0\,
      O => plusOp(0)
    );
\temp_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => iData(25),
      I1 => iData(23),
      I2 => iData(27),
      I3 => iData(30),
      I4 => iData(29),
      O => \temp_reg[0]_i_2_n_0\
    );
\temp_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEEFE"
    )
        port map (
      I0 => iData(20),
      I1 => iData(18),
      I2 => iData(16),
      I3 => iData(17),
      I4 => iData(19),
      I5 => iData(21),
      O => \temp_reg[0]_i_3_n_0\
    );
\temp_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010001010100"
    )
        port map (
      I0 => iData(27),
      I1 => iData(29),
      I2 => iData(30),
      I3 => iData(26),
      I4 => iData(24),
      I5 => iData(25),
      O => \temp_reg[0]_i_4_n_0\
    );
\temp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(1),
      G => \^odata\(4),
      GE => '1',
      Q => temp(1)
    );
\temp_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABABABAA"
    )
        port map (
      I0 => \temp_reg[1]_i_2_n_0\,
      I1 => iData(27),
      I2 => iData(28),
      I3 => iData(26),
      I4 => iData(25),
      I5 => \temp_reg[1]_i_3_n_0\,
      O => plusOp(1)
    );
\temp_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => iData(23),
      I1 => iData(27),
      I2 => iData(28),
      I3 => iData(24),
      I4 => \temp_reg[1]_i_4_n_0\,
      O => \temp_reg[1]_i_2_n_0\
    );
\temp_reg[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(29),
      I1 => iData(30),
      O => \temp_reg[1]_i_3_n_0\
    );
\temp_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1110"
    )
        port map (
      I0 => iData(19),
      I1 => iData(20),
      I2 => iData(17),
      I3 => iData(18),
      I4 => iData(22),
      I5 => iData(21),
      O => \temp_reg[1]_i_4_n_0\
    );
\temp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(2),
      G => \^odata\(4),
      GE => '1',
      Q => temp(2)
    );
\temp_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0100"
    )
        port map (
      I0 => \temp_reg[2]_i_2_n_0\,
      I1 => iData(23),
      I2 => iData(24),
      I3 => \temp_reg[2]_i_3_n_0\,
      I4 => \temp_reg[3]_i_2_n_0\,
      I5 => iData(27),
      O => plusOp(2)
    );
\temp_reg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(25),
      I1 => iData(26),
      O => \temp_reg[2]_i_2_n_0\
    );
\temp_reg[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(20),
      I1 => iData(19),
      I2 => iData(22),
      I3 => iData(21),
      O => \temp_reg[2]_i_3_n_0\
    );
\temp_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(3),
      G => \^odata\(4),
      GE => '1',
      Q => temp(3)
    );
\temp_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iData(24),
      I1 => \temp_reg[3]_i_2_n_0\,
      I2 => iData(23),
      I3 => iData(27),
      I4 => iData(25),
      I5 => iData(26),
      O => plusOp(3)
    );
\temp_reg[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => iData(28),
      I1 => iData(30),
      I2 => iData(29),
      O => \temp_reg[3]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ThermoDecoderTDL is
  port (
    iData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    oData : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end ThermoDecoderTDL;

architecture STRUCTURE of ThermoDecoderTDL is
  signal \^odata\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \oData[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oData[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oData[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oData[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oData[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oData[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal temp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \temp_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[3]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \oData[1]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \oData[1]_INST_0_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \oData[3]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \oData[3]_INST_0_i_2\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \temp_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \temp_reg[0]_i_2\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \temp_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \temp_reg[1]_i_3\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \temp_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \temp_reg[3]\ : label is "LD";
begin
  oData(4 downto 0) <= \^odata\(4 downto 0);
\oData[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA0A3A0A0"
    )
        port map (
      I0 => temp(0),
      I1 => iData(13),
      I2 => \^odata\(4),
      I3 => iData(11),
      I4 => \oData[0]_INST_0_i_1_n_0\,
      I5 => \oData[0]_INST_0_i_2_n_0\,
      O => \^odata\(0)
    );
\oData[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FFFFFF54"
    )
        port map (
      I0 => iData(7),
      I1 => \oData[0]_INST_0_i_3_n_0\,
      I2 => iData(6),
      I3 => iData(10),
      I4 => iData(8),
      I5 => iData(9),
      O => \oData[0]_INST_0_i_1_n_0\
    );
\oData[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000200030002"
    )
        port map (
      I0 => iData(14),
      I1 => iData(17),
      I2 => iData(16),
      I3 => iData(15),
      I4 => iData(12),
      I5 => iData(13),
      O => \oData[0]_INST_0_i_2_n_0\
    );
\oData[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEEFE"
    )
        port map (
      I0 => iData(4),
      I1 => iData(2),
      I2 => iData(0),
      I3 => iData(1),
      I4 => iData(3),
      I5 => iData(5),
      O => \oData[0]_INST_0_i_3_n_0\
    );
\oData[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCAAAACCCCAAFA"
    )
        port map (
      I0 => \oData[1]_INST_0_i_1_n_0\,
      I1 => temp(1),
      I2 => \oData[1]_INST_0_i_2_n_0\,
      I3 => iData(11),
      I4 => \^odata\(4),
      I5 => iData(12),
      O => \^odata\(1)
    );
\oData[1]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(13),
      I1 => iData(14),
      O => \oData[1]_INST_0_i_1_n_0\
    );
\oData[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF02"
    )
        port map (
      I0 => \oData[1]_INST_0_i_3_n_0\,
      I1 => iData(7),
      I2 => iData(8),
      I3 => iData(10),
      I4 => iData(9),
      O => \oData[1]_INST_0_i_2_n_0\
    );
\oData[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1110"
    )
        port map (
      I0 => iData(3),
      I1 => iData(4),
      I2 => iData(1),
      I3 => iData(2),
      I4 => iData(6),
      I5 => iData(5),
      O => \oData[1]_INST_0_i_3_n_0\
    );
\oData[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEFEEEEEEEA"
    )
        port map (
      I0 => \oData[3]_INST_0_i_1_n_0\,
      I1 => temp(2),
      I2 => iData(17),
      I3 => iData(16),
      I4 => iData(15),
      I5 => \oData[2]_INST_0_i_1_n_0\,
      O => \^odata\(2)
    );
\oData[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => iData(5),
      I1 => iData(6),
      I2 => iData(3),
      I3 => iData(4),
      I4 => \oData[3]_INST_0_i_2_n_0\,
      O => \oData[2]_INST_0_i_1_n_0\
    );
\oData[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFAFAFAEE"
    )
        port map (
      I0 => \oData[3]_INST_0_i_1_n_0\,
      I1 => \oData[3]_INST_0_i_2_n_0\,
      I2 => temp(3),
      I3 => iData(17),
      I4 => iData(16),
      I5 => iData(15),
      O => \^odata\(3)
    );
\oData[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => iData(13),
      I1 => iData(14),
      I2 => iData(11),
      I3 => iData(12),
      I4 => \^odata\(4),
      O => \oData[3]_INST_0_i_1_n_0\
    );
\oData[3]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(10),
      I1 => iData(8),
      I2 => iData(9),
      I3 => iData(7),
      O => \oData[3]_INST_0_i_2_n_0\
    );
\oData[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => iData(17),
      I1 => iData(16),
      I2 => iData(15),
      O => \^odata\(4)
    );
\temp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(0),
      G => \^odata\(4),
      GE => '1',
      Q => temp(0)
    );
\temp_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4F4F444"
    )
        port map (
      I0 => \temp_reg[1]_i_3_n_0\,
      I1 => iData(28),
      I2 => \temp_reg[0]_i_2_n_0\,
      I3 => iData(22),
      I4 => \temp_reg[0]_i_3_n_0\,
      I5 => \temp_reg[0]_i_4_n_0\,
      O => plusOp(0)
    );
\temp_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => iData(25),
      I1 => iData(23),
      I2 => iData(27),
      I3 => iData(30),
      I4 => iData(29),
      O => \temp_reg[0]_i_2_n_0\
    );
\temp_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEEFE"
    )
        port map (
      I0 => iData(20),
      I1 => iData(18),
      I2 => iData(16),
      I3 => iData(17),
      I4 => iData(19),
      I5 => iData(21),
      O => \temp_reg[0]_i_3_n_0\
    );
\temp_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010001010100"
    )
        port map (
      I0 => iData(27),
      I1 => iData(29),
      I2 => iData(30),
      I3 => iData(26),
      I4 => iData(24),
      I5 => iData(25),
      O => \temp_reg[0]_i_4_n_0\
    );
\temp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(1),
      G => \^odata\(4),
      GE => '1',
      Q => temp(1)
    );
\temp_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABABABAA"
    )
        port map (
      I0 => \temp_reg[1]_i_2_n_0\,
      I1 => iData(27),
      I2 => iData(28),
      I3 => iData(26),
      I4 => iData(25),
      I5 => \temp_reg[1]_i_3_n_0\,
      O => plusOp(1)
    );
\temp_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => iData(23),
      I1 => iData(27),
      I2 => iData(28),
      I3 => iData(24),
      I4 => \temp_reg[1]_i_4_n_0\,
      O => \temp_reg[1]_i_2_n_0\
    );
\temp_reg[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(29),
      I1 => iData(30),
      O => \temp_reg[1]_i_3_n_0\
    );
\temp_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1110"
    )
        port map (
      I0 => iData(19),
      I1 => iData(20),
      I2 => iData(17),
      I3 => iData(18),
      I4 => iData(22),
      I5 => iData(21),
      O => \temp_reg[1]_i_4_n_0\
    );
\temp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(2),
      G => \^odata\(4),
      GE => '1',
      Q => temp(2)
    );
\temp_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0100"
    )
        port map (
      I0 => \temp_reg[2]_i_2_n_0\,
      I1 => iData(23),
      I2 => iData(24),
      I3 => \temp_reg[2]_i_3_n_0\,
      I4 => \temp_reg[3]_i_2_n_0\,
      I5 => iData(27),
      O => plusOp(2)
    );
\temp_reg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(25),
      I1 => iData(26),
      O => \temp_reg[2]_i_2_n_0\
    );
\temp_reg[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(20),
      I1 => iData(19),
      I2 => iData(22),
      I3 => iData(21),
      O => \temp_reg[2]_i_3_n_0\
    );
\temp_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(3),
      G => \^odata\(4),
      GE => '1',
      Q => temp(3)
    );
\temp_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iData(24),
      I1 => \temp_reg[3]_i_2_n_0\,
      I2 => iData(23),
      I3 => iData(27),
      I4 => iData(25),
      I5 => iData(26),
      O => plusOp(3)
    );
\temp_reg[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => iData(28),
      I1 => iData(30),
      I2 => iData(29),
      O => \temp_reg[3]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VDL is
  port (
    iLatch : in STD_LOGIC;
    iLut : in STD_LOGIC;
    iReset : in STD_LOGIC;
    oData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    oVDL : out STD_LOGIC_VECTOR ( 61 downto 0 )
  );
  attribute LENGTH : integer;
  attribute LENGTH of VDL : entity is 32;
end VDL;

architecture STRUCTURE of VDL is
  signal luts_31 : STD_LOGIC;
  signal merged : STD_LOGIC_VECTOR ( 61 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of merged : signal is std.standard.true;
  signal \^odata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute box_type : string;
  attribute box_type of \DL[0].LUT_init.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[10].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[11].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[12].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[13].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[14].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[15].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[16].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[17].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[18].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[19].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[1].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[20].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[21].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[22].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[23].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[24].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[25].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[26].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[27].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[28].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[29].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[2].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[30].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[31].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[3].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[4].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[5].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[6].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[7].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[8].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \DL[9].LUT_next.cmp_1LUT\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[0].LATCH_init.LATCH_first\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[10].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[11].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[12].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[13].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[14].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[15].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[16].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[17].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[18].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[19].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[1].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[20].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[21].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[22].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[23].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[24].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[25].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[26].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[27].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[28].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[29].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[2].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[30].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[31].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[3].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[4].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[5].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[6].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[7].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[8].LATCH_next.LATCH\ : label is "PRIMITIVE";
  attribute box_type of \LATCH_TAPS[9].LATCH_next.LATCH\ : label is "PRIMITIVE";
begin
  oData(31 downto 0) <= \^odata\(31 downto 0);
  oVDL(61 downto 0) <= merged(61 downto 0);
\DL[0].LUT_init.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iLut,
      O => merged(0)
    );
\DL[10].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(18),
      O => merged(20)
    );
\DL[11].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(20),
      O => merged(22)
    );
\DL[12].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(22),
      O => merged(24)
    );
\DL[13].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(24),
      O => merged(26)
    );
\DL[14].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(26),
      O => merged(28)
    );
\DL[15].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(28),
      O => merged(30)
    );
\DL[16].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(30),
      O => merged(32)
    );
\DL[17].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(32),
      O => merged(34)
    );
\DL[18].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(34),
      O => merged(36)
    );
\DL[19].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(36),
      O => merged(38)
    );
\DL[1].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(0),
      O => merged(2)
    );
\DL[20].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(38),
      O => merged(40)
    );
\DL[21].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(40),
      O => merged(42)
    );
\DL[22].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(42),
      O => merged(44)
    );
\DL[23].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(44),
      O => merged(46)
    );
\DL[24].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(46),
      O => merged(48)
    );
\DL[25].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(48),
      O => merged(50)
    );
\DL[26].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(50),
      O => merged(52)
    );
\DL[27].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(52),
      O => merged(54)
    );
\DL[28].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(54),
      O => merged(56)
    );
\DL[29].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(56),
      O => merged(58)
    );
\DL[2].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(2),
      O => merged(4)
    );
\DL[30].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(58),
      O => merged(60)
    );
\DL[31].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(60),
      O => luts_31
    );
\DL[3].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(4),
      O => merged(6)
    );
\DL[4].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(6),
      O => merged(8)
    );
\DL[5].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(8),
      O => merged(10)
    );
\DL[6].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(10),
      O => merged(12)
    );
\DL[7].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(12),
      O => merged(14)
    );
\DL[8].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(14),
      O => merged(16)
    );
\DL[9].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => merged(16),
      O => merged(18)
    );
\LATCH_TAPS[0].LATCH_init.LATCH_first\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => iLatch,
      G => merged(0),
      GE => '1',
      Q => \^odata\(0)
    );
\LATCH_TAPS[10].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(9),
      G => merged(20),
      GE => '1',
      Q => \^odata\(10)
    );
\LATCH_TAPS[11].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(10),
      G => merged(22),
      GE => '1',
      Q => \^odata\(11)
    );
\LATCH_TAPS[12].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(11),
      G => merged(24),
      GE => '1',
      Q => \^odata\(12)
    );
\LATCH_TAPS[13].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(12),
      G => merged(26),
      GE => '1',
      Q => \^odata\(13)
    );
\LATCH_TAPS[14].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(13),
      G => merged(28),
      GE => '1',
      Q => \^odata\(14)
    );
\LATCH_TAPS[15].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(14),
      G => merged(30),
      GE => '1',
      Q => \^odata\(15)
    );
\LATCH_TAPS[16].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(15),
      G => merged(32),
      GE => '1',
      Q => \^odata\(16)
    );
\LATCH_TAPS[17].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(16),
      G => merged(34),
      GE => '1',
      Q => \^odata\(17)
    );
\LATCH_TAPS[18].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(17),
      G => merged(36),
      GE => '1',
      Q => \^odata\(18)
    );
\LATCH_TAPS[19].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(18),
      G => merged(38),
      GE => '1',
      Q => \^odata\(19)
    );
\LATCH_TAPS[1].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(0),
      G => merged(2),
      GE => '1',
      Q => \^odata\(1)
    );
\LATCH_TAPS[20].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(19),
      G => merged(40),
      GE => '1',
      Q => \^odata\(20)
    );
\LATCH_TAPS[21].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(20),
      G => merged(42),
      GE => '1',
      Q => \^odata\(21)
    );
\LATCH_TAPS[22].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(21),
      G => merged(44),
      GE => '1',
      Q => \^odata\(22)
    );
\LATCH_TAPS[23].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(22),
      G => merged(46),
      GE => '1',
      Q => \^odata\(23)
    );
\LATCH_TAPS[24].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(23),
      G => merged(48),
      GE => '1',
      Q => \^odata\(24)
    );
\LATCH_TAPS[25].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(24),
      G => merged(50),
      GE => '1',
      Q => \^odata\(25)
    );
\LATCH_TAPS[26].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(25),
      G => merged(52),
      GE => '1',
      Q => \^odata\(26)
    );
\LATCH_TAPS[27].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(26),
      G => merged(54),
      GE => '1',
      Q => \^odata\(27)
    );
\LATCH_TAPS[28].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(27),
      G => merged(56),
      GE => '1',
      Q => \^odata\(28)
    );
\LATCH_TAPS[29].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(28),
      G => merged(58),
      GE => '1',
      Q => \^odata\(29)
    );
\LATCH_TAPS[2].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(1),
      G => merged(4),
      GE => '1',
      Q => \^odata\(2)
    );
\LATCH_TAPS[30].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(29),
      G => merged(60),
      GE => '1',
      Q => \^odata\(30)
    );
\LATCH_TAPS[31].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(30),
      G => luts_31,
      GE => '1',
      Q => \^odata\(31)
    );
\LATCH_TAPS[3].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(2),
      G => merged(6),
      GE => '1',
      Q => \^odata\(3)
    );
\LATCH_TAPS[4].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(3),
      G => merged(8),
      GE => '1',
      Q => \^odata\(4)
    );
\LATCH_TAPS[5].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(4),
      G => merged(10),
      GE => '1',
      Q => \^odata\(5)
    );
\LATCH_TAPS[6].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(5),
      G => merged(12),
      GE => '1',
      Q => \^odata\(6)
    );
\LATCH_TAPS[7].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(6),
      G => merged(14),
      GE => '1',
      Q => \^odata\(7)
    );
\LATCH_TAPS[8].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(7),
      G => merged(16),
      GE => '1',
      Q => \^odata\(8)
    );
\LATCH_TAPS[9].LATCH_next.LATCH\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => iReset,
      D => \^odata\(8),
      G => merged(18),
      GE => '1',
      Q => \^odata\(9)
    );
merged_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(30),
      I1 => \^odata\(31),
      O => merged(61)
    );
merged_inferred_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(21),
      I1 => \^odata\(22),
      O => merged(43)
    );
merged_inferred_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(20),
      I1 => \^odata\(21),
      O => merged(41)
    );
merged_inferred_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(19),
      I1 => \^odata\(20),
      O => merged(39)
    );
merged_inferred_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(18),
      I1 => \^odata\(19),
      O => merged(37)
    );
merged_inferred_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(17),
      I1 => \^odata\(18),
      O => merged(35)
    );
merged_inferred_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(16),
      I1 => \^odata\(17),
      O => merged(33)
    );
merged_inferred_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(15),
      I1 => \^odata\(16),
      O => merged(31)
    );
merged_inferred_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(14),
      I1 => \^odata\(15),
      O => merged(29)
    );
merged_inferred_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(13),
      I1 => \^odata\(14),
      O => merged(27)
    );
merged_inferred_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(12),
      I1 => \^odata\(13),
      O => merged(25)
    );
merged_inferred_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(29),
      I1 => \^odata\(30),
      O => merged(59)
    );
merged_inferred_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(11),
      I1 => \^odata\(12),
      O => merged(23)
    );
merged_inferred_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(10),
      I1 => \^odata\(11),
      O => merged(21)
    );
merged_inferred_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(9),
      I1 => \^odata\(10),
      O => merged(19)
    );
merged_inferred_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(8),
      I1 => \^odata\(9),
      O => merged(17)
    );
merged_inferred_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(7),
      I1 => \^odata\(8),
      O => merged(15)
    );
merged_inferred_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(6),
      I1 => \^odata\(7),
      O => merged(13)
    );
merged_inferred_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(5),
      I1 => \^odata\(6),
      O => merged(11)
    );
merged_inferred_i_27: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(4),
      I1 => \^odata\(5),
      O => merged(9)
    );
merged_inferred_i_28: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(3),
      I1 => \^odata\(4),
      O => merged(7)
    );
merged_inferred_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(2),
      I1 => \^odata\(3),
      O => merged(5)
    );
merged_inferred_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(28),
      I1 => \^odata\(29),
      O => merged(57)
    );
merged_inferred_i_30: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(1),
      I1 => \^odata\(2),
      O => merged(3)
    );
merged_inferred_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(0),
      I1 => \^odata\(1),
      O => merged(1)
    );
merged_inferred_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(27),
      I1 => \^odata\(28),
      O => merged(55)
    );
merged_inferred_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(26),
      I1 => \^odata\(27),
      O => merged(53)
    );
merged_inferred_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(25),
      I1 => \^odata\(26),
      O => merged(51)
    );
merged_inferred_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(24),
      I1 => \^odata\(25),
      O => merged(49)
    );
merged_inferred_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(23),
      I1 => \^odata\(24),
      O => merged(47)
    );
merged_inferred_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^odata\(22),
      I1 => \^odata\(23),
      O => merged(45)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDC is
  port (
    iStart : in STD_LOGIC;
    iStop : in STD_LOGIC;
    iReset : in STD_LOGIC;
    oVDL : out STD_LOGIC_VECTOR ( 4 downto 0 );
    oTDL : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TDC : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of TDC : entity is "fdd807fd";
end TDC;

architecture STRUCTURE of TDC is
  signal Mux_exp_cmp_n_1 : STD_LOGIC;
  signal iClk : STD_LOGIC;
  signal iMuxData : STD_LOGIC_VECTOR ( 61 downto 0 );
  signal iReset_IBUF : STD_LOGIC;
  signal iStart_IBUF : STD_LOGIC;
  signal iStop_IBUF : STD_LOGIC;
  signal iStop_IBUF_BUFG : STD_LOGIC;
  signal oENSignal : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of oENSignal : signal is std.standard.true;
  signal oTDLData : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal oTDL_OBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal oVDLData : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal oVDL_OBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_TDL_cmp_oData_UNCONNECTED : STD_LOGIC_VECTOR ( 31 to 31 );
  signal NLW_TermDecoder_VDL_cmp_iData_UNCONNECTED : STD_LOGIC_VECTOR ( 31 to 31 );
  signal NLW_ThermoDecoderTDL_cmp_iData_UNCONNECTED : STD_LOGIC_VECTOR ( 31 to 31 );
  attribute LENGTH : integer;
  attribute LENGTH of TDL_cmp : label is 8;
  attribute LENGTH of VDL_cmp : label is 32;
begin
EdgeDetector_cmp: entity work.EdgeDetector
     port map (
      iDetector(61 downto 0) => iMuxData(61 downto 0),
      oEN => oENSignal
    );
Mux_exp_cmp: entity work.Mux_exp
     port map (
      iEN => oENSignal,
      iMux(61 downto 0) => iMuxData(61 downto 0),
      iSel(31 downto 0) => oVDLData(31 downto 0),
      oMux(1) => iClk,
      oMux(0) => Mux_exp_cmp_n_1
    );
TDL_cmp: entity work.TDL
     port map (
      iClk => iClk,
      iReset => iReset_IBUF,
      iTaps => Mux_exp_cmp_n_1,
      oData(31) => NLW_TDL_cmp_oData_UNCONNECTED(31),
      oData(30 downto 0) => oTDLData(30 downto 0)
    );
TermDecoder_VDL_cmp: entity work.TermDecoder
     port map (
      iData(31) => NLW_TermDecoder_VDL_cmp_iData_UNCONNECTED(31),
      iData(30 downto 0) => oVDLData(30 downto 0),
      oData(4 downto 0) => oVDL_OBUF(4 downto 0)
    );
ThermoDecoderTDL_cmp: entity work.ThermoDecoderTDL
     port map (
      iData(31) => NLW_ThermoDecoderTDL_cmp_iData_UNCONNECTED(31),
      iData(30 downto 0) => oTDLData(30 downto 0),
      oData(4 downto 0) => oTDL_OBUF(4 downto 0)
    );
VDL_cmp: entity work.VDL
     port map (
      iLatch => iStart_IBUF,
      iLut => iStop_IBUF_BUFG,
      iReset => iReset_IBUF,
      oData(31 downto 0) => oVDLData(31 downto 0),
      oVDL(61 downto 0) => iMuxData(61 downto 0)
    );
iReset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => iReset,
      O => iReset_IBUF
    );
iStart_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => iStart,
      O => iStart_IBUF
    );
iStop_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => iStop_IBUF,
      O => iStop_IBUF_BUFG
    );
iStop_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => iStop,
      O => iStop_IBUF
    );
\oTDL_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oTDL_OBUF(0),
      O => oTDL(0)
    );
\oTDL_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oTDL_OBUF(1),
      O => oTDL(1)
    );
\oTDL_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oTDL_OBUF(2),
      O => oTDL(2)
    );
\oTDL_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oTDL_OBUF(3),
      O => oTDL(3)
    );
\oTDL_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oTDL_OBUF(4),
      O => oTDL(4)
    );
\oVDL_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oVDL_OBUF(0),
      O => oVDL(0)
    );
\oVDL_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oVDL_OBUF(1),
      O => oVDL(1)
    );
\oVDL_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oVDL_OBUF(2),
      O => oVDL(2)
    );
\oVDL_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oVDL_OBUF(3),
      O => oVDL(3)
    );
\oVDL_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oVDL_OBUF(4),
      O => oVDL(4)
    );
end STRUCTURE;
