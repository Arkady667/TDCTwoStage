-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Fri May 25 16:15:27 2018
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
entity Control is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iVDLFull : in STD_LOGIC;
    iVDLEmpty : in STD_LOGIC;
    iTDLFull : in STD_LOGIC;
    iTDLEmpty : in STD_LOGIC;
    iReady : in STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal \FSM_sequential_r[state][0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r[state][0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r[state][1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r[state][1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r[state][2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r[state][2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r[state][2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r[state][2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_reg[state][0]_i_2_n_0\ : STD_LOGIC;
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
  signal \r[j]_i_2_n_0\ : STD_LOGIC;
  signal \r[k]_i_1_n_0\ : STD_LOGIC;
  signal \r[k]_i_2_n_0\ : STD_LOGIC;
  signal \r[reset]_i_1_n_0\ : STD_LOGIC;
  signal \r[selMux]_i_1_n_0\ : STD_LOGIC;
  signal \r[startTx]_i_1_n_0\ : STD_LOGIC;
  signal \r[startTx]_i_3_n_0\ : STD_LOGIC;
  signal \r[startTx]_i_4_n_0\ : STD_LOGIC;
  signal \r[wrEnTDL]_i_1_n_0\ : STD_LOGIC;
  signal \r[wrEnVDL]_i_1_n_0\ : STD_LOGIC;
  signal \r[wrEnVDL]_i_3_n_0\ : STD_LOGIC;
  signal \r_reg[i]__0\ : STD_LOGIC;
  signal \r_reg[j_n_0_]\ : STD_LOGIC;
  signal \r_reg[k_n_0_]\ : STD_LOGIC;
  signal \r_reg[state]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \r_reg[state]\ : signal is "yes";
  signal \v[startTx]\ : STD_LOGIC;
  signal \v[state]16_out\ : STD_LOGIC;
  signal \v[state]17_out\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_r_reg[state][0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_r_reg[state][1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_r_reg[state][2]\ : label is "yes";
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
      INIT => X"BBBA888A"
    )
        port map (
      I0 => \FSM_sequential_r_reg[state][0]_i_2_n_0\,
      I1 => \FSM_sequential_r[state][2]_i_3_n_0\,
      I2 => \FSM_sequential_r[state][2]_i_4_n_0\,
      I3 => \r_reg[state]\(1),
      I4 => \r_reg[state]\(0),
      O => \FSM_sequential_r[state][0]_i_1_n_0\
    );
\FSM_sequential_r[state][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F800F8F0F800080"
    )
        port map (
      I0 => iTDLFull,
      I1 => \r_reg[i]__0\,
      I2 => \r_reg[state]\(1),
      I3 => iTDLEmpty,
      I4 => \r_reg[state]\(2),
      I5 => iReady(0),
      O => \FSM_sequential_r[state][0]_i_3_n_0\
    );
\FSM_sequential_r[state][0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0515"
    )
        port map (
      I0 => \r_reg[state]\(2),
      I1 => iTDLEmpty,
      I2 => iVDLEmpty,
      I3 => \r_reg[state]\(1),
      O => \FSM_sequential_r[state][0]_i_4_n_0\
    );
\FSM_sequential_r[state][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB8A"
    )
        port map (
      I0 => \FSM_sequential_r[state][1]_i_2_n_0\,
      I1 => \FSM_sequential_r[state][2]_i_3_n_0\,
      I2 => \FSM_sequential_r[state][2]_i_4_n_0\,
      I3 => \r_reg[state]\(1),
      O => \FSM_sequential_r[state][1]_i_1_n_0\
    );
\FSM_sequential_r[state][1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15401500"
    )
        port map (
      I0 => \r_reg[state]\(2),
      I1 => \r_reg[state]\(0),
      I2 => iVDLEmpty,
      I3 => \r_reg[state]\(1),
      I4 => iTDLEmpty,
      O => \FSM_sequential_r[state][1]_i_2_n_0\
    );
\FSM_sequential_r[state][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => \FSM_sequential_r[state][2]_i_2_n_0\,
      I1 => \FSM_sequential_r[state][2]_i_3_n_0\,
      I2 => \FSM_sequential_r[state][2]_i_4_n_0\,
      I3 => \r_reg[state]\(1),
      I4 => \r_reg[state]\(2),
      O => \FSM_sequential_r[state][2]_i_1_n_0\
    );
\FSM_sequential_r[state][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => iVDLEmpty,
      I1 => \r_reg[state]\(1),
      I2 => \r_reg[state]\(0),
      I3 => \r_reg[state]\(2),
      O => \FSM_sequential_r[state][2]_i_2_n_0\
    );
\FSM_sequential_r[state][2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => \r_reg[state]\(2),
      I1 => iTxReady,
      I2 => \r_reg[j_n_0_]\,
      I3 => \r_reg[state]\(0),
      O => \FSM_sequential_r[state][2]_i_3_n_0\
    );
\FSM_sequential_r[state][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008AAA8AAA8AAA8A"
    )
        port map (
      I0 => \r_reg[state]\(2),
      I1 => \r_reg[k_n_0_]\,
      I2 => iTxReady,
      I3 => \r_reg[state]\(0),
      I4 => iTDLEmpty,
      I5 => iVDLEmpty,
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
\FSM_sequential_r_reg[state][0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_r[state][0]_i_3_n_0\,
      I1 => \FSM_sequential_r[state][0]_i_4_n_0\,
      O => \FSM_sequential_r_reg[state][0]_i_2_n_0\,
      S => \r_reg[state]\(0)
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
\r[RdEnTDL]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFFFF00100000"
    )
        port map (
      I0 => \r_reg[state]\(0),
      I1 => \r_reg[state]\(1),
      I2 => \r[RdEnTDL]_i_2_n_0\,
      I3 => iTDLEmpty,
      I4 => \r_reg[state]\(2),
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
      INIT => X"FAFFFFFF02000000"
    )
        port map (
      I0 => \r[RdEnVDL]_i_2_n_0\,
      I1 => iVDLEmpty,
      I2 => \r_reg[state]\(2),
      I3 => \r_reg[state]\(0),
      I4 => \r_reg[state]\(1),
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
      I0 => \r_reg[state]\(0),
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
      I5 => \r_reg[state]\(1),
      O => \r[i]_i_2_n_0\
    );
\r[j]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000000002"
    )
        port map (
      I0 => iTxReady,
      I1 => iVDLEmpty,
      I2 => \r_reg[state]\(2),
      I3 => \r[j]_i_2_n_0\,
      I4 => iRst,
      I5 => \r_reg[j_n_0_]\,
      O => \r[j]_i_1_n_0\
    );
\r[j]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \r_reg[state]\(1),
      I1 => \r_reg[state]\(0),
      O => \r[j]_i_2_n_0\
    );
\r[k]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000000400"
    )
        port map (
      I0 => \r[k]_i_2_n_0\,
      I1 => iTxReady,
      I2 => iTDLEmpty,
      I3 => \r_reg[state]\(2),
      I4 => iRst,
      I5 => \r_reg[k_n_0_]\,
      O => \r[k]_i_1_n_0\
    );
\r[k]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r_reg[state]\(1),
      I1 => \r_reg[state]\(0),
      O => \r[k]_i_2_n_0\
    );
\r[reset]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000000"
    )
        port map (
      I0 => \r_reg[state]\(1),
      I1 => \r_reg[state]\(2),
      I2 => \r_reg[state]\(0),
      I3 => iVDLEmpty,
      I4 => iTDLEmpty,
      I5 => \^oreset\,
      O => \r[reset]_i_1_n_0\
    );
\r[selMux]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB20"
    )
        port map (
      I0 => \r_reg[state]\(0),
      I1 => \r_reg[state]\(2),
      I2 => \r_reg[state]\(1),
      I3 => \^oselmux\,
      O => \r[selMux]_i_1_n_0\
    );
\r[startTx]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBA8080808A"
    )
        port map (
      I0 => \v[startTx]\,
      I1 => \r[startTx]_i_3_n_0\,
      I2 => \r_reg[state]\(0),
      I3 => \r_reg[state]\(1),
      I4 => \r[startTx]_i_4_n_0\,
      I5 => \^ostarttx\,
      O => \r[startTx]_i_1_n_0\
    );
\r[startTx]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11001F00"
    )
        port map (
      I0 => \r_reg[state]\(1),
      I1 => \r_reg[k_n_0_]\,
      I2 => \r_reg[state]\(2),
      I3 => iTxReady,
      I4 => \r_reg[j_n_0_]\,
      O => \v[startTx]\
    );
\r[startTx]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444444"
    )
        port map (
      I0 => \r_reg[state]\(2),
      I1 => \r_reg[state]\(1),
      I2 => \r_reg[j_n_0_]\,
      I3 => iTxReady,
      I4 => iVDLEmpty,
      O => \r[startTx]_i_3_n_0\
    );
\r[startTx]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55D5"
    )
        port map (
      I0 => \r_reg[state]\(2),
      I1 => iTDLEmpty,
      I2 => iTxReady,
      I3 => \r_reg[k_n_0_]\,
      O => \r[startTx]_i_4_n_0\
    );
\r[wrEnTDL]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFFFF00080008"
    )
        port map (
      I0 => \v[state]17_out\,
      I1 => \r_reg[state]\(0),
      I2 => \r_reg[state]\(2),
      I3 => \r_reg[state]\(1),
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
      INIT => X"FCFFFFFF00080008"
    )
        port map (
      I0 => \v[state]17_out\,
      I1 => \r_reg[state]\(0),
      I2 => \r_reg[state]\(2),
      I3 => \r_reg[state]\(1),
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
      O => \v[state]17_out\
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
entity Mux_exp is
  port (
    iMux : in STD_LOGIC_VECTOR ( 61 downto 0 );
    iSel : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
entity SynchTDL is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    CLR : out STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    CLK : in STD_LOGIC
  );
end SynchTDL;

architecture STRUCTURE of SynchTDL is
  signal \^clr\ : STD_LOGIC;
  signal Q0 : STD_LOGIC;
  signal oReset_i_1_n_0 : STD_LOGIC;
  signal oReset_i_2_n_0 : STD_LOGIC;
begin
  CLR <= \^clr\;
\Q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => D(4),
      I1 => D(2),
      I2 => D(1),
      I3 => D(0),
      I4 => D(3),
      I5 => D(5),
      O => Q0
    );
\Q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q0,
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q0,
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q0,
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q0,
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\Q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q0,
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
    );
\Q_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => Q0,
      CLR => AR(0),
      D => D(5),
      Q => Q(5)
    );
oReset_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => Q0,
      I1 => AR(0),
      I2 => \^clr\,
      O => oReset_i_1_n_0
    );
oReset_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q0,
      I1 => AR(0),
      O => oReset_i_2_n_0
    );
oReset_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => oReset_i_2_n_0,
      D => oReset_i_1_n_0,
      Q => \^clr\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SynchVDL is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end SynchVDL;

architecture STRUCTURE of SynchVDL is
begin
\Q_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => D(0),
      Q => Q(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => D(1),
      Q => Q(1)
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => D(2),
      Q => Q(2)
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => D(3),
      Q => Q(3)
    );
\Q_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => D(4),
      Q => Q(4)
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
\REG_TAPS[0].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_29_out(0),
      Q => oData(0)
    );
\REG_TAPS[10].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_26_out(2),
      Q => oData(10)
    );
\REG_TAPS[11].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_26_out(3),
      Q => oData(11)
    );
\REG_TAPS[12].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_24_out(0),
      Q => oData(12)
    );
\REG_TAPS[13].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_24_out(1),
      Q => oData(13)
    );
\REG_TAPS[14].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_24_out(2),
      Q => oData(14)
    );
\REG_TAPS[15].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_24_out(3),
      Q => oData(15)
    );
\REG_TAPS[16].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_22_out(0),
      Q => oData(16)
    );
\REG_TAPS[17].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_22_out(1),
      Q => oData(17)
    );
\REG_TAPS[18].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_22_out(2),
      Q => oData(18)
    );
\REG_TAPS[19].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_22_out(3),
      Q => oData(19)
    );
\REG_TAPS[1].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_29_out(1),
      Q => oData(1)
    );
\REG_TAPS[20].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_20_out(0),
      Q => oData(20)
    );
\REG_TAPS[21].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_20_out(1),
      Q => oData(21)
    );
\REG_TAPS[22].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_20_out(2),
      Q => oData(22)
    );
\REG_TAPS[23].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_20_out(3),
      Q => oData(23)
    );
\REG_TAPS[24].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_18_out(0),
      Q => oData(24)
    );
\REG_TAPS[25].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_18_out(1),
      Q => oData(25)
    );
\REG_TAPS[26].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_18_out(2),
      Q => oData(26)
    );
\REG_TAPS[27].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_18_out(3),
      Q => oData(27)
    );
\REG_TAPS[28].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_16_out(0),
      Q => oData(28)
    );
\REG_TAPS[29].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_16_out(1),
      Q => oData(29)
    );
\REG_TAPS[2].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_29_out(2),
      Q => oData(2)
    );
\REG_TAPS[30].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_16_out(2),
      Q => oData(30)
    );
\REG_TAPS[31].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_16_out(3),
      Q => oData(31)
    );
\REG_TAPS[32].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_14_out(0),
      Q => oData(32)
    );
\REG_TAPS[33].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_14_out(1),
      Q => oData(33)
    );
\REG_TAPS[34].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_14_out(2),
      Q => oData(34)
    );
\REG_TAPS[35].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_14_out(3),
      Q => oData(35)
    );
\REG_TAPS[36].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_12_out(0),
      Q => oData(36)
    );
\REG_TAPS[37].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_12_out(1),
      Q => oData(37)
    );
\REG_TAPS[38].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_12_out(2),
      Q => oData(38)
    );
\REG_TAPS[39].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_12_out(3),
      Q => oData(39)
    );
\REG_TAPS[3].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_29_out(3),
      Q => oData(3)
    );
\REG_TAPS[40].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_10_out(0),
      Q => oData(40)
    );
\REG_TAPS[41].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_10_out(1),
      Q => oData(41)
    );
\REG_TAPS[42].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_10_out(2),
      Q => oData(42)
    );
\REG_TAPS[43].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_10_out(3),
      Q => oData(43)
    );
\REG_TAPS[44].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_8_out(0),
      Q => oData(44)
    );
\REG_TAPS[45].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_8_out(1),
      Q => oData(45)
    );
\REG_TAPS[46].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_8_out(2),
      Q => oData(46)
    );
\REG_TAPS[47].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_8_out(3),
      Q => oData(47)
    );
\REG_TAPS[48].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_6_out(0),
      Q => oData(48)
    );
\REG_TAPS[49].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_6_out(1),
      Q => oData(49)
    );
