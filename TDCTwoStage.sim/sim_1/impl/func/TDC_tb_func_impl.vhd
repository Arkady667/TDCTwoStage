-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Tue May 22 20:36:23 2018
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
entity Mux_exp is
  port (
    iMux : in STD_LOGIC_VECTOR ( 61 downto 0 );
    iSel : in STD_LOGIC_VECTOR ( 31 downto 0 );
    oMux : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end Mux_exp;

architecture STRUCTURE of Mux_exp is
  signal \oMux[0]\ : STD_LOGIC;
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
  attribute TOOL_INSERTED_CLOCKBUFG of \oMux[0]_BUFG_inst\ : label is std.standard.true;
begin
  oMux(1 downto 0) <= oMux_BUFG(1 downto 0);
\oMux[0]_BUFG_inst\: unisim.vcomponents.BUFG
     port map (
      I => \oMux[0]\,
      O => oMux_BUFG(0)
    );
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
      O => \oMux[0]\
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
\oMux[0]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000444440000044"
    )
        port map (
      I0 => iSel(31),
      I1 => iSel(0),
      I2 => iMux(60),
      I3 => iSel(29),
      I4 => iSel(30),
      I5 => iMux(58),
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
\oMux[0]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \oMux[0]_INST_0_i_11_n_0\,
      I1 => \oMux[0]_INST_0_i_12_n_0\,
      I2 => \oMux[0]_INST_0_i_13_n_0\,
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
      O => oMux_BUFG(1)
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
\oMux[1]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000444440000044"
    )
        port map (
      I0 => iSel(31),
      I1 => iSel(0),
      I2 => iMux(61),
      I3 => iSel(29),
      I4 => iSel(30),
      I5 => iMux(59),
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
\oMux[1]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \oMux[1]_INST_0_i_11_n_0\,
      I1 => \oMux[1]_INST_0_i_12_n_0\,
      I2 => \oMux[1]_INST_0_i_13_n_0\,
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
    oData : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute LENGTH : integer;
  attribute LENGTH of TDL : entity is 16;
end TDL;

architecture STRUCTURE of TDL is
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_10_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_16_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_18_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_20_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_22_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_24_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_26_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_28_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_29_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_2_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_4_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_6_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_8_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[0].g_firstcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[10].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[11].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[12].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[13].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[14].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[15].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[1].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[2].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[3].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[4].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[5].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[6].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[7].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[8].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DL[9].nextcarry4.cmp_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute box_type : string;
  attribute box_type of \DL[0].g_firstcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[10].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[11].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[12].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[13].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[14].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[15].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[1].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[2].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[3].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[4].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[5].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[6].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[7].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[8].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \DL[9].nextcarry4.cmp_CARRY4\ : label is "PRIMITIVE";
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
  attribute box_type of \REG_TAPS[31].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[32].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[33].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[34].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[35].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[36].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[37].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[38].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[39].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[3].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[40].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[41].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[42].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[43].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[44].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[45].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[46].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[47].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[48].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[49].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[4].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[50].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[51].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[52].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[53].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[54].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[55].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[56].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[57].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[58].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[59].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[5].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[60].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[61].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[62].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[63].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[6].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[7].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[8].REG\ : label is "PRIMITIVE";
  attribute box_type of \REG_TAPS[9].REG\ : label is "PRIMITIVE";
begin
\DL[0].g_firstcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => p_29_out(3 downto 0),
      CYINIT => iTaps,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[0].g_firstcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[10].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_12_out(3),
      CO(3 downto 0) => p_10_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[10].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[11].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_10_out(3),
      CO(3 downto 0) => p_8_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[11].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[12].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_8_out(3),
      CO(3 downto 0) => p_6_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[12].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[13].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_6_out(3),
      CO(3 downto 0) => p_4_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[13].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[14].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_4_out(3),
      CO(3 downto 0) => p_2_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[14].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[15].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_2_out(3),
      CO(3 downto 0) => p_0_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[15].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[1].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_29_out(3),
      CO(3 downto 0) => p_28_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[1].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[2].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_28_out(3),
      CO(3 downto 0) => p_26_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[2].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[3].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_26_out(3),
      CO(3 downto 0) => p_24_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[3].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[4].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_24_out(3),
      CO(3 downto 0) => p_22_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[4].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[5].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_22_out(3),
      CO(3 downto 0) => p_20_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[5].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[6].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_20_out(3),
      CO(3 downto 0) => p_18_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[6].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[7].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_18_out(3),
      CO(3 downto 0) => p_16_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[7].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[8].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_16_out(3),
      CO(3 downto 0) => p_14_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[8].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\DL[9].nextcarry4.cmp_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => p_14_out(3),
      CO(3 downto 0) => p_12_out(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DL[9].nextcarry4.cmp_CARRY4_O_UNCONNECTED\(3 downto 0),
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
      D => p_29_out(0),
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
      D => p_26_out(2),
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
      D => p_26_out(3),
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
      D => p_24_out(0),
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
      D => p_24_out(1),
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
      D => p_24_out(2),
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
      D => p_24_out(3),
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
      D => p_22_out(0),
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
      D => p_22_out(1),
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
      D => p_22_out(2),
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
      D => p_22_out(3),
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
      D => p_29_out(1),
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
      D => p_20_out(0),
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
      D => p_20_out(1),
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
      D => p_20_out(2),
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
      D => p_20_out(3),
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
      D => p_18_out(0),
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
      D => p_18_out(1),
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
      D => p_18_out(2),
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
      D => p_18_out(3),
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
      D => p_16_out(0),
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
      D => p_16_out(1),
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
      D => p_29_out(2),
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
      D => p_16_out(2),
      Q => oData(30),
      R => iReset
    );
\REG_TAPS[31].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_16_out(3),
      Q => oData(31),
      R => iReset
    );
