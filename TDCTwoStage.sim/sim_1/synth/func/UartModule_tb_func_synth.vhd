-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Wed May 23 22:53:02 2018
-- Host        : hal running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file {/home/arkady/Documents/Vivado
--               Projects/TDCTwoStage/TDCTwoStage.sim/sim_1/synth/func/UartModule_tb_func_synth.vhd}
-- Design      : UartModule
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Control is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iVDLFull : in STD_LOGIC;
    iVDLEmpty : in STD_LOGIC;
    iTDLFull : in STD_LOGIC;
    iTDLEmpty : in STD_LOGIC;
    iTxReady : in STD_LOGIC;
    oSelMux : out STD_LOGIC;
    oWrEnVDL : out STD_LOGIC;
    oWrEnTDL : out STD_LOGIC;
    oRdEnVDL : out STD_LOGIC;
    oRdEnTDL : out STD_LOGIC;
    oStartTx : out STD_LOGIC;
    oReset : out STD_LOGIC
  );
end Control;

architecture STRUCTURE of Control is
  signal \FSM_sequential_r[state][0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r[state][0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r[state][1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r[state][1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r[state][2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r[state][2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r[state][2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_reg[state][2]_i_2_n_0\ : STD_LOGIC;
  signal \^ordentdl\ : STD_LOGIC;
  signal \^ordenvdl\ : STD_LOGIC;
  signal \^oreset\ : STD_LOGIC;
  signal \^oselmux\ : STD_LOGIC;
  signal \^ostarttx\ : STD_LOGIC;
  signal \^owrentdl\ : STD_LOGIC;
  signal \^owrenvdl\ : STD_LOGIC;
  signal \r[RdEnTDL]_i_1_n_0\ : STD_LOGIC;
  signal \r[RdEnTDL]_i_2_n_0\ : STD_LOGIC;
  signal \r[RdEnVDL]_i_1_n_0\ : STD_LOGIC;
  signal \r[RdEnVDL]_i_2_n_0\ : STD_LOGIC;
  signal \r[i]_i_1_n_0\ : STD_LOGIC;
  signal \r[i]_i_2_n_0\ : STD_LOGIC;
  signal \r[j]_i_1_n_0\ : STD_LOGIC;
  signal \r[k]_i_1_n_0\ : STD_LOGIC;
  signal \r[k]_i_2_n_0\ : STD_LOGIC;
  signal \r[reset]_i_1_n_0\ : STD_LOGIC;
  signal \r[selMux]_i_1_n_0\ : STD_LOGIC;
  signal \r[startTx]_i_1_n_0\ : STD_LOGIC;
  signal \r[startTx]_i_2_n_0\ : STD_LOGIC;
  signal \r[startTx]_i_3_n_0\ : STD_LOGIC;
  signal \r[wrEnTDL]_i_1_n_0\ : STD_LOGIC;
  signal \r[wrEnVDL]_i_1_n_0\ : STD_LOGIC;
  signal \r[wrEnVDL]_i_3_n_0\ : STD_LOGIC;
  signal \r_reg[i]__0\ : STD_LOGIC;
  signal \r_reg[j_n_0_]\ : STD_LOGIC;
  signal \r_reg[k_n_0_]\ : STD_LOGIC;
  signal \r_reg[state]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \r_reg[state]\ : signal is "yes";
  signal \v[selMux]\ : STD_LOGIC;
  signal \v[state]07_out\ : STD_LOGIC;
  signal \v[state]16_out\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_r_reg[state][0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_r_reg[state][1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_r_reg[state][2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r[RdEnTDL]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r[RdEnVDL]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r[wrEnTDL]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r[wrEnVDL]_i_2\ : label is "soft_lutpair12";
begin
  oRdEnTDL <= \^ordentdl\;
  oRdEnVDL <= \^ordenvdl\;
  oReset <= \^oreset\;
  oSelMux <= \^oselmux\;
  oStartTx <= \^ostarttx\;
  oWrEnTDL <= \^owrentdl\;
  oWrEnVDL <= \^owrenvdl\;
\FSM_sequential_r[state][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11FD1101"
    )
        port map (
      I0 => \FSM_sequential_r[state][0]_i_2_n_0\,
      I1 => \r_reg[state]\(2),
      I2 => \r_reg[state]\(1),
      I3 => \FSM_sequential_r_reg[state][2]_i_2_n_0\,
      I4 => \r_reg[state]\(0),
      O => \FSM_sequential_r[state][0]_i_1_n_0\
    );
\FSM_sequential_r[state][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000008FFF0F0F8F"
    )
        port map (
      I0 => iTDLFull,
      I1 => \r_reg[i]__0\,
      I2 => \r_reg[state]\(0),
      I3 => \r_reg[state]\(1),
      I4 => iTDLEmpty,
      I5 => iVDLEmpty,
      O => \FSM_sequential_r[state][0]_i_2_n_0\
    );
\FSM_sequential_r[state][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFEAA02"
    )
        port map (
      I0 => \FSM_sequential_r[state][1]_i_2_n_0\,
      I1 => \r_reg[state]\(2),
      I2 => \r_reg[state]\(1),
      I3 => \FSM_sequential_r_reg[state][2]_i_2_n_0\,
      I4 => \r_reg[state]\(1),
      O => \FSM_sequential_r[state][1]_i_1_n_0\
    );
\FSM_sequential_r[state][1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F8F0F0"
    )
        port map (
      I0 => \r_reg[i]__0\,
      I1 => iTDLFull,
      I2 => \r_reg[state]\(1),
      I3 => iTDLEmpty,
      I4 => \r_reg[state]\(0),
      O => \FSM_sequential_r[state][1]_i_2_n_0\
    );
\FSM_sequential_r[state][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800FFF088000000"
    )
        port map (
      I0 => \r_reg[state]\(0),
      I1 => iTDLEmpty,
      I2 => \r_reg[state]\(2),
      I3 => \r_reg[state]\(1),
      I4 => \FSM_sequential_r_reg[state][2]_i_2_n_0\,
      I5 => \r_reg[state]\(2),
      O => \FSM_sequential_r[state][2]_i_1_n_0\
    );
\FSM_sequential_r[state][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404040FF4040"
    )
        port map (
      I0 => \r_reg[state]\(1),
      I1 => iVDLEmpty,
      I2 => iTDLEmpty,
      I3 => \r_reg[state]\(2),
      I4 => iTxReady,
      I5 => \r_reg[j_n_0_]\,
      O => \FSM_sequential_r[state][2]_i_3_n_0\
    );
\FSM_sequential_r[state][2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \r_reg[k_n_0_]\,
      I1 => iTxReady,
      I2 => \r_reg[state]\(2),
      O => \FSM_sequential_r[state][2]_i_4_n_0\
    );
\FSM_sequential_r_reg[state][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iRst,
      D => \FSM_sequential_r[state][0]_i_1_n_0\,
      Q => \r_reg[state]\(0)
    );
\FSM_sequential_r_reg[state][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iRst,
      D => \FSM_sequential_r[state][1]_i_1_n_0\,
      Q => \r_reg[state]\(1)
    );
\FSM_sequential_r_reg[state][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iRst,
      D => \FSM_sequential_r[state][2]_i_1_n_0\,
      Q => \r_reg[state]\(2)
    );
\FSM_sequential_r_reg[state][2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_r[state][2]_i_3_n_0\,
      I1 => \FSM_sequential_r[state][2]_i_4_n_0\,
      O => \FSM_sequential_r_reg[state][2]_i_2_n_0\,
      S => \r_reg[state]\(0)
    );
\r[RdEnTDL]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFFFF02000000"
    )
        port map (
      I0 => \r[RdEnTDL]_i_2_n_0\,
      I1 => iTDLEmpty,
      I2 => \r_reg[state]\(2),
      I3 => \r_reg[state]\(0),
      I4 => \r_reg[state]\(1),
      I5 => \^ordentdl\,
      O => \r[RdEnTDL]_i_1_n_0\
    );
\r[RdEnTDL]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iTxReady,
      I1 => \r_reg[k_n_0_]\,
      O => \r[RdEnTDL]_i_2_n_0\
    );
\r[RdEnVDL]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFEF00001000"
    )
        port map (
      I0 => \r_reg[state]\(0),
      I1 => \r_reg[state]\(2),
      I2 => \r_reg[state]\(1),
      I3 => \r[RdEnVDL]_i_2_n_0\,
      I4 => iVDLEmpty,
      I5 => \^ordenvdl\,
      O => \r[RdEnVDL]_i_1_n_0\
    );
\r[RdEnVDL]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iTxReady,
      I1 => \r_reg[j_n_0_]\,
      O => \r[RdEnVDL]_i_2_n_0\
    );
\r[i]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF010001"
    )
        port map (
      I0 => \r_reg[state]\(1),
      I1 => \r_reg[state]\(2),
      I2 => \r[i]_i_2_n_0\,
      I3 => iRst,
      I4 => \r_reg[i]__0\,
      O => \r[i]_i_1_n_0\
    );
\r[i]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF40FFFFFFFFFF"
    )
        port map (
      I0 => iTDLEmpty,
      I1 => iTDLFull,
      I2 => \r_reg[i]__0\,
      I3 => iVDLFull,
      I4 => iVDLEmpty,
      I5 => \r_reg[state]\(0),
      O => \r[i]_i_2_n_0\
    );
\r[j]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000000080"
    )
        port map (
      I0 => \v[selMux]\,
      I1 => \r_reg[state]\(1),
      I2 => iTxReady,
      I3 => iVDLEmpty,
      I4 => iRst,
      I5 => \r_reg[j_n_0_]\,
      O => \r[j]_i_1_n_0\
    );
\r[j]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_reg[state]\(0),
      I1 => \r_reg[state]\(2),
      O => \v[selMux]\
    );
\r[k]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000000002"
    )
        port map (
      I0 => iTxReady,
      I1 => iTDLEmpty,
      I2 => \r_reg[state]\(2),
      I3 => \r[k]_i_2_n_0\,
      I4 => iRst,
      I5 => \r_reg[k_n_0_]\,
      O => \r[k]_i_1_n_0\
    );
\r[k]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \r_reg[state]\(1),
      I1 => \r_reg[state]\(0),
      O => \r[k]_i_2_n_0\
    );
\r[reset]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10000000"
    )
        port map (
      I0 => \r_reg[state]\(0),
      I1 => \r_reg[state]\(1),
      I2 => iVDLEmpty,
      I3 => iTDLEmpty,
      I4 => \r_reg[state]\(2),
      I5 => \^oreset\,
      O => \r[reset]_i_1_n_0\
    );
\r[selMux]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F704"
    )
        port map (
      I0 => \r_reg[state]\(0),
      I1 => \r_reg[state]\(1),
      I2 => \r_reg[state]\(2),
      I3 => \^oselmux\,
      O => \r[selMux]_i_1_n_0\
    );
\r[startTx]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \r[startTx]_i_2_n_0\,
      I1 => \r_reg[state]\(2),
      I2 => \r_reg[state]\(1),
      I3 => \r[startTx]_i_3_n_0\,
      I4 => \^ostarttx\,
      O => \r[startTx]_i_1_n_0\
    );
\r[startTx]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000004C4"
    )
        port map (
      I0 => \r_reg[j_n_0_]\,
      I1 => iTxReady,
      I2 => \r_reg[state]\(0),
      I3 => \r_reg[k_n_0_]\,
      I4 => \r_reg[state]\(2),
      O => \r[startTx]_i_2_n_0\
    );
\r[startTx]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFFBFBFFFFF"
    )
        port map (
      I0 => \r_reg[k_n_0_]\,
      I1 => iTDLEmpty,
      I2 => \r_reg[state]\(0),
      I3 => \r_reg[j_n_0_]\,
      I4 => iTxReady,
      I5 => iVDLEmpty,
      O => \r[startTx]_i_3_n_0\
    );
\r[wrEnTDL]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFFFFF00100010"
    )
        port map (
      I0 => \r_reg[state]\(2),
      I1 => \r_reg[state]\(1),
      I2 => \v[state]07_out\,
      I3 => \r_reg[state]\(0),
      I4 => \v[state]16_out\,
      I5 => \^owrentdl\,
      O => \r[wrEnTDL]_i_1_n_0\
    );
\r[wrEnTDL]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => iTDLEmpty,
      I1 => iTDLFull,
      I2 => \r_reg[i]__0\,
      O => \v[state]16_out\
    );
\r[wrEnVDL]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFFFFF00100010"
    )
        port map (
      I0 => \r_reg[state]\(2),
      I1 => \r_reg[state]\(1),
      I2 => \v[state]07_out\,
      I3 => \r_reg[state]\(0),
      I4 => \r[wrEnVDL]_i_3_n_0\,
      I5 => \^owrenvdl\,
      O => \r[wrEnVDL]_i_1_n_0\
    );
\r[wrEnVDL]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => iVDLEmpty,
      I1 => iTDLEmpty,
      O => \v[state]07_out\
    );
\r[wrEnVDL]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iVDLFull,
      I1 => iVDLEmpty,
      O => \r[wrEnVDL]_i_3_n_0\
    );
\r_reg[RdEnTDL]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iRst,
      D => \r[RdEnTDL]_i_1_n_0\,
      Q => \^ordentdl\
    );
\r_reg[RdEnVDL]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iRst,
      D => \r[RdEnVDL]_i_1_n_0\,
      Q => \^ordenvdl\
    );
\r_reg[i]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \r[i]_i_1_n_0\,
      Q => \r_reg[i]__0\,
      R => '0'
    );
\r_reg[j]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \r[j]_i_1_n_0\,
      Q => \r_reg[j_n_0_]\,
      R => '0'
    );