\REG_TAPS[4].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_28_out(0),
      Q => oData(4)
    );
\REG_TAPS[50].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_6_out(2),
      Q => oData(50)
    );
\REG_TAPS[51].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_6_out(3),
      Q => oData(51)
    );
\REG_TAPS[52].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_4_out(0),
      Q => oData(52)
    );
\REG_TAPS[53].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_4_out(1),
      Q => oData(53)
    );
\REG_TAPS[54].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_4_out(2),
      Q => oData(54)
    );
\REG_TAPS[55].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_4_out(3),
      Q => oData(55)
    );
\REG_TAPS[56].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_2_out(0),
      Q => oData(56)
    );
\REG_TAPS[57].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_2_out(1),
      Q => oData(57)
    );
\REG_TAPS[58].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_2_out(2),
      Q => oData(58)
    );
\REG_TAPS[59].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_2_out(3),
      Q => oData(59)
    );
\REG_TAPS[5].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_28_out(1),
      Q => oData(5)
    );
\REG_TAPS[60].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_0_out(0),
      Q => oData(60)
    );
\REG_TAPS[61].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_0_out(1),
      Q => oData(61)
    );
\REG_TAPS[62].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_0_out(2),
      Q => oData(62)
    );
\REG_TAPS[63].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_0_out(3),
      Q => oData(63)
    );
\REG_TAPS[6].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_28_out(2),
      Q => oData(6)
    );
\REG_TAPS[7].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_28_out(3),
      Q => oData(7)
    );
\REG_TAPS[8].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_26_out(0),
      Q => oData(8)
    );
\REG_TAPS[9].REG\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      CLR => iReset,
      D => p_26_out(1),
      Q => oData(9)
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
\OUT_REG[0].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(0),
      GE => '1',
      Q => oMerged(0)
    );
\OUT_REG[10].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(10),
      GE => '1',
      Q => oMerged(10)
    );
\OUT_REG[11].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(11),
      GE => '1',
      Q => oMerged(11)
    );
\OUT_REG[12].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(12),
      GE => '1',
      Q => oMerged(12)
    );
\OUT_REG[13].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(13),
      GE => '1',
      Q => oMerged(13)
    );
\OUT_REG[14].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(14),
      GE => '1',
      Q => oMerged(14)
    );
\OUT_REG[15].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(15),
      GE => '1',
      Q => oMerged(15)
    );
\OUT_REG[16].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(16),
      GE => '1',
      Q => oMerged(16)
    );
\OUT_REG[17].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(17),
      GE => '1',
      Q => oMerged(17)
    );
\OUT_REG[18].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(18),
      GE => '1',
      Q => oMerged(18)
    );
\OUT_REG[19].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(19),
      GE => '1',
      Q => oMerged(19)
    );
\OUT_REG[1].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(1),
      GE => '1',
      Q => oMerged(1)
    );
\OUT_REG[20].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(20),
      GE => '1',
      Q => oMerged(20)
    );
\OUT_REG[21].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(21),
      GE => '1',
      Q => oMerged(21)
    );
\OUT_REG[22].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(22),
      GE => '1',
      Q => oMerged(22)
    );
\OUT_REG[23].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(23),
      GE => '1',
      Q => oMerged(23)
    );
\OUT_REG[24].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(24),
      GE => '1',
      Q => oMerged(24)
    );
\OUT_REG[25].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(25),
      GE => '1',
      Q => oMerged(25)
    );
\OUT_REG[26].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(26),
      GE => '1',
      Q => oMerged(26)
    );
\OUT_REG[27].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(27),
      GE => '1',
      Q => oMerged(27)
    );
\OUT_REG[28].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(28),
      GE => '1',
      Q => oMerged(28)
    );
\OUT_REG[29].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(29),
      GE => '1',
      Q => oMerged(29)
    );
\OUT_REG[2].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(2),
      GE => '1',
      Q => oMerged(2)
    );
\OUT_REG[30].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(30),
      GE => '1',
      Q => oMerged(30)
    );
\OUT_REG[31].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(31),
      GE => '1',
      Q => oMerged(31)
    );
\OUT_REG[32].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(32),
      GE => '1',
      Q => oMerged(32)
    );
\OUT_REG[33].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(33),
      GE => '1',
      Q => oMerged(33)
    );
\OUT_REG[34].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(34),
      GE => '1',
      Q => oMerged(34)
    );
\OUT_REG[35].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(35),
      GE => '1',
      Q => oMerged(35)
    );
\OUT_REG[36].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(36),
      GE => '1',
      Q => oMerged(36)
    );
\OUT_REG[37].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(37),
      GE => '1',
      Q => oMerged(37)
    );
\OUT_REG[38].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(38),
      GE => '1',
      Q => oMerged(38)
    );
\OUT_REG[39].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(39),
      GE => '1',
      Q => oMerged(39)
    );
\OUT_REG[3].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(3),
      GE => '1',
      Q => oMerged(3)
    );
\OUT_REG[40].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(40),
      GE => '1',
      Q => oMerged(40)
    );
\OUT_REG[41].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(41),
      GE => '1',
      Q => oMerged(41)
    );
\OUT_REG[42].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(42),
      GE => '1',
      Q => oMerged(42)
    );
\OUT_REG[43].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(43),
      GE => '1',
      Q => oMerged(43)
    );
\OUT_REG[44].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(44),
      GE => '1',
      Q => oMerged(44)
    );
\OUT_REG[45].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(45),
      GE => '1',
      Q => oMerged(45)
    );
\OUT_REG[46].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(46),
      GE => '1',
      Q => oMerged(46)
    );
\OUT_REG[47].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(47),
      GE => '1',
      Q => oMerged(47)
    );
\OUT_REG[48].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(48),
      GE => '1',
      Q => oMerged(48)
    );
\OUT_REG[49].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(49),
      GE => '1',
      Q => oMerged(49)
    );
\OUT_REG[4].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(4),
      GE => '1',
      Q => oMerged(4)
    );
\OUT_REG[50].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(50),
      GE => '1',
      Q => oMerged(50)
    );
\OUT_REG[51].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(51),
      GE => '1',
      Q => oMerged(51)
    );
\OUT_REG[52].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(52),
      GE => '1',
      Q => oMerged(52)
    );
\OUT_REG[53].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(53),
      GE => '1',
      Q => oMerged(53)
    );
\OUT_REG[54].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(54),
      GE => '1',
      Q => oMerged(54)
    );
\OUT_REG[55].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(55),
      GE => '1',
      Q => oMerged(55)
    );
\OUT_REG[56].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(56),
      GE => '1',
      Q => oMerged(56)
    );
\OUT_REG[57].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(57),
      GE => '1',
      Q => oMerged(57)
    );
\OUT_REG[58].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(58),
      GE => '1',
      Q => oMerged(58)
    );
\OUT_REG[59].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(59),
      GE => '1',
      Q => oMerged(59)
    );
\OUT_REG[5].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(5),
      GE => '1',
      Q => oMerged(5)
    );
\OUT_REG[60].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(60),
      GE => '1',
      Q => oMerged(60)
    );
\OUT_REG[61].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(61),
      GE => '1',
      Q => oMerged(61)
    );
\OUT_REG[6].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(6),
      GE => '1',
      Q => oMerged(6)
    );
\OUT_REG[7].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(7),
      GE => '1',
      Q => oMerged(7)
    );
\OUT_REG[8].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(8),
      GE => '1',
      Q => oMerged(8)
    );
\OUT_REG[9].REG_cmp\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_G_INVERTED => '0'
    )
        port map (
      CLR => iReset,
      D => '1',
      G => merged(9),
      GE => '1',
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
entity clk_wiz_0_clk_wiz_0_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of clk_wiz_0_clk_wiz_0_clk_wiz : entity is "clk_wiz_0_clk_wiz";
end clk_wiz_0_clk_wiz_0_clk_wiz;

architecture STRUCTURE of clk_wiz_0_clk_wiz_0_clk_wiz is
  signal clk_in1_clk_wiz_0 : STD_LOGIC;
  signal clk_out1_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_buf_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_clk_wiz_0 : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute box_type : string;
  attribute box_type of clkf_buf : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufgds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufgds : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufgds : label is "AUTO";
  attribute box_type of clkin1_ibufgds : label is "PRIMITIVE";
  attribute box_type of clkout1_buf : label is "PRIMITIVE";
  attribute box_type of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_wiz_0,
      O => clkfbout_buf_clk_wiz_0
    );
clkin1_ibufgds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1_p,
      IB => clk_in1_n,
      O => clk_in1_clk_wiz_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_clk_wiz_0,
      O => clk_out1
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 5.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 5.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 10.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_wiz_0,
      CLKFBOUT => clkfbout_clk_wiz_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_clk_wiz_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_clk_wiz_0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => locked,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => reset
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
  attribute clk_rate of tUART : entity is 100000000;
end tUART;

architecture STRUCTURE of tUART is
  signal \clk_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \clk_counter[9]_i_4_n_0\ : STD_LOGIC;
  signal \clk_counter[9]_i_5_n_0\ : STD_LOGIC;
  signal \clk_counter[9]_i_6_n_0\ : STD_LOGIC;
  signal \clk_counter[9]_i_7_n_0\ : STD_LOGIC;
  signal clk_delay_counter0 : STD_LOGIC;
  signal \clk_delay_counter[0]_i_12_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_13_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_14_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_15_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_16_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_17_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_18_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_19_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_8_n_0\ : STD_LOGIC;
  signal clk_delay_counter_reg : STD_LOGIC_VECTOR ( 12 downto 2 );
  signal \clk_delay_counter_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \clk_delay_counter_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \clk_delay_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \clk_delay_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_delay_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal data_reg : STD_LOGIC;
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
  signal sel0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal shift_data : STD_LOGIC;
  signal shift_data0 : STD_LOGIC;
  signal shift_data_i_1_n_0 : STD_LOGIC;
  signal start_count_follow : STD_LOGIC;
  signal start_count_lead : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tx_ready0 : STD_LOGIC;
  signal tx_ready_reg : STD_LOGIC;
  signal tx_ready_reg_i_1_n_0 : STD_LOGIC;
  signal \NLW_clk_delay_counter_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clk_delay_counter_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clk_delay_counter_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_delay_counter_reg[0]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_delay_counter_reg[0]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clk_delay_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clk_delay_counter_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_clk_delay_counter_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_delay_counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_counter[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \clk_counter[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \clk_counter[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \clk_counter[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \clk_counter[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_reg[0]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_reg[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of delay_clock_done_i_1 : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of delay_clock_reg : label is "LD";
  attribute SOFT_HLUTNM of delay_clock_reg_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \number_bits[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \number_bits[3]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of shift_data_i_1 : label is "soft_lutpair17";
begin
\clk_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F308"
    )
        port map (
      I0 => \clk_counter[9]_i_4_n_0\,
      I1 => state(1),
      I2 => state(0),
      I3 => sel0(0),
      O => \clk_counter[0]_i_1_n_0\
    );
\clk_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => data0(1)
    );
\clk_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      O => data0(2)
    );
\clk_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(3),
      O => data0(3)
    );
\clk_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(3),
      I4 => sel0(4),
      O => data0(4)
    );
\clk_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => sel0(4),
      I5 => sel0(5),
      O => data0(5)
    );
\clk_counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(5),
      I2 => \clk_counter[9]_i_6_n_0\,
      I3 => sel0(6),
      O => data0(6)
    );
\clk_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(2),
      I2 => sel0(6),
      I3 => \clk_counter[9]_i_6_n_0\,
      I4 => sel0(7),
      O => data0(7)
    );
\clk_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \clk_counter[9]_i_6_n_0\,
      I1 => sel0(7),
      I2 => sel0(6),
      I3 => sel0(2),
      I4 => sel0(5),
      I5 => sel0(8),
      O => data0(8)
    );
\clk_counter[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => sel0(0),
      I3 => \clk_counter[9]_i_4_n_0\,
      O => shift_data0
    );
\clk_counter[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \clk_counter[9]_i_2_n_0\
    );
\clk_counter[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \clk_counter[9]_i_5_n_0\,
      I1 => sel0(8),
      I2 => \clk_counter[9]_i_6_n_0\,
      I3 => sel0(7),
      I4 => sel0(9),
      O => data0(9)
    );
\clk_counter[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(9),
      I3 => sel0(7),
      I4 => sel0(1),
      I5 => \clk_counter[9]_i_7_n_0\,
      O => \clk_counter[9]_i_4_n_0\
    );
\clk_counter[9]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(2),
      I2 => sel0(6),
      O => \clk_counter[9]_i_5_n_0\
    );
\clk_counter[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(4),
      O => \clk_counter[9]_i_6_n_0\
    );
\clk_counter[9]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(2),
      I2 => sel0(5),
      I3 => sel0(8),
      O => \clk_counter[9]_i_7_n_0\
    );
\clk_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_counter[0]_i_1_n_0\,
      Q => sel0(0),
      R => '0'
    );
\clk_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[9]_i_2_n_0\,
      D => data0(1),
      Q => sel0(1),
      R => shift_data0
    );
\clk_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[9]_i_2_n_0\,
      D => data0(2),
      Q => sel0(2),
      R => shift_data0
    );
\clk_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[9]_i_2_n_0\,
      D => data0(3),
      Q => sel0(3),
      R => shift_data0
    );
\clk_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[9]_i_2_n_0\,
      D => data0(4),
      Q => sel0(4),
      R => shift_data0
    );
\clk_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[9]_i_2_n_0\,
      D => data0(5),
      Q => sel0(5),
      R => shift_data0
    );
\clk_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[9]_i_2_n_0\,
      D => data0(6),
      Q => sel0(6),
      R => shift_data0
    );
\clk_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[9]_i_2_n_0\,
      D => data0(7),
      Q => sel0(7),
      R => shift_data0
    );
\clk_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[9]_i_2_n_0\,
      D => data0(8),
      Q => sel0(8),
      R => shift_data0
    );
\clk_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \clk_counter[9]_i_2_n_0\,
      D => data0(9),
      Q => sel0(9),
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
\clk_delay_counter[0]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_delay_counter_reg_n_0_[0]\,
      O => \clk_delay_counter[0]_i_12_n_0\
    );
\clk_delay_counter[0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_delay_counter_reg(7),
      I1 => clk_delay_counter_reg(6),
      O => \clk_delay_counter[0]_i_13_n_0\
    );
\clk_delay_counter[0]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_delay_counter_reg(5),
      I1 => clk_delay_counter_reg(4),
      O => \clk_delay_counter[0]_i_14_n_0\
    );
\clk_delay_counter[0]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_delay_counter_reg(3),
      O => \clk_delay_counter[0]_i_15_n_0\
    );