\REG_TAPS[32].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_14_out(0),
      Q => oData(32),
      R => iReset
    );
\REG_TAPS[33].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_14_out(1),
      Q => oData(33),
      R => iReset
    );
\REG_TAPS[34].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_14_out(2),
      Q => oData(34),
      R => iReset
    );
\REG_TAPS[35].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_14_out(3),
      Q => oData(35),
      R => iReset
    );
\REG_TAPS[36].REG\: unisim.vcomponents.FDRE
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
      Q => oData(36),
      R => iReset
    );
\REG_TAPS[37].REG\: unisim.vcomponents.FDRE
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
      Q => oData(37),
      R => iReset
    );
\REG_TAPS[38].REG\: unisim.vcomponents.FDRE
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
      Q => oData(38),
      R => iReset
    );
\REG_TAPS[39].REG\: unisim.vcomponents.FDRE
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
      Q => oData(39),
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
      D => p_29_out(3),
      Q => oData(3),
      R => iReset
    );
\REG_TAPS[40].REG\: unisim.vcomponents.FDRE
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
      Q => oData(40),
      R => iReset
    );
\REG_TAPS[41].REG\: unisim.vcomponents.FDRE
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
      Q => oData(41),
      R => iReset
    );
\REG_TAPS[42].REG\: unisim.vcomponents.FDRE
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
      Q => oData(42),
      R => iReset
    );
\REG_TAPS[43].REG\: unisim.vcomponents.FDRE
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
      Q => oData(43),
      R => iReset
    );
\REG_TAPS[44].REG\: unisim.vcomponents.FDRE
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
      Q => oData(44),
      R => iReset
    );
\REG_TAPS[45].REG\: unisim.vcomponents.FDRE
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
      Q => oData(45),
      R => iReset
    );
\REG_TAPS[46].REG\: unisim.vcomponents.FDRE
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
      Q => oData(46),
      R => iReset
    );
\REG_TAPS[47].REG\: unisim.vcomponents.FDRE
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
      Q => oData(47),
      R => iReset
    );
\REG_TAPS[48].REG\: unisim.vcomponents.FDRE
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
      Q => oData(48),
      R => iReset
    );
\REG_TAPS[49].REG\: unisim.vcomponents.FDRE
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
      Q => oData(49),
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
      D => p_28_out(0),
      Q => oData(4),
      R => iReset
    );
\REG_TAPS[50].REG\: unisim.vcomponents.FDRE
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
      Q => oData(50),
      R => iReset
    );
\REG_TAPS[51].REG\: unisim.vcomponents.FDRE
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
      Q => oData(51),
      R => iReset
    );
\REG_TAPS[52].REG\: unisim.vcomponents.FDRE
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
      Q => oData(52),
      R => iReset
    );
\REG_TAPS[53].REG\: unisim.vcomponents.FDRE
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
      Q => oData(53),
      R => iReset
    );
\REG_TAPS[54].REG\: unisim.vcomponents.FDRE
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
      Q => oData(54),
      R => iReset
    );
\REG_TAPS[55].REG\: unisim.vcomponents.FDRE
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
      Q => oData(55),
      R => iReset
    );
\REG_TAPS[56].REG\: unisim.vcomponents.FDRE
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
      Q => oData(56),
      R => iReset
    );
\REG_TAPS[57].REG\: unisim.vcomponents.FDRE
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
      Q => oData(57),
      R => iReset
    );
\REG_TAPS[58].REG\: unisim.vcomponents.FDRE
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
      Q => oData(58),
      R => iReset
    );
\REG_TAPS[59].REG\: unisim.vcomponents.FDRE
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
      Q => oData(59),
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
      D => p_28_out(1),
      Q => oData(5),
      R => iReset
    );
\REG_TAPS[60].REG\: unisim.vcomponents.FDRE
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
      Q => oData(60),
      R => iReset
    );
\REG_TAPS[61].REG\: unisim.vcomponents.FDRE
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
      Q => oData(61),
      R => iReset
    );
\REG_TAPS[62].REG\: unisim.vcomponents.FDRE
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
      Q => oData(62),
      R => iReset
    );
\REG_TAPS[63].REG\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => p_0_out(3),
      Q => oData(63),
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
      D => p_28_out(2),
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
      D => p_28_out(3),
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
      D => p_26_out(0),
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
      D => p_26_out(1),
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
  attribute INPUTS : integer;
  attribute INPUTS of TermDecoder : entity is 32;
  attribute OUTPUTS : integer;
  attribute OUTPUTS of TermDecoder : entity is 5;
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
  signal \temp_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[3]_i_2_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \temp_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \temp_reg[1]\ : label is "LD";
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
\temp_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(30),
      I1 => iData(31),
      I2 => \temp_reg[0]_i_2_n_0\,
      I3 => \temp_reg[0]_i_3_n_0\,
      O => plusOp(0)
    );
\temp_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2232FFFF22322232"
    )
        port map (
      I0 => iData(28),
      I1 => iData(29),
      I2 => iData(26),
      I3 => iData(27),
      I4 => \temp_reg[3]_i_2_n_0\,
      I5 => iData(22),
      O => \temp_reg[0]_i_2_n_0\
    );
\temp_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FF0002"
    )
        port map (
      I0 => \temp_reg[0]_i_4_n_0\,
      I1 => iData(23),
      I2 => iData(21),
      I3 => \temp_reg[0]_i_5_n_0\,
      I4 => iData(24),
      I5 => iData(25),
      O => \temp_reg[0]_i_3_n_0\
    );
