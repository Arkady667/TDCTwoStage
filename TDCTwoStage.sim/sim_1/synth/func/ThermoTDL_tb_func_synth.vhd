-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Wed May  9 20:02:17 2018
-- Host        : hal running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file {/home/arkady/Documents/Vivado
--               Projects/TDCTwoStage/TDCTwoStage.sim/sim_1/synth/func/ThermoTDL_tb_func_synth.vhd}
-- Design      : ThermoDecoderTDL
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ThermoDecoderTDL is
  port (
    iData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    oData : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ThermoDecoderTDL : entity is true;
end ThermoDecoderTDL;

architecture STRUCTURE of ThermoDecoderTDL is
  signal bin2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal iData_IBUF : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal oData_OBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \oData_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \oData_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \oData_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \oData_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \oData_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \oData_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \oData_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \oData_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \oData_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \oData_OBUF[1]_inst_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \oData_OBUF[1]_inst_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \oData_OBUF[3]_inst_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \oData_OBUF[3]_inst_i_3\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \temp_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \temp_reg[0]_i_2\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \temp_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \temp_reg[1]_i_3\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \temp_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \temp_reg[3]\ : label is "LD";
begin
\iData_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(0),
      O => iData_IBUF(0)
    );
\iData_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(10),
      O => iData_IBUF(10)
    );
\iData_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(11),
      O => iData_IBUF(11)
    );
\iData_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(12),
      O => iData_IBUF(12)
    );
\iData_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(13),
      O => iData_IBUF(13)
    );
\iData_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(14),
      O => iData_IBUF(14)
    );
\iData_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(15),
      O => iData_IBUF(15)
    );
\iData_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(16),
      O => iData_IBUF(16)
    );
\iData_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(17),
      O => iData_IBUF(17)
    );
\iData_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(18),
      O => iData_IBUF(18)
    );
\iData_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(19),
      O => iData_IBUF(19)
    );
\iData_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(1),
      O => iData_IBUF(1)
    );
\iData_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(20),
      O => iData_IBUF(20)
    );
\iData_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(21),
      O => iData_IBUF(21)
    );
\iData_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(22),
      O => iData_IBUF(22)
    );
\iData_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(23),
      O => iData_IBUF(23)
    );
\iData_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(24),
      O => iData_IBUF(24)
    );
\iData_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(25),
      O => iData_IBUF(25)
    );
\iData_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(26),
      O => iData_IBUF(26)
    );
\iData_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(27),
      O => iData_IBUF(27)
    );
\iData_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(28),
      O => iData_IBUF(28)
    );
\iData_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(29),
      O => iData_IBUF(29)
    );
\iData_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(2),
      O => iData_IBUF(2)
    );
\iData_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(30),
      O => iData_IBUF(30)
    );
\iData_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(3),
      O => iData_IBUF(3)
    );
\iData_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(4),
      O => iData_IBUF(4)
    );
\iData_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(5),
      O => iData_IBUF(5)
    );
\iData_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(6),
      O => iData_IBUF(6)
    );
\iData_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(7),
      O => iData_IBUF(7)
    );
\iData_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(8),
      O => iData_IBUF(8)
    );
\iData_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => iData(9),
      O => iData_IBUF(9)
    );
\oData_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oData_OBUF(0),
      O => oData(0)
    );
\oData_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA0A3A0A0"
    )
        port map (
      I0 => temp(0),
      I1 => iData_IBUF(13),
      I2 => oData_OBUF(4),
      I3 => iData_IBUF(11),
      I4 => \oData_OBUF[0]_inst_i_2_n_0\,
      I5 => \oData_OBUF[0]_inst_i_3_n_0\,
      O => oData_OBUF(0)
    );
\oData_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FFFFFF54"
    )
        port map (
      I0 => iData_IBUF(7),
      I1 => \oData_OBUF[0]_inst_i_4_n_0\,
      I2 => iData_IBUF(6),
      I3 => iData_IBUF(10),
      I4 => iData_IBUF(8),
      I5 => iData_IBUF(9),
      O => \oData_OBUF[0]_inst_i_2_n_0\
    );
