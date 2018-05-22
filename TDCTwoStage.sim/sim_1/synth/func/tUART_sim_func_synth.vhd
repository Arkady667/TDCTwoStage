-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Tue May 15 13:15:51 2018
-- Host        : hal running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file {/home/arkady/Documents/Vivado
--               Projects/TDCTwoStage/TDCTwoStage.sim/sim_1/synth/func/tUART_sim_func_synth.vhd}
-- Design      : tUART
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tUART is
  port (
    data_out : out STD_LOGIC;
    tx_ready : out STD_LOGIC;
    start : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of tUART : entity is true;
  attribute baud : integer;
  attribute baud of tUART : entity is 115200;
  attribute clk_rate : integer;
  attribute clk_rate of tUART : entity is 100000000;
end tUART;

architecture STRUCTURE of tUART is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal \clk_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \clk_counter[9]_i_4_n_0\ : STD_LOGIC;
  signal \clk_counter[9]_i_5_n_0\ : STD_LOGIC;
  signal \clk_counter[9]_i_6_n_0\ : STD_LOGIC;
  signal \clk_counter[9]_i_7_n_0\ : STD_LOGIC;
  signal clk_delay_counter0 : STD_LOGIC;
  signal \clk_delay_counter[0]_i_10_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_11_n_0\ : STD_LOGIC;
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
  signal \clk_delay_counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_8_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[0]_i_9_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \clk_delay_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal clk_delay_counter_reg : STD_LOGIC_VECTOR ( 12 downto 2 );
  signal \clk_delay_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
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
  signal \clk_delay_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clk_delay_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clk_delay_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \clk_delay_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_delay_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal data_in_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_out_OBUF : STD_LOGIC;
  signal data_reg : STD_LOGIC;
  signal \data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[8]\ : STD_LOGIC;
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
  signal reset_IBUF : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal shift_data : STD_LOGIC;
  signal shift_data0 : STD_LOGIC;
  signal shift_data_i_1_n_0 : STD_LOGIC;
  signal start_IBUF : STD_LOGIC;
  signal start_count_follow : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal tx_ready0 : STD_LOGIC;
  signal tx_ready_OBUF : STD_LOGIC;
  signal tx_ready_reg : STD_LOGIC;
  signal tx_ready_reg_i_1_n_0 : STD_LOGIC;
  signal \NLW_clk_delay_counter_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_clk_delay_counter_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clk_delay_counter_reg[0]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clk_delay_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clk_delay_counter_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_counter[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_counter[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \clk_counter[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clk_counter[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clk_counter[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clk_counter[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clk_counter[9]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \clk_counter[9]_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \clk_counter[9]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_reg[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_reg[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_reg[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_reg[7]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of delay_clock_done_i_1 : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of delay_clock_reg : label is "LD";
  attribute SOFT_HLUTNM of delay_clock_reg_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of delay_clock_reg_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of done_shifting_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \number_bits[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \number_bits[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \number_bits[3]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \number_bits[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of shift_data_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair1";
begin
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
\clk_delay_counter[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(2),
      O => \clk_delay_counter[0]_i_10_n_0\
    );
\clk_delay_counter[0]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_delay_counter_reg_n_0_[1]\,
      O => \clk_delay_counter[0]_i_11_n_0\
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
\clk_delay_counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(12),
      O => \clk_delay_counter[0]_i_7_n_0\
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
\clk_delay_counter[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(3),
      O => \clk_delay_counter[0]_i_9_n_0\
    );
\clk_delay_counter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_delay_counter_reg(12),
      O => \clk_delay_counter[12]_i_2_n_0\
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
      C => clk_IBUF_BUFG,
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
      CO(0) => \clk_delay_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \clk_delay_counter[0]_i_5_n_0\,
      DI(0) => \clk_delay_counter[0]_i_6_n_0\,
      O(3 downto 0) => \NLW_clk_delay_counter_reg[0]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \clk_delay_counter[0]_i_7_n_0\,
      S(0) => \clk_delay_counter[0]_i_8_n_0\
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
      S(3) => \clk_delay_counter[0]_i_9_n_0\,
      S(2) => \clk_delay_counter[0]_i_10_n_0\,
      S(1) => \clk_delay_counter[0]_i_11_n_0\,
      S(0) => \clk_delay_counter[0]_i_12_n_0\
    );
\clk_delay_counter_reg[0]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_delay_counter_reg[0]_i_4_n_0\,
      CO(2) => \clk_delay_counter_reg[0]_i_4_n_1\,
      CO(1) => \clk_delay_counter_reg[0]_i_4_n_2\,
      CO(0) => \clk_delay_counter_reg[0]_i_4_n_3\,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      S(0) => \clk_delay_counter[12]_i_2_n_0\
    );
\clk_delay_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
      CE => clk_delay_counter0,
      D => \clk_delay_counter_reg[8]_i_1_n_7\,
      Q => clk_delay_counter_reg(8),
      R => tx_ready0
    );
\clk_delay_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_delay_counter_reg[4]_i_1_n_0\,
      CO(3) => \clk_delay_counter_reg[8]_i_1_n_0\,
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
      C => clk_IBUF_BUFG,
      CE => clk_delay_counter0,
      D => \clk_delay_counter_reg[8]_i_1_n_6\,
      Q => clk_delay_counter_reg(9),
      R => tx_ready0
    );
\data_in_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(0),
      O => data_in_IBUF(0)
    );
\data_in_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(1),
      O => data_in_IBUF(1)
    );
\data_in_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(2),
      O => data_in_IBUF(2)
    );
\data_in_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(3),
      O => data_in_IBUF(3)
    );
\data_in_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(4),
      O => data_in_IBUF(4)
    );
\data_in_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(5),
      O => data_in_IBUF(5)
    );
\data_in_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(6),
      O => data_in_IBUF(6)
    );
\data_in_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(7),
      O => data_in_IBUF(7)
    );
data_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF,
      O => data_out
    );