\temp_reg[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5510"
    )
        port map (
      I0 => iData(19),
      I1 => iData(17),
      I2 => iData(16),
      I3 => iData(18),
      I4 => iData(20),
      O => \temp_reg[0]_i_4_n_0\
    );
\temp_reg[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(27),
      I1 => iData(29),
      O => \temp_reg[0]_i_5_n_0\
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
      INIT => X"FEFEFEFEFEFEFFFE"
    )
        port map (
      I0 => iData(30),
      I1 => iData(31),
      I2 => iData(29),
      I3 => \temp_reg[1]_i_2_n_0\,
      I4 => iData(27),
      I5 => iData(28),
      O => plusOp(1)
    );
\temp_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF02"
    )
        port map (
      I0 => \temp_reg[1]_i_3_n_0\,
      I1 => iData(23),
      I2 => iData(24),
      I3 => iData(26),
      I4 => iData(25),
      O => \temp_reg[1]_i_2_n_0\
    );
\temp_reg[1]_i_3\: unisim.vcomponents.LUT6
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
      O => \temp_reg[1]_i_3_n_0\
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
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \temp_reg[2]_i_2_n_0\,
      I1 => iData(29),
      I2 => iData(27),
      I3 => iData(31),
      I4 => iData(30),
      I5 => iData(28),
      O => plusOp(2)
    );
\temp_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => iData(23),
      I1 => iData(25),
      I2 => iData(24),
      I3 => iData(26),
      I4 => \temp_reg[2]_i_3_n_0\,
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
      I1 => iData(28),
      I2 => iData(31),
      I3 => iData(30),
      I4 => \temp_reg[3]_i_2_n_0\,
      I5 => iData(26),
      O => plusOp(3)
    );