\oData_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000200030002"
    )
        port map (
      I0 => iData_IBUF(14),
      I1 => iData_IBUF(17),
      I2 => iData_IBUF(16),
      I3 => iData_IBUF(15),
      I4 => iData_IBUF(12),
      I5 => iData_IBUF(13),
      O => \oData_OBUF[0]_inst_i_3_n_0\
    );
\oData_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEEFE"
    )
        port map (
      I0 => iData_IBUF(4),
      I1 => iData_IBUF(2),
      I2 => iData_IBUF(0),
      I3 => iData_IBUF(1),
      I4 => iData_IBUF(3),
      I5 => iData_IBUF(5),
      O => \oData_OBUF[0]_inst_i_4_n_0\
    );
\oData_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oData_OBUF(1),
      O => oData(1)
    );
\oData_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCAAAACCCCAAFA"
    )
        port map (
      I0 => \oData_OBUF[1]_inst_i_2_n_0\,
      I1 => temp(1),
      I2 => \oData_OBUF[1]_inst_i_3_n_0\,
      I3 => iData_IBUF(11),
      I4 => oData_OBUF(4),
      I5 => iData_IBUF(12),
      O => oData_OBUF(1)
    );
\oData_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData_IBUF(13),
      I1 => iData_IBUF(14),
      O => \oData_OBUF[1]_inst_i_2_n_0\
    );
\oData_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF02"
    )
        port map (
      I0 => \oData_OBUF[1]_inst_i_4_n_0\,
      I1 => iData_IBUF(7),
      I2 => iData_IBUF(8),
      I3 => iData_IBUF(10),
      I4 => iData_IBUF(9),
      O => \oData_OBUF[1]_inst_i_3_n_0\
    );
\oData_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1110"
    )
        port map (
      I0 => iData_IBUF(3),
      I1 => iData_IBUF(4),
      I2 => iData_IBUF(1),
      I3 => iData_IBUF(2),
      I4 => iData_IBUF(6),
      I5 => iData_IBUF(5),
      O => \oData_OBUF[1]_inst_i_4_n_0\
    );
\oData_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oData_OBUF(2),
      O => oData(2)
    );
\oData_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEFEEEEEEEA"
    )
        port map (
      I0 => \oData_OBUF[3]_inst_i_2_n_0\,
      I1 => temp(2),
      I2 => iData_IBUF(17),
      I3 => iData_IBUF(16),
      I4 => iData_IBUF(15),
      I5 => \oData_OBUF[2]_inst_i_2_n_0\,
      O => oData_OBUF(2)
    );
\oData_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => iData_IBUF(5),
      I1 => iData_IBUF(6),
      I2 => iData_IBUF(3),
      I3 => iData_IBUF(4),
      I4 => \oData_OBUF[3]_inst_i_3_n_0\,
      O => \oData_OBUF[2]_inst_i_2_n_0\
    );
\oData_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oData_OBUF(3),
      O => oData(3)
    );
\oData_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFAFAFAEE"
    )
        port map (
      I0 => \oData_OBUF[3]_inst_i_2_n_0\,
      I1 => \oData_OBUF[3]_inst_i_3_n_0\,
      I2 => temp(3),
      I3 => iData_IBUF(17),
      I4 => iData_IBUF(16),
      I5 => iData_IBUF(15),
      O => oData_OBUF(3)
    );
\oData_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => iData_IBUF(13),
      I1 => iData_IBUF(14),
      I2 => iData_IBUF(11),
      I3 => iData_IBUF(12),
      I4 => oData_OBUF(4),
      O => \oData_OBUF[3]_inst_i_2_n_0\
    );
\oData_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData_IBUF(10),
      I1 => iData_IBUF(8),
      I2 => iData_IBUF(9),
      I3 => iData_IBUF(7),
      O => \oData_OBUF[3]_inst_i_3_n_0\
    );
\oData_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => oData_OBUF(4),
      O => oData(4)
    );
\oData_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => iData_IBUF(17),
      I1 => iData_IBUF(16),
      I2 => iData_IBUF(15),
      O => oData_OBUF(4)
    );
\temp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => bin2(0),
      G => oData_OBUF(4),
      GE => '1',
      Q => temp(0)
    );