\r_reg[k]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \r[k]_i_1_n_0\,
      Q => \r_reg[k_n_0_]\,
      R => '0'
    );
\r_reg[reset]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iRst,
      D => \r[reset]_i_1_n_0\,
      Q => \^oreset\
    );
\r_reg[selMux]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \r[selMux]_i_1_n_0\,
      PRE => iRst,
      Q => \^oselmux\
    );
\r_reg[startTx]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iRst,
      D => \r[startTx]_i_1_n_0\,
      Q => \^ostarttx\
    );
\r_reg[wrEnTDL]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iRst,
      D => \r[wrEnTDL]_i_1_n_0\,
      Q => \^owrentdl\
    );
\r_reg[wrEnVDL]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iRst,
      D => \r[wrEnVDL]_i_1_n_0\,
      Q => \^owrenvdl\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MuxUart is
  port (
    iFifoVDL : in STD_LOGIC_VECTOR ( 4 downto 0 );
    iFifoTDL : in STD_LOGIC_VECTOR ( 5 downto 0 );
    iSel : in STD_LOGIC;
    oUartData : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end MuxUart;

architecture STRUCTURE of MuxUart is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \oUartData[0]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \oUartData[1]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \oUartData[2]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \oUartData[3]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \oUartData[4]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \oUartData[5]_INST_0\ : label is "soft_lutpair11";
begin
\oUartData[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => iFifoVDL(0),
      I1 => iSel,
      I2 => iFifoTDL(0),
      O => oUartData(0)
    );
\oUartData[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => iFifoVDL(1),
      I1 => iSel,
      I2 => iFifoTDL(1),
      O => oUartData(1)
    );
\oUartData[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => iFifoVDL(2),
      I1 => iSel,
      I2 => iFifoTDL(2),
      O => oUartData(2)
    );
\oUartData[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => iFifoVDL(3),
      I1 => iSel,
      I2 => iFifoTDL(3),
      O => oUartData(3)
    );
\oUartData[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => iFifoVDL(4),
      I1 => iSel,
      I2 => iFifoTDL(4),
      O => oUartData(4)
    );
\oUartData[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => iFifoTDL(5),
      I1 => iSel,
      O => oUartData(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tUART is
  port (
    data_out : out STD_LOGIC;
    tx_ready : out STD_LOGIC;
    start : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    reset : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute baud : integer;
  attribute baud of tUART : entity is 115200;
  attribute clk_rate : integer;
  attribute clk_rate of tUART : entity is 50000000;
end tUART;

architecture STRUCTURE of tUART is
  signal \clk_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \clk_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \clk_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \clk_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal clk_delay_counter0 : STD_LOGIC;
  signal \clk_delay_counter[0]_i_10_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_11_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_12_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_13_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_14_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_15_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_16_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_17_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_8_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_9_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal clk_delay_counter_reg : STD_LOGIC_VECTOR ( 11 downto 2 );
  signal \clk_delay_counter_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_4_n_1\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_4_n_2\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_4_n_3\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \clk_delay_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_delay_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal delay_clock : STD_LOGIC;
  signal delay_clock_done_i_1_n_0 : STD_LOGIC;
  signal delay_clock_done_reg_n_0 : STD_LOGIC;
  signal delay_clock_reg_i_1_n_0 : STD_LOGIC;
  signal delay_clock_reg_i_2_n_0 : STD_LOGIC;
  signal done_shifting_i_1_n_0 : STD_LOGIC;
  signal done_shifting_reg_n_0 : STD_LOGIC;
  signal \number_bits[0]_i_1_n_0\ : STD_LOGIC;
  signal \number_bits[1]_i_1_n_0\ : STD_LOGIC;
  signal \number_bits[2]_i_1_n_0\ : STD_LOGIC;
  signal \number_bits[3]_i_1_n_0\ : STD_LOGIC;
  signal \number_bits[3]_i_2_n_0\ : STD_LOGIC;
  signal \number_bits[3]_i_3_n_0\ : STD_LOGIC;
  signal \number_bits_reg_n_0_[0]\ : STD_LOGIC;
  signal \number_bits_reg_n_0_[1]\ : STD_LOGIC;
  signal \number_bits_reg_n_0_[2]\ : STD_LOGIC;
  signal \number_bits_reg_n_0_[3]\ : STD_LOGIC;
  signal nxt_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal shift_data : STD_LOGIC;
  signal shift_data0 : STD_LOGIC;
  signal shift_data_i_1_n_0 : STD_LOGIC;
  signal start_count_follow : STD_LOGIC;
  signal start_count_lead : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tx_ready0 : STD_LOGIC;
  signal tx_ready_reg : STD_LOGIC;
  signal tx_ready_reg_i_1_n_0 : STD_LOGIC;
  signal \NLW_clk_delay_counter_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_clk_delay_counter_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clk_delay_counter_reg[0]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clk_delay_counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_counter[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \clk_counter[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \clk_counter[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_counter[8]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_reg[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_reg[0]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_reg[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_reg[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of delay_clock_done_i_1 : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of delay_clock_reg : label is "LD";
  attribute SOFT_HLUTNM of delay_clock_reg_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of delay_clock_reg_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of done_shifting_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \number_bits[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \number_bits[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \number_bits[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \number_bits[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair5";
begin
\clk_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(0),
      O => \clk_counter[0]_i_1_n_0\
    );
\clk_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => \clk_counter[1]_i_1_n_0\
    );
\clk_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => state(1),
      I3 => state(0),
      I4 => sel0(2),
      O => \clk_counter[2]_i_1_n_0\
    );
\clk_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00008000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => state(1),
      I4 => state(0),
      I5 => sel0(3),
      O => \clk_counter[3]_i_1_n_0\
    );
\clk_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(2),
      O => \clk_counter[4]_i_1_n_0\
    );
\clk_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(4),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(3),
      O => \clk_counter[5]_i_1_n_0\
    );
\clk_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00004000"
    )
        port map (
      I0 => \clk_counter[8]_i_5_n_0\,
      I1 => sel0(4),
      I2 => sel0(5),
      I3 => state(1),
      I4 => state(0),
      I5 => sel0(6),
      O => \clk_counter[6]_i_1_n_0\
    );
\clk_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => sel0(7),
      I1 => sel0(5),
      I2 => sel0(4),
      I3 => \clk_counter[8]_i_5_n_0\,
      I4 => sel0(6),
      O => \clk_counter[7]_i_1_n_0\
    );
\clk_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \clk_counter[8]_i_4_n_0\,
      I3 => sel0(6),
      I4 => sel0(5),
      I5 => sel0(4),
      O => shift_data0
    );
\clk_counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \clk_counter[8]_i_2_n_0\
    );
\clk_counter[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => sel0(8),
      I1 => sel0(7),
      I2 => sel0(6),
      I3 => \clk_counter[8]_i_5_n_0\,
      I4 => sel0(4),
      I5 => sel0(5),
      O => \clk_counter[8]_i_3_n_0\
    );
\clk_counter[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => sel0(8),
      I1 => sel0(7),
      I2 => sel0(0),
      I3 => sel0(3),
      I4 => sel0(2),
      I5 => sel0(1),
      O => \clk_counter[8]_i_4_n_0\
    );
\clk_counter[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(3),
      O => \clk_counter[8]_i_5_n_0\
    );
\clk_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[8]_i_2_n_0\,
      D => \clk_counter[0]_i_1_n_0\,
      Q => sel0(0),
      R => shift_data0
    );
\clk_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[8]_i_2_n_0\,
      D => \clk_counter[1]_i_1_n_0\,
      Q => sel0(1),
      R => shift_data0
    );
\clk_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter[2]_i_1_n_0\,
      Q => sel0(2),
      R => '0'
    );
\clk_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter[3]_i_1_n_0\,
      Q => sel0(3),
      R => '0'
    );
\clk_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[8]_i_2_n_0\,
      D => \clk_counter[4]_i_1_n_0\,
      Q => sel0(4),
      R => shift_data0
    );
\clk_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[8]_i_2_n_0\,
      D => \clk_counter[5]_i_1_n_0\,
      Q => sel0(5),
      R => shift_data0
    );
\clk_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter[6]_i_1_n_0\,
      Q => sel0(6),
      R => '0'
    );
\clk_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[8]_i_2_n_0\,
      D => \clk_counter[7]_i_1_n_0\,
      Q => sel0(7),
      R => shift_data0
    );
\clk_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[8]_i_2_n_0\,
      D => \clk_counter[8]_i_3_n_0\,
      Q => sel0(8),
      R => shift_data0
    );
\clk_delay_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_clock,
      O => tx_ready0
    );
\clk_delay_counter[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_delay_counter_reg_n_0_[0]\,
      O => \clk_delay_counter[0]_i_10_n_0\
    );
\clk_delay_counter[0]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_delay_counter_reg(9),
      O => \clk_delay_counter[0]_i_11_n_0\
    );
\clk_delay_counter[0]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_delay_counter_reg(5),
      O => \clk_delay_counter[0]_i_12_n_0\
    );
\clk_delay_counter[0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => clk_delay_counter_reg(3),
      I1 => clk_delay_counter_reg(2),
      O => \clk_delay_counter[0]_i_13_n_0\
    );
\clk_delay_counter[0]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(9),
      I1 => clk_delay_counter_reg(8),
      O => \clk_delay_counter[0]_i_14_n_0\
    );
\clk_delay_counter[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_delay_counter_reg(7),
      I1 => clk_delay_counter_reg(6),
      O => \clk_delay_counter[0]_i_15_n_0\
    );
\clk_delay_counter[0]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(5),
      I1 => clk_delay_counter_reg(4),
      O => \clk_delay_counter[0]_i_16_n_0\
    );
\clk_delay_counter[0]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => clk_delay_counter_reg(2),
      I1 => clk_delay_counter_reg(3),
      O => \clk_delay_counter[0]_i_17_n_0\
    );
\clk_delay_counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_delay_counter_reg(11),
      O => \clk_delay_counter[0]_i_5_n_0\
    );
\clk_delay_counter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(11),
      I1 => clk_delay_counter_reg(10),
      O => \clk_delay_counter[0]_i_6_n_0\
    );
\clk_delay_counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(3),
      O => \clk_delay_counter[0]_i_7_n_0\
    );
\clk_delay_counter[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(2),
      O => \clk_delay_counter[0]_i_8_n_0\
    );
\clk_delay_counter[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_delay_counter_reg_n_0_[1]\,
      O => \clk_delay_counter[0]_i_9_n_0\
    );
\clk_delay_counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(7),
      O => \clk_delay_counter[4]_i_2_n_0\
    );
\clk_delay_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(6),
      O => \clk_delay_counter[4]_i_3_n_0\
    );
\clk_delay_counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(5),
      O => \clk_delay_counter[4]_i_4_n_0\
    );
\clk_delay_counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(4),
      O => \clk_delay_counter[4]_i_5_n_0\
    );
\clk_delay_counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(11),
      O => \clk_delay_counter[8]_i_2_n_0\
    );
\clk_delay_counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(10),
      O => \clk_delay_counter[8]_i_3_n_0\
    );
\clk_delay_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(9),
      O => \clk_delay_counter[8]_i_4_n_0\
    );
\clk_delay_counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(8),
      O => \clk_delay_counter[8]_i_5_n_0\
    );
\clk_delay_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_delay_counter0,
      D => \clk_delay_counter_reg[0]_i_3_n_7\,
      Q => \clk_delay_counter_reg_n_0_[0]\,
      R => tx_ready0
    );
\clk_delay_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_delay_counter_reg[0]_i_4_n_0\,
      CO(3 downto 1) => \NLW_clk_delay_counter_reg[0]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => clk_delay_counter0,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \clk_delay_counter[0]_i_5_n_0\,
      O(3 downto 0) => \NLW_clk_delay_counter_reg[0]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \clk_delay_counter[0]_i_6_n_0\
    );
\clk_delay_counter_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_delay_counter_reg[0]_i_3_n_0\,
      CO(2) => \clk_delay_counter_reg[0]_i_3_n_1\,
      CO(1) => \clk_delay_counter_reg[0]_i_3_n_2\,
      CO(0) => \clk_delay_counter_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clk_delay_counter_reg[0]_i_3_n_4\,
      O(2) => \clk_delay_counter_reg[0]_i_3_n_5\,
      O(1) => \clk_delay_counter_reg[0]_i_3_n_6\,
      O(0) => \clk_delay_counter_reg[0]_i_3_n_7\,
      S(3) => \clk_delay_counter[0]_i_7_n_0\,
      S(2) => \clk_delay_counter[0]_i_8_n_0\,
      S(1) => \clk_delay_counter[0]_i_9_n_0\,
      S(0) => \clk_delay_counter[0]_i_10_n_0\
    );
\clk_delay_counter_reg[0]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_delay_counter_reg[0]_i_4_n_0\,
      CO(2) => \clk_delay_counter_reg[0]_i_4_n_1\,
      CO(1) => \clk_delay_counter_reg[0]_i_4_n_2\,
      CO(0) => \clk_delay_counter_reg[0]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \clk_delay_counter[0]_i_11_n_0\,
      DI(2) => '0',
      DI(1) => \clk_delay_counter[0]_i_12_n_0\,
      DI(0) => \clk_delay_counter[0]_i_13_n_0\,
      O(3 downto 0) => \NLW_clk_delay_counter_reg[0]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \clk_delay_counter[0]_i_14_n_0\,
      S(2) => \clk_delay_counter[0]_i_15_n_0\,
      S(1) => \clk_delay_counter[0]_i_16_n_0\,
      S(0) => \clk_delay_counter[0]_i_17_n_0\
    );