\temp_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(25),
      I1 => iData(23),
      I2 => iData(29),
      I3 => iData(27),
      O => \temp_reg[3]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ThermoDecoderTDL is
  port (
    iData : in STD_LOGIC_VECTOR ( 63 downto 0 );
    oData : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute INPUTS : integer;
  attribute INPUTS of ThermoDecoderTDL : entity is 64;
  attribute OUTPUTS : integer;
  attribute OUTPUTS of ThermoDecoderTDL : entity is 6;
end ThermoDecoderTDL;

architecture STRUCTURE of ThermoDecoderTDL is
  signal \^odata\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \oData[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oData[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oData[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oData[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \oData[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \oData[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \oData[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \oData[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \oData[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \oData[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \oData[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oData[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oData[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oData[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \oData[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \oData[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oData[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oData[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oData[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oData[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal temp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \temp_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \temp_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \temp_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_11_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \temp_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \temp_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \temp_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \temp_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \temp_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \temp_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \temp_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \temp_reg[4]_i_4_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \temp_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \temp_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \temp_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \temp_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \temp_reg[4]\ : label is "LD";
begin
  oData(5 downto 0) <= \^odata\(5 downto 0);
\oData[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF40"
    )
        port map (
      I0 => \oData[0]_INST_0_i_1_n_0\,
      I1 => \oData[0]_INST_0_i_2_n_0\,
      I2 => \oData[0]_INST_0_i_3_n_0\,
      I3 => \oData[0]_INST_0_i_4_n_0\,
      I4 => \oData[0]_INST_0_i_5_n_0\,
      O => \^odata\(0)
    );
\oData[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(17),
      I1 => iData(15),
      I2 => iData(21),
      I3 => iData(19),
      O => \oData[0]_INST_0_i_1_n_0\
    );
\oData[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => iData(25),
      I1 => \^odata\(5),
      I2 => iData(23),
      I3 => iData(29),
      I4 => iData(27),
      O => \oData[0]_INST_0_i_2_n_0\
    );
\oData[0]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5510"
    )
        port map (
      I0 => iData(13),
      I1 => iData(11),
      I2 => \oData[0]_INST_0_i_6_n_0\,
      I3 => iData(12),
      I4 => iData(14),
      O => \oData[0]_INST_0_i_3_n_0\
    );
\oData[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFACAFAFAFAC"
    )
        port map (
      I0 => temp(0),
      I1 => \oData[0]_INST_0_i_7_n_0\,
      I2 => \^odata\(5),
      I3 => iData(30),
      I4 => iData(28),
      I5 => iData(29),
      O => \oData[0]_INST_0_i_4_n_0\
    );
\oData[0]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00F400"
    )
        port map (
      I0 => iData(21),
      I1 => iData(20),
      I2 => \oData[0]_INST_0_i_8_n_0\,
      I3 => \oData[0]_INST_0_i_2_n_0\,
      I4 => iData(22),
      O => \oData[0]_INST_0_i_5_n_0\
    );
\oData[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55551110"
    )
        port map (
      I0 => iData(9),
      I1 => iData(7),
      I2 => \oData[0]_INST_0_i_9_n_0\,
      I3 => iData(6),
      I4 => iData(8),
      I5 => iData(10),
      O => \oData[0]_INST_0_i_6_n_0\
    );
\oData[0]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AE"
    )
        port map (
      I0 => iData(26),
      I1 => iData(24),
      I2 => iData(25),
      I3 => iData(29),
      I4 => iData(27),
      O => \oData[0]_INST_0_i_7_n_0\
    );
\oData[0]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AE"
    )
        port map (
      I0 => iData(18),
      I1 => iData(16),
      I2 => iData(17),
      I3 => iData(21),
      I4 => iData(19),
      O => \oData[0]_INST_0_i_8_n_0\
    );
\oData[0]_INST_0_i_9\: unisim.vcomponents.LUT6
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
      O => \oData[0]_INST_0_i_9_n_0\
    );
\oData[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAAA8"
    )
        port map (
      I0 => \oData[1]_INST_0_i_1_n_0\,
      I1 => iData(21),
      I2 => iData(22),
      I3 => \oData[1]_INST_0_i_2_n_0\,
      I4 => \oData[1]_INST_0_i_3_n_0\,
      I5 => \oData[1]_INST_0_i_4_n_0\,
      O => \^odata\(1)
    );
\oData[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => iData(27),
      I1 => iData(24),
      I2 => iData(28),
      I3 => iData(23),
      I4 => \^odata\(5),
      O => \oData[1]_INST_0_i_1_n_0\
    );
\oData[1]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(9),
      I1 => iData(10),
      O => \oData[1]_INST_0_i_10_n_0\
    );
\oData[1]_INST_0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(13),
      I1 => iData(14),
      O => \oData[1]_INST_0_i_11_n_0\
    );
\oData[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101110101010"
    )
        port map (
      I0 => iData(20),
      I1 => iData(19),
      I2 => \oData[1]_INST_0_i_5_n_0\,
      I3 => iData(16),
      I4 => iData(15),
      I5 => \oData[1]_INST_0_i_6_n_0\,
      O => \oData[1]_INST_0_i_2_n_0\
    );
\oData[1]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => iData(31),
      I1 => iData(32),
      I2 => iData(33),
      I3 => temp(1),
      O => \oData[1]_INST_0_i_3_n_0\
    );
\oData[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF0000FF02"
    )
        port map (
      I0 => \oData[1]_INST_0_i_7_n_0\,
      I1 => iData(27),
      I2 => iData(28),
      I3 => iData(30),
      I4 => \^odata\(5),
      I5 => iData(29),
      O => \oData[1]_INST_0_i_4_n_0\
    );
\oData[1]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(17),
      I1 => iData(18),
      O => \oData[1]_INST_0_i_5_n_0\
    );
\oData[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55550100"
    )
        port map (
      I0 => \oData[1]_INST_0_i_8_n_0\,
      I1 => iData(7),
      I2 => iData(8),
      I3 => \oData[1]_INST_0_i_9_n_0\,
      I4 => \oData[1]_INST_0_i_10_n_0\,
      I5 => \oData[1]_INST_0_i_11_n_0\,
      O => \oData[1]_INST_0_i_6_n_0\
    );
\oData[1]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(25),
      I1 => iData(26),
      O => \oData[1]_INST_0_i_7_n_0\
    );
\oData[1]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(11),
      I1 => iData(12),
      O => \oData[1]_INST_0_i_8_n_0\
    );
\oData[1]_INST_0_i_9\: unisim.vcomponents.LUT6
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
      O => \oData[1]_INST_0_i_9_n_0\
    );
\oData[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAC0C0FFEA"
    )
        port map (
      I0 => \oData[2]_INST_0_i_1_n_0\,
      I1 => \oData[2]_INST_0_i_2_n_0\,
      I2 => \oData[2]_INST_0_i_3_n_0\,
      I3 => iData(28),
      I4 => \^odata\(5),
      I5 => temp(2),
      O => \^odata\(2)
    );
\oData[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => iData(29),
      I1 => iData(27),
      I2 => iData(30),
      O => \oData[2]_INST_0_i_1_n_0\
    );
\oData[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000002"
    )
        port map (
      I0 => \oData[2]_INST_0_i_4_n_0\,
      I1 => iData(18),
      I2 => iData(16),
      I3 => iData(17),
      I4 => iData(15),
      I5 => \oData[2]_INST_0_i_5_n_0\,
      O => \oData[2]_INST_0_i_2_n_0\
    );
\oData[2]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => iData(26),
      I1 => iData(24),
      I2 => iData(25),
      I3 => \^odata\(5),
      I4 => iData(23),
      O => \oData[2]_INST_0_i_3_n_0\
    );
\oData[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55555554"
    )
        port map (
      I0 => \oData[3]_INST_0_i_2_n_0\,
      I1 => iData(4),
      I2 => iData(3),
      I3 => iData(6),
      I4 => iData(5),
      I5 => \oData[3]_INST_0_i_1_n_0\,
      O => \oData[2]_INST_0_i_4_n_0\
    );
\oData[2]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(22),
      I1 => iData(20),
      I2 => iData(21),
      I3 => iData(19),
      O => \oData[2]_INST_0_i_5_n_0\
    );
\oData[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAABBBABBBA"
    )
        port map (
      I0 => \oData[4]_INST_0_i_1_n_0\,
      I1 => \oData[4]_INST_0_i_2_n_0\,
      I2 => \oData[3]_INST_0_i_1_n_0\,
      I3 => \oData[3]_INST_0_i_2_n_0\,
      I4 => temp(3),
      I5 => \^odata\(5),
      O => \^odata\(3)
    );
\oData[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(12),
      I1 => iData(11),
      I2 => iData(14),
      I3 => iData(13),
      O => \oData[3]_INST_0_i_1_n_0\
    );
\oData[3]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(8),
      I1 => iData(7),
      I2 => iData(10),
      I3 => iData(9),
      O => \oData[3]_INST_0_i_2_n_0\
    );
\oData[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFAFAFAEE"
    )
        port map (
      I0 => \oData[4]_INST_0_i_1_n_0\,
      I1 => \oData[4]_INST_0_i_2_n_0\,
      I2 => temp(4),
      I3 => iData(33),
      I4 => iData(32),
      I5 => iData(31),
      O => \^odata\(4)
    );
\oData[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => iData(28),
      I1 => iData(24),
      I2 => iData(23),
      I3 => \oData[4]_INST_0_i_3_n_0\,
      I4 => \^odata\(5),
      O => \oData[4]_INST_0_i_1_n_0\
    );
\oData[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => iData(20),
      I1 => iData(22),
      I2 => iData(16),
      I3 => iData(18),
      I4 => \oData[0]_INST_0_i_1_n_0\,
      O => \oData[4]_INST_0_i_2_n_0\
    );
\oData[4]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => iData(30),
      I1 => iData(27),
      I2 => iData(29),
      I3 => iData(26),
      I4 => iData(25),
      O => \oData[4]_INST_0_i_3_n_0\
    );
\oData[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => iData(33),
      I1 => iData(32),
      I2 => iData(31),
      O => \^odata\(5)
    );
\temp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(0),
      G => \^odata\(5),
      GE => '1',
      Q => temp(0)
    );
\temp_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \temp_reg[0]_i_2_n_0\,
      I1 => iData(63),
      I2 => iData(62),
      I3 => \temp_reg[0]_i_3_n_0\,
      I4 => \temp_reg[0]_i_4_n_0\,
      O => plusOp(0)
    );
\temp_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00002232"
    )
        port map (
      I0 => iData(58),
      I1 => iData(59),
      I2 => iData(56),
      I3 => iData(57),
      I4 => iData(61),
      I5 => iData(60),
      O => \temp_reg[0]_i_2_n_0\
    );
\temp_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAA0000FFBA"
    )
        port map (
      I0 => iData(46),
      I1 => iData(43),
      I2 => \temp_reg[0]_i_5_n_0\,
      I3 => iData(44),
      I4 => \temp_reg[4]_i_4_n_0\,
      I5 => iData(45),
      O => \temp_reg[0]_i_3_n_0\
    );
\temp_reg[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00F4"
    )
        port map (
      I0 => iData(53),
      I1 => iData(52),
      I2 => iData(54),
      I3 => \temp_reg[3]_i_2_n_0\,
      I4 => \temp_reg[0]_i_6_n_0\,
      O => \temp_reg[0]_i_4_n_0\
    );
\temp_reg[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55551110"
    )
        port map (
      I0 => iData(41),
      I1 => iData(39),
      I2 => \temp_reg[0]_i_7_n_0\,
      I3 => iData(38),
      I4 => iData(40),
      I5 => iData(42),
      O => \temp_reg[0]_i_5_n_0\
    );
\temp_reg[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AE"
    )
        port map (
      I0 => iData(50),
      I1 => iData(48),
      I2 => iData(49),
      I3 => iData(53),
      I4 => iData(51),
      O => \temp_reg[0]_i_6_n_0\
    );
\temp_reg[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEEFE"
    )
        port map (
      I0 => iData(36),
      I1 => iData(34),
      I2 => iData(32),
      I3 => iData(33),
      I4 => iData(35),
      I5 => iData(37),
      O => \temp_reg[0]_i_7_n_0\
    );
\temp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(1),
      G => \^odata\(5),
      GE => '1',
      Q => temp(1)
    );