\clk_delay_counter[0]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_delay_counter_reg(9),
      I1 => clk_delay_counter_reg(8),
      O => \clk_delay_counter[0]_i_16_n_0\
    );
\clk_delay_counter[0]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(6),
      I1 => clk_delay_counter_reg(7),
      O => \clk_delay_counter[0]_i_17_n_0\
    );
\clk_delay_counter[0]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(4),
      I1 => clk_delay_counter_reg(5),
      O => \clk_delay_counter[0]_i_18_n_0\
    );
\clk_delay_counter[0]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(3),
      I1 => clk_delay_counter_reg(2),
      O => \clk_delay_counter[0]_i_19_n_0\
    );
\clk_delay_counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_delay_counter_reg(12),
      O => \clk_delay_counter[0]_i_5_n_0\
    );
\clk_delay_counter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_delay_counter_reg(11),
      I1 => clk_delay_counter_reg(10),
      O => \clk_delay_counter[0]_i_6_n_0\
    );
\clk_delay_counter[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(10),
      I1 => clk_delay_counter_reg(11),
      O => \clk_delay_counter[0]_i_8_n_0\
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
      CO(3 downto 2) => \NLW_clk_delay_counter_reg[0]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => clk_delay_counter0,
      CO(0) => \NLW_clk_delay_counter_reg[0]_i_2_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \clk_delay_counter[0]_i_5_n_0\,
      DI(0) => \clk_delay_counter[0]_i_6_n_0\,
      O(3 downto 0) => \NLW_clk_delay_counter_reg[0]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => clk_delay_counter_reg(12),
      S(0) => \clk_delay_counter[0]_i_8_n_0\
    );
\clk_delay_counter_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_delay_counter_reg[0]_i_3_n_0\,
      CO(2 downto 0) => \NLW_clk_delay_counter_reg[0]_i_3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clk_delay_counter_reg[0]_i_3_n_4\,
      O(2) => \clk_delay_counter_reg[0]_i_3_n_5\,
      O(1) => \clk_delay_counter_reg[0]_i_3_n_6\,
      O(0) => \clk_delay_counter_reg[0]_i_3_n_7\,
      S(3 downto 2) => clk_delay_counter_reg(3 downto 2),
      S(1) => \clk_delay_counter_reg_n_0_[1]\,
      S(0) => \clk_delay_counter[0]_i_12_n_0\
    );
\clk_delay_counter_reg[0]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_delay_counter_reg[0]_i_4_n_0\,
      CO(2 downto 0) => \NLW_clk_delay_counter_reg[0]_i_4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \clk_delay_counter[0]_i_13_n_0\,
      DI(1) => \clk_delay_counter[0]_i_14_n_0\,
      DI(0) => \clk_delay_counter[0]_i_15_n_0\,
      O(3 downto 0) => \NLW_clk_delay_counter_reg[0]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \clk_delay_counter[0]_i_16_n_0\,
      S(2) => \clk_delay_counter[0]_i_17_n_0\,
      S(1) => \clk_delay_counter[0]_i_18_n_0\,
      S(0) => \clk_delay_counter[0]_i_19_n_0\
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
\clk_delay_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clk_delay_counter0,
      D => \clk_delay_counter_reg[12]_i_1_n_7\,
      Q => clk_delay_counter_reg(12),
      R => tx_ready0
    );
\clk_delay_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_delay_counter_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_clk_delay_counter_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_clk_delay_counter_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \clk_delay_counter_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => clk_delay_counter_reg(12)
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
      CO(2 downto 0) => \NLW_clk_delay_counter_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_delay_counter_reg[4]_i_1_n_4\,
      O(2) => \clk_delay_counter_reg[4]_i_1_n_5\,
      O(1) => \clk_delay_counter_reg[4]_i_1_n_6\,
      O(0) => \clk_delay_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => clk_delay_counter_reg(7 downto 4)
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
      CO(3) => \clk_delay_counter_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_clk_delay_counter_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_delay_counter_reg[8]_i_1_n_4\,
      O(2) => \clk_delay_counter_reg[8]_i_1_n_5\,
      O(1) => \clk_delay_counter_reg[8]_i_1_n_6\,
      O(0) => \clk_delay_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => clk_delay_counter_reg(11 downto 8)
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
      INIT => X"44540000"
    )
        port map (
      I0 => reset,
      I1 => shift_data,
      I2 => state(0),
      I3 => state(1),
      I4 => \data_reg[0]_i_3_n_0\,
      O => data_reg
    );
\data_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \data_reg_reg_n_0_[1]\,
      O => \data_reg[0]_i_2_n_0\
    );
\data_reg[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \number_bits_reg_n_0_[1]\,
      I1 => \number_bits_reg_n_0_[2]\,
      I2 => \number_bits_reg_n_0_[3]\,
      I3 => \number_bits_reg_n_0_[0]\,
      O => \data_reg[0]_i_3_n_0\
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \data_reg_reg_n_0_[2]\,
      I1 => state(1),
      I2 => state(0),
      I3 => data_in(0),
      O => \data_reg[1]_i_1_n_0\
    );
\data_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \data_reg_reg_n_0_[3]\,
      I1 => state(1),
      I2 => state(0),
      I3 => data_in(1),
      O => \data_reg[2]_i_1_n_0\
    );
\data_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \data_reg_reg_n_0_[4]\,
      I1 => state(1),
      I2 => state(0),
      I3 => data_in(2),
      O => \data_reg[3]_i_1_n_0\
    );
\data_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \data_reg_reg_n_0_[5]\,
      I1 => state(1),
      I2 => state(0),
      I3 => data_in(3),
      O => \data_reg[4]_i_1_n_0\
    );
\data_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \data_reg_reg_n_0_[6]\,
      I1 => state(1),
      I2 => state(0),
      I3 => data_in(4),
      O => \data_reg[5]_i_1_n_0\
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACAFAFA"
    )
        port map (
      I0 => \data_reg_reg_n_0_[6]\,
      I1 => data_in(5),
      I2 => data_reg,
      I3 => state(1),
      I4 => state(0),
      O => \data_reg[6]_i_1_n_0\
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => data_reg,
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
      CE => data_reg,
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
      CE => data_reg,
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
      CE => data_reg,
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
      CE => data_reg,
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
      CE => data_reg,
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
      INIT => X"0D"
    )
        port map (
      I0 => state(1),
      I1 => done_shifting_reg_n_0,
      I2 => state(0),
      O => delay_clock_reg_i_2_n_0
    );
done_shifting_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0D0F0FF"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
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
      INIT => X"00EF"
    )
        port map (
      I0 => \number_bits_reg_n_0_[1]\,
      I1 => \number_bits_reg_n_0_[2]\,
      I2 => \number_bits_reg_n_0_[3]\,
      I3 => \number_bits_reg_n_0_[0]\,
      O => \number_bits[0]_i_1_n_0\
    );
\number_bits[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \number_bits_reg_n_0_[1]\,
      I1 => \number_bits_reg_n_0_[0]\,
      O => \number_bits[1]_i_1_n_0\
    );
\number_bits[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \number_bits_reg_n_0_[2]\,
      I1 => \number_bits_reg_n_0_[0]\,
      I2 => \number_bits_reg_n_0_[1]\,
      O => \number_bits[2]_i_1_n_0\
    );
\number_bits[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888F88"
    )
        port map (
      I0 => shift_data,
      I1 => \number_bits[3]_i_3_n_0\,
      I2 => \number_bits_reg_n_0_[0]\,
      I3 => \number_bits_reg_n_0_[3]\,
      I4 => \number_bits_reg_n_0_[2]\,
      I5 => \number_bits_reg_n_0_[1]\,
      O => \number_bits[3]_i_1_n_0\
    );
\number_bits[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA8"
    )
        port map (
      I0 => \number_bits_reg_n_0_[3]\,
      I1 => \number_bits_reg_n_0_[2]\,
      I2 => \number_bits_reg_n_0_[1]\,
      I3 => \number_bits_reg_n_0_[0]\,
      O => \number_bits[3]_i_2_n_0\
    );