\data_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \data_reg_reg_n_0_[1]\,
      O => \data_reg[0]_i_1_n_0\
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \data_reg_reg_n_0_[2]\,
      I1 => state(1),
      I2 => state(0),
      I3 => data_in_IBUF(0),
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
      I3 => data_in_IBUF(1),
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
      I3 => data_in_IBUF(2),
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
      I3 => data_in_IBUF(3),
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
      I3 => data_in_IBUF(4),
      O => \data_reg[5]_i_1_n_0\
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \data_reg_reg_n_0_[7]\,
      I1 => state(1),
      I2 => state(0),
      I3 => data_in_IBUF(5),
      O => \data_reg[6]_i_1_n_0\
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44540000"
    )
        port map (
      I0 => reset_IBUF,
      I1 => shift_data,
      I2 => state(0),
      I3 => state(1),
      I4 => \data_reg[7]_i_3_n_0\,
      O => data_reg
    );
\data_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \data_reg_reg_n_0_[8]\,
      I1 => state(1),
      I2 => state(0),
      I3 => data_in_IBUF(6),
      O => \data_reg[7]_i_2_n_0\
    );
\data_reg[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \number_bits_reg_n_0_[1]\,
      I1 => \number_bits_reg_n_0_[2]\,
      I2 => \number_bits_reg_n_0_[3]\,
      I3 => \number_bits_reg_n_0_[0]\,
      O => \data_reg[7]_i_3_n_0\
    );
\data_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44040000"
    )
        port map (
      I0 => reset_IBUF,
      I1 => shift_data,
      I2 => state(0),
      I3 => state(1),
      I4 => \data_reg[7]_i_3_n_0\,
      O => \data_reg[8]_i_1_n_0\
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => data_reg,
      D => \data_reg[0]_i_1_n_0\,
      Q => data_out_OBUF,
      R => '0'
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
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
      C => clk_IBUF_BUFG,
      CE => data_reg,
      D => \data_reg[6]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[6]\,
      R => '0'
    );
\data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => data_reg,
      D => \data_reg[7]_i_2_n_0\,
      Q => \data_reg_reg_n_0_[7]\,
      R => '0'
    );
\data_reg_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => data_reg,
      D => data_in_IBUF(7),
      Q => \data_reg_reg_n_0_[8]\,
      S => \data_reg[8]_i_1_n_0\
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
      C => clk_IBUF_BUFG,
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
      I3 => reset_IBUF,
      I4 => \data_reg[7]_i_3_n_0\,
      O => done_shifting_i_1_n_0
    );
done_shifting_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => done_shifting_i_1_n_0,
      Q => done_shifting_reg_n_0,
      R => '0'
    );
\number_bits[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => \number_bits_reg_n_0_[1]\,
      I1 => \number_bits_reg_n_0_[2]\,
      I2 => \number_bits_reg_n_0_[3]\,
      I3 => \number_bits_reg_n_0_[0]\,
      O => \number_bits[0]_i_1_n_0\
    );
\number_bits[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FD0"
    )
        port map (
      I0 => \number_bits_reg_n_0_[3]\,
      I1 => \number_bits_reg_n_0_[2]\,
      I2 => \number_bits_reg_n_0_[1]\,
      I3 => \number_bits_reg_n_0_[0]\,
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
      INIT => X"88888F8888888888"
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
      INIT => X"6A8A"
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
      C => clk_IBUF_BUFG,
      CE => \number_bits[3]_i_1_n_0\,
      D => \number_bits[0]_i_1_n_0\,
      Q => \number_bits_reg_n_0_[0]\,
      R => reset_IBUF
    );
\number_bits_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \number_bits[3]_i_1_n_0\,
      D => \number_bits[1]_i_1_n_0\,
      Q => \number_bits_reg_n_0_[1]\,
      R => reset_IBUF
    );
\number_bits_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \number_bits[3]_i_1_n_0\,
      D => \number_bits[2]_i_1_n_0\,
      Q => \number_bits_reg_n_0_[2]\,
      R => reset_IBUF
    );
\number_bits_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \number_bits[3]_i_1_n_0\,
      D => \number_bits[3]_i_2_n_0\,
      Q => \number_bits_reg_n_0_[3]\,
      R => reset_IBUF
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
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
      C => clk_IBUF_BUFG,
      CE => '1',
      D => shift_data_i_1_n_0,
      Q => shift_data,
      R => '0'
    );
start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => start,
      O => start_IBUF
    );
start_count_follow_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => start_IBUF,
      Q => start_count_follow,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => start_IBUF,
      I1 => start_count_follow,
      I2 => state(0),
      I3 => state(1),
      I4 => reset_IBUF,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0046"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => done_shifting_reg_n_0,
      I3 => reset_IBUF,
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
tx_ready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => tx_ready_OBUF,
      O => tx_ready
    );
tx_ready_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => delay_clock,
      I1 => tx_ready_reg,
      I2 => state(1),
      I3 => state(0),
      O => tx_ready_OBUF
    );
tx_ready_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start_IBUF,
      O => tx_ready_reg_i_1_n_0
    );
tx_ready_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => tx_ready_reg_i_1_n_0,
      Q => tx_ready_reg,
      R => '0'
    );
end STRUCTURE;