\temp_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFEEE"
    )
        port map (
      I0 => \temp_reg[1]_i_2_n_0\,
      I1 => \temp_reg[1]_i_3_n_0\,
      I2 => \temp_reg[1]_i_4_n_0\,
      I3 => iData(53),
      I4 => iData(54),
      I5 => \temp_reg[1]_i_5_n_0\,
      O => plusOp(1)
    );
\temp_reg[1]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(41),
      I1 => iData(42),
      O => \temp_reg[1]_i_10_n_0\
    );
\temp_reg[1]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(45),
      I1 => iData(46),
      O => \temp_reg[1]_i_11_n_0\
    );
\temp_reg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => iData(61),
      I1 => iData(63),
      I2 => iData(62),
      O => \temp_reg[1]_i_2_n_0\
    );
\temp_reg[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => iData(58),
      I1 => iData(57),
      I2 => iData(60),
      I3 => iData(59),
      O => \temp_reg[1]_i_3_n_0\
    );
\temp_reg[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => iData(59),
      I1 => iData(55),
      I2 => iData(60),
      I3 => iData(56),
      O => \temp_reg[1]_i_4_n_0\
    );
\temp_reg[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101110101010"
    )
        port map (
      I0 => iData(52),
      I1 => iData(51),
      I2 => \temp_reg[1]_i_6_n_0\,
      I3 => iData(48),
      I4 => iData(47),
      I5 => \temp_reg[1]_i_7_n_0\,
      O => \temp_reg[1]_i_5_n_0\
    );
\temp_reg[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(49),
      I1 => iData(50),
      O => \temp_reg[1]_i_6_n_0\
    );
\temp_reg[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55550100"
    )
        port map (
      I0 => \temp_reg[1]_i_8_n_0\,
      I1 => iData(39),
      I2 => iData(40),
      I3 => \temp_reg[1]_i_9_n_0\,
      I4 => \temp_reg[1]_i_10_n_0\,
      I5 => \temp_reg[1]_i_11_n_0\,
      O => \temp_reg[1]_i_7_n_0\
    );
\temp_reg[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(43),
      I1 => iData(44),
      O => \temp_reg[1]_i_8_n_0\
    );
\temp_reg[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1110"
    )
        port map (
      I0 => iData(35),
      I1 => iData(36),
      I2 => iData(33),
      I3 => iData(34),
      I4 => iData(38),
      I5 => iData(37),
      O => \temp_reg[1]_i_9_n_0\
    );
\temp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(2),
      G => \^odata\(5),
      GE => '1',
      Q => temp(2)
    );
\temp_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iData(60),
      I1 => iData(59),
      I2 => \temp_reg[2]_i_2_n_0\,
      I3 => iData(61),
      I4 => iData(63),
      I5 => iData(62),
      O => plusOp(2)
    );