\temp_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4F4F444"
    )
        port map (
      I0 => \temp_reg[1]_i_3_n_0\,
      I1 => iData_IBUF(28),
      I2 => \temp_reg[0]_i_2_n_0\,
      I3 => iData_IBUF(22),
      I4 => \temp_reg[0]_i_3_n_0\,
      I5 => \temp_reg[0]_i_4_n_0\,
      O => bin2(0)
    );
\temp_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => iData_IBUF(25),
      I1 => iData_IBUF(23),
      I2 => iData_IBUF(27),
      I3 => iData_IBUF(30),
      I4 => iData_IBUF(29),
      O => \temp_reg[0]_i_2_n_0\
    );
\temp_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEEFE"
    )
        port map (
      I0 => iData_IBUF(20),
      I1 => iData_IBUF(18),
      I2 => iData_IBUF(16),
      I3 => iData_IBUF(17),
      I4 => iData_IBUF(19),
      I5 => iData_IBUF(21),
      O => \temp_reg[0]_i_3_n_0\
    );
\temp_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010001010100"
    )
        port map (
      I0 => iData_IBUF(27),
      I1 => iData_IBUF(29),
      I2 => iData_IBUF(30),
      I3 => iData_IBUF(26),
      I4 => iData_IBUF(24),
      I5 => iData_IBUF(25),
      O => \temp_reg[0]_i_4_n_0\
    );
\temp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => bin2(1),
      G => oData_OBUF(4),
      GE => '1',
      Q => temp(1)
    );
\temp_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABABABAA"
    )
        port map (
      I0 => \temp_reg[1]_i_2_n_0\,
      I1 => iData_IBUF(27),
      I2 => iData_IBUF(28),
      I3 => iData_IBUF(26),
      I4 => iData_IBUF(25),
      I5 => \temp_reg[1]_i_3_n_0\,
      O => bin2(1)
    );
\temp_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => iData_IBUF(23),
      I1 => iData_IBUF(27),
      I2 => iData_IBUF(28),
      I3 => iData_IBUF(24),
      I4 => \temp_reg[1]_i_4_n_0\,
      O => \temp_reg[1]_i_2_n_0\
    );
\temp_reg[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData_IBUF(29),
      I1 => iData_IBUF(30),
      O => \temp_reg[1]_i_3_n_0\
    );
\temp_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1110"
    )
        port map (
      I0 => iData_IBUF(19),
      I1 => iData_IBUF(20),
      I2 => iData_IBUF(17),
      I3 => iData_IBUF(18),
      I4 => iData_IBUF(22),
      I5 => iData_IBUF(21),
      O => \temp_reg[1]_i_4_n_0\
    );
\temp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => bin2(2),
      G => oData_OBUF(4),
      GE => '1',
      Q => temp(2)
    );
\temp_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0100"
    )
        port map (
      I0 => \temp_reg[2]_i_2_n_0\,
      I1 => iData_IBUF(23),
      I2 => iData_IBUF(24),
      I3 => \temp_reg[2]_i_3_n_0\,
      I4 => \temp_reg[3]_i_2_n_0\,
      I5 => iData_IBUF(27),
      O => bin2(2)
    );
\temp_reg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => iData_IBUF(25),
      I1 => iData_IBUF(26),
      O => \temp_reg[2]_i_2_n_0\
    );
\temp_reg[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iData_IBUF(20),
      I1 => iData_IBUF(19),
      I2 => iData_IBUF(22),
      I3 => iData_IBUF(21),
      O => \temp_reg[2]_i_3_n_0\
    );
\temp_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => bin2(3),
      G => oData_OBUF(4),
      GE => '1',
      Q => temp(3)
    );
\temp_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => iData_IBUF(24),
      I1 => \temp_reg[3]_i_2_n_0\,
      I2 => iData_IBUF(23),
      I3 => iData_IBUF(27),
      I4 => iData_IBUF(25),
      I5 => iData_IBUF(26),
      O => bin2(3)
    );
\temp_reg[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => iData_IBUF(28),
      I1 => iData_IBUF(30),
      I2 => iData_IBUF(29),
      O => \temp_reg[3]_i_2_n_0\
    );
end STRUCTURE;