\clk_delay_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_delay_counter0,
      D => \clk_delay_counter_reg[8]_i_1_n_5\,
      Q => clk_delay_counter_reg(10),
      R => tx_ready0
    );
\clk_delay_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_delay_counter0,
      D => \clk_delay_counter_reg[8]_i_1_n_4\,
      Q => clk_delay_counter_reg(11),
      R => tx_ready0
    );
\clk_delay_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_delay_counter0,
      D => \clk_delay_counter_reg[0]_i_3_n_6\,
      Q => \clk_delay_counter_reg_n_0_[1]\,
      R => tx_ready0
    );
\clk_delay_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_delay_counter0,
      D => \clk_delay_counter_reg[0]_i_3_n_5\,
      Q => clk_delay_counter_reg(2),
      R => tx_ready0
    );
\clk_delay_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_delay_counter0,
      D => \clk_delay_counter_reg[0]_i_3_n_4\,
      Q => clk_delay_counter_reg(3),
      R => tx_ready0
    );
\clk_delay_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_delay_counter0,
      D => \clk_delay_counter_reg[4]_i_1_n_7\,
      Q => clk_delay_counter_reg(4),
      R => tx_ready0
    );
\clk_delay_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_delay_counter_reg[0]_i_3_n_0\,
      CO(3) => \clk_delay_counter_reg[4]_i_1_n_0\,
      CO(2) => \clk_delay_counter_reg[4]_i_1_n_1\,
      CO(1) => \clk_delay_counter_reg[4]_i_1_n_2\,
      CO(0) => \clk_delay_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_delay_counter_reg[4]_i_1_n_4\,
      O(2) => \clk_delay_counter_reg[4]_i_1_n_5\,
      O(1) => \clk_delay_counter_reg[4]_i_1_n_6\,
      O(0) => \clk_delay_counter_reg[4]_i_1_n_7\,
      S(3) => \clk_delay_counter[4]_i_2_n_0\,
      S(2) => \clk_delay_counter[4]_i_3_n_0\,
      S(1) => \clk_delay_counter[4]_i_4_n_0\,
      S(0) => \clk_delay_counter[4]_i_5_n_0\
    );
\clk_delay_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_delay_counter0,
      D => \clk_delay_counter_reg[4]_i_1_n_6\,
      Q => clk_delay_counter_reg(5),
      R => tx_ready0
    );
\clk_delay_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_delay_counter0,
      D => \clk_delay_counter_reg[4]_i_1_n_5\,
      Q => clk_delay_counter_reg(6),
      R => tx_ready0
    );
\clk_delay_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_delay_counter0,
      D => \clk_delay_counter_reg[4]_i_1_n_4\,
      Q => clk_delay_counter_reg(7),
      R => tx_ready0
    );
\clk_delay_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_delay_counter0,
      D => \clk_delay_counter_reg[8]_i_1_n_7\,
      Q => clk_delay_counter_reg(8),
      R => tx_ready0
    );
\clk_delay_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_delay_counter_reg[4]_i_1_n_0\,
      CO(3) => \NLW_clk_delay_counter_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \clk_delay_counter_reg[8]_i_1_n_1\,
      CO(1) => \clk_delay_counter_reg[8]_i_1_n_2\,
      CO(0) => \clk_delay_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_delay_counter_reg[8]_i_1_n_4\,
      O(2) => \clk_delay_counter_reg[8]_i_1_n_5\,
      O(1) => \clk_delay_counter_reg[8]_i_1_n_6\,
      O(0) => \clk_delay_counter_reg[8]_i_1_n_7\,
      S(3) => \clk_delay_counter[8]_i_2_n_0\,
      S(2) => \clk_delay_counter[8]_i_3_n_0\,
      S(1) => \clk_delay_counter[8]_i_4_n_0\,
      S(0) => \clk_delay_counter[8]_i_5_n_0\
    );
\clk_delay_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_delay_counter0,
      D => \clk_delay_counter_reg[8]_i_1_n_6\,
      Q => clk_delay_counter_reg(9),
      R => tx_ready0
    );
\data_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004544"
    )
        port map (
      I0 => \data_reg[0]_i_3_n_0\,
      I1 => shift_data,
      I2 => state(1),
      I3 => state(0),
      I4 => reset,
      O => \data_reg[0]_i_1_n_0\
    );
\data_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \data_reg_reg_n_0_[1]\,
      I1 => state(1),
      I2 => state(0),
      O => \data_reg[0]_i_2_n_0\
    );
\data_reg[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \number_bits_reg_n_0_[1]\,
      I1 => \number_bits_reg_n_0_[0]\,
      I2 => \number_bits_reg_n_0_[3]\,
      I3 => \number_bits_reg_n_0_[2]\,
      O => \data_reg[0]_i_3_n_0\
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(0),
      I1 => state(0),
      I2 => state(1),
      I3 => \data_reg_reg_n_0_[2]\,
      O => \data_reg[1]_i_1_n_0\
    );
\data_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(1),
      I1 => state(0),
      I2 => state(1),
      I3 => \data_reg_reg_n_0_[3]\,
      O => \data_reg[2]_i_1_n_0\
    );
\data_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \data_reg_reg_n_0_[4]\,
      O => \data_reg[3]_i_1_n_0\
    );
\data_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(3),
      I1 => state(0),
      I2 => state(1),
      I3 => \data_reg_reg_n_0_[5]\,
      O => \data_reg[4]_i_1_n_0\
    );
\data_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(4),
      I1 => state(0),
      I2 => state(1),
      I3 => \data_reg_reg_n_0_[6]\,
      O => \data_reg[5]_i_1_n_0\
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCFAAAA"
    )
        port map (
      I0 => \data_reg_reg_n_0_[6]\,
      I1 => data_in(5),
      I2 => state(0),
      I3 => state(1),
      I4 => \data_reg[0]_i_1_n_0\,
      O => \data_reg[6]_i_1_n_0\
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_reg[0]_i_1_n_0\,
      D => \data_reg[0]_i_2_n_0\,
      Q => data_out,
      R => '0'
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_reg[0]_i_1_n_0\,
      D => \data_reg[1]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[1]\,
      R => '0'
    );
\data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_reg[0]_i_1_n_0\,
      D => \data_reg[2]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[2]\,
      R => '0'
    );
\data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_reg[0]_i_1_n_0\,
      D => \data_reg[3]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[3]\,
      R => '0'
    );
\data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_reg[0]_i_1_n_0\,
      D => \data_reg[4]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[4]\,
      R => '0'
    );
\data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_reg[0]_i_1_n_0\,
      D => \data_reg[5]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[5]\,
      R => '0'
    );
\data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_reg[6]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[6]\,
      R => '0'
    );
delay_clock_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => delay_clock_done_reg_n_0,
      I1 => delay_clock,
      I2 => clk_delay_counter0,
      O => delay_clock_done_i_1_n_0
    );
delay_clock_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => delay_clock_done_i_1_n_0,
      Q => delay_clock_done_reg_n_0,
      R => '0'
    );
delay_clock_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => delay_clock_reg_i_1_n_0,
      G => delay_clock_reg_i_2_n_0,
      GE => '1',
      Q => delay_clock
    );
delay_clock_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => delay_clock_done_reg_n_0,
      I1 => done_shifting_reg_n_0,
      I2 => state(1),
      O => delay_clock_reg_i_1_n_0
    );
delay_clock_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => state(0),
      I1 => done_shifting_reg_n_0,
      I2 => state(1),
      O => delay_clock_reg_i_2_n_0
    );
done_shifting_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FFF0B0"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => done_shifting_reg_n_0,
      I3 => reset,
      I4 => \data_reg[0]_i_3_n_0\,
      O => done_shifting_i_1_n_0
    );
done_shifting_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => done_shifting_i_1_n_0,
      Q => done_shifting_reg_n_0,
      R => '0'
    );
\number_bits[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0B"
    )
        port map (
      I0 => \number_bits_reg_n_0_[2]\,
      I1 => \number_bits_reg_n_0_[3]\,
      I2 => \number_bits_reg_n_0_[0]\,
      I3 => \number_bits_reg_n_0_[1]\,
      O => \number_bits[0]_i_1_n_0\
    );
\number_bits[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \number_bits_reg_n_0_[0]\,
      I1 => \number_bits_reg_n_0_[1]\,
      O => \number_bits[1]_i_1_n_0\
    );
\number_bits[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \number_bits_reg_n_0_[2]\,
      I1 => \number_bits_reg_n_0_[1]\,
      I2 => \number_bits_reg_n_0_[0]\,
      O => \number_bits[2]_i_1_n_0\
    );
\number_bits[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040004"
    )
        port map (
      I0 => \number_bits_reg_n_0_[2]\,
      I1 => \number_bits_reg_n_0_[3]\,
      I2 => \number_bits_reg_n_0_[0]\,
      I3 => \number_bits_reg_n_0_[1]\,
      I4 => \number_bits[3]_i_3_n_0\,
      I5 => shift_data,
      O => \number_bits[3]_i_1_n_0\
    );
\number_bits[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E80"
    )
        port map (
      I0 => \number_bits_reg_n_0_[2]\,
      I1 => \number_bits_reg_n_0_[1]\,
      I2 => \number_bits_reg_n_0_[0]\,
      I3 => \number_bits_reg_n_0_[3]\,
      O => \number_bits[3]_i_2_n_0\
    );
\number_bits[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \number_bits[3]_i_3_n_0\
    );
\number_bits_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \number_bits[3]_i_1_n_0\,
      D => \number_bits[0]_i_1_n_0\,
      Q => \number_bits_reg_n_0_[0]\,
      R => reset
    );
\number_bits_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \number_bits[3]_i_1_n_0\,
      D => \number_bits[1]_i_1_n_0\,
      Q => \number_bits_reg_n_0_[1]\,
      R => reset
    );
\number_bits_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \number_bits[3]_i_1_n_0\,
      D => \number_bits[2]_i_1_n_0\,
      Q => \number_bits_reg_n_0_[2]\,
      R => reset
    );
\number_bits_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \number_bits[3]_i_1_n_0\,
      D => \number_bits[3]_i_2_n_0\,
      Q => \number_bits_reg_n_0_[3]\,
      R => reset
    );
shift_data_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => shift_data,
      I3 => shift_data0,
      O => shift_data_i_1_n_0
    );
shift_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_data_i_1_n_0,
      Q => shift_data,
      R => '0'
    );
start_count_follow_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_count_lead,
      Q => start_count_follow,
      R => reset
    );
start_count_lead_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start,
      Q => start_count_lead,
      R => reset
    );
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => start_count_lead,
      I3 => start_count_follow,
      O => nxt_state(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"52"
    )
        port map (
      I0 => state(1),
      I1 => done_shifting_reg_n_0,
      I2 => state(0),
      O => nxt_state(1)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => nxt_state(0),
      Q => state(0),
      R => reset
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => nxt_state(1),
      Q => state(1),
      R => reset
    );
tx_ready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => tx_ready_reg,
      I3 => delay_clock,
      O => tx_ready
    );
tx_ready_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => tx_ready_reg_i_1_n_0
    );
tx_ready_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tx_ready_reg_i_1_n_0,
      Q => tx_ready_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__blk_mem_gen_prim_wrapper\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__blk_mem_gen_prim_wrapper\ : entity is "blk_mem_gen_prim_wrapper";
end \FifoTDL__blk_mem_gen_prim_wrapper\;