\temp_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAA8AAA8"
    )
        port map (
      I0 => \temp_reg[2]_i_3_n_0\,
      I1 => iData(54),
      I2 => iData(52),
      I3 => \temp_reg[2]_i_4_n_0\,
      I4 => \temp_reg[2]_i_5_n_0\,
      I5 => \temp_reg[2]_i_6_n_0\,
      O => \temp_reg[2]_i_2_n_0\
    );
\temp_reg[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => iData(56),
      I1 => iData(55),
      I2 => iData(58),
      I3 => iData(57),
      O => \temp_reg[2]_i_3_n_0\
    );
\temp_reg[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(51),
      I1 => iData(53),
      O => \temp_reg[2]_i_4_n_0\
    );
\temp_reg[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => iData(50),
      I1 => iData(48),
      I2 => iData(49),
      I3 => iData(47),
      O => \temp_reg[2]_i_5_n_0\
    );
\temp_reg[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55555554"
    )
        port map (
      I0 => \temp_reg[2]_i_7_n_0\,
      I1 => iData(36),
      I2 => iData(35),
      I3 => iData(38),
      I4 => iData(37),
      I5 => \temp_reg[3]_i_6_n_0\,
      O => \temp_reg[2]_i_6_n_0\
    );
\temp_reg[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(40),
      I1 => iData(39),
      I2 => iData(42),
      I3 => iData(41),
      O => \temp_reg[2]_i_7_n_0\
    );
\temp_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(3),
      G => \^odata\(5),
      GE => '1',
      Q => temp(3)
    );
\temp_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEFEEEE"
    )
        port map (
      I0 => \temp_reg[3]_i_2_n_0\,
      I1 => iData(58),
      I2 => \temp_reg[3]_i_3_n_0\,
      I3 => \temp_reg[4]_i_3_n_0\,
      I4 => \temp_reg[3]_i_4_n_0\,
      I5 => \temp_reg[3]_i_5_n_0\,
      O => plusOp(3)
    );
\temp_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(61),
      I1 => iData(57),
      I2 => iData(59),
      I3 => iData(55),
      O => \temp_reg[3]_i_2_n_0\
    );
\temp_reg[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(49),
      I1 => iData(47),
      I2 => iData(53),
      I3 => iData(51),
      O => \temp_reg[3]_i_3_n_0\
    );
\temp_reg[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => iData(41),
      I1 => iData(42),
      I2 => iData(39),
      I3 => iData(40),
      I4 => \temp_reg[3]_i_6_n_0\,
      O => \temp_reg[3]_i_4_n_0\
    );
\temp_reg[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(60),
      I1 => iData(56),
      I2 => iData(63),
      I3 => iData(62),
      O => \temp_reg[3]_i_5_n_0\
    );
\temp_reg[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(44),
      I1 => iData(43),
      I2 => iData(46),
      I3 => iData(45),
      O => \temp_reg[3]_i_6_n_0\
    );
\temp_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp(4),
      G => \^odata\(5),
      GE => '1',
      Q => temp(4)
    );
\temp_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iData(60),
      I1 => iData(56),
      I2 => \temp_reg[4]_i_2_n_0\,
      I3 => \temp_reg[4]_i_3_n_0\,
      I4 => \temp_reg[4]_i_4_n_0\,
      I5 => iData(58),
      O => plusOp(4)
    );
\temp_reg[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData(62),
      I1 => iData(63),
      O => \temp_reg[4]_i_2_n_0\
    );
\temp_reg[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData(50),
      I1 => iData(48),
      I2 => iData(54),
      I3 => iData(52),
      O => \temp_reg[4]_i_3_n_0\
    );
\temp_reg[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => iData(51),
      I1 => iData(53),
      I2 => iData(47),
      I3 => iData(49),
      I4 => \temp_reg[3]_i_2_n_0\,
      O => \temp_reg[4]_i_4_n_0\
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
  signal oMerged : STD_LOGIC_VECTOR ( 61 downto 0 );
  attribute DONT_TOUCH of oMerged : signal is std.standard.true;
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
  attribute box_type of \OUT_REG[0].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[10].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[11].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[12].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[13].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[14].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[15].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[16].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[17].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[18].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[19].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[1].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[20].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[21].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[22].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[23].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[24].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[25].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[26].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[27].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[28].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[29].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[2].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[30].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[31].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[32].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[33].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[34].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[35].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[36].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[37].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[38].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[39].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[3].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[40].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[41].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[42].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[43].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[44].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[45].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[46].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[47].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[48].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[49].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[4].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[50].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[51].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[52].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[53].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[54].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[55].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[56].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[57].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[58].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[59].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[5].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[60].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[61].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[6].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[7].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[8].REG_cmp\ : label is "PRIMITIVE";
  attribute box_type of \OUT_REG[9].REG_cmp\ : label is "PRIMITIVE";
begin
  oData(31 downto 0) <= \^odata\(31 downto 0);
  oVDL(61 downto 0) <= oMerged(61 downto 0);
\DL[0].LUT_init.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iLut,
      I1 => iLut,
      O => merged(0)
    );
\DL[10].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(18),
      I1 => merged(18),
      O => merged(20)
    );
\DL[11].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(20),
      I1 => merged(20),
      O => merged(22)
    );
\DL[12].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(22),
      I1 => merged(22),
      O => merged(24)
    );
\DL[13].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(24),
      I1 => merged(24),
      O => merged(26)
    );
\DL[14].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(26),
      I1 => merged(26),
      O => merged(28)
    );
\DL[15].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(28),
      I1 => merged(28),
      O => merged(30)
    );
\DL[16].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(30),
      I1 => merged(30),
      O => merged(32)
    );
\DL[17].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(32),
      I1 => merged(32),
      O => merged(34)
    );