\number_bits[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
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
shift_data_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA03AA"
    )
        port map (
      I0 => shift_data,
      I1 => \clk_counter[9]_i_4_n_0\,
      I2 => sel0(0),
      I3 => state(1),
      I4 => state(0),
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
      INIT => X"0004"
    )
        port map (
      I0 => start_count_follow,
      I1 => start_count_lead,
      I2 => state(1),
      I3 => state(0),
      O => nxt_state(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1C"
    )
        port map (
      I0 => done_shifting_reg_n_0,
      I1 => state(0),
      I2 => state(1),
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
      INIT => X"0004"
    )
        port map (
      I0 => delay_clock,
      I1 => tx_ready_reg,
      I2 => state(1),
      I3 => state(0),
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
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
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
      DOADO(15 downto 9) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 9),
      DOADO(8) => dout(2),
      DOADO(7 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOADO_UNCONNECTED\(7 downto 2),
      DOADO(1 downto 0) => dout(1 downto 0),
      DOBDO(15 downto 9) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 9),
      DOBDO(8) => dout(5),
      DOBDO(7 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED\(7 downto 2),
      DOBDO(1 downto 0) => dout(4 downto 3),
      DOPADOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
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
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair2";
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
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
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
      DOADO(15 downto 9) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 9),
      DOADO(8) => dout(2),
      DOADO(7 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOADO_UNCONNECTED\(7 downto 2),
      DOADO(1 downto 0) => dout(1 downto 0),
      DOBDO(15 downto 9) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 9),
      DOBDO(8) => dout(4),
      DOBDO(7 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED\(7 downto 1),
      DOBDO(0) => dout(3),
      DOPADOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
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
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair2";
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wiz_0 is
  port (
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );
end clk_wiz_0;

architecture STRUCTURE of clk_wiz_0 is
begin
inst: entity work.clk_wiz_0_clk_wiz_0_clk_wiz
     port map (
      clk_in1_n => clk_in1_n,
      clk_in1_p => clk_in1_p,
      clk_out1 => clk_out1,
      locked => locked,
      reset => reset
    );
end STRUCTURE;
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
  wr_rst_busy <= 'Z';
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
  wr_rst_busy <= 'Z';
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
  signal \NLW_grf.rf_wr_rst_busy_UNCONNECTED\ : STD_LOGIC;
begin
  wr_rst_busy <= 'Z';
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
      wr_rst_busy => \NLW_grf.rf_wr_rst_busy_UNCONNECTED\
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
  signal \NLW_grf.rf_wr_rst_busy_UNCONNECTED\ : STD_LOGIC;
begin
  wr_rst_busy <= 'Z';
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
      wr_rst_busy => \NLW_grf.rf_wr_rst_busy_UNCONNECTED\
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
  signal \NLW_gconvfifo.rf_wr_rst_busy_UNCONNECTED\ : STD_LOGIC;
begin
  wr_rst_busy <= 'Z';
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
      wr_rst_busy => \NLW_gconvfifo.rf_wr_rst_busy_UNCONNECTED\
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
  signal \NLW_gconvfifo.rf_wr_rst_busy_UNCONNECTED\ : STD_LOGIC;
begin
  wr_rst_busy <= 'Z';
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
      wr_rst_busy => \NLW_gconvfifo.rf_wr_rst_busy_UNCONNECTED\
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
  signal NLW_inst_fifo_gen_wr_rst_busy_UNCONNECTED : STD_LOGIC;
begin
  almost_full <= 'Z';
  wr_ack <= 'Z';
  overflow <= 'Z';
  almost_empty <= 'Z';
  valid <= 'Z';
  underflow <= 'Z';
  prog_full <= 'Z';
  prog_empty <= 'Z';
  sbiterr <= 'Z';
  dbiterr <= 'Z';
  wr_rst_busy <= 'Z';
  rd_rst_busy <= 'Z';
  s_axi_awready <= 'Z';
  s_axi_wready <= 'Z';
  s_axi_bvalid <= 'Z';
  m_axi_awvalid <= 'Z';
  m_axi_wlast <= 'Z';
  m_axi_wvalid <= 'Z';
  m_axi_bready <= 'Z';
  s_axi_arready <= 'Z';
  s_axi_rlast <= 'Z';
  s_axi_rvalid <= 'Z';
  m_axi_arvalid <= 'Z';
  m_axi_rready <= 'Z';
  s_axis_tready <= 'Z';
  m_axis_tvalid <= 'Z';
  m_axis_tlast <= 'Z';
  axi_aw_sbiterr <= 'Z';
  axi_aw_dbiterr <= 'Z';
  axi_aw_overflow <= 'Z';
  axi_aw_underflow <= 'Z';
  axi_aw_prog_full <= 'Z';
  axi_aw_prog_empty <= 'Z';
  axi_w_sbiterr <= 'Z';
  axi_w_dbiterr <= 'Z';
  axi_w_overflow <= 'Z';
  axi_w_underflow <= 'Z';
  axi_w_prog_full <= 'Z';
  axi_w_prog_empty <= 'Z';
  axi_b_sbiterr <= 'Z';
  axi_b_dbiterr <= 'Z';
  axi_b_overflow <= 'Z';
  axi_b_underflow <= 'Z';
  axi_b_prog_full <= 'Z';
  axi_b_prog_empty <= 'Z';
  axi_ar_sbiterr <= 'Z';
  axi_ar_dbiterr <= 'Z';
  axi_ar_overflow <= 'Z';
  axi_ar_underflow <= 'Z';
  axi_ar_prog_full <= 'Z';
  axi_ar_prog_empty <= 'Z';
  axi_r_sbiterr <= 'Z';
  axi_r_dbiterr <= 'Z';
  axi_r_overflow <= 'Z';
  axi_r_underflow <= 'Z';
  axi_r_prog_full <= 'Z';
  axi_r_prog_empty <= 'Z';
  axis_sbiterr <= 'Z';
  axis_dbiterr <= 'Z';
  axis_overflow <= 'Z';
  axis_underflow <= 'Z';
  axis_prog_full <= 'Z';
  axis_prog_empty <= 'Z';
  data_count(0) <= 'Z';
  data_count(1) <= 'Z';
  data_count(2) <= 'Z';
  data_count(3) <= 'Z';
  rd_data_count(0) <= 'Z';
  rd_data_count(1) <= 'Z';
  rd_data_count(2) <= 'Z';
  rd_data_count(3) <= 'Z';
  wr_data_count(0) <= 'Z';
  wr_data_count(1) <= 'Z';
  wr_data_count(2) <= 'Z';
  wr_data_count(3) <= 'Z';
  s_axi_bid(0) <= 'Z';
  s_axi_bresp(0) <= 'Z';
  s_axi_bresp(1) <= 'Z';
  s_axi_buser(0) <= 'Z';
  m_axi_awid(0) <= 'Z';
  m_axi_awaddr(0) <= 'Z';
  m_axi_awaddr(1) <= 'Z';
  m_axi_awaddr(2) <= 'Z';
  m_axi_awaddr(3) <= 'Z';
  m_axi_awaddr(4) <= 'Z';
  m_axi_awaddr(5) <= 'Z';
  m_axi_awaddr(6) <= 'Z';
  m_axi_awaddr(7) <= 'Z';
  m_axi_awaddr(8) <= 'Z';
  m_axi_awaddr(9) <= 'Z';
  m_axi_awaddr(10) <= 'Z';
  m_axi_awaddr(11) <= 'Z';
  m_axi_awaddr(12) <= 'Z';
  m_axi_awaddr(13) <= 'Z';
  m_axi_awaddr(14) <= 'Z';
  m_axi_awaddr(15) <= 'Z';
  m_axi_awaddr(16) <= 'Z';
  m_axi_awaddr(17) <= 'Z';
  m_axi_awaddr(18) <= 'Z';
  m_axi_awaddr(19) <= 'Z';
  m_axi_awaddr(20) <= 'Z';
  m_axi_awaddr(21) <= 'Z';
  m_axi_awaddr(22) <= 'Z';
  m_axi_awaddr(23) <= 'Z';
  m_axi_awaddr(24) <= 'Z';
  m_axi_awaddr(25) <= 'Z';
  m_axi_awaddr(26) <= 'Z';
  m_axi_awaddr(27) <= 'Z';
  m_axi_awaddr(28) <= 'Z';
  m_axi_awaddr(29) <= 'Z';
  m_axi_awaddr(30) <= 'Z';
  m_axi_awaddr(31) <= 'Z';
  m_axi_awlen(0) <= 'Z';
  m_axi_awlen(1) <= 'Z';
  m_axi_awlen(2) <= 'Z';
  m_axi_awlen(3) <= 'Z';
  m_axi_awlen(4) <= 'Z';
  m_axi_awlen(5) <= 'Z';
  m_axi_awlen(6) <= 'Z';
  m_axi_awlen(7) <= 'Z';
  m_axi_awsize(0) <= 'Z';
  m_axi_awsize(1) <= 'Z';
  m_axi_awsize(2) <= 'Z';
  m_axi_awburst(0) <= 'Z';
  m_axi_awburst(1) <= 'Z';
  m_axi_awlock(0) <= 'Z';
  m_axi_awcache(0) <= 'Z';
  m_axi_awcache(1) <= 'Z';
  m_axi_awcache(2) <= 'Z';
  m_axi_awcache(3) <= 'Z';
  m_axi_awprot(0) <= 'Z';
  m_axi_awprot(1) <= 'Z';
  m_axi_awprot(2) <= 'Z';
  m_axi_awqos(0) <= 'Z';
  m_axi_awqos(1) <= 'Z';
  m_axi_awqos(2) <= 'Z';
  m_axi_awqos(3) <= 'Z';
  m_axi_awregion(0) <= 'Z';
  m_axi_awregion(1) <= 'Z';
  m_axi_awregion(2) <= 'Z';
  m_axi_awregion(3) <= 'Z';
  m_axi_awuser(0) <= 'Z';
  m_axi_wid(0) <= 'Z';
  m_axi_wdata(0) <= 'Z';
  m_axi_wdata(1) <= 'Z';
  m_axi_wdata(2) <= 'Z';
  m_axi_wdata(3) <= 'Z';
  m_axi_wdata(4) <= 'Z';
  m_axi_wdata(5) <= 'Z';
  m_axi_wdata(6) <= 'Z';
  m_axi_wdata(7) <= 'Z';
  m_axi_wdata(8) <= 'Z';
  m_axi_wdata(9) <= 'Z';
  m_axi_wdata(10) <= 'Z';
  m_axi_wdata(11) <= 'Z';
  m_axi_wdata(12) <= 'Z';
  m_axi_wdata(13) <= 'Z';
  m_axi_wdata(14) <= 'Z';
  m_axi_wdata(15) <= 'Z';
  m_axi_wdata(16) <= 'Z';
  m_axi_wdata(17) <= 'Z';
  m_axi_wdata(18) <= 'Z';
  m_axi_wdata(19) <= 'Z';
  m_axi_wdata(20) <= 'Z';
  m_axi_wdata(21) <= 'Z';
  m_axi_wdata(22) <= 'Z';
  m_axi_wdata(23) <= 'Z';
  m_axi_wdata(24) <= 'Z';
  m_axi_wdata(25) <= 'Z';
  m_axi_wdata(26) <= 'Z';
  m_axi_wdata(27) <= 'Z';
  m_axi_wdata(28) <= 'Z';
  m_axi_wdata(29) <= 'Z';
  m_axi_wdata(30) <= 'Z';
  m_axi_wdata(31) <= 'Z';
  m_axi_wdata(32) <= 'Z';
  m_axi_wdata(33) <= 'Z';
  m_axi_wdata(34) <= 'Z';
  m_axi_wdata(35) <= 'Z';
  m_axi_wdata(36) <= 'Z';
  m_axi_wdata(37) <= 'Z';
  m_axi_wdata(38) <= 'Z';
  m_axi_wdata(39) <= 'Z';
  m_axi_wdata(40) <= 'Z';
  m_axi_wdata(41) <= 'Z';
  m_axi_wdata(42) <= 'Z';
  m_axi_wdata(43) <= 'Z';
  m_axi_wdata(44) <= 'Z';
  m_axi_wdata(45) <= 'Z';
  m_axi_wdata(46) <= 'Z';
  m_axi_wdata(47) <= 'Z';
  m_axi_wdata(48) <= 'Z';
  m_axi_wdata(49) <= 'Z';
  m_axi_wdata(50) <= 'Z';
  m_axi_wdata(51) <= 'Z';
  m_axi_wdata(52) <= 'Z';
  m_axi_wdata(53) <= 'Z';
  m_axi_wdata(54) <= 'Z';
  m_axi_wdata(55) <= 'Z';
  m_axi_wdata(56) <= 'Z';
  m_axi_wdata(57) <= 'Z';
  m_axi_wdata(58) <= 'Z';
  m_axi_wdata(59) <= 'Z';
  m_axi_wdata(60) <= 'Z';
  m_axi_wdata(61) <= 'Z';
  m_axi_wdata(62) <= 'Z';
  m_axi_wdata(63) <= 'Z';
  m_axi_wstrb(0) <= 'Z';
  m_axi_wstrb(1) <= 'Z';
  m_axi_wstrb(2) <= 'Z';
  m_axi_wstrb(3) <= 'Z';
  m_axi_wstrb(4) <= 'Z';
  m_axi_wstrb(5) <= 'Z';
  m_axi_wstrb(6) <= 'Z';
  m_axi_wstrb(7) <= 'Z';
  m_axi_wuser(0) <= 'Z';
  s_axi_rid(0) <= 'Z';
  s_axi_rdata(0) <= 'Z';
  s_axi_rdata(1) <= 'Z';
  s_axi_rdata(2) <= 'Z';
  s_axi_rdata(3) <= 'Z';
  s_axi_rdata(4) <= 'Z';
  s_axi_rdata(5) <= 'Z';
  s_axi_rdata(6) <= 'Z';
  s_axi_rdata(7) <= 'Z';
  s_axi_rdata(8) <= 'Z';
  s_axi_rdata(9) <= 'Z';
  s_axi_rdata(10) <= 'Z';
  s_axi_rdata(11) <= 'Z';
  s_axi_rdata(12) <= 'Z';
  s_axi_rdata(13) <= 'Z';
  s_axi_rdata(14) <= 'Z';
  s_axi_rdata(15) <= 'Z';
  s_axi_rdata(16) <= 'Z';
  s_axi_rdata(17) <= 'Z';
  s_axi_rdata(18) <= 'Z';
  s_axi_rdata(19) <= 'Z';
  s_axi_rdata(20) <= 'Z';
  s_axi_rdata(21) <= 'Z';
  s_axi_rdata(22) <= 'Z';
  s_axi_rdata(23) <= 'Z';
  s_axi_rdata(24) <= 'Z';
  s_axi_rdata(25) <= 'Z';
  s_axi_rdata(26) <= 'Z';
  s_axi_rdata(27) <= 'Z';
  s_axi_rdata(28) <= 'Z';
  s_axi_rdata(29) <= 'Z';
  s_axi_rdata(30) <= 'Z';
  s_axi_rdata(31) <= 'Z';
  s_axi_rdata(32) <= 'Z';
  s_axi_rdata(33) <= 'Z';
  s_axi_rdata(34) <= 'Z';
  s_axi_rdata(35) <= 'Z';
  s_axi_rdata(36) <= 'Z';
  s_axi_rdata(37) <= 'Z';
  s_axi_rdata(38) <= 'Z';
  s_axi_rdata(39) <= 'Z';
  s_axi_rdata(40) <= 'Z';
  s_axi_rdata(41) <= 'Z';
  s_axi_rdata(42) <= 'Z';
  s_axi_rdata(43) <= 'Z';
  s_axi_rdata(44) <= 'Z';
  s_axi_rdata(45) <= 'Z';
  s_axi_rdata(46) <= 'Z';
  s_axi_rdata(47) <= 'Z';
  s_axi_rdata(48) <= 'Z';
  s_axi_rdata(49) <= 'Z';
  s_axi_rdata(50) <= 'Z';
  s_axi_rdata(51) <= 'Z';
  s_axi_rdata(52) <= 'Z';
  s_axi_rdata(53) <= 'Z';
  s_axi_rdata(54) <= 'Z';
  s_axi_rdata(55) <= 'Z';
  s_axi_rdata(56) <= 'Z';
  s_axi_rdata(57) <= 'Z';
  s_axi_rdata(58) <= 'Z';
  s_axi_rdata(59) <= 'Z';
  s_axi_rdata(60) <= 'Z';
  s_axi_rdata(61) <= 'Z';
  s_axi_rdata(62) <= 'Z';
  s_axi_rdata(63) <= 'Z';
  s_axi_rresp(0) <= 'Z';
  s_axi_rresp(1) <= 'Z';
  s_axi_ruser(0) <= 'Z';
  m_axi_arid(0) <= 'Z';
  m_axi_araddr(0) <= 'Z';
  m_axi_araddr(1) <= 'Z';
  m_axi_araddr(2) <= 'Z';
  m_axi_araddr(3) <= 'Z';
  m_axi_araddr(4) <= 'Z';
  m_axi_araddr(5) <= 'Z';
  m_axi_araddr(6) <= 'Z';
  m_axi_araddr(7) <= 'Z';
  m_axi_araddr(8) <= 'Z';
  m_axi_araddr(9) <= 'Z';
  m_axi_araddr(10) <= 'Z';
  m_axi_araddr(11) <= 'Z';
  m_axi_araddr(12) <= 'Z';
  m_axi_araddr(13) <= 'Z';
  m_axi_araddr(14) <= 'Z';
  m_axi_araddr(15) <= 'Z';
  m_axi_araddr(16) <= 'Z';
  m_axi_araddr(17) <= 'Z';
  m_axi_araddr(18) <= 'Z';
  m_axi_araddr(19) <= 'Z';
  m_axi_araddr(20) <= 'Z';
  m_axi_araddr(21) <= 'Z';
  m_axi_araddr(22) <= 'Z';
  m_axi_araddr(23) <= 'Z';
  m_axi_araddr(24) <= 'Z';
  m_axi_araddr(25) <= 'Z';
  m_axi_araddr(26) <= 'Z';
  m_axi_araddr(27) <= 'Z';
  m_axi_araddr(28) <= 'Z';
  m_axi_araddr(29) <= 'Z';
  m_axi_araddr(30) <= 'Z';
  m_axi_araddr(31) <= 'Z';
  m_axi_arlen(0) <= 'Z';
  m_axi_arlen(1) <= 'Z';
  m_axi_arlen(2) <= 'Z';
  m_axi_arlen(3) <= 'Z';
  m_axi_arlen(4) <= 'Z';
  m_axi_arlen(5) <= 'Z';
  m_axi_arlen(6) <= 'Z';
  m_axi_arlen(7) <= 'Z';
  m_axi_arsize(0) <= 'Z';
  m_axi_arsize(1) <= 'Z';
  m_axi_arsize(2) <= 'Z';
  m_axi_arburst(0) <= 'Z';
  m_axi_arburst(1) <= 'Z';
  m_axi_arlock(0) <= 'Z';
  m_axi_arcache(0) <= 'Z';
  m_axi_arcache(1) <= 'Z';
  m_axi_arcache(2) <= 'Z';
  m_axi_arcache(3) <= 'Z';
  m_axi_arprot(0) <= 'Z';
  m_axi_arprot(1) <= 'Z';
  m_axi_arprot(2) <= 'Z';
  m_axi_arqos(0) <= 'Z';
  m_axi_arqos(1) <= 'Z';
  m_axi_arqos(2) <= 'Z';
  m_axi_arqos(3) <= 'Z';
  m_axi_arregion(0) <= 'Z';
  m_axi_arregion(1) <= 'Z';
  m_axi_arregion(2) <= 'Z';
  m_axi_arregion(3) <= 'Z';
  m_axi_aruser(0) <= 'Z';
  m_axis_tdata(0) <= 'Z';
  m_axis_tdata(1) <= 'Z';
  m_axis_tdata(2) <= 'Z';
  m_axis_tdata(3) <= 'Z';
  m_axis_tdata(4) <= 'Z';
  m_axis_tdata(5) <= 'Z';
  m_axis_tdata(6) <= 'Z';
  m_axis_tdata(7) <= 'Z';
  m_axis_tstrb(0) <= 'Z';
  m_axis_tkeep(0) <= 'Z';
  m_axis_tid(0) <= 'Z';
  m_axis_tdest(0) <= 'Z';
  m_axis_tuser(0) <= 'Z';
  m_axis_tuser(1) <= 'Z';
  m_axis_tuser(2) <= 'Z';
  m_axis_tuser(3) <= 'Z';
  axi_aw_data_count(0) <= 'Z';
  axi_aw_data_count(1) <= 'Z';
  axi_aw_data_count(2) <= 'Z';
  axi_aw_data_count(3) <= 'Z';
  axi_aw_data_count(4) <= 'Z';
  axi_aw_wr_data_count(0) <= 'Z';
  axi_aw_wr_data_count(1) <= 'Z';
  axi_aw_wr_data_count(2) <= 'Z';
  axi_aw_wr_data_count(3) <= 'Z';
  axi_aw_wr_data_count(4) <= 'Z';
  axi_aw_rd_data_count(0) <= 'Z';
  axi_aw_rd_data_count(1) <= 'Z';
  axi_aw_rd_data_count(2) <= 'Z';
  axi_aw_rd_data_count(3) <= 'Z';
  axi_aw_rd_data_count(4) <= 'Z';
  axi_w_data_count(0) <= 'Z';
  axi_w_data_count(1) <= 'Z';
  axi_w_data_count(2) <= 'Z';
  axi_w_data_count(3) <= 'Z';
  axi_w_data_count(4) <= 'Z';
  axi_w_data_count(5) <= 'Z';
  axi_w_data_count(6) <= 'Z';
  axi_w_data_count(7) <= 'Z';
  axi_w_data_count(8) <= 'Z';
  axi_w_data_count(9) <= 'Z';
  axi_w_data_count(10) <= 'Z';
  axi_w_wr_data_count(0) <= 'Z';
  axi_w_wr_data_count(1) <= 'Z';
  axi_w_wr_data_count(2) <= 'Z';
  axi_w_wr_data_count(3) <= 'Z';
  axi_w_wr_data_count(4) <= 'Z';
  axi_w_wr_data_count(5) <= 'Z';
  axi_w_wr_data_count(6) <= 'Z';
  axi_w_wr_data_count(7) <= 'Z';
  axi_w_wr_data_count(8) <= 'Z';
  axi_w_wr_data_count(9) <= 'Z';
  axi_w_wr_data_count(10) <= 'Z';
  axi_w_rd_data_count(0) <= 'Z';
  axi_w_rd_data_count(1) <= 'Z';
  axi_w_rd_data_count(2) <= 'Z';
  axi_w_rd_data_count(3) <= 'Z';
  axi_w_rd_data_count(4) <= 'Z';
  axi_w_rd_data_count(5) <= 'Z';
  axi_w_rd_data_count(6) <= 'Z';
  axi_w_rd_data_count(7) <= 'Z';
  axi_w_rd_data_count(8) <= 'Z';
  axi_w_rd_data_count(9) <= 'Z';
  axi_w_rd_data_count(10) <= 'Z';
  axi_b_data_count(0) <= 'Z';
  axi_b_data_count(1) <= 'Z';
  axi_b_data_count(2) <= 'Z';
  axi_b_data_count(3) <= 'Z';
  axi_b_data_count(4) <= 'Z';
  axi_b_wr_data_count(0) <= 'Z';
  axi_b_wr_data_count(1) <= 'Z';
  axi_b_wr_data_count(2) <= 'Z';
  axi_b_wr_data_count(3) <= 'Z';
  axi_b_wr_data_count(4) <= 'Z';
  axi_b_rd_data_count(0) <= 'Z';
  axi_b_rd_data_count(1) <= 'Z';
  axi_b_rd_data_count(2) <= 'Z';
  axi_b_rd_data_count(3) <= 'Z';
  axi_b_rd_data_count(4) <= 'Z';
  axi_ar_data_count(0) <= 'Z';
  axi_ar_data_count(1) <= 'Z';
  axi_ar_data_count(2) <= 'Z';
  axi_ar_data_count(3) <= 'Z';
  axi_ar_data_count(4) <= 'Z';
  axi_ar_wr_data_count(0) <= 'Z';
  axi_ar_wr_data_count(1) <= 'Z';
  axi_ar_wr_data_count(2) <= 'Z';
  axi_ar_wr_data_count(3) <= 'Z';
  axi_ar_wr_data_count(4) <= 'Z';
  axi_ar_rd_data_count(0) <= 'Z';
  axi_ar_rd_data_count(1) <= 'Z';
  axi_ar_rd_data_count(2) <= 'Z';
  axi_ar_rd_data_count(3) <= 'Z';
  axi_ar_rd_data_count(4) <= 'Z';
  axi_r_data_count(0) <= 'Z';
  axi_r_data_count(1) <= 'Z';
  axi_r_data_count(2) <= 'Z';
  axi_r_data_count(3) <= 'Z';
  axi_r_data_count(4) <= 'Z';
  axi_r_data_count(5) <= 'Z';
  axi_r_data_count(6) <= 'Z';
  axi_r_data_count(7) <= 'Z';
  axi_r_data_count(8) <= 'Z';
  axi_r_data_count(9) <= 'Z';
  axi_r_data_count(10) <= 'Z';
  axi_r_wr_data_count(0) <= 'Z';
  axi_r_wr_data_count(1) <= 'Z';
  axi_r_wr_data_count(2) <= 'Z';
  axi_r_wr_data_count(3) <= 'Z';
  axi_r_wr_data_count(4) <= 'Z';
  axi_r_wr_data_count(5) <= 'Z';
  axi_r_wr_data_count(6) <= 'Z';
  axi_r_wr_data_count(7) <= 'Z';
  axi_r_wr_data_count(8) <= 'Z';
  axi_r_wr_data_count(9) <= 'Z';
  axi_r_wr_data_count(10) <= 'Z';
  axi_r_rd_data_count(0) <= 'Z';
  axi_r_rd_data_count(1) <= 'Z';
  axi_r_rd_data_count(2) <= 'Z';
  axi_r_rd_data_count(3) <= 'Z';
  axi_r_rd_data_count(4) <= 'Z';
  axi_r_rd_data_count(5) <= 'Z';
  axi_r_rd_data_count(6) <= 'Z';
  axi_r_rd_data_count(7) <= 'Z';
  axi_r_rd_data_count(8) <= 'Z';
  axi_r_rd_data_count(9) <= 'Z';
  axi_r_rd_data_count(10) <= 'Z';
  axis_data_count(0) <= 'Z';
  axis_data_count(1) <= 'Z';
  axis_data_count(2) <= 'Z';
  axis_data_count(3) <= 'Z';
  axis_data_count(4) <= 'Z';
  axis_data_count(5) <= 'Z';
  axis_data_count(6) <= 'Z';
  axis_data_count(7) <= 'Z';
  axis_data_count(8) <= 'Z';
  axis_data_count(9) <= 'Z';
  axis_data_count(10) <= 'Z';
  axis_wr_data_count(0) <= 'Z';
  axis_wr_data_count(1) <= 'Z';
  axis_wr_data_count(2) <= 'Z';
  axis_wr_data_count(3) <= 'Z';
  axis_wr_data_count(4) <= 'Z';
  axis_wr_data_count(5) <= 'Z';
  axis_wr_data_count(6) <= 'Z';
  axis_wr_data_count(7) <= 'Z';
  axis_wr_data_count(8) <= 'Z';
  axis_wr_data_count(9) <= 'Z';
  axis_wr_data_count(10) <= 'Z';
  axis_rd_data_count(0) <= 'Z';
  axis_rd_data_count(1) <= 'Z';
  axis_rd_data_count(2) <= 'Z';
  axis_rd_data_count(3) <= 'Z';
  axis_rd_data_count(4) <= 'Z';
  axis_rd_data_count(5) <= 'Z';
  axis_rd_data_count(6) <= 'Z';
  axis_rd_data_count(7) <= 'Z';
  axis_rd_data_count(8) <= 'Z';
  axis_rd_data_count(9) <= 'Z';
  axis_rd_data_count(10) <= 'Z';
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
      wr_rst_busy => NLW_inst_fifo_gen_wr_rst_busy_UNCONNECTED
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
  signal NLW_inst_fifo_gen_wr_rst_busy_UNCONNECTED : STD_LOGIC;
begin
  almost_full <= 'Z';
  wr_ack <= 'Z';
  overflow <= 'Z';
  almost_empty <= 'Z';
  valid <= 'Z';
  underflow <= 'Z';
  prog_full <= 'Z';
  prog_empty <= 'Z';
  sbiterr <= 'Z';
  dbiterr <= 'Z';
  wr_rst_busy <= 'Z';
  rd_rst_busy <= 'Z';
  s_axi_awready <= 'Z';
  s_axi_wready <= 'Z';
  s_axi_bvalid <= 'Z';
  m_axi_awvalid <= 'Z';
  m_axi_wlast <= 'Z';
  m_axi_wvalid <= 'Z';
  m_axi_bready <= 'Z';
  s_axi_arready <= 'Z';
  s_axi_rlast <= 'Z';
  s_axi_rvalid <= 'Z';
  m_axi_arvalid <= 'Z';
  m_axi_rready <= 'Z';
  s_axis_tready <= 'Z';
  m_axis_tvalid <= 'Z';
  m_axis_tlast <= 'Z';
  axi_aw_sbiterr <= 'Z';
  axi_aw_dbiterr <= 'Z';
  axi_aw_overflow <= 'Z';
  axi_aw_underflow <= 'Z';
  axi_aw_prog_full <= 'Z';
  axi_aw_prog_empty <= 'Z';
  axi_w_sbiterr <= 'Z';
  axi_w_dbiterr <= 'Z';
  axi_w_overflow <= 'Z';
  axi_w_underflow <= 'Z';
  axi_w_prog_full <= 'Z';
  axi_w_prog_empty <= 'Z';
  axi_b_sbiterr <= 'Z';
  axi_b_dbiterr <= 'Z';
  axi_b_overflow <= 'Z';
  axi_b_underflow <= 'Z';
  axi_b_prog_full <= 'Z';
  axi_b_prog_empty <= 'Z';
  axi_ar_sbiterr <= 'Z';
  axi_ar_dbiterr <= 'Z';
  axi_ar_overflow <= 'Z';
  axi_ar_underflow <= 'Z';
  axi_ar_prog_full <= 'Z';
  axi_ar_prog_empty <= 'Z';
  axi_r_sbiterr <= 'Z';
  axi_r_dbiterr <= 'Z';
  axi_r_overflow <= 'Z';
  axi_r_underflow <= 'Z';
  axi_r_prog_full <= 'Z';
  axi_r_prog_empty <= 'Z';
  axis_sbiterr <= 'Z';
  axis_dbiterr <= 'Z';
  axis_overflow <= 'Z';
  axis_underflow <= 'Z';
  axis_prog_full <= 'Z';
  axis_prog_empty <= 'Z';
  data_count(0) <= 'Z';
  data_count(1) <= 'Z';
  data_count(2) <= 'Z';
  data_count(3) <= 'Z';
  rd_data_count(0) <= 'Z';
  rd_data_count(1) <= 'Z';
  rd_data_count(2) <= 'Z';
  rd_data_count(3) <= 'Z';
  wr_data_count(0) <= 'Z';
  wr_data_count(1) <= 'Z';
  wr_data_count(2) <= 'Z';
  wr_data_count(3) <= 'Z';
  s_axi_bid(0) <= 'Z';
  s_axi_bresp(0) <= 'Z';
  s_axi_bresp(1) <= 'Z';
  s_axi_buser(0) <= 'Z';
  m_axi_awid(0) <= 'Z';
  m_axi_awaddr(0) <= 'Z';
  m_axi_awaddr(1) <= 'Z';
  m_axi_awaddr(2) <= 'Z';
  m_axi_awaddr(3) <= 'Z';
  m_axi_awaddr(4) <= 'Z';
  m_axi_awaddr(5) <= 'Z';
  m_axi_awaddr(6) <= 'Z';
  m_axi_awaddr(7) <= 'Z';
  m_axi_awaddr(8) <= 'Z';
  m_axi_awaddr(9) <= 'Z';
  m_axi_awaddr(10) <= 'Z';
  m_axi_awaddr(11) <= 'Z';
  m_axi_awaddr(12) <= 'Z';
  m_axi_awaddr(13) <= 'Z';
  m_axi_awaddr(14) <= 'Z';
  m_axi_awaddr(15) <= 'Z';
  m_axi_awaddr(16) <= 'Z';
  m_axi_awaddr(17) <= 'Z';
  m_axi_awaddr(18) <= 'Z';
  m_axi_awaddr(19) <= 'Z';
  m_axi_awaddr(20) <= 'Z';
  m_axi_awaddr(21) <= 'Z';
  m_axi_awaddr(22) <= 'Z';
  m_axi_awaddr(23) <= 'Z';
  m_axi_awaddr(24) <= 'Z';
  m_axi_awaddr(25) <= 'Z';
  m_axi_awaddr(26) <= 'Z';
  m_axi_awaddr(27) <= 'Z';
  m_axi_awaddr(28) <= 'Z';
  m_axi_awaddr(29) <= 'Z';
  m_axi_awaddr(30) <= 'Z';
  m_axi_awaddr(31) <= 'Z';
  m_axi_awlen(0) <= 'Z';
  m_axi_awlen(1) <= 'Z';
  m_axi_awlen(2) <= 'Z';
  m_axi_awlen(3) <= 'Z';
  m_axi_awlen(4) <= 'Z';
  m_axi_awlen(5) <= 'Z';
  m_axi_awlen(6) <= 'Z';
  m_axi_awlen(7) <= 'Z';
  m_axi_awsize(0) <= 'Z';
  m_axi_awsize(1) <= 'Z';
  m_axi_awsize(2) <= 'Z';
  m_axi_awburst(0) <= 'Z';
  m_axi_awburst(1) <= 'Z';
  m_axi_awlock(0) <= 'Z';
  m_axi_awcache(0) <= 'Z';
  m_axi_awcache(1) <= 'Z';
  m_axi_awcache(2) <= 'Z';
  m_axi_awcache(3) <= 'Z';
  m_axi_awprot(0) <= 'Z';
  m_axi_awprot(1) <= 'Z';
  m_axi_awprot(2) <= 'Z';
  m_axi_awqos(0) <= 'Z';
  m_axi_awqos(1) <= 'Z';
  m_axi_awqos(2) <= 'Z';
  m_axi_awqos(3) <= 'Z';
  m_axi_awregion(0) <= 'Z';
  m_axi_awregion(1) <= 'Z';
  m_axi_awregion(2) <= 'Z';
  m_axi_awregion(3) <= 'Z';
  m_axi_awuser(0) <= 'Z';
  m_axi_wid(0) <= 'Z';
  m_axi_wdata(0) <= 'Z';
  m_axi_wdata(1) <= 'Z';
  m_axi_wdata(2) <= 'Z';
  m_axi_wdata(3) <= 'Z';
  m_axi_wdata(4) <= 'Z';
  m_axi_wdata(5) <= 'Z';
  m_axi_wdata(6) <= 'Z';
  m_axi_wdata(7) <= 'Z';
  m_axi_wdata(8) <= 'Z';
  m_axi_wdata(9) <= 'Z';
  m_axi_wdata(10) <= 'Z';
  m_axi_wdata(11) <= 'Z';
  m_axi_wdata(12) <= 'Z';
  m_axi_wdata(13) <= 'Z';
  m_axi_wdata(14) <= 'Z';
  m_axi_wdata(15) <= 'Z';
  m_axi_wdata(16) <= 'Z';
  m_axi_wdata(17) <= 'Z';
  m_axi_wdata(18) <= 'Z';
  m_axi_wdata(19) <= 'Z';
  m_axi_wdata(20) <= 'Z';
  m_axi_wdata(21) <= 'Z';
  m_axi_wdata(22) <= 'Z';
  m_axi_wdata(23) <= 'Z';
  m_axi_wdata(24) <= 'Z';
  m_axi_wdata(25) <= 'Z';
  m_axi_wdata(26) <= 'Z';
  m_axi_wdata(27) <= 'Z';
  m_axi_wdata(28) <= 'Z';
  m_axi_wdata(29) <= 'Z';
  m_axi_wdata(30) <= 'Z';
  m_axi_wdata(31) <= 'Z';
  m_axi_wdata(32) <= 'Z';
  m_axi_wdata(33) <= 'Z';
  m_axi_wdata(34) <= 'Z';
  m_axi_wdata(35) <= 'Z';
  m_axi_wdata(36) <= 'Z';
  m_axi_wdata(37) <= 'Z';
  m_axi_wdata(38) <= 'Z';
  m_axi_wdata(39) <= 'Z';
  m_axi_wdata(40) <= 'Z';
  m_axi_wdata(41) <= 'Z';
  m_axi_wdata(42) <= 'Z';
  m_axi_wdata(43) <= 'Z';
  m_axi_wdata(44) <= 'Z';
  m_axi_wdata(45) <= 'Z';
  m_axi_wdata(46) <= 'Z';
  m_axi_wdata(47) <= 'Z';
  m_axi_wdata(48) <= 'Z';
  m_axi_wdata(49) <= 'Z';
  m_axi_wdata(50) <= 'Z';
  m_axi_wdata(51) <= 'Z';
  m_axi_wdata(52) <= 'Z';
  m_axi_wdata(53) <= 'Z';
  m_axi_wdata(54) <= 'Z';
  m_axi_wdata(55) <= 'Z';
  m_axi_wdata(56) <= 'Z';
  m_axi_wdata(57) <= 'Z';
  m_axi_wdata(58) <= 'Z';
  m_axi_wdata(59) <= 'Z';
  m_axi_wdata(60) <= 'Z';
  m_axi_wdata(61) <= 'Z';
  m_axi_wdata(62) <= 'Z';
  m_axi_wdata(63) <= 'Z';
  m_axi_wstrb(0) <= 'Z';
  m_axi_wstrb(1) <= 'Z';
  m_axi_wstrb(2) <= 'Z';
  m_axi_wstrb(3) <= 'Z';
  m_axi_wstrb(4) <= 'Z';
  m_axi_wstrb(5) <= 'Z';
  m_axi_wstrb(6) <= 'Z';
  m_axi_wstrb(7) <= 'Z';
  m_axi_wuser(0) <= 'Z';
  s_axi_rid(0) <= 'Z';
  s_axi_rdata(0) <= 'Z';
  s_axi_rdata(1) <= 'Z';
  s_axi_rdata(2) <= 'Z';
  s_axi_rdata(3) <= 'Z';
  s_axi_rdata(4) <= 'Z';
  s_axi_rdata(5) <= 'Z';
  s_axi_rdata(6) <= 'Z';
  s_axi_rdata(7) <= 'Z';
  s_axi_rdata(8) <= 'Z';
  s_axi_rdata(9) <= 'Z';
  s_axi_rdata(10) <= 'Z';
  s_axi_rdata(11) <= 'Z';
  s_axi_rdata(12) <= 'Z';
  s_axi_rdata(13) <= 'Z';
  s_axi_rdata(14) <= 'Z';
  s_axi_rdata(15) <= 'Z';
  s_axi_rdata(16) <= 'Z';
  s_axi_rdata(17) <= 'Z';
  s_axi_rdata(18) <= 'Z';
  s_axi_rdata(19) <= 'Z';
  s_axi_rdata(20) <= 'Z';
  s_axi_rdata(21) <= 'Z';
  s_axi_rdata(22) <= 'Z';
  s_axi_rdata(23) <= 'Z';
  s_axi_rdata(24) <= 'Z';
  s_axi_rdata(25) <= 'Z';
  s_axi_rdata(26) <= 'Z';
  s_axi_rdata(27) <= 'Z';
  s_axi_rdata(28) <= 'Z';
  s_axi_rdata(29) <= 'Z';
  s_axi_rdata(30) <= 'Z';
  s_axi_rdata(31) <= 'Z';
  s_axi_rdata(32) <= 'Z';
  s_axi_rdata(33) <= 'Z';
  s_axi_rdata(34) <= 'Z';
  s_axi_rdata(35) <= 'Z';
  s_axi_rdata(36) <= 'Z';
  s_axi_rdata(37) <= 'Z';
  s_axi_rdata(38) <= 'Z';
  s_axi_rdata(39) <= 'Z';
  s_axi_rdata(40) <= 'Z';
  s_axi_rdata(41) <= 'Z';
  s_axi_rdata(42) <= 'Z';
  s_axi_rdata(43) <= 'Z';
  s_axi_rdata(44) <= 'Z';
  s_axi_rdata(45) <= 'Z';
  s_axi_rdata(46) <= 'Z';
  s_axi_rdata(47) <= 'Z';
  s_axi_rdata(48) <= 'Z';
  s_axi_rdata(49) <= 'Z';
  s_axi_rdata(50) <= 'Z';
  s_axi_rdata(51) <= 'Z';
  s_axi_rdata(52) <= 'Z';
  s_axi_rdata(53) <= 'Z';
  s_axi_rdata(54) <= 'Z';
  s_axi_rdata(55) <= 'Z';
  s_axi_rdata(56) <= 'Z';
  s_axi_rdata(57) <= 'Z';
  s_axi_rdata(58) <= 'Z';
  s_axi_rdata(59) <= 'Z';
  s_axi_rdata(60) <= 'Z';
  s_axi_rdata(61) <= 'Z';
  s_axi_rdata(62) <= 'Z';
  s_axi_rdata(63) <= 'Z';
  s_axi_rresp(0) <= 'Z';
  s_axi_rresp(1) <= 'Z';
  s_axi_ruser(0) <= 'Z';
  m_axi_arid(0) <= 'Z';
  m_axi_araddr(0) <= 'Z';
  m_axi_araddr(1) <= 'Z';
  m_axi_araddr(2) <= 'Z';
  m_axi_araddr(3) <= 'Z';
  m_axi_araddr(4) <= 'Z';
  m_axi_araddr(5) <= 'Z';
  m_axi_araddr(6) <= 'Z';
  m_axi_araddr(7) <= 'Z';
  m_axi_araddr(8) <= 'Z';
  m_axi_araddr(9) <= 'Z';
  m_axi_araddr(10) <= 'Z';
  m_axi_araddr(11) <= 'Z';
  m_axi_araddr(12) <= 'Z';
  m_axi_araddr(13) <= 'Z';
  m_axi_araddr(14) <= 'Z';
  m_axi_araddr(15) <= 'Z';
  m_axi_araddr(16) <= 'Z';
  m_axi_araddr(17) <= 'Z';
  m_axi_araddr(18) <= 'Z';
  m_axi_araddr(19) <= 'Z';
  m_axi_araddr(20) <= 'Z';
  m_axi_araddr(21) <= 'Z';
  m_axi_araddr(22) <= 'Z';
  m_axi_araddr(23) <= 'Z';
  m_axi_araddr(24) <= 'Z';
  m_axi_araddr(25) <= 'Z';
  m_axi_araddr(26) <= 'Z';
  m_axi_araddr(27) <= 'Z';
  m_axi_araddr(28) <= 'Z';
  m_axi_araddr(29) <= 'Z';
  m_axi_araddr(30) <= 'Z';
  m_axi_araddr(31) <= 'Z';
  m_axi_arlen(0) <= 'Z';
  m_axi_arlen(1) <= 'Z';
  m_axi_arlen(2) <= 'Z';
  m_axi_arlen(3) <= 'Z';
  m_axi_arlen(4) <= 'Z';
  m_axi_arlen(5) <= 'Z';
  m_axi_arlen(6) <= 'Z';
  m_axi_arlen(7) <= 'Z';
  m_axi_arsize(0) <= 'Z';
  m_axi_arsize(1) <= 'Z';
  m_axi_arsize(2) <= 'Z';
  m_axi_arburst(0) <= 'Z';
  m_axi_arburst(1) <= 'Z';
  m_axi_arlock(0) <= 'Z';
  m_axi_arcache(0) <= 'Z';
  m_axi_arcache(1) <= 'Z';
  m_axi_arcache(2) <= 'Z';
  m_axi_arcache(3) <= 'Z';
  m_axi_arprot(0) <= 'Z';
  m_axi_arprot(1) <= 'Z';
  m_axi_arprot(2) <= 'Z';
  m_axi_arqos(0) <= 'Z';
  m_axi_arqos(1) <= 'Z';
  m_axi_arqos(2) <= 'Z';
  m_axi_arqos(3) <= 'Z';
  m_axi_arregion(0) <= 'Z';
  m_axi_arregion(1) <= 'Z';
  m_axi_arregion(2) <= 'Z';
  m_axi_arregion(3) <= 'Z';
  m_axi_aruser(0) <= 'Z';
  m_axis_tdata(0) <= 'Z';
  m_axis_tdata(1) <= 'Z';
  m_axis_tdata(2) <= 'Z';
  m_axis_tdata(3) <= 'Z';
  m_axis_tdata(4) <= 'Z';
  m_axis_tdata(5) <= 'Z';
  m_axis_tdata(6) <= 'Z';
  m_axis_tdata(7) <= 'Z';
  m_axis_tstrb(0) <= 'Z';
  m_axis_tkeep(0) <= 'Z';
  m_axis_tid(0) <= 'Z';
  m_axis_tdest(0) <= 'Z';
  m_axis_tuser(0) <= 'Z';
  m_axis_tuser(1) <= 'Z';
  m_axis_tuser(2) <= 'Z';
  m_axis_tuser(3) <= 'Z';
  axi_aw_data_count(0) <= 'Z';
  axi_aw_data_count(1) <= 'Z';
  axi_aw_data_count(2) <= 'Z';
  axi_aw_data_count(3) <= 'Z';
  axi_aw_data_count(4) <= 'Z';
  axi_aw_wr_data_count(0) <= 'Z';
  axi_aw_wr_data_count(1) <= 'Z';
  axi_aw_wr_data_count(2) <= 'Z';
  axi_aw_wr_data_count(3) <= 'Z';
  axi_aw_wr_data_count(4) <= 'Z';
  axi_aw_rd_data_count(0) <= 'Z';
  axi_aw_rd_data_count(1) <= 'Z';
  axi_aw_rd_data_count(2) <= 'Z';
  axi_aw_rd_data_count(3) <= 'Z';
  axi_aw_rd_data_count(4) <= 'Z';
  axi_w_data_count(0) <= 'Z';
  axi_w_data_count(1) <= 'Z';
  axi_w_data_count(2) <= 'Z';
  axi_w_data_count(3) <= 'Z';
  axi_w_data_count(4) <= 'Z';
  axi_w_data_count(5) <= 'Z';
  axi_w_data_count(6) <= 'Z';
  axi_w_data_count(7) <= 'Z';
  axi_w_data_count(8) <= 'Z';
  axi_w_data_count(9) <= 'Z';
  axi_w_data_count(10) <= 'Z';
  axi_w_wr_data_count(0) <= 'Z';
  axi_w_wr_data_count(1) <= 'Z';
  axi_w_wr_data_count(2) <= 'Z';
  axi_w_wr_data_count(3) <= 'Z';
  axi_w_wr_data_count(4) <= 'Z';
  axi_w_wr_data_count(5) <= 'Z';
  axi_w_wr_data_count(6) <= 'Z';
  axi_w_wr_data_count(7) <= 'Z';
  axi_w_wr_data_count(8) <= 'Z';
  axi_w_wr_data_count(9) <= 'Z';
  axi_w_wr_data_count(10) <= 'Z';
  axi_w_rd_data_count(0) <= 'Z';
  axi_w_rd_data_count(1) <= 'Z';
  axi_w_rd_data_count(2) <= 'Z';
  axi_w_rd_data_count(3) <= 'Z';
  axi_w_rd_data_count(4) <= 'Z';
  axi_w_rd_data_count(5) <= 'Z';
  axi_w_rd_data_count(6) <= 'Z';
  axi_w_rd_data_count(7) <= 'Z';
  axi_w_rd_data_count(8) <= 'Z';
  axi_w_rd_data_count(9) <= 'Z';
  axi_w_rd_data_count(10) <= 'Z';
  axi_b_data_count(0) <= 'Z';
  axi_b_data_count(1) <= 'Z';
  axi_b_data_count(2) <= 'Z';
  axi_b_data_count(3) <= 'Z';
  axi_b_data_count(4) <= 'Z';
  axi_b_wr_data_count(0) <= 'Z';
  axi_b_wr_data_count(1) <= 'Z';
  axi_b_wr_data_count(2) <= 'Z';
  axi_b_wr_data_count(3) <= 'Z';
  axi_b_wr_data_count(4) <= 'Z';
  axi_b_rd_data_count(0) <= 'Z';
  axi_b_rd_data_count(1) <= 'Z';
  axi_b_rd_data_count(2) <= 'Z';
  axi_b_rd_data_count(3) <= 'Z';
  axi_b_rd_data_count(4) <= 'Z';
  axi_ar_data_count(0) <= 'Z';
  axi_ar_data_count(1) <= 'Z';
  axi_ar_data_count(2) <= 'Z';
  axi_ar_data_count(3) <= 'Z';
  axi_ar_data_count(4) <= 'Z';
  axi_ar_wr_data_count(0) <= 'Z';
  axi_ar_wr_data_count(1) <= 'Z';
  axi_ar_wr_data_count(2) <= 'Z';
  axi_ar_wr_data_count(3) <= 'Z';
  axi_ar_wr_data_count(4) <= 'Z';
  axi_ar_rd_data_count(0) <= 'Z';
  axi_ar_rd_data_count(1) <= 'Z';
  axi_ar_rd_data_count(2) <= 'Z';
  axi_ar_rd_data_count(3) <= 'Z';
  axi_ar_rd_data_count(4) <= 'Z';
  axi_r_data_count(0) <= 'Z';
  axi_r_data_count(1) <= 'Z';
  axi_r_data_count(2) <= 'Z';
  axi_r_data_count(3) <= 'Z';
  axi_r_data_count(4) <= 'Z';
  axi_r_data_count(5) <= 'Z';
  axi_r_data_count(6) <= 'Z';
  axi_r_data_count(7) <= 'Z';
  axi_r_data_count(8) <= 'Z';
  axi_r_data_count(9) <= 'Z';
  axi_r_data_count(10) <= 'Z';
  axi_r_wr_data_count(0) <= 'Z';
  axi_r_wr_data_count(1) <= 'Z';
  axi_r_wr_data_count(2) <= 'Z';
  axi_r_wr_data_count(3) <= 'Z';
  axi_r_wr_data_count(4) <= 'Z';
  axi_r_wr_data_count(5) <= 'Z';
  axi_r_wr_data_count(6) <= 'Z';
  axi_r_wr_data_count(7) <= 'Z';
  axi_r_wr_data_count(8) <= 'Z';
  axi_r_wr_data_count(9) <= 'Z';
  axi_r_wr_data_count(10) <= 'Z';
  axi_r_rd_data_count(0) <= 'Z';
  axi_r_rd_data_count(1) <= 'Z';
  axi_r_rd_data_count(2) <= 'Z';
  axi_r_rd_data_count(3) <= 'Z';
  axi_r_rd_data_count(4) <= 'Z';
  axi_r_rd_data_count(5) <= 'Z';
  axi_r_rd_data_count(6) <= 'Z';
  axi_r_rd_data_count(7) <= 'Z';
  axi_r_rd_data_count(8) <= 'Z';
  axi_r_rd_data_count(9) <= 'Z';
  axi_r_rd_data_count(10) <= 'Z';
  axis_data_count(0) <= 'Z';
  axis_data_count(1) <= 'Z';
  axis_data_count(2) <= 'Z';
  axis_data_count(3) <= 'Z';
  axis_data_count(4) <= 'Z';
  axis_data_count(5) <= 'Z';
  axis_data_count(6) <= 'Z';
  axis_data_count(7) <= 'Z';
  axis_data_count(8) <= 'Z';
  axis_data_count(9) <= 'Z';
  axis_data_count(10) <= 'Z';
  axis_wr_data_count(0) <= 'Z';
  axis_wr_data_count(1) <= 'Z';
  axis_wr_data_count(2) <= 'Z';
  axis_wr_data_count(3) <= 'Z';
  axis_wr_data_count(4) <= 'Z';
  axis_wr_data_count(5) <= 'Z';
  axis_wr_data_count(6) <= 'Z';
  axis_wr_data_count(7) <= 'Z';
  axis_wr_data_count(8) <= 'Z';
  axis_wr_data_count(9) <= 'Z';
  axis_wr_data_count(10) <= 'Z';
  axis_rd_data_count(0) <= 'Z';
  axis_rd_data_count(1) <= 'Z';
  axis_rd_data_count(2) <= 'Z';
  axis_rd_data_count(3) <= 'Z';
  axis_rd_data_count(4) <= 'Z';
  axis_rd_data_count(5) <= 'Z';
  axis_rd_data_count(6) <= 'Z';
  axis_rd_data_count(7) <= 'Z';
  axis_rd_data_count(8) <= 'Z';
  axis_rd_data_count(9) <= 'Z';
  axis_rd_data_count(10) <= 'Z';
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
      wr_rst_busy => NLW_inst_fifo_gen_wr_rst_busy_UNCONNECTED
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
  signal NLW_U0_axi_ar_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_backup_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_backup_marker_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_int_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_aclk_en_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aclk_en_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aresetn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sleep_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_srst_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_ar_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_aw_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_b_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axi_r_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axi_w_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axis_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
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
  signal NLW_U0_m_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal NLW_U0_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_empty_thresh_assert_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_empty_thresh_negate_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_full_thresh_assert_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_full_thresh_negate_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
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
      axi_ar_injectdbiterr => NLW_U0_axi_ar_injectdbiterr_UNCONNECTED,
      axi_ar_injectsbiterr => NLW_U0_axi_ar_injectsbiterr_UNCONNECTED,
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => NLW_U0_axi_ar_prog_empty_thresh_UNCONNECTED(3 downto 0),
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => NLW_U0_axi_ar_prog_full_thresh_UNCONNECTED(3 downto 0),
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => NLW_U0_axi_aw_injectdbiterr_UNCONNECTED,
      axi_aw_injectsbiterr => NLW_U0_axi_aw_injectsbiterr_UNCONNECTED,
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => NLW_U0_axi_aw_prog_empty_thresh_UNCONNECTED(3 downto 0),
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => NLW_U0_axi_aw_prog_full_thresh_UNCONNECTED(3 downto 0),
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => NLW_U0_axi_b_injectdbiterr_UNCONNECTED,
      axi_b_injectsbiterr => NLW_U0_axi_b_injectsbiterr_UNCONNECTED,
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => NLW_U0_axi_b_prog_empty_thresh_UNCONNECTED(3 downto 0),
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => NLW_U0_axi_b_prog_full_thresh_UNCONNECTED(3 downto 0),
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => NLW_U0_axi_r_injectdbiterr_UNCONNECTED,
      axi_r_injectsbiterr => NLW_U0_axi_r_injectsbiterr_UNCONNECTED,
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => NLW_U0_axi_r_prog_empty_thresh_UNCONNECTED(9 downto 0),
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => NLW_U0_axi_r_prog_full_thresh_UNCONNECTED(9 downto 0),
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => NLW_U0_axi_w_injectdbiterr_UNCONNECTED,
      axi_w_injectsbiterr => NLW_U0_axi_w_injectsbiterr_UNCONNECTED,
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => NLW_U0_axi_w_prog_empty_thresh_UNCONNECTED(9 downto 0),
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => NLW_U0_axi_w_prog_full_thresh_UNCONNECTED(9 downto 0),
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => NLW_U0_axis_injectdbiterr_UNCONNECTED,
      axis_injectsbiterr => NLW_U0_axis_injectsbiterr_UNCONNECTED,
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => NLW_U0_axis_prog_empty_thresh_UNCONNECTED(9 downto 0),
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => NLW_U0_axis_prog_full_thresh_UNCONNECTED(9 downto 0),
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => NLW_U0_backup_UNCONNECTED,
      backup_marker => NLW_U0_backup_marker_UNCONNECTED,
      clk => clk,
      data_count(3 downto 0) => NLW_U0_data_count_UNCONNECTED(3 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(5 downto 0) => din(5 downto 0),
      dout(5 downto 0) => dout(5 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => NLW_U0_injectdbiterr_UNCONNECTED,
      injectsbiterr => NLW_U0_injectsbiterr_UNCONNECTED,
      int_clk => NLW_U0_int_clk_UNCONNECTED,
      m_aclk => NLW_U0_m_aclk_UNCONNECTED,
      m_aclk_en => NLW_U0_m_aclk_en_UNCONNECTED,
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => NLW_U0_m_axi_arready_UNCONNECTED,
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
      m_axi_awready => NLW_U0_m_axi_awready_UNCONNECTED,
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => NLW_U0_m_axi_bid_UNCONNECTED(0),
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => NLW_U0_m_axi_bresp_UNCONNECTED(1 downto 0),
      m_axi_buser(0) => NLW_U0_m_axi_buser_UNCONNECTED(0),
      m_axi_bvalid => NLW_U0_m_axi_bvalid_UNCONNECTED,
      m_axi_rdata(63 downto 0) => NLW_U0_m_axi_rdata_UNCONNECTED(63 downto 0),
      m_axi_rid(0) => NLW_U0_m_axi_rid_UNCONNECTED(0),
      m_axi_rlast => NLW_U0_m_axi_rlast_UNCONNECTED,
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => NLW_U0_m_axi_rresp_UNCONNECTED(1 downto 0),
      m_axi_ruser(0) => NLW_U0_m_axi_ruser_UNCONNECTED(0),
      m_axi_rvalid => NLW_U0_m_axi_rvalid_UNCONNECTED,
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => NLW_U0_m_axi_wready_UNCONNECTED,
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => NLW_U0_m_axis_tready_UNCONNECTED,
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(3 downto 0) => NLW_U0_prog_empty_thresh_UNCONNECTED(3 downto 0),
      prog_empty_thresh_assert(3 downto 0) => NLW_U0_prog_empty_thresh_assert_UNCONNECTED(3 downto 0),
      prog_empty_thresh_negate(3 downto 0) => NLW_U0_prog_empty_thresh_negate_UNCONNECTED(3 downto 0),
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(3 downto 0) => NLW_U0_prog_full_thresh_UNCONNECTED(3 downto 0),
      prog_full_thresh_assert(3 downto 0) => NLW_U0_prog_full_thresh_assert_UNCONNECTED(3 downto 0),
      prog_full_thresh_negate(3 downto 0) => NLW_U0_prog_full_thresh_negate_UNCONNECTED(3 downto 0),
      rd_clk => NLW_U0_rd_clk_UNCONNECTED,
      rd_data_count(3 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(3 downto 0),
      rd_en => rd_en,
      rd_rst => NLW_U0_rd_rst_UNCONNECTED,
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => rst,
      s_aclk => NLW_U0_s_aclk_UNCONNECTED,
      s_aclk_en => NLW_U0_s_aclk_en_UNCONNECTED,
      s_aresetn => NLW_U0_s_aresetn_UNCONNECTED,
      s_axi_araddr(31 downto 0) => NLW_U0_s_axi_araddr_UNCONNECTED(31 downto 0),
      s_axi_arburst(1 downto 0) => NLW_U0_s_axi_arburst_UNCONNECTED(1 downto 0),
      s_axi_arcache(3 downto 0) => NLW_U0_s_axi_arcache_UNCONNECTED(3 downto 0),
      s_axi_arid(0) => NLW_U0_s_axi_arid_UNCONNECTED(0),
      s_axi_arlen(7 downto 0) => NLW_U0_s_axi_arlen_UNCONNECTED(7 downto 0),
      s_axi_arlock(0) => NLW_U0_s_axi_arlock_UNCONNECTED(0),
      s_axi_arprot(2 downto 0) => NLW_U0_s_axi_arprot_UNCONNECTED(2 downto 0),
      s_axi_arqos(3 downto 0) => NLW_U0_s_axi_arqos_UNCONNECTED(3 downto 0),
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => NLW_U0_s_axi_arregion_UNCONNECTED(3 downto 0),
      s_axi_arsize(2 downto 0) => NLW_U0_s_axi_arsize_UNCONNECTED(2 downto 0),
      s_axi_aruser(0) => NLW_U0_s_axi_aruser_UNCONNECTED(0),
      s_axi_arvalid => NLW_U0_s_axi_arvalid_UNCONNECTED,
      s_axi_awaddr(31 downto 0) => NLW_U0_s_axi_awaddr_UNCONNECTED(31 downto 0),
      s_axi_awburst(1 downto 0) => NLW_U0_s_axi_awburst_UNCONNECTED(1 downto 0),
      s_axi_awcache(3 downto 0) => NLW_U0_s_axi_awcache_UNCONNECTED(3 downto 0),
      s_axi_awid(0) => NLW_U0_s_axi_awid_UNCONNECTED(0),
      s_axi_awlen(7 downto 0) => NLW_U0_s_axi_awlen_UNCONNECTED(7 downto 0),
      s_axi_awlock(0) => NLW_U0_s_axi_awlock_UNCONNECTED(0),
      s_axi_awprot(2 downto 0) => NLW_U0_s_axi_awprot_UNCONNECTED(2 downto 0),
      s_axi_awqos(3 downto 0) => NLW_U0_s_axi_awqos_UNCONNECTED(3 downto 0),
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => NLW_U0_s_axi_awregion_UNCONNECTED(3 downto 0),
      s_axi_awsize(2 downto 0) => NLW_U0_s_axi_awsize_UNCONNECTED(2 downto 0),
      s_axi_awuser(0) => NLW_U0_s_axi_awuser_UNCONNECTED(0),
      s_axi_awvalid => NLW_U0_s_axi_awvalid_UNCONNECTED,
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => NLW_U0_s_axi_bready_UNCONNECTED,
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => NLW_U0_s_axi_rready_UNCONNECTED,
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => NLW_U0_s_axi_wdata_UNCONNECTED(63 downto 0),
      s_axi_wid(0) => NLW_U0_s_axi_wid_UNCONNECTED(0),
      s_axi_wlast => NLW_U0_s_axi_wlast_UNCONNECTED,
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => NLW_U0_s_axi_wstrb_UNCONNECTED(7 downto 0),
      s_axi_wuser(0) => NLW_U0_s_axi_wuser_UNCONNECTED(0),
      s_axi_wvalid => NLW_U0_s_axi_wvalid_UNCONNECTED,
      s_axis_tdata(7 downto 0) => NLW_U0_s_axis_tdata_UNCONNECTED(7 downto 0),
      s_axis_tdest(0) => NLW_U0_s_axis_tdest_UNCONNECTED(0),
      s_axis_tid(0) => NLW_U0_s_axis_tid_UNCONNECTED(0),
      s_axis_tkeep(0) => NLW_U0_s_axis_tkeep_UNCONNECTED(0),
      s_axis_tlast => NLW_U0_s_axis_tlast_UNCONNECTED,
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => NLW_U0_s_axis_tstrb_UNCONNECTED(0),
      s_axis_tuser(3 downto 0) => NLW_U0_s_axis_tuser_UNCONNECTED(3 downto 0),
      s_axis_tvalid => NLW_U0_s_axis_tvalid_UNCONNECTED,
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => NLW_U0_sleep_UNCONNECTED,
      srst => NLW_U0_srst_UNCONNECTED,
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => NLW_U0_wr_clk_UNCONNECTED,
      wr_data_count(3 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(3 downto 0),
      wr_en => wr_en,
      wr_rst => NLW_U0_wr_rst_UNCONNECTED,
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
  signal NLW_U0_axi_ar_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_backup_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_backup_marker_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_int_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_aclk_en_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aclk_en_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aresetn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sleep_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_srst_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_ar_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_aw_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_b_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axi_r_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axi_w_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_axis_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
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
  signal NLW_U0_m_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal NLW_U0_prog_empty_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_empty_thresh_assert_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_empty_thresh_negate_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_full_thresh_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_full_thresh_assert_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_prog_full_thresh_negate_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
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
      axi_ar_injectdbiterr => NLW_U0_axi_ar_injectdbiterr_UNCONNECTED,
      axi_ar_injectsbiterr => NLW_U0_axi_ar_injectsbiterr_UNCONNECTED,
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => NLW_U0_axi_ar_prog_empty_thresh_UNCONNECTED(3 downto 0),
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => NLW_U0_axi_ar_prog_full_thresh_UNCONNECTED(3 downto 0),
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => NLW_U0_axi_aw_injectdbiterr_UNCONNECTED,
      axi_aw_injectsbiterr => NLW_U0_axi_aw_injectsbiterr_UNCONNECTED,
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => NLW_U0_axi_aw_prog_empty_thresh_UNCONNECTED(3 downto 0),
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => NLW_U0_axi_aw_prog_full_thresh_UNCONNECTED(3 downto 0),
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => NLW_U0_axi_b_injectdbiterr_UNCONNECTED,
      axi_b_injectsbiterr => NLW_U0_axi_b_injectsbiterr_UNCONNECTED,
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => NLW_U0_axi_b_prog_empty_thresh_UNCONNECTED(3 downto 0),
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => NLW_U0_axi_b_prog_full_thresh_UNCONNECTED(3 downto 0),
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => NLW_U0_axi_r_injectdbiterr_UNCONNECTED,
      axi_r_injectsbiterr => NLW_U0_axi_r_injectsbiterr_UNCONNECTED,
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => NLW_U0_axi_r_prog_empty_thresh_UNCONNECTED(9 downto 0),
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => NLW_U0_axi_r_prog_full_thresh_UNCONNECTED(9 downto 0),
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => NLW_U0_axi_w_injectdbiterr_UNCONNECTED,
      axi_w_injectsbiterr => NLW_U0_axi_w_injectsbiterr_UNCONNECTED,
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => NLW_U0_axi_w_prog_empty_thresh_UNCONNECTED(9 downto 0),
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => NLW_U0_axi_w_prog_full_thresh_UNCONNECTED(9 downto 0),
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => NLW_U0_axis_injectdbiterr_UNCONNECTED,
      axis_injectsbiterr => NLW_U0_axis_injectsbiterr_UNCONNECTED,
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => NLW_U0_axis_prog_empty_thresh_UNCONNECTED(9 downto 0),
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => NLW_U0_axis_prog_full_thresh_UNCONNECTED(9 downto 0),
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => NLW_U0_backup_UNCONNECTED,
      backup_marker => NLW_U0_backup_marker_UNCONNECTED,
      clk => clk,
      data_count(3 downto 0) => NLW_U0_data_count_UNCONNECTED(3 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(4 downto 0) => din(4 downto 0),
      dout(4 downto 0) => dout(4 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => NLW_U0_injectdbiterr_UNCONNECTED,
      injectsbiterr => NLW_U0_injectsbiterr_UNCONNECTED,
      int_clk => NLW_U0_int_clk_UNCONNECTED,
      m_aclk => NLW_U0_m_aclk_UNCONNECTED,
      m_aclk_en => NLW_U0_m_aclk_en_UNCONNECTED,
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => NLW_U0_m_axi_arready_UNCONNECTED,
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
      m_axi_awready => NLW_U0_m_axi_awready_UNCONNECTED,
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => NLW_U0_m_axi_bid_UNCONNECTED(0),
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => NLW_U0_m_axi_bresp_UNCONNECTED(1 downto 0),
      m_axi_buser(0) => NLW_U0_m_axi_buser_UNCONNECTED(0),
      m_axi_bvalid => NLW_U0_m_axi_bvalid_UNCONNECTED,
      m_axi_rdata(63 downto 0) => NLW_U0_m_axi_rdata_UNCONNECTED(63 downto 0),
      m_axi_rid(0) => NLW_U0_m_axi_rid_UNCONNECTED(0),
      m_axi_rlast => NLW_U0_m_axi_rlast_UNCONNECTED,
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => NLW_U0_m_axi_rresp_UNCONNECTED(1 downto 0),
      m_axi_ruser(0) => NLW_U0_m_axi_ruser_UNCONNECTED(0),
      m_axi_rvalid => NLW_U0_m_axi_rvalid_UNCONNECTED,
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => NLW_U0_m_axi_wready_UNCONNECTED,
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => NLW_U0_m_axis_tready_UNCONNECTED,
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(3 downto 0) => NLW_U0_prog_empty_thresh_UNCONNECTED(3 downto 0),
      prog_empty_thresh_assert(3 downto 0) => NLW_U0_prog_empty_thresh_assert_UNCONNECTED(3 downto 0),
      prog_empty_thresh_negate(3 downto 0) => NLW_U0_prog_empty_thresh_negate_UNCONNECTED(3 downto 0),
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(3 downto 0) => NLW_U0_prog_full_thresh_UNCONNECTED(3 downto 0),
      prog_full_thresh_assert(3 downto 0) => NLW_U0_prog_full_thresh_assert_UNCONNECTED(3 downto 0),
      prog_full_thresh_negate(3 downto 0) => NLW_U0_prog_full_thresh_negate_UNCONNECTED(3 downto 0),
      rd_clk => NLW_U0_rd_clk_UNCONNECTED,
      rd_data_count(3 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(3 downto 0),
      rd_en => rd_en,
      rd_rst => NLW_U0_rd_rst_UNCONNECTED,
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => rst,
      s_aclk => NLW_U0_s_aclk_UNCONNECTED,
      s_aclk_en => NLW_U0_s_aclk_en_UNCONNECTED,
      s_aresetn => NLW_U0_s_aresetn_UNCONNECTED,
      s_axi_araddr(31 downto 0) => NLW_U0_s_axi_araddr_UNCONNECTED(31 downto 0),
      s_axi_arburst(1 downto 0) => NLW_U0_s_axi_arburst_UNCONNECTED(1 downto 0),
      s_axi_arcache(3 downto 0) => NLW_U0_s_axi_arcache_UNCONNECTED(3 downto 0),
      s_axi_arid(0) => NLW_U0_s_axi_arid_UNCONNECTED(0),
      s_axi_arlen(7 downto 0) => NLW_U0_s_axi_arlen_UNCONNECTED(7 downto 0),
      s_axi_arlock(0) => NLW_U0_s_axi_arlock_UNCONNECTED(0),
      s_axi_arprot(2 downto 0) => NLW_U0_s_axi_arprot_UNCONNECTED(2 downto 0),
      s_axi_arqos(3 downto 0) => NLW_U0_s_axi_arqos_UNCONNECTED(3 downto 0),
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => NLW_U0_s_axi_arregion_UNCONNECTED(3 downto 0),
      s_axi_arsize(2 downto 0) => NLW_U0_s_axi_arsize_UNCONNECTED(2 downto 0),
      s_axi_aruser(0) => NLW_U0_s_axi_aruser_UNCONNECTED(0),
      s_axi_arvalid => NLW_U0_s_axi_arvalid_UNCONNECTED,
      s_axi_awaddr(31 downto 0) => NLW_U0_s_axi_awaddr_UNCONNECTED(31 downto 0),
      s_axi_awburst(1 downto 0) => NLW_U0_s_axi_awburst_UNCONNECTED(1 downto 0),
      s_axi_awcache(3 downto 0) => NLW_U0_s_axi_awcache_UNCONNECTED(3 downto 0),
      s_axi_awid(0) => NLW_U0_s_axi_awid_UNCONNECTED(0),
      s_axi_awlen(7 downto 0) => NLW_U0_s_axi_awlen_UNCONNECTED(7 downto 0),
      s_axi_awlock(0) => NLW_U0_s_axi_awlock_UNCONNECTED(0),
      s_axi_awprot(2 downto 0) => NLW_U0_s_axi_awprot_UNCONNECTED(2 downto 0),
      s_axi_awqos(3 downto 0) => NLW_U0_s_axi_awqos_UNCONNECTED(3 downto 0),
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => NLW_U0_s_axi_awregion_UNCONNECTED(3 downto 0),
      s_axi_awsize(2 downto 0) => NLW_U0_s_axi_awsize_UNCONNECTED(2 downto 0),
      s_axi_awuser(0) => NLW_U0_s_axi_awuser_UNCONNECTED(0),
      s_axi_awvalid => NLW_U0_s_axi_awvalid_UNCONNECTED,
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => NLW_U0_s_axi_bready_UNCONNECTED,
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => NLW_U0_s_axi_rready_UNCONNECTED,
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => NLW_U0_s_axi_wdata_UNCONNECTED(63 downto 0),
      s_axi_wid(0) => NLW_U0_s_axi_wid_UNCONNECTED(0),
      s_axi_wlast => NLW_U0_s_axi_wlast_UNCONNECTED,
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => NLW_U0_s_axi_wstrb_UNCONNECTED(7 downto 0),
      s_axi_wuser(0) => NLW_U0_s_axi_wuser_UNCONNECTED(0),
      s_axi_wvalid => NLW_U0_s_axi_wvalid_UNCONNECTED,
      s_axis_tdata(7 downto 0) => NLW_U0_s_axis_tdata_UNCONNECTED(7 downto 0),
      s_axis_tdest(0) => NLW_U0_s_axis_tdest_UNCONNECTED(0),
      s_axis_tid(0) => NLW_U0_s_axis_tid_UNCONNECTED(0),
      s_axis_tkeep(0) => NLW_U0_s_axis_tkeep_UNCONNECTED(0),
      s_axis_tlast => NLW_U0_s_axis_tlast_UNCONNECTED,
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => NLW_U0_s_axis_tstrb_UNCONNECTED(0),
      s_axis_tuser(3 downto 0) => NLW_U0_s_axis_tuser_UNCONNECTED(3 downto 0),
      s_axis_tvalid => NLW_U0_s_axis_tvalid_UNCONNECTED,
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => NLW_U0_sleep_UNCONNECTED,
      srst => NLW_U0_srst_UNCONNECTED,
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => NLW_U0_wr_clk_UNCONNECTED,
      wr_data_count(3 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(3 downto 0),
      wr_en => wr_en,
      wr_rst => NLW_U0_wr_rst_UNCONNECTED,
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UartModule is
  port (
    oTx : out STD_LOGIC;
    CLR : out STD_LOGIC;
    CLK : in STD_LOGIC;
    iReset : in STD_LOGIC;
    iReady : in STD_LOGIC_VECTOR ( 0 to 0 );
    iTDL : in STD_LOGIC_VECTOR ( 5 downto 0 );
    iVDL : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end UartModule;

architecture STRUCTURE of UartModule is
  signal RdEnTDL : STD_LOGIC;
  signal SCLR : STD_LOGIC;
  signal TDLEmpty : STD_LOGIC;
  signal TDLFull : STD_LOGIC;
  signal VDLEmpty : STD_LOGIC;
  signal VDLFull : STD_LOGIC;
  signal WrEnTDL : STD_LOGIC;
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
  attribute baud : integer;
  attribute baud of Uart_cmp : label is 115200;
  attribute clk_rate : integer;
  attribute clk_rate of Uart_cmp : label is 100000000;
begin
  iTDLData(5 downto 0) <= iTDL(5 downto 0);
  iVDLData(4 downto 0) <= iVDL(4 downto 0);
Control_cmp: entity work.Control
     port map (
      iClk => CLK,
      iReady(0) => iReady(0),
      iRst => iReset,
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
      clk => CLK,
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
      clk => CLK,
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
      AR(0) => SCLR,
      CLK => CLK,
      CLR => CLR,
      D(5 downto 0) => iTDLData(5 downto 0),
      Q(5 downto 0) => oSynchTDL(5 downto 0)
    );
SynchVDL_cmp: entity work.SynchVDL
     port map (
      AR(0) => SCLR,
      CLK => CLK,
      D(4 downto 0) => iVDLData(4 downto 0),
      Q(4 downto 0) => oSynchVDL(4 downto 0)
    );
Uart_cmp: entity work.tUART
     port map (
      clk => CLK,
      data_in(5 downto 0) => iUartData(5 downto 0),
      data_out => oTx,
      reset => SCLR,
      start => startTx,
      tx_ready => txReady
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDC is
  port (
    clk_in1_n : in STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    iStart : in STD_LOGIC;
    iStop : in STD_LOGIC;
    iReset : in STD_LOGIC;
    oLockedClk : out STD_LOGIC;
    oTx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TDC : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of TDC : entity is "c3ffc5df";
  attribute POWER_OPT_BRAM_CDC : integer;
  attribute POWER_OPT_BRAM_CDC of TDC : entity is 0;
  attribute POWER_OPT_BRAM_SR_ADDR : integer;
  attribute POWER_OPT_BRAM_SR_ADDR of TDC : entity is 4;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE : integer;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE of TDC : entity is 0;
end TDC;

architecture STRUCTURE of TDC is
  signal CLR : STD_LOGIC;
  signal Clk : STD_LOGIC;
  signal Mux_exp_cmp_n_1 : STD_LOGIC;
  signal iClk : STD_LOGIC;
  signal iMuxData : STD_LOGIC_VECTOR ( 61 downto 0 );
  signal iReset_IBUF : STD_LOGIC;
  signal iStart_IBUF : STD_LOGIC;
  signal iStop_IBUF : STD_LOGIC;
  signal oLockedClk_OBUF : STD_LOGIC;
  signal oStart : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of oStart : signal is std.standard.true;
  signal oStop : STD_LOGIC;
  attribute DONT_TOUCH of oStop : signal is std.standard.true;
  signal oTDLData : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal oTDLDecoder : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute DONT_TOUCH of oTDLDecoder : signal is std.standard.true;
  signal oTx_OBUF : STD_LOGIC;
  signal oVDLData : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal oVDLDecoder : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute DONT_TOUCH of oVDLDecoder : signal is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of Clk_cmp : label is "TRUE";
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
Clk_cmp: entity work.clk_wiz_0
     port map (
      clk_in1_n => clk_in1_n,
      clk_in1_p => clk_in1_p,
      clk_out1 => Clk,
      locked => oLockedClk_OBUF,
      reset => iReset_IBUF
    );
Mux_exp_cmp: entity work.Mux_exp
     port map (
      iMux(61 downto 0) => iMuxData(61 downto 0),
      iSel(31 downto 0) => oVDLData(31 downto 0),
      oMux(1) => iClk,
      oMux(0) => Mux_exp_cmp_n_1
    );
REG_SP: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iStop_IBUF,
      CE => '1',
      CLR => CLR,
      D => '1',
      Q => oStop
    );
REG_ST: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => iStart_IBUF,
      CE => '1',
      CLR => CLR,
      D => '1',
      Q => oStart
    );
TDL_cmp: entity work.TDL
     port map (
      iClk => iClk,
      iReset => CLR,
      iTaps => Mux_exp_cmp_n_1,
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
UartModule_cmp: entity work.UartModule
     port map (
      CLK => Clk,
      CLR => CLR,
      iReady(0) => oVDLData(0),
      iReset => iReset_IBUF,
      iTDL(5 downto 0) => oTDLDecoder(5 downto 0),
      iVDL(4 downto 0) => oVDLDecoder(4 downto 0),
      oTx => oTx_OBUF
    );
VDL_cmp: entity work.VDL
     port map (
      iLatch => oStart,
      iLut => oStop,
      iReset => CLR,
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
oLockedClk_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => oLockedClk_OBUF,
      O => oLockedClk
    );
oTx_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => oTx_OBUF,
      O => oTx
    );
end STRUCTURE;