architecture STRUCTURE of \FifoTDL__blk_mem_gen_prim_wrapper\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_22\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_6\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 9) => B"00000",
      ADDRARDADDR(8 downto 5) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13 downto 9) => B"00000",
      ADDRBWRADDR(8 downto 5) => Q(3 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DIADI(15 downto 9) => B"0000000",
      DIADI(8) => din(2),
      DIADI(7 downto 2) => B"000000",
      DIADI(1 downto 0) => din(1 downto 0),
      DIBDI(15 downto 9) => B"0000000",
      DIBDI(8) => din(5),
      DIBDI(7 downto 2) => B"000000",
      DIBDI(1 downto 0) => din(4 downto 3),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0\,
      DOADO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1\,
      DOADO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2\,
      DOADO(12) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3\,
      DOADO(11) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4\,
      DOADO(10) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5\,
      DOADO(9) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_6\,
      DOADO(8) => dout(2),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8\,
      DOADO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9\,
      DOADO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10\,
      DOADO(4) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11\,
      DOADO(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12\,
      DOADO(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13\,
      DOADO(1 downto 0) => dout(1 downto 0),
      DOBDO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16\,
      DOBDO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17\,
      DOBDO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18\,
      DOBDO(12) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19\,
      DOBDO(11) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20\,
      DOBDO(10) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21\,
      DOBDO(9) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_22\,
      DOBDO(8) => dout(5),
      DOBDO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24\,
      DOBDO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25\,
      DOBDO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26\,
      DOBDO(4) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27\,
      DOBDO(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28\,
      DOBDO(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29\,
      DOBDO(1 downto 0) => dout(4 downto 3),
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35\,
      ENARDEN => tmp_ram_rd_en,
      ENBWREN => WEBWE(0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => \out\(0),
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => WEBWE(0),
      WEBWE(2) => WEBWE(0),
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__rd_bin_cntr\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__rd_bin_cntr\ : entity is "rd_bin_cntr";
end \FifoTDL__rd_bin_cntr\;

architecture STRUCTURE of \FifoTDL__rd_bin_cntr\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair0";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => plusOp(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(0),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(3),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(0),
      PRE => AR(0),
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__rd_status_flags_ss\ is
  port (
    \out\ : out STD_LOGIC;
    empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__rd_status_flags_ss\ : entity is "rd_status_flags_ss";
end \FifoTDL__rd_status_flags_ss\;

architecture STRUCTURE of \FifoTDL__rd_status_flags_ss\ is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  empty <= ram_empty_i;
  \out\ <= ram_empty_fb_i;
\gc0.count_d1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_en,
      I1 => ram_empty_fb_i,
      O => E(0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      PRE => AR(0),
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      PRE => AR(0),
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__synchronizer_ff\ is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__synchronizer_ff\ : entity is "synchronizer_ff";
end \FifoTDL__synchronizer_ff\;

architecture STRUCTURE of \FifoTDL__synchronizer_ff\ is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__synchronizer_ff_0\ is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__synchronizer_ff_0\ : entity is "synchronizer_ff";
end \FifoTDL__synchronizer_ff_0\;

architecture STRUCTURE of \FifoTDL__synchronizer_ff_0\ is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__synchronizer_ff_1\ is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__synchronizer_ff_1\ : entity is "synchronizer_ff";
end \FifoTDL__synchronizer_ff_1\;

architecture STRUCTURE of \FifoTDL__synchronizer_ff_1\ is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__synchronizer_ff_2\ is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__synchronizer_ff_2\ : entity is "synchronizer_ff";
end \FifoTDL__synchronizer_ff_2\;

architecture STRUCTURE of \FifoTDL__synchronizer_ff_2\ is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__wr_bin_cntr\ is
  port (
    ram_full_comb : out STD_LOGIC;
    ram_empty_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_rst_busy : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__wr_bin_cntr\ : entity is "wr_bin_cntr";
end \FifoTDL__wr_bin_cntr\;

architecture STRUCTURE of \FifoTDL__wr_bin_cntr\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1\ : STD_LOGIC;
  signal \gwss.wsts/comp0\ : STD_LOGIC;
  signal p_12_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_empty_fb_i_i_4_n_0 : STD_LOGIC;
  signal ram_empty_fb_i_i_5_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_2_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ram_full_fb_i_i_3 : label is "soft_lutpair1";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_12_out(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_12_out(0),
      I1 => p_12_out(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_12_out(0),
      I1 => p_12_out(1),
      I2 => p_12_out(2),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_12_out(1),
      I1 => p_12_out(0),
      I2 => p_12_out(2),
      I3 => p_12_out(3),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => p_12_out(0),
      Q => \^q\(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => p_12_out(1),
      Q => \^q\(1)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => p_12_out(2),
      Q => \^q\(2)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => p_12_out(3),
      Q => \^q\(3)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(0),
      PRE => AR(0),
      Q => p_12_out(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(1),
      Q => p_12_out(1)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(2),
      Q => p_12_out(2)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(3),
      Q => p_12_out(3)
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCF0FCF05050FCF0"
    )
        port map (
      I0 => \gwss.wsts/comp0\,
      I1 => rd_en,
      I2 => ram_empty_fb_i_reg,
      I3 => \gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1\,
      I4 => wr_en,
      I5 => \out\,
      O => ram_empty_i_reg
    );
ram_empty_fb_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \gc0.count_d1_reg[3]\(3),
      I1 => \^q\(3),
      I2 => \gc0.count_d1_reg[3]\(2),
      I3 => \^q\(2),
      I4 => ram_empty_fb_i_i_4_n_0,
      O => \gwss.wsts/comp0\
    );
ram_empty_fb_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \gc0.count_reg[3]\(3),
      I1 => \^q\(3),
      I2 => \gc0.count_reg[3]\(2),
      I3 => \^q\(2),
      I4 => ram_empty_fb_i_i_5_n_0,
      O => \gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1\
    );
ram_empty_fb_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gc0.count_d1_reg[3]\(1),
      I2 => \^q\(0),
      I3 => \gc0.count_d1_reg[3]\(0),
      O => ram_empty_fb_i_i_4_n_0
    );
ram_empty_fb_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gc0.count_reg[3]\(1),
      I2 => \^q\(0),
      I3 => \gc0.count_reg[3]\(0),
      O => ram_empty_fb_i_i_5_n_0
    );
ram_full_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCCCFCC0500CFCC"
    )
        port map (
      I0 => \gwss.wsts/comp0\,
      I1 => ram_full_fb_i_i_2_n_0,
      I2 => wr_rst_busy,
      I3 => \out\,
      I4 => rd_en,
      I5 => ram_empty_fb_i_reg,
      O => ram_full_comb
    );
ram_full_fb_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100004100000000"
    )
        port map (
      I0 => ram_full_fb_i_i_3_n_0,
      I1 => p_12_out(2),
      I2 => \gc0.count_d1_reg[3]\(2),
      I3 => p_12_out(3),
      I4 => \gc0.count_d1_reg[3]\(3),
      I5 => E(0),
      O => ram_full_fb_i_i_2_n_0
    );
ram_full_fb_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_12_out(1),
      I1 => \gc0.count_d1_reg[3]\(1),
      I2 => p_12_out(0),
      I3 => \gc0.count_d1_reg[3]\(0),
      O => ram_full_fb_i_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__wr_status_flags_ss\ is
  port (
    \out\ : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_comb : in STD_LOGIC;
    clk : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d2_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__wr_status_flags_ss\ : entity is "wr_status_flags_ss";
end \FifoTDL__wr_status_flags_ss\;

architecture STRUCTURE of \FifoTDL__wr_status_flags_ss\ is
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  full <= ram_full_i;
  \out\ <= ram_full_fb_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => ram_full_fb_i,
      O => E(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_fb
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_comb,
      PRE => \grstd1.grst_full.grst_f.rst_d2_reg\,
      Q => ram_full_fb_i
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_comb,
      PRE => \grstd1.grst_full.grst_f.rst_d2_reg\,
      Q => ram_full_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__blk_mem_gen_prim_wrapper\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__blk_mem_gen_prim_wrapper\ : entity is "blk_mem_gen_prim_wrapper";
end \FifoVDL__blk_mem_gen_prim_wrapper\;

architecture STRUCTURE of \FifoVDL__blk_mem_gen_prim_wrapper\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_22\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_30\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_6\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 9) => B"00000",
      ADDRARDADDR(8 downto 5) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13 downto 9) => B"00000",
      ADDRBWRADDR(8 downto 5) => Q(3 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DIADI(15 downto 9) => B"0000000",
      DIADI(8) => din(2),
      DIADI(7 downto 2) => B"000000",
      DIADI(1 downto 0) => din(1 downto 0),
      DIBDI(15 downto 9) => B"0000000",
      DIBDI(8) => din(4),
      DIBDI(7 downto 1) => B"0000000",
      DIBDI(0) => din(3),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0\,
      DOADO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1\,
      DOADO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2\,
      DOADO(12) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3\,
      DOADO(11) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4\,
      DOADO(10) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5\,
      DOADO(9) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_6\,
      DOADO(8) => dout(2),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8\,
      DOADO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9\,
      DOADO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10\,
      DOADO(4) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11\,
      DOADO(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12\,
      DOADO(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13\,
      DOADO(1 downto 0) => dout(1 downto 0),
      DOBDO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16\,
      DOBDO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17\,
      DOBDO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18\,
      DOBDO(12) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19\,
      DOBDO(11) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20\,
      DOBDO(10) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21\,
      DOBDO(9) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_22\,
      DOBDO(8) => dout(4),
      DOBDO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24\,
      DOBDO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25\,
      DOBDO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26\,
      DOBDO(4) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27\,
      DOBDO(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28\,
      DOBDO(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29\,
      DOBDO(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_30\,
      DOBDO(0) => dout(3),
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35\,
      ENARDEN => tmp_ram_rd_en,
      ENBWREN => WEBWE(0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => \out\(0),
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => WEBWE(0),
      WEBWE(2) => WEBWE(0),
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__rd_bin_cntr\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__rd_bin_cntr\ : entity is "rd_bin_cntr";
end \FifoVDL__rd_bin_cntr\;

architecture STRUCTURE of \FifoVDL__rd_bin_cntr\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair0";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => plusOp(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(0),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(3),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(0),
      PRE => AR(0),
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__rd_status_flags_ss\ is
  port (
    \out\ : out STD_LOGIC;
    empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__rd_status_flags_ss\ : entity is "rd_status_flags_ss";
end \FifoVDL__rd_status_flags_ss\;

architecture STRUCTURE of \FifoVDL__rd_status_flags_ss\ is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  empty <= ram_empty_i;
  \out\ <= ram_empty_fb_i;
\gc0.count_d1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_en,
      I1 => ram_empty_fb_i,
      O => E(0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      PRE => AR(0),
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      PRE => AR(0),
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__synchronizer_ff\ is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__synchronizer_ff\ : entity is "synchronizer_ff";
end \FifoVDL__synchronizer_ff\;

architecture STRUCTURE of \FifoVDL__synchronizer_ff\ is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__synchronizer_ff_0\ is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__synchronizer_ff_0\ : entity is "synchronizer_ff";
end \FifoVDL__synchronizer_ff_0\;

architecture STRUCTURE of \FifoVDL__synchronizer_ff_0\ is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__synchronizer_ff_1\ is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__synchronizer_ff_1\ : entity is "synchronizer_ff";
end \FifoVDL__synchronizer_ff_1\;

architecture STRUCTURE of \FifoVDL__synchronizer_ff_1\ is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__synchronizer_ff_2\ is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__synchronizer_ff_2\ : entity is "synchronizer_ff";
end \FifoVDL__synchronizer_ff_2\;

architecture STRUCTURE of \FifoVDL__synchronizer_ff_2\ is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__wr_bin_cntr\ is
  port (
    ram_full_comb : out STD_LOGIC;
    ram_empty_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_rst_busy : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__wr_bin_cntr\ : entity is "wr_bin_cntr";
end \FifoVDL__wr_bin_cntr\;

architecture STRUCTURE of \FifoVDL__wr_bin_cntr\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1\ : STD_LOGIC;
  signal \gwss.wsts/comp0\ : STD_LOGIC;
  signal p_12_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_empty_fb_i_i_4_n_0 : STD_LOGIC;
  signal ram_empty_fb_i_i_5_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_2_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ram_full_fb_i_i_3 : label is "soft_lutpair1";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_12_out(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_12_out(0),
      I1 => p_12_out(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_12_out(0),
      I1 => p_12_out(1),
      I2 => p_12_out(2),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_12_out(1),
      I1 => p_12_out(0),
      I2 => p_12_out(2),
      I3 => p_12_out(3),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => p_12_out(0),
      Q => \^q\(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => p_12_out(1),
      Q => \^q\(1)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => p_12_out(2),
      Q => \^q\(2)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => p_12_out(3),
      Q => \^q\(3)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(0),
      PRE => AR(0),
      Q => p_12_out(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(1),
      Q => p_12_out(1)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(2),
      Q => p_12_out(2)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(3),
      Q => p_12_out(3)
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCF0FCF05050FCF0"
    )
        port map (
      I0 => \gwss.wsts/comp0\,
      I1 => rd_en,
      I2 => ram_empty_fb_i_reg,
      I3 => \gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1\,
      I4 => wr_en,
      I5 => \out\,
      O => ram_empty_i_reg
    );
ram_empty_fb_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \gc0.count_d1_reg[3]\(3),
      I1 => \^q\(3),
      I2 => \gc0.count_d1_reg[3]\(2),
      I3 => \^q\(2),
      I4 => ram_empty_fb_i_i_4_n_0,
      O => \gwss.wsts/comp0\
    );
ram_empty_fb_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \gc0.count_reg[3]\(3),
      I1 => \^q\(3),
      I2 => \gc0.count_reg[3]\(2),
      I3 => \^q\(2),
      I4 => ram_empty_fb_i_i_5_n_0,
      O => \gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1\
    );
ram_empty_fb_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gc0.count_d1_reg[3]\(1),
      I2 => \^q\(0),
      I3 => \gc0.count_d1_reg[3]\(0),
      O => ram_empty_fb_i_i_4_n_0
    );
ram_empty_fb_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gc0.count_reg[3]\(1),
      I2 => \^q\(0),
      I3 => \gc0.count_reg[3]\(0),
      O => ram_empty_fb_i_i_5_n_0
    );
ram_full_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCCCFCC0500CFCC"
    )
        port map (
      I0 => \gwss.wsts/comp0\,
      I1 => ram_full_fb_i_i_2_n_0,
      I2 => wr_rst_busy,
      I3 => \out\,
      I4 => rd_en,
      I5 => ram_empty_fb_i_reg,
      O => ram_full_comb
    );
ram_full_fb_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100004100000000"
    )
        port map (
      I0 => ram_full_fb_i_i_3_n_0,
      I1 => p_12_out(2),
      I2 => \gc0.count_d1_reg[3]\(2),
      I3 => p_12_out(3),
      I4 => \gc0.count_d1_reg[3]\(3),
      I5 => E(0),
      O => ram_full_fb_i_i_2_n_0
    );
ram_full_fb_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_12_out(1),
      I1 => \gc0.count_d1_reg[3]\(1),
      I2 => p_12_out(0),
      I3 => \gc0.count_d1_reg[3]\(0),
      O => ram_full_fb_i_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__wr_status_flags_ss\ is
  port (
    \out\ : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_comb : in STD_LOGIC;
    clk : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d2_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__wr_status_flags_ss\ : entity is "wr_status_flags_ss";
end \FifoVDL__wr_status_flags_ss\;

architecture STRUCTURE of \FifoVDL__wr_status_flags_ss\ is
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  full <= ram_full_i;
  \out\ <= ram_full_fb_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => ram_full_fb_i,
      O => E(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_fb
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_comb,
      PRE => \grstd1.grst_full.grst_f.rst_d2_reg\,
      Q => ram_full_fb_i
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_comb,
      PRE => \grstd1.grst_full.grst_f.rst_d2_reg\,
      Q => ram_full_i
    );
end STRUCTURE;
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
Bn3LzFi/eDUoN15gGgI80/QszMFZ81FuDhZd8eb4oUZf/gj2NXVaQi/Hxvo70Hu6rNPwOFmi0VsT
DfYhq+CXO8bqPRB79ZIrr3PsU+BjZ0xDlt7m55k2BaExB1cSEkRBLnoydb+a2M11yByYv8q01ozG
RK4XuzSXId/9r4ETp9FyqFUscadyFkcTmto5nqksRrg+pevpJUao2xHxBUn0rBbYy8s9Sn0pbBH3
EPZ7MTpn9Dj/p8U+zgKEQ/No92GPEFh7bo65H0AgQaYRF8telwGgsJQPbKyGKll/aCJMUQnOJYWj
kEkJRrqDIovyng85GbFBS9dT4O8JzIJk8V5zeg==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="base64", line_length=76, bytes=256)
`protect key_block
Wtitx40BmbPPD2ecM/k8sz4yu7dnnuO1lD4+8DivKos0zjVeZ8txqGdQSKerPKzJuHiSE0USBQsn
4qTmg6Qo+d6si8to2Of39oCX+kIcb2I1/mquYw/e9J0kWGwOP4szaD22Sw/Ecq/DNtl+RGb8JFaY
NOclQiblwPTEtPHyyGaG6gt8e+d9UeN1wcfA9JOFkhQJoOKL1cWFDRVe6joSnQtA3MdKV0ZlPGRh
o3nBiMh2tOeckitOB/QJLn7IWo5TAlCa3ym9Jm96zV54Zf07u514r9w8TT8f6pDsjeOICPX1WpiI
7i00Qf2/9+XmlMUYHD4X6yqXJLJcfN/wRy2MOA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3392)
`protect data_block
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
fQQd6cpnNErYmewainTdj3/oxWyBKc3hPUmKA9g=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__blk_mem_gen_prim_width\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__blk_mem_gen_prim_width\ : entity is "blk_mem_gen_prim_width";
end \FifoTDL__blk_mem_gen_prim_width\;

architecture STRUCTURE of \FifoTDL__blk_mem_gen_prim_width\ is
begin
\prim_noinit.ram\: entity work.\FifoTDL__blk_mem_gen_prim_wrapper\
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      WEBWE(0) => WEBWE(0),
      clk => clk,
      din(5 downto 0) => din(5 downto 0),
      dout(5 downto 0) => dout(5 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \out\(0) => \out\(0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__rd_logic\ is
  port (
    \out\ : out STD_LOGIC;
    empty : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_fb_i_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__rd_logic\ : entity is "rd_logic";
end \FifoTDL__rd_logic\;

architecture STRUCTURE of \FifoTDL__rd_logic\ is
  signal \grss.rsts_n_2\ : STD_LOGIC;
begin
\grss.rsts\: entity work.\FifoTDL__rd_status_flags_ss\
     port map (
      AR(0) => AR(0),
      E(0) => \grss.rsts_n_2\,
      clk => clk,
      empty => empty,
      \out\ => \out\,
      ram_empty_fb_i_reg_0 => ram_empty_fb_i_reg,
      rd_en => rd_en
    );
rpntr: entity work.\FifoTDL__rd_bin_cntr\
     port map (
      AR(0) => AR(0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0),
      E(0) => \grss.rsts_n_2\,
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__reset_blk_ramfifo\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    tmp_ram_rd_en : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__reset_blk_ramfifo\ : entity is "reset_blk_ramfifo";
end \FifoTDL__reset_blk_ramfifo\;

architecture STRUCTURE of \FifoTDL__reset_blk_ramfifo\ is
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\ : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of rd_rst_reg : signal is std.standard.true;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg1 : STD_LOGIC;
  attribute async_reg of rst_rd_reg1 : signal is "true";
  attribute msgon of rst_rd_reg1 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg1 : STD_LOGIC;
  attribute async_reg of rst_wr_reg1 : signal is "true";
  attribute msgon of rst_wr_reg1 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal wr_rst_asreg : STD_LOGIC;
  signal wr_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH of wr_rst_reg : signal is std.standard.true;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "no";
begin
  \gc0.count_reg[1]\(1) <= rd_rst_reg(2);
  \gc0.count_reg[1]\(0) <= rd_rst_reg(0);
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d2;
  \out\(0) <= wr_rst_reg(1);
  wr_rst_busy <= rst_d3;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => rd_rst_reg(0),
      I1 => ram_empty_fb_i_reg,
      I2 => rd_en,
      O => tmp_ram_rd_en
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_d2,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst\: entity work.\FifoTDL__synchronizer_ff\
     port map (
      clk => clk,
      in0(0) => rd_rst_asreg,
      \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\,
      \out\ => p_7_out
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst\: entity work.\FifoTDL__synchronizer_ff_0\
     port map (
      clk => clk,
      in0(0) => wr_rst_asreg,
      \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\,
      \out\ => p_8_out
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst\: entity work.\FifoTDL__synchronizer_ff_1\
     port map (
      AS(0) => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      clk => clk,
      in0(0) => rd_rst_asreg,
      \out\ => p_7_out
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst\: entity work.\FifoTDL__synchronizer_ff_2\
     port map (
      AS(0) => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      clk => clk,
      in0(0) => wr_rst_asreg,
      \out\ => p_8_out
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\,
      PRE => rst_rd_reg2,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(2)
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => rst_rd_reg1
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_rd_reg1,
      PRE => rst,
      Q => rst_rd_reg2
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => rst_wr_reg1
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_wr_reg1,
      PRE => rst,
      Q => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\,
      PRE => rst_wr_reg2,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__wr_logic\ is
  port (
    full : out STD_LOGIC;
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    wr_rst_busy : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__wr_logic\ : entity is "wr_logic";
end \FifoTDL__wr_logic\;

architecture STRUCTURE of \FifoTDL__wr_logic\ is
  signal \^webwe\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gwss.wsts_n_0\ : STD_LOGIC;
  signal ram_full_comb : STD_LOGIC;
begin
  WEBWE(0) <= \^webwe\(0);
\gwss.wsts\: entity work.\FifoTDL__wr_status_flags_ss\
     port map (
      E(0) => \^webwe\(0),
      clk => clk,
      full => full,
      \grstd1.grst_full.grst_f.rst_d2_reg\ => \out\,
      \out\ => \gwss.wsts_n_0\,
      ram_full_comb => ram_full_comb,
      wr_en => wr_en
    );
wpntr: entity work.\FifoTDL__wr_bin_cntr\
     port map (
      AR(0) => AR(0),
      E(0) => \^webwe\(0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \gc0.count_reg[3]\(3 downto 0) => \gc0.count_reg[3]\(3 downto 0),
      \out\ => \gwss.wsts_n_0\,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg,
      ram_empty_i_reg => ram_empty_i_reg,
      ram_full_comb => ram_full_comb,
      rd_en => rd_en,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__blk_mem_gen_prim_width\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__blk_mem_gen_prim_width\ : entity is "blk_mem_gen_prim_width";
end \FifoVDL__blk_mem_gen_prim_width\;

architecture STRUCTURE of \FifoVDL__blk_mem_gen_prim_width\ is
begin
\prim_noinit.ram\: entity work.\FifoVDL__blk_mem_gen_prim_wrapper\
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      WEBWE(0) => WEBWE(0),
      clk => clk,
      din(4 downto 0) => din(4 downto 0),
      dout(4 downto 0) => dout(4 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \out\(0) => \out\(0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__rd_logic\ is
  port (
    \out\ : out STD_LOGIC;
    empty : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_fb_i_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__rd_logic\ : entity is "rd_logic";
end \FifoVDL__rd_logic\;

architecture STRUCTURE of \FifoVDL__rd_logic\ is
  signal \grss.rsts_n_2\ : STD_LOGIC;
begin
\grss.rsts\: entity work.\FifoVDL__rd_status_flags_ss\
     port map (
      AR(0) => AR(0),
      E(0) => \grss.rsts_n_2\,
      clk => clk,
      empty => empty,
      \out\ => \out\,
      ram_empty_fb_i_reg_0 => ram_empty_fb_i_reg,
      rd_en => rd_en
    );
rpntr: entity work.\FifoVDL__rd_bin_cntr\
     port map (
      AR(0) => AR(0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0),
      E(0) => \grss.rsts_n_2\,
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__reset_blk_ramfifo\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    tmp_ram_rd_en : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__reset_blk_ramfifo\ : entity is "reset_blk_ramfifo";
end \FifoVDL__reset_blk_ramfifo\;

architecture STRUCTURE of \FifoVDL__reset_blk_ramfifo\ is
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\ : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of rd_rst_reg : signal is std.standard.true;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg1 : STD_LOGIC;
  attribute async_reg of rst_rd_reg1 : signal is "true";
  attribute msgon of rst_rd_reg1 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg1 : STD_LOGIC;
  attribute async_reg of rst_wr_reg1 : signal is "true";
  attribute msgon of rst_wr_reg1 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal wr_rst_asreg : STD_LOGIC;
  signal wr_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH of wr_rst_reg : signal is std.standard.true;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "no";
begin
  \gc0.count_reg[1]\(1) <= rd_rst_reg(2);
  \gc0.count_reg[1]\(0) <= rd_rst_reg(0);
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d2;
  \out\(0) <= wr_rst_reg(1);
  wr_rst_busy <= rst_d3;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => rd_rst_reg(0),
      I1 => ram_empty_fb_i_reg,
      I2 => rd_en,
      O => tmp_ram_rd_en
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_d2,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst\: entity work.\FifoVDL__synchronizer_ff\
     port map (
      clk => clk,
      in0(0) => rd_rst_asreg,
      \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\,
      \out\ => p_7_out
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst\: entity work.\FifoVDL__synchronizer_ff_0\
     port map (
      clk => clk,
      in0(0) => wr_rst_asreg,
      \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\,
      \out\ => p_8_out
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst\: entity work.\FifoVDL__synchronizer_ff_1\
     port map (
      AS(0) => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      clk => clk,
      in0(0) => rd_rst_asreg,
      \out\ => p_7_out
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst\: entity work.\FifoVDL__synchronizer_ff_2\
     port map (
      AS(0) => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      clk => clk,
      in0(0) => wr_rst_asreg,
      \out\ => p_8_out
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1\,
      PRE => rst_rd_reg2,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0\,
      Q => rd_rst_reg(2)
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => rst_rd_reg1
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_rd_reg1,
      PRE => rst,
      Q => rst_rd_reg2
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => rst_wr_reg1
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_wr_reg1,
      PRE => rst,
      Q => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1\,
      PRE => rst_wr_reg2,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0\,
      Q => wr_rst_reg(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__wr_logic\ is
  port (
    full : out STD_LOGIC;
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    wr_rst_busy : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__wr_logic\ : entity is "wr_logic";
end \FifoVDL__wr_logic\;

architecture STRUCTURE of \FifoVDL__wr_logic\ is
  signal \^webwe\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gwss.wsts_n_0\ : STD_LOGIC;
  signal ram_full_comb : STD_LOGIC;
begin
  WEBWE(0) <= \^webwe\(0);
\gwss.wsts\: entity work.\FifoVDL__wr_status_flags_ss\
     port map (
      E(0) => \^webwe\(0),
      clk => clk,
      full => full,
      \grstd1.grst_full.grst_f.rst_d2_reg\ => \out\,
      \out\ => \gwss.wsts_n_0\,
      ram_full_comb => ram_full_comb,
      wr_en => wr_en
    );
wpntr: entity work.\FifoVDL__wr_bin_cntr\
     port map (
      AR(0) => AR(0),
      E(0) => \^webwe\(0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \gc0.count_reg[3]\(3 downto 0) => \gc0.count_reg[3]\(3 downto 0),
      \out\ => \gwss.wsts_n_0\,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg,
      ram_empty_i_reg => ram_empty_i_reg,
      ram_full_comb => ram_full_comb,
      rd_en => rd_en,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
jbAfnJ0v1+WyXFyoA4HPEEFIjct7HgnI0mu4TSa25NsNE/pLj2WtLSLh+MgbV27MIMC9UvROBVjP
gqB0QczG1A==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
iArFgKcNA28U2Eexs8OyquuJbt26oJGHI2dVz82DefbgkIzwBZqRgMwV9QYXm3aSgPselv0tTo5n
g01rsqZEeGqnYZbTBqWQoIg7HHNsAobFWltw26z04KJTen3TN34K5FEB8uoz2RWkigJqGWtmFPf5
0LfPAPn1r0GZJF2V37Y=

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Fn+SZPTjAfffsgcrEnynRmIKdcysZiMgAm4t45a80RTQO/upKBokh7+MXzpbDkyg0TPtzn06JI7W
PAM0XFAkpOgjpT4f3CGMfDqNVk15KN4lgWq+YFoni+IwUxQe1pdFYvR6mA9pXmIe2yqiRnhO/VZi
GIL+pupoQnmFpmpCErQ=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
j2RoUfZbcSXmNIzxefei/9VueCswS9iqM6vR0gy30/l0lsabB1PnK8/EGfqhLHWuljQj/btb8BxZ
iJUWbspySxj2874/wZAqKfeErsEKhr35DuI3pSf4rZSOjyLWEaUsgwUy7Z+RaiU8xGRrv01+HBOb
1FaZei3Kf57I3zGcircXpwkHdwkW3h5c/ZNQ1AvaH5okCT1Ca5AH3+b+cLpc+m0TTgWWZuRY4cAc
9r4kxh7LsaspJoAkbkIlkJeWcuzQP2uuUn1THyZB8bz7LwrljiZ4KVd1rMDA7u2kd1vVW/YZNUhk
B7lpBrnHngJ+C8XLe9Ld6pgZaWouuy6YPEn5Uw==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Pw1TRZ/vl3ANpl2F4u8LQ5ifhzF0xWd/IGtqFEz6kU+lVygFOiabJ0QxeiyiyIQ1polveGf1HnVu
QthLjsqYV+jh8HigpspBEPPrp9iKqON4iNNnTW55BkbEX/8wUAQKcrx3/GaUIyYeXBkM7XXzbMTw
13gppUFc9YfWn2ORjNaHgk6333CMd8CBXXvYs191nisVBSnZRBu26nhpKUPegoovXe6lszRLfcqg
gJJUywmOKg9v1mbPIj9DFIRfJPAZ7gTQ5ICFVApYL+qzyTGl2ZgQNnWms9NSILbKwUyMQ++bepJc
u1fPdlRL55RchnK9cii6NJwsNKLkkaE5yHbZYw==

`protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
bliYkWBfAu5u7gMOkHFrEDyrD602ES2dC5b2Mp6Ja0IFKckKKXk7Bgw1utw617aNUpPh4s08Ttfx
xRSnsQO0XXdGm7SgNrPaiqIkwg8w5ZjdBFsx/symDCtR2CjTXWcyYeqqRv3BbWZTAQ4qRjPg0B7J
YuVZ53jL2vbNn7z4opAiMZ7C4uXnVveIG8flQoOdhfZBvELa0kSGgz/3DGz4fmoTUz5+MJQlVtQL
7dcffYHAt84qk6zzPtSwshrkJbh5k6Vkc6qYRqqHuix7G1hj0/+oMAd4aZtYIYQKl0R8RXunIuu1
sms1PFkGFS9jsZu1EAtYAzTT8Qvra3RyX5jTSw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="base64", line_length=76, bytes=256)
`protect key_block
hOCSnoo2RkVu/EirgfCHoXEg+wxqBaPdkNF0YS4nSsHnZdy3PrrMGhcJPRvWKOEsNdTy9mb4+Ph8
seaIt92WIs6nkC7Sd7526P+DWO18k1M16PMScxiloPbXQYTKEfzmnFfHJVjGdod+2Uw1dqSpIV0C
ICQp6PfrJzuANEq6ZyFYQPw4Ndgj9/bxknEfRxm3akmpW9coNqtFMUnyH5Vs0p0mCy4F3650/20A
OfzqQ0kDMjPSeY6wSlP6CCuiitgoQ402zUenAkNDaIZDJpoibT8yRz+pYdKO+jFe/Q+zy3Ue63R/
8yBqe4+NdhsHc1vcz8WYCJwP7FJ0VKfo5u74kQ==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="base64", line_length=76, bytes=256)
`protect key_block
emTo2T3xhVuOR+cpkdbwmVvI72WOMPOr4/WLwtICO0mAOZlss/H/6JH18aiD3HCiXtmj6JtZ7KqY
AvjMMx/hLDP/f10LRoEEpGxf4rBaEvr9oaiplZkFKjYZqPRrAh7zDDubn3t7qbrkEVx17LLG9nti
Uy/Mljb2YG8W8GVCGK7h36wLhtLlKLCkl+sIgzw/ReeMYbM3wDZyJm526Iv2ufM+B/kF0ac+Fzd6
XCF/Trnt2t+Kzy6fNCeF2i9KAg1oFFusSZCJr/b47QVjzrVbyOIWxcLM4G97ZgA9C89y28riy9cl
CBuhCFWjpvoTiQl5wxp7hr9ykn31VY3bkQFpug==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10048)
`protect data_block
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
nQorbEshjawdQxC2Pd89nQ==
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__blk_mem_gen_generic_cstr\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__blk_mem_gen_generic_cstr\ : entity is "blk_mem_gen_generic_cstr";
end \FifoTDL__blk_mem_gen_generic_cstr\;

architecture STRUCTURE of \FifoTDL__blk_mem_gen_generic_cstr\ is
begin
\ramloop[0].ram.r\: entity work.\FifoTDL__blk_mem_gen_prim_width\
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      WEBWE(0) => WEBWE(0),
      clk => clk,
      din(5 downto 0) => din(5 downto 0),
      dout(5 downto 0) => dout(5 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \out\(0) => \out\(0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__blk_mem_gen_generic_cstr\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__blk_mem_gen_generic_cstr\ : entity is "blk_mem_gen_generic_cstr";
end \FifoVDL__blk_mem_gen_generic_cstr\;

architecture STRUCTURE of \FifoVDL__blk_mem_gen_generic_cstr\ is
begin
\ramloop[0].ram.r\: entity work.\FifoVDL__blk_mem_gen_prim_width\
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      WEBWE(0) => WEBWE(0),
      clk => clk,
      din(4 downto 0) => din(4 downto 0),
      dout(4 downto 0) => dout(4 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \out\(0) => \out\(0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
jbAfnJ0v1+WyXFyoA4HPEEFIjct7HgnI0mu4TSa25NsNE/pLj2WtLSLh+MgbV27MIMC9UvROBVjP
gqB0QczG1A==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
iArFgKcNA28U2Eexs8OyquuJbt26oJGHI2dVz82DefbgkIzwBZqRgMwV9QYXm3aSgPselv0tTo5n
g01rsqZEeGqnYZbTBqWQoIg7HHNsAobFWltw26z04KJTen3TN34K5FEB8uoz2RWkigJqGWtmFPf5
0LfPAPn1r0GZJF2V37Y=

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Fn+SZPTjAfffsgcrEnynRmIKdcysZiMgAm4t45a80RTQO/upKBokh7+MXzpbDkyg0TPtzn06JI7W
PAM0XFAkpOgjpT4f3CGMfDqNVk15KN4lgWq+YFoni+IwUxQe1pdFYvR6mA9pXmIe2yqiRnhO/VZi
GIL+pupoQnmFpmpCErQ=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
j2RoUfZbcSXmNIzxefei/9VueCswS9iqM6vR0gy30/l0lsabB1PnK8/EGfqhLHWuljQj/btb8BxZ
iJUWbspySxj2874/wZAqKfeErsEKhr35DuI3pSf4rZSOjyLWEaUsgwUy7Z+RaiU8xGRrv01+HBOb
1FaZei3Kf57I3zGcircXpwkHdwkW3h5c/ZNQ1AvaH5okCT1Ca5AH3+b+cLpc+m0TTgWWZuRY4cAc
9r4kxh7LsaspJoAkbkIlkJeWcuzQP2uuUn1THyZB8bz7LwrljiZ4KVd1rMDA7u2kd1vVW/YZNUhk
B7lpBrnHngJ+C8XLe9Ld6pgZaWouuy6YPEn5Uw==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Pw1TRZ/vl3ANpl2F4u8LQ5ifhzF0xWd/IGtqFEz6kU+lVygFOiabJ0QxeiyiyIQ1polveGf1HnVu
QthLjsqYV+jh8HigpspBEPPrp9iKqON4iNNnTW55BkbEX/8wUAQKcrx3/GaUIyYeXBkM7XXzbMTw
13gppUFc9YfWn2ORjNaHgk6333CMd8CBXXvYs191nisVBSnZRBu26nhpKUPegoovXe6lszRLfcqg
gJJUywmOKg9v1mbPIj9DFIRfJPAZ7gTQ5ICFVApYL+qzyTGl2ZgQNnWms9NSILbKwUyMQ++bepJc
u1fPdlRL55RchnK9cii6NJwsNKLkkaE5yHbZYw==

`protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
bliYkWBfAu5u7gMOkHFrEDyrD602ES2dC5b2Mp6Ja0IFKckKKXk7Bgw1utw617aNUpPh4s08Ttfx
xRSnsQO0XXdGm7SgNrPaiqIkwg8w5ZjdBFsx/symDCtR2CjTXWcyYeqqRv3BbWZTAQ4qRjPg0B7J
YuVZ53jL2vbNn7z4opAiMZ7C4uXnVveIG8flQoOdhfZBvELa0kSGgz/3DGz4fmoTUz5+MJQlVtQL
7dcffYHAt84qk6zzPtSwshrkJbh5k6Vkc6qYRqqHuix7G1hj0/+oMAd4aZtYIYQKl0R8RXunIuu1
sms1PFkGFS9jsZu1EAtYAzTT8Qvra3RyX5jTSw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="base64", line_length=76, bytes=256)
`protect key_block
knzAAq71xb40Hy1xGb8UTMym1P/UewBgMcaqKkgPLKaNQNpvzHrTPB3R6SkmUdMb5KkW6Z1xaOAA
k9+ZWn7XD8oeA1Uf0cUadkUJ9choqtKUm7ko2yO45EPB26Ra5HwjcAW6QmfR6XhbzKNTk0BmB3oL
mVufZ7VDu8mgy2iKBlwVMdfMGvaev7sxsT5LcgAjWUkEzf8XbJ3QUcRxaeYV+xj1XPIjT8ZbsdXp
o82bJuaXqM0cBswYw5CRltlSCY6dEN1xvoVIwilVQdAxvnjPDDHvRI+ElR+jdJVjxEkQfd7YzeF4
X58VsTo6+hQsyBaJAOInRqeUO2u5W4mMQXL+vw==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="base64", line_length=76, bytes=256)
`protect key_block
T+N8d21AKIG5dIm90EOTD60mI1eSSxQp0GVOvJwaw3pR10DjwWO2Iw40ISO4KbI9441hUaUyP/Zi
aEmJ8Pz60+ZSMCxRSOQmJgUObmrzrcEQ4YxALUkvHFm8Dej53hhyGzZlHZOojbYgqnTOxV7YDtH7
BYakoEovWAA21ssbHHWCoeEcldNkY8MNX3Zr/SR9hIrQlsifg8MUgVnQ7WkGcPtOkgd72vAibiOn
AcbRPCv8II0BAXDDAxoY88wszchO/NgnuGE8X2YygqljLtG2MXSPZ1yHuBqZzcrScBvfhSFA03aO
u559iKIiEsSbLge5CWOORrmGgx1vGAxzG/RMQA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12384)
`protect data_block
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
T93ReD8MLtPgbren4ZUD
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__blk_mem_gen_top\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__blk_mem_gen_top\ : entity is "blk_mem_gen_top";
end \FifoTDL__blk_mem_gen_top\;

architecture STRUCTURE of \FifoTDL__blk_mem_gen_top\ is
begin
\valid.cstr\: entity work.\FifoTDL__blk_mem_gen_generic_cstr\
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      WEBWE(0) => WEBWE(0),
      clk => clk,
      din(5 downto 0) => din(5 downto 0),
      dout(5 downto 0) => dout(5 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \out\(0) => \out\(0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__blk_mem_gen_top\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__blk_mem_gen_top\ : entity is "blk_mem_gen_top";
end \FifoVDL__blk_mem_gen_top\;

architecture STRUCTURE of \FifoVDL__blk_mem_gen_top\ is
begin
\valid.cstr\: entity work.\FifoVDL__blk_mem_gen_generic_cstr\
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      WEBWE(0) => WEBWE(0),
      clk => clk,
      din(4 downto 0) => din(4 downto 0),
      dout(4 downto 0) => dout(4 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \out\(0) => \out\(0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SynchTDL_c_shift_ram_v12_0_10 is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of SynchTDL_c_shift_ram_v12_0_10 : entity is 4;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of SynchTDL_c_shift_ram_v12_0_10 : entity is "000000";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of SynchTDL_c_shift_ram_v12_0_10 : entity is "000000";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of SynchTDL_c_shift_ram_v12_0_10 : entity is 1;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of SynchTDL_c_shift_ram_v12_0_10 : entity is "./";
  attribute C_HAS_A : integer;
  attribute C_HAS_A of SynchTDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of SynchTDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of SynchTDL_c_shift_ram_v12_0_10 : entity is 1;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of SynchTDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of SynchTDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of SynchTDL_c_shift_ram_v12_0_10 : entity is "no_coe_file_loaded";
  attribute C_OPT_GOAL : integer;
  attribute C_OPT_GOAL of SynchTDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of SynchTDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of SynchTDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_REG_LAST_BIT : integer;
  attribute C_REG_LAST_BIT of SynchTDL_c_shift_ram_v12_0_10 : entity is 1;
  attribute C_SHIFT_TYPE : integer;
  attribute C_SHIFT_TYPE of SynchTDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of SynchTDL_c_shift_ram_v12_0_10 : entity is "000000";
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of SynchTDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_SYNC_PRIORITY : integer;
  attribute C_SYNC_PRIORITY of SynchTDL_c_shift_ram_v12_0_10 : entity is 1;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of SynchTDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of SynchTDL_c_shift_ram_v12_0_10 : entity is 6;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of SynchTDL_c_shift_ram_v12_0_10 : entity is "virtex7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SynchTDL_c_shift_ram_v12_0_10 : entity is "c_shift_ram_v12_0_10";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SynchTDL_c_shift_ram_v12_0_10 : entity is "yes";
end SynchTDL_c_shift_ram_v12_0_10;

architecture STRUCTURE of SynchTDL_c_shift_ram_v12_0_10 is
  attribute C_AINIT_VAL of i_synth : label is "000000";
  attribute C_HAS_CE of i_synth : label is 0;
  attribute C_HAS_SCLR of i_synth : label is 1;
  attribute C_HAS_SINIT of i_synth : label is 0;
  attribute C_HAS_SSET of i_synth : label is 0;
  attribute C_SINIT_VAL of i_synth : label is "000000";
  attribute C_SYNC_ENABLE of i_synth : label is 0;
  attribute C_SYNC_PRIORITY of i_synth : label is 1;
  attribute C_WIDTH of i_synth : label is 6;
  attribute c_addr_width of i_synth : label is 4;
  attribute c_default_data of i_synth : label is "000000";
  attribute c_depth of i_synth : label is 1;
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
i_synth: entity work.SynchTDL_c_shift_ram_v12_0_10_viv
     port map (
      A(3 downto 0) => B"0000",
      CE => '0',
      CLK => CLK,
      D(5 downto 0) => D(5 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      SCLR => SCLR,
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SynchVDL_c_shift_ram_v12_0_10 is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of SynchVDL_c_shift_ram_v12_0_10 : entity is 4;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of SynchVDL_c_shift_ram_v12_0_10 : entity is "00000";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of SynchVDL_c_shift_ram_v12_0_10 : entity is "00000";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of SynchVDL_c_shift_ram_v12_0_10 : entity is 1;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of SynchVDL_c_shift_ram_v12_0_10 : entity is "./";
  attribute C_HAS_A : integer;
  attribute C_HAS_A of SynchVDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of SynchVDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of SynchVDL_c_shift_ram_v12_0_10 : entity is 1;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of SynchVDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of SynchVDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of SynchVDL_c_shift_ram_v12_0_10 : entity is "no_coe_file_loaded";
  attribute C_OPT_GOAL : integer;
  attribute C_OPT_GOAL of SynchVDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of SynchVDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of SynchVDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_REG_LAST_BIT : integer;
  attribute C_REG_LAST_BIT of SynchVDL_c_shift_ram_v12_0_10 : entity is 1;
  attribute C_SHIFT_TYPE : integer;
  attribute C_SHIFT_TYPE of SynchVDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of SynchVDL_c_shift_ram_v12_0_10 : entity is "00000";
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of SynchVDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_SYNC_PRIORITY : integer;
  attribute C_SYNC_PRIORITY of SynchVDL_c_shift_ram_v12_0_10 : entity is 1;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of SynchVDL_c_shift_ram_v12_0_10 : entity is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of SynchVDL_c_shift_ram_v12_0_10 : entity is 5;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of SynchVDL_c_shift_ram_v12_0_10 : entity is "virtex7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SynchVDL_c_shift_ram_v12_0_10 : entity is "c_shift_ram_v12_0_10";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SynchVDL_c_shift_ram_v12_0_10 : entity is "yes";
end SynchVDL_c_shift_ram_v12_0_10;

architecture STRUCTURE of SynchVDL_c_shift_ram_v12_0_10 is
  attribute C_AINIT_VAL of i_synth : label is "00000";
  attribute C_HAS_CE of i_synth : label is 0;
  attribute C_HAS_SCLR of i_synth : label is 1;
  attribute C_HAS_SINIT of i_synth : label is 0;
  attribute C_HAS_SSET of i_synth : label is 0;
  attribute C_SINIT_VAL of i_synth : label is "00000";
  attribute C_SYNC_ENABLE of i_synth : label is 0;
  attribute C_SYNC_PRIORITY of i_synth : label is 1;
  attribute C_WIDTH of i_synth : label is 5;
  attribute c_addr_width of i_synth : label is 4;
  attribute c_default_data of i_synth : label is "00000";
  attribute c_depth of i_synth : label is 1;
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
i_synth: entity work.SynchVDL_c_shift_ram_v12_0_10_viv
     port map (
      A(3 downto 0) => B"0000",
      CE => '0',
      CLK => CLK,
      D(4 downto 0) => D(4 downto 0),
      Q(4 downto 0) => Q(4 downto 0),
      SCLR => SCLR,
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SynchTDL is
  port (
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SynchTDL : entity is "SynchTDL,c_shift_ram_v12_0_10,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SynchTDL : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of SynchTDL : entity is "c_shift_ram_v12_0_10,Vivado 2017.1";
end SynchTDL;

architecture STRUCTURE of SynchTDL is
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "000000";
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 1;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "000000";
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of U0 : label is 0;
  attribute C_SYNC_PRIORITY : integer;
  attribute C_SYNC_PRIORITY of U0 : label is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of U0 : label is 6;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 4;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "000000";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 1;
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
U0: entity work.SynchTDL_c_shift_ram_v12_0_10
     port map (
      A(3 downto 0) => B"0000",
      CE => '1',
      CLK => CLK,
      D(5 downto 0) => D(5 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      SCLR => SCLR,
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SynchVDL is
  port (
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SynchVDL : entity is "SynchVDL,c_shift_ram_v12_0_10,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SynchVDL : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of SynchVDL : entity is "c_shift_ram_v12_0_10,Vivado 2017.1";
end SynchVDL;

architecture STRUCTURE of SynchVDL is
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "00000";
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 1;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "00000";
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of U0 : label is 0;
  attribute C_SYNC_PRIORITY : integer;
  attribute C_SYNC_PRIORITY of U0 : label is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of U0 : label is 5;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 4;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "00000";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 1;
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
U0: entity work.SynchVDL_c_shift_ram_v12_0_10
     port map (
      A(3 downto 0) => B"0000",
      CE => '1',
      CLK => CLK,
      D(4 downto 0) => D(4 downto 0),
      Q(4 downto 0) => Q(4 downto 0),
      SCLR => SCLR,
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__blk_mem_gen_v8_3_6_synth\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__blk_mem_gen_v8_3_6_synth\ : entity is "blk_mem_gen_v8_3_6_synth";
end \FifoTDL__blk_mem_gen_v8_3_6_synth\;

architecture STRUCTURE of \FifoTDL__blk_mem_gen_v8_3_6_synth\ is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.\FifoTDL__blk_mem_gen_top\
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      WEBWE(0) => WEBWE(0),
      clk => clk,
      din(5 downto 0) => din(5 downto 0),
      dout(5 downto 0) => dout(5 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \out\(0) => \out\(0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__blk_mem_gen_v8_3_6_synth\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__blk_mem_gen_v8_3_6_synth\ : entity is "blk_mem_gen_v8_3_6_synth";
end \FifoVDL__blk_mem_gen_v8_3_6_synth\;

architecture STRUCTURE of \FifoVDL__blk_mem_gen_v8_3_6_synth\ is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.\FifoVDL__blk_mem_gen_top\
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      WEBWE(0) => WEBWE(0),
      clk => clk,
      din(4 downto 0) => din(4 downto 0),
      dout(4 downto 0) => dout(4 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \out\(0) => \out\(0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__blk_mem_gen_v8_3_6\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__blk_mem_gen_v8_3_6\ : entity is "blk_mem_gen_v8_3_6";
end \FifoTDL__blk_mem_gen_v8_3_6\;

architecture STRUCTURE of \FifoTDL__blk_mem_gen_v8_3_6\ is
begin
inst_blk_mem_gen: entity work.\FifoTDL__blk_mem_gen_v8_3_6_synth\
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      WEBWE(0) => WEBWE(0),
      clk => clk,
      din(5 downto 0) => din(5 downto 0),
      dout(5 downto 0) => dout(5 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \out\(0) => \out\(0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__blk_mem_gen_v8_3_6\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__blk_mem_gen_v8_3_6\ : entity is "blk_mem_gen_v8_3_6";
end \FifoVDL__blk_mem_gen_v8_3_6\;

architecture STRUCTURE of \FifoVDL__blk_mem_gen_v8_3_6\ is
begin
inst_blk_mem_gen: entity work.\FifoVDL__blk_mem_gen_v8_3_6_synth\
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      WEBWE(0) => WEBWE(0),
      clk => clk,
      din(4 downto 0) => din(4 downto 0),
      dout(4 downto 0) => dout(4 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \out\(0) => \out\(0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__memory\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__memory\ : entity is "memory";
end \FifoTDL__memory\;

architecture STRUCTURE of \FifoTDL__memory\ is
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.\FifoTDL__blk_mem_gen_v8_3_6\
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      WEBWE(0) => WEBWE(0),
      clk => clk,
      din(5 downto 0) => din(5 downto 0),
      dout(5 downto 0) => dout(5 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \out\(0) => \out\(0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__memory\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    din : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__memory\ : entity is "memory";
end \FifoVDL__memory\;

architecture STRUCTURE of \FifoVDL__memory\ is
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.\FifoVDL__blk_mem_gen_v8_3_6\
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      WEBWE(0) => WEBWE(0),
      clk => clk,
      din(4 downto 0) => din(4 downto 0),
      dout(4 downto 0) => dout(4 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \out\(0) => \out\(0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__fifo_generator_ramfifo\ is
  port (
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__fifo_generator_ramfifo\ : entity is "fifo_generator_ramfifo";
end \FifoTDL__fifo_generator_ramfifo\;

architecture STRUCTURE of \FifoTDL__fifo_generator_ramfifo\ is
  signal \gntv_or_sync_fifo.gl0.wr_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_2\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_11_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_2_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_rst_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal tmp_ram_rd_en : STD_LOGIC;
  signal \^wr_rst_busy\ : STD_LOGIC;
  signal wr_rst_i : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  wr_rst_busy <= \^wr_rst_busy\;
\gntv_or_sync_fifo.gl0.rd\: entity work.\FifoTDL__rd_logic\
     port map (
      AR(0) => rd_rst_i(2),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0) => p_0_out(3 downto 0),
      Q(3 downto 0) => rd_pntr_plus1(3 downto 0),
      clk => clk,
      empty => empty,
      \out\ => p_2_out,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_2\,
      rd_en => rd_en
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.\FifoTDL__wr_logic\
     port map (
      AR(0) => wr_rst_i(1),
      Q(3 downto 0) => p_11_out(3 downto 0),
      WEBWE(0) => \gntv_or_sync_fifo.gl0.wr_n_1\,
      clk => clk,
      full => full,
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out(3 downto 0),
      \gc0.count_reg[3]\(3 downto 0) => rd_pntr_plus1(3 downto 0),
      \out\ => rst_full_ff_i,
      ram_empty_fb_i_reg => p_2_out,
      ram_empty_i_reg => \gntv_or_sync_fifo.gl0.wr_n_2\,
      rd_en => rd_en,
      wr_en => wr_en,
      wr_rst_busy => \^wr_rst_busy\
    );
\gntv_or_sync_fifo.mem\: entity work.\FifoTDL__memory\
     port map (
      Q(3 downto 0) => p_11_out(3 downto 0),
      WEBWE(0) => \gntv_or_sync_fifo.gl0.wr_n_1\,
      clk => clk,
      din(5 downto 0) => din(5 downto 0),
      dout(5 downto 0) => dout(5 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out(3 downto 0),
      \out\(0) => rd_rst_i(0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
rstblk: entity work.\FifoTDL__reset_blk_ramfifo\
     port map (
      clk => clk,
      \gc0.count_reg[1]\(1) => rd_rst_i(2),
      \gc0.count_reg[1]\(0) => rd_rst_i(0),
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_ff_i,
      \out\(0) => wr_rst_i(1),
      ram_empty_fb_i_reg => p_2_out,
      rd_en => rd_en,
      rst => rst,
      tmp_ram_rd_en => tmp_ram_rd_en,
      wr_rst_busy => \^wr_rst_busy\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__fifo_generator_ramfifo\ is
  port (
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__fifo_generator_ramfifo\ : entity is "fifo_generator_ramfifo";
end \FifoVDL__fifo_generator_ramfifo\;

architecture STRUCTURE of \FifoVDL__fifo_generator_ramfifo\ is
  signal \gntv_or_sync_fifo.gl0.wr_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_2\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_11_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_2_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_rst_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal tmp_ram_rd_en : STD_LOGIC;
  signal \^wr_rst_busy\ : STD_LOGIC;
  signal wr_rst_i : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  wr_rst_busy <= \^wr_rst_busy\;
\gntv_or_sync_fifo.gl0.rd\: entity work.\FifoVDL__rd_logic\
     port map (
      AR(0) => rd_rst_i(2),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3 downto 0) => p_0_out(3 downto 0),
      Q(3 downto 0) => rd_pntr_plus1(3 downto 0),
      clk => clk,
      empty => empty,
      \out\ => p_2_out,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_2\,
      rd_en => rd_en
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.\FifoVDL__wr_logic\
     port map (
      AR(0) => wr_rst_i(1),
      Q(3 downto 0) => p_11_out(3 downto 0),
      WEBWE(0) => \gntv_or_sync_fifo.gl0.wr_n_1\,
      clk => clk,
      full => full,
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out(3 downto 0),
      \gc0.count_reg[3]\(3 downto 0) => rd_pntr_plus1(3 downto 0),
      \out\ => rst_full_ff_i,
      ram_empty_fb_i_reg => p_2_out,
      ram_empty_i_reg => \gntv_or_sync_fifo.gl0.wr_n_2\,
      rd_en => rd_en,
      wr_en => wr_en,
      wr_rst_busy => \^wr_rst_busy\
    );
\gntv_or_sync_fifo.mem\: entity work.\FifoVDL__memory\
     port map (
      Q(3 downto 0) => p_11_out(3 downto 0),
      WEBWE(0) => \gntv_or_sync_fifo.gl0.wr_n_1\,
      clk => clk,
      din(4 downto 0) => din(4 downto 0),
      dout(4 downto 0) => dout(4 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out(3 downto 0),
      \out\(0) => rd_rst_i(0),
      tmp_ram_rd_en => tmp_ram_rd_en
    );
rstblk: entity work.\FifoVDL__reset_blk_ramfifo\
     port map (
      clk => clk,
      \gc0.count_reg[1]\(1) => rd_rst_i(2),
      \gc0.count_reg[1]\(0) => rd_rst_i(0),
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_ff_i,
      \out\(0) => wr_rst_i(1),
      ram_empty_fb_i_reg => p_2_out,
      rd_en => rd_en,
      rst => rst,
      tmp_ram_rd_en => tmp_ram_rd_en,
      wr_rst_busy => \^wr_rst_busy\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__fifo_generator_top\ is
  port (
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__fifo_generator_top\ : entity is "fifo_generator_top";
end \FifoTDL__fifo_generator_top\;

architecture STRUCTURE of \FifoTDL__fifo_generator_top\ is
begin
\grf.rf\: entity work.\FifoTDL__fifo_generator_ramfifo\
     port map (
      clk => clk,
      din(5 downto 0) => din(5 downto 0),
      dout(5 downto 0) => dout(5 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__fifo_generator_top\ is
  port (
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__fifo_generator_top\ : entity is "fifo_generator_top";
end \FifoVDL__fifo_generator_top\;

architecture STRUCTURE of \FifoVDL__fifo_generator_top\ is
begin
\grf.rf\: entity work.\FifoVDL__fifo_generator_ramfifo\
     port map (
      clk => clk,
      din(4 downto 0) => din(4 downto 0),
      dout(4 downto 0) => dout(4 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__fifo_generator_v13_1_4_synth\ is
  port (
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__fifo_generator_v13_1_4_synth\ : entity is "fifo_generator_v13_1_4_synth";
end \FifoTDL__fifo_generator_v13_1_4_synth\;

architecture STRUCTURE of \FifoTDL__fifo_generator_v13_1_4_synth\ is
begin
\gconvfifo.rf\: entity work.\FifoTDL__fifo_generator_top\
     port map (
      clk => clk,
      din(5 downto 0) => din(5 downto 0),
      dout(5 downto 0) => dout(5 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__fifo_generator_v13_1_4_synth\ is
  port (
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__fifo_generator_v13_1_4_synth\ : entity is "fifo_generator_v13_1_4_synth";
end \FifoVDL__fifo_generator_v13_1_4_synth\;

architecture STRUCTURE of \FifoVDL__fifo_generator_v13_1_4_synth\ is
begin
\gconvfifo.rf\: entity work.\FifoVDL__fifo_generator_top\
     port map (
      clk => clk,
      din(4 downto 0) => din(4 downto 0),
      dout(4 downto 0) => dout(4 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoTDL__fifo_generator_v13_1_4\ is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 3 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of \FifoTDL__fifo_generator_v13_1_4\ : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 6;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of \FifoTDL__fifo_generator_v13_1_4\ : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 6;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \FifoTDL__fifo_generator_v13_1_4\ : entity is "virtex7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of \FifoTDL__fifo_generator_v13_1_4\ : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of \FifoTDL__fifo_generator_v13_1_4\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of \FifoTDL__fifo_generator_v13_1_4\ : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of \FifoTDL__fifo_generator_v13_1_4\ : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of \FifoTDL__fifo_generator_v13_1_4\ : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of \FifoTDL__fifo_generator_v13_1_4\ : entity is 14;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of \FifoTDL__fifo_generator_v13_1_4\ : entity is 13;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 16;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of \FifoTDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 16;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of \FifoTDL__fifo_generator_v13_1_4\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of \FifoTDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of \FifoTDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoTDL__fifo_generator_v13_1_4\ : entity is "fifo_generator_v13_1_4";
end \FifoTDL__fifo_generator_v13_1_4\;

architecture STRUCTURE of \FifoTDL__fifo_generator_v13_1_4\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.\FifoTDL__fifo_generator_v13_1_4_synth\
     port map (
      clk => clk,
      din(5 downto 0) => din(5 downto 0),
      dout(5 downto 0) => dout(5 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \FifoVDL__fifo_generator_v13_1_4\ is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 3 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of \FifoVDL__fifo_generator_v13_1_4\ : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 5;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of \FifoVDL__fifo_generator_v13_1_4\ : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 5;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \FifoVDL__fifo_generator_v13_1_4\ : entity is "virtex7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of \FifoVDL__fifo_generator_v13_1_4\ : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of \FifoVDL__fifo_generator_v13_1_4\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of \FifoVDL__fifo_generator_v13_1_4\ : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of \FifoVDL__fifo_generator_v13_1_4\ : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of \FifoVDL__fifo_generator_v13_1_4\ : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of \FifoVDL__fifo_generator_v13_1_4\ : entity is 14;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of \FifoVDL__fifo_generator_v13_1_4\ : entity is 13;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 16;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of \FifoVDL__fifo_generator_v13_1_4\ : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 16;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of \FifoVDL__fifo_generator_v13_1_4\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of \FifoVDL__fifo_generator_v13_1_4\ : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of \FifoVDL__fifo_generator_v13_1_4\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \FifoVDL__fifo_generator_v13_1_4\ : entity is "fifo_generator_v13_1_4";
end \FifoVDL__fifo_generator_v13_1_4\;

architecture STRUCTURE of \FifoVDL__fifo_generator_v13_1_4\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.\FifoVDL__fifo_generator_v13_1_4_synth\
     port map (
      clk => clk,
      din(4 downto 0) => din(4 downto 0),
      dout(4 downto 0) => dout(4 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FifoTDL is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FifoTDL : entity is "FifoVDL,fifo_generator_v13_1_4,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FifoTDL : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of FifoTDL : entity is "fifo_generator_v13_1_4,Vivado 2017.1";
end FifoTDL;

architecture STRUCTURE of FifoTDL is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 4;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 6;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 6;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "virtex7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 14;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 13;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 4;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 16;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 4;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 4;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 16;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
begin
U0: entity work.\FifoTDL__fifo_generator_v13_1_4\
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => clk,
      data_count(3 downto 0) => NLW_U0_data_count_UNCONNECTED(3 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(5 downto 0) => din(5 downto 0),
      dout(5 downto 0) => dout(5 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(3 downto 0) => B"0000",
      prog_empty_thresh_assert(3 downto 0) => B"0000",
      prog_empty_thresh_negate(3 downto 0) => B"0000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(3 downto 0) => B"0000",
      prog_full_thresh_assert(3 downto 0) => B"0000",
      prog_full_thresh_negate(3 downto 0) => B"0000",
      rd_clk => '0',
      rd_data_count(3 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(3 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => rst,
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(3 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(3 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FifoVDL is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FifoVDL : entity is "FifoTDL,fifo_generator_v13_1_4,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FifoVDL : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of FifoVDL : entity is "fifo_generator_v13_1_4,Vivado 2017.1";
end FifoVDL;

architecture STRUCTURE of FifoVDL is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 4;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 5;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 5;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "virtex7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 14;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 13;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 4;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 16;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 4;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 4;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 16;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
begin
U0: entity work.\FifoVDL__fifo_generator_v13_1_4\
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => clk,
      data_count(3 downto 0) => NLW_U0_data_count_UNCONNECTED(3 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(4 downto 0) => din(4 downto 0),
      dout(4 downto 0) => dout(4 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(3 downto 0) => B"0000",
      prog_empty_thresh_assert(3 downto 0) => B"0000",
      prog_empty_thresh_negate(3 downto 0) => B"0000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(3 downto 0) => B"0000",
      prog_full_thresh_assert(3 downto 0) => B"0000",
      prog_full_thresh_negate(3 downto 0) => B"0000",
      rd_clk => '0',
      rd_data_count(3 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(3 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => rst,
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(3 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(3 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UartModule is
  port (
    iVDL : in STD_LOGIC_VECTOR ( 4 downto 0 );
    iTDL : in STD_LOGIC_VECTOR ( 5 downto 0 );
    iClk : in STD_LOGIC;
    iReset : in STD_LOGIC;
    oTx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of UartModule : entity is true;
  attribute TDL_DATA : integer;
  attribute TDL_DATA of UartModule : entity is 6;
  attribute VDL_DATA : integer;
  attribute VDL_DATA of UartModule : entity is 5;
end UartModule;

architecture STRUCTURE of UartModule is
  signal RdEnTDL : STD_LOGIC;
  signal SCLR : STD_LOGIC;
  signal TDLEmpty : STD_LOGIC;
  signal TDLFull : STD_LOGIC;
  signal VDLEmpty : STD_LOGIC;
  signal VDLFull : STD_LOGIC;
  signal WrEnTDL : STD_LOGIC;
  signal iClk_IBUF : STD_LOGIC;
  signal iClk_IBUF_BUFG : STD_LOGIC;
  signal iReset_IBUF : STD_LOGIC;
  signal iSelect : STD_LOGIC;
  signal iTDLData : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of iTDLData : signal is std.standard.true;
  signal iUartData : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute DONT_TOUCH of iUartData : signal is std.standard.true;
  signal iVDLData : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute DONT_TOUCH of iVDLData : signal is std.standard.true;
  signal oFifoTDLData : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute DONT_TOUCH of oFifoTDLData : signal is std.standard.true;
  signal oFifoVDLData : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute DONT_TOUCH of oFifoVDLData : signal is std.standard.true;
  signal oSynchTDL : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal oSynchVDL : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal oTx_OBUF : STD_LOGIC;
  signal rd_en : STD_LOGIC;
  signal startTx : STD_LOGIC;
  signal txReady : STD_LOGIC;
  signal wr_en : STD_LOGIC;
  attribute syn_black_box : string;
  attribute syn_black_box of FifoTDL_cmp : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of FifoTDL_cmp : label is "fifo_generator_v13_1_4,Vivado 2017.1";
  attribute syn_black_box of FifoVDL_cmp : label is "TRUE";
  attribute x_core_info of FifoVDL_cmp : label is "fifo_generator_v13_1_4,Vivado 2017.1";
  attribute syn_black_box of SynchTDL_cmp : label is "TRUE";
  attribute x_core_info of SynchTDL_cmp : label is "c_shift_ram_v12_0_10,Vivado 2017.1";
  attribute syn_black_box of SynchVDL_cmp : label is "TRUE";
  attribute x_core_info of SynchVDL_cmp : label is "c_shift_ram_v12_0_10,Vivado 2017.1";
  attribute baud : integer;
  attribute baud of Uart_cmp : label is 115200;
  attribute clk_rate : integer;
  attribute clk_rate of Uart_cmp : label is 50000000;
begin
Control_cmp: entity work.Control
     port map (
      iClk => iClk_IBUF_BUFG,
      iRst => iReset_IBUF,
      iTDLEmpty => TDLEmpty,
      iTDLFull => TDLFull,
      iTxReady => txReady,
      iVDLEmpty => VDLEmpty,
      iVDLFull => VDLFull,
      oRdEnTDL => RdEnTDL,
      oRdEnVDL => rd_en,
      oReset => SCLR,
      oSelMux => iSelect,
      oStartTx => startTx,
      oWrEnTDL => WrEnTDL,
      oWrEnVDL => wr_en
    );
FifoTDL_cmp: entity work.FifoTDL
     port map (
      clk => iClk_IBUF_BUFG,
      din(5 downto 0) => oSynchTDL(5 downto 0),
      dout(5 downto 0) => oFifoTDLData(5 downto 0),
      empty => TDLEmpty,
      full => TDLFull,
      rd_en => RdEnTDL,
      rst => SCLR,
      wr_en => WrEnTDL
    );
FifoVDL_cmp: entity work.FifoVDL
     port map (
      clk => iClk_IBUF_BUFG,
      din(4 downto 0) => oSynchVDL(4 downto 0),
      dout(4 downto 0) => oFifoVDLData(4 downto 0),
      empty => VDLEmpty,
      full => VDLFull,
      rd_en => rd_en,
      rst => SCLR,
      wr_en => wr_en
    );
MuxUart_cmp: entity work.MuxUart
     port map (
      iFifoTDL(5 downto 0) => oFifoTDLData(5 downto 0),
      iFifoVDL(4 downto 0) => oFifoVDLData(4 downto 0),
      iSel => iSelect,
      oUartData(5 downto 0) => iUartData(5 downto 0)
    );
SynchTDL_cmp: entity work.SynchTDL
     port map (
      CLK => iClk_IBUF_BUFG,
      D(5 downto 0) => iTDLData(5 downto 0),
      Q(5 downto 0) => oSynchTDL(5 downto 0),
      SCLR => SCLR
    );
SynchVDL_cmp: entity work.SynchVDL
     port map (
      CLK => iClk_IBUF_BUFG,
      D(4 downto 0) => iVDLData(4 downto 0),
      Q(4 downto 0) => oSynchVDL(4 downto 0),
      SCLR => SCLR
    );
Uart_cmp: entity work.tUART
     port map (
      clk => iClk_IBUF_BUFG,
      data_in(5 downto 0) => iUartData(5 downto 0),
      data_out => oTx_OBUF,
      reset => SCLR,
      start => startTx,
      tx_ready => txReady
    );
iClk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => iClk_IBUF,
      O => iClk_IBUF_BUFG
    );
iClk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => iClk,
      O => iClk_IBUF
    );
iReset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => iReset,
      O => iReset_IBUF
    );
\iTDL_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iTDL(0),
      O => iTDLData(0)
    );
\iTDL_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iTDL(1),
      O => iTDLData(1)
    );
\iTDL_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iTDL(2),
      O => iTDLData(2)
    );
\iTDL_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iTDL(3),
      O => iTDLData(3)
    );
\iTDL_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iTDL(4),
      O => iTDLData(4)
    );
\iTDL_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iTDL(5),
      O => iTDLData(5)
    );
\iVDL_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iVDL(0),
      O => iVDLData(0)
    );
\iVDL_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iVDL(1),
      O => iVDLData(1)
    );
\iVDL_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iVDL(2),
      O => iVDLData(2)
    );
\iVDL_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iVDL(3),
      O => iVDLData(3)
    );
\iVDL_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iVDL(4),
      O => iVDLData(4)
    );
oTx_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => oTx_OBUF,
      O => oTx
    );
end STRUCTURE;