\DL[18].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(34),
      I1 => merged(34),
      O => merged(36)
    );
\DL[19].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(36),
      I1 => merged(36),
      O => merged(38)
    );
\DL[1].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(0),
      I1 => merged(0),
      O => merged(2)
    );
\DL[20].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(38),
      I1 => merged(38),
      O => merged(40)
    );
\DL[21].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(40),
      I1 => merged(40),
      O => merged(42)
    );
\DL[22].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(42),
      I1 => merged(42),
      O => merged(44)
    );
\DL[23].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(44),
      I1 => merged(44),
      O => merged(46)
    );
\DL[24].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(46),
      I1 => merged(46),
      O => merged(48)
    );
\DL[25].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(48),
      I1 => merged(48),
      O => merged(50)
    );
\DL[26].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(50),
      I1 => merged(50),
      O => merged(52)
    );
\DL[27].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(52),
      I1 => merged(52),
      O => merged(54)
    );
\DL[28].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(54),
      I1 => merged(54),
      O => merged(56)
    );
\DL[29].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(56),
      I1 => merged(56),
      O => merged(58)
    );
\DL[2].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(2),
      I1 => merged(2),
      O => merged(4)
    );
\DL[30].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(58),
      I1 => merged(58),
      O => merged(60)
    );
\DL[31].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(60),
      I1 => merged(60),
      O => luts_31
    );
\DL[3].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(4),
      I1 => merged(4),
      O => merged(6)
    );
\DL[4].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(6),
      I1 => merged(6),
      O => merged(8)
    );
\DL[5].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(8),
      I1 => merged(8),
      O => merged(10)
    );
\DL[6].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(10),
      I1 => merged(10),
      O => merged(12)
    );
\DL[7].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(12),
      I1 => merged(12),
      O => merged(14)
    );
\DL[8].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(14),
      I1 => merged(14),
      O => merged(16)
    );
\DL[9].LUT_next.cmp_1LUT\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => merged(16),
      I1 => merged(16),
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
\OUT_REG[0].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(0),
      Q => oMerged(0)
    );
\OUT_REG[10].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(10),
      Q => oMerged(10)
    );
\OUT_REG[11].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(11),
      Q => oMerged(11)
    );
\OUT_REG[12].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(12),
      Q => oMerged(12)
    );
\OUT_REG[13].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(13),
      Q => oMerged(13)
    );
\OUT_REG[14].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(14),
      Q => oMerged(14)
    );
\OUT_REG[15].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(15),
      Q => oMerged(15)
    );
\OUT_REG[16].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(16),
      Q => oMerged(16)
    );
\OUT_REG[17].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(17),
      Q => oMerged(17)
    );
\OUT_REG[18].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(18),
      Q => oMerged(18)
    );
\OUT_REG[19].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(19),
      Q => oMerged(19)
    );
\OUT_REG[1].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(1),
      Q => oMerged(1)
    );
\OUT_REG[20].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(20),
      Q => oMerged(20)
    );
\OUT_REG[21].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(21),
      Q => oMerged(21)
    );
\OUT_REG[22].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(22),
      Q => oMerged(22)
    );
\OUT_REG[23].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(23),
      Q => oMerged(23)
    );
\OUT_REG[24].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(24),
      Q => oMerged(24)
    );
\OUT_REG[25].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(25),
      Q => oMerged(25)
    );
\OUT_REG[26].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(26),
      Q => oMerged(26)
    );
\OUT_REG[27].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(27),
      Q => oMerged(27)
    );
\OUT_REG[28].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(28),
      Q => oMerged(28)
    );
\OUT_REG[29].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(29),
      Q => oMerged(29)
    );
\OUT_REG[2].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(2),
      Q => oMerged(2)
    );
\OUT_REG[30].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(30),
      Q => oMerged(30)
    );
\OUT_REG[31].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(31),
      Q => oMerged(31)
    );
\OUT_REG[32].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(32),
      Q => oMerged(32)
    );
\OUT_REG[33].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(33),
      Q => oMerged(33)
    );
\OUT_REG[34].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(34),
      Q => oMerged(34)
    );
\OUT_REG[35].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(35),
      Q => oMerged(35)
    );
\OUT_REG[36].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(36),
      Q => oMerged(36)
    );
\OUT_REG[37].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(37),
      Q => oMerged(37)
    );
\OUT_REG[38].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(38),
      Q => oMerged(38)
    );
\OUT_REG[39].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(39),
      Q => oMerged(39)
    );
\OUT_REG[3].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(3),
      Q => oMerged(3)
    );
\OUT_REG[40].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(40),
      Q => oMerged(40)
    );
\OUT_REG[41].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(41),
      Q => oMerged(41)
    );
\OUT_REG[42].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(42),
      Q => oMerged(42)
    );
\OUT_REG[43].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(43),
      Q => oMerged(43)
    );
\OUT_REG[44].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(44),
      Q => oMerged(44)
    );
\OUT_REG[45].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(45),
      Q => oMerged(45)
    );
\OUT_REG[46].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(46),
      Q => oMerged(46)
    );
\OUT_REG[47].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(47),
      Q => oMerged(47)
    );
\OUT_REG[48].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(48),
      Q => oMerged(48)
    );
\OUT_REG[49].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(49),
      Q => oMerged(49)
    );
\OUT_REG[4].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(4),
      Q => oMerged(4)
    );
\OUT_REG[50].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(50),
      Q => oMerged(50)
    );
\OUT_REG[51].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(51),
      Q => oMerged(51)
    );
\OUT_REG[52].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(52),
      Q => oMerged(52)
    );
\OUT_REG[53].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(53),
      Q => oMerged(53)
    );
\OUT_REG[54].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(54),
      Q => oMerged(54)
    );
\OUT_REG[55].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(55),
      Q => oMerged(55)
    );
\OUT_REG[56].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(56),
      Q => oMerged(56)
    );
\OUT_REG[57].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(57),
      Q => oMerged(57)
    );
\OUT_REG[58].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(58),
      Q => oMerged(58)
    );
\OUT_REG[59].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(59),
      Q => oMerged(59)
    );
\OUT_REG[5].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(5),
      Q => oMerged(5)
    );
\OUT_REG[60].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(60),
      Q => oMerged(60)
    );
\OUT_REG[61].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(61),
      Q => oMerged(61)
    );
\OUT_REG[6].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(6),
      Q => oMerged(6)
    );
\OUT_REG[7].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(7),
      Q => oMerged(7)
    );
\OUT_REG[8].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(8),
      Q => oMerged(8)
    );
\OUT_REG[9].REG_cmp\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => '1',
      CE => '1',
      D => '1',
      PRE => merged(9),
      Q => oMerged(9)
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
    Clk : in STD_LOGIC;
    iStart : in STD_LOGIC;
    iStop : in STD_LOGIC;
    iReset : in STD_LOGIC;
    oVDL : out STD_LOGIC_VECTOR ( 4 downto 0 );
    oTDL : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TDC : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of TDC : entity is "c8694c2b";
end TDC;

architecture STRUCTURE of TDC is
  signal Mux_exp_cmp_n_1 : STD_LOGIC;
  signal iMuxData : STD_LOGIC_VECTOR ( 61 downto 0 );
  signal iReset_IBUF : STD_LOGIC;
  signal iStart_IBUF : STD_LOGIC;
  signal iStop_IBUF : STD_LOGIC;
  signal iTaps : STD_LOGIC;
  signal oStart : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of oStart : signal is std.standard.true;
  signal oStop : STD_LOGIC;
  attribute DONT_TOUCH of oStop : signal is std.standard.true;
  signal oTDLData : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal oTDLDecoder : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute DONT_TOUCH of oTDLDecoder : signal is std.standard.true;
  signal oVDLData : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal oVDLDecoder : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute DONT_TOUCH of oVDLDecoder : signal is std.standard.true;
  attribute box_type : string;
  attribute box_type of REG_SP : label is "PRIMITIVE";
  attribute box_type of REG_ST : label is "PRIMITIVE";
  attribute LENGTH : integer;
  attribute LENGTH of TDL_cmp : label is 16;
  attribute INPUTS : integer;
  attribute INPUTS of TermDecoder_VDL_cmp : label is 32;
  attribute OUTPUTS : integer;
  attribute OUTPUTS of TermDecoder_VDL_cmp : label is 5;
  attribute INPUTS of ThermoDecoderTDL_cmp : label is 64;
  attribute OUTPUTS of ThermoDecoderTDL_cmp : label is 6;
  attribute LENGTH of VDL_cmp : label is 32;
  attribute clock_buffer_type : string;
  attribute clock_buffer_type of iStart_IBUF_inst : label is "none";
  attribute io_buffer_type : string;
  attribute io_buffer_type of iStart_IBUF_inst : label is "ibuf";
  attribute clock_buffer_type of iStop_IBUF_inst : label is "none";
  attribute io_buffer_type of iStop_IBUF_inst : label is "ibuf";
begin
Mux_exp_cmp: entity work.Mux_exp
     port map (
      iMux(61 downto 0) => iMuxData(61 downto 0),
      iSel(31 downto 0) => oVDLData(31 downto 0),
      oMux(1) => iTaps,
      oMux(0) => Mux_exp_cmp_n_1
    );
REG_SP: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iStop_IBUF,
      CE => '1',
      D => '1',
      Q => oStop,
      R => iReset_IBUF
    );
REG_ST: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => iStart_IBUF,
      CE => '1',
      D => '1',
      Q => oStart,
      R => iReset_IBUF
    );
TDL_cmp: entity work.TDL
     port map (
      iClk => Mux_exp_cmp_n_1,
      iReset => iReset_IBUF,
      iTaps => iTaps,
      oData(63 downto 0) => oTDLData(63 downto 0)
    );
TermDecoder_VDL_cmp: entity work.TermDecoder
     port map (
      iData(31 downto 0) => oVDLData(31 downto 0),
      oData(4 downto 0) => oVDLDecoder(4 downto 0)
    );
ThermoDecoderTDL_cmp: entity work.ThermoDecoderTDL
     port map (
      iData(63 downto 0) => oTDLData(63 downto 0),
      oData(5 downto 0) => oTDLDecoder(5 downto 0)
    );
VDL_cmp: entity work.VDL
     port map (
      iLatch => oStart,
      iLut => oStop,
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
iStop_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => iStop,
      O => iStop_IBUF
    );
\oTDL_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oTDLDecoder(0),
      O => oTDL(0)
    );
\oTDL_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oTDLDecoder(1),
      O => oTDL(1)
    );
\oTDL_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oTDLDecoder(2),
      O => oTDL(2)
    );
\oTDL_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oTDLDecoder(3),
      O => oTDL(3)
    );
\oTDL_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oTDLDecoder(4),
      O => oTDL(4)
    );
\oTDL_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oTDLDecoder(5),
      O => oTDL(5)
    );
\oVDL_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oVDLDecoder(0),
      O => oVDL(0)
    );
\oVDL_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oVDLDecoder(1),
      O => oVDL(1)
    );
\oVDL_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oVDLDecoder(2),
      O => oVDL(2)
    );
\oVDL_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oVDLDecoder(3),
      O => oVDL(3)
    );
\oVDL_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oVDLDecoder(4),
      O => oVDL(4)
    );
end STRUCTURE;
