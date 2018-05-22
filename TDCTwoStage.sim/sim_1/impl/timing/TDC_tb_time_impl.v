// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Tue May 22 11:43:32 2018
// Host        : hal running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {/home/arkady/Documents/Vivado
//               Projects/TDCTwoStage/TDCTwoStage.sim/sim_1/impl/timing/TDC_tb_time_impl.v}
// Design      : TDC
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* CHECK_LICENSE_TYPE = "LutDelayLine,c_shift_ram_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2017.1" *) 
module LutDelayLine
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire NLW_U0_CE_UNCONNECTED;
  wire NLW_U0_SCLR_UNCONNECTED;
  wire NLW_U0_SINIT_UNCONNECTED;
  wire NLW_U0_SSET_UNCONNECTED;
  wire [3:0]NLW_U0_A_UNCONNECTED;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "4" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  LutDelayLine_c_shift_ram_v12_0_10 U0
       (.A(NLW_U0_A_UNCONNECTED[3:0]),
        .CE(NLW_U0_CE_UNCONNECTED),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(NLW_U0_SCLR_UNCONNECTED),
        .SINIT(NLW_U0_SINIT_UNCONNECTED),
        .SSET(NLW_U0_SSET_UNCONNECTED));
endmodule

module Mux_exp
   (iMux,
    iSel,
    oMux);
  (* gated_clock = "true" *) input [61:0]iMux;
  input [31:0]iSel;
  output [1:0]oMux;

  (* GATED_CLOCK *) wire [61:0]iMux;
  wire [31:0]iSel;
  wire \oMux[0]_INST_0_i_10_n_0 ;
  wire \oMux[0]_INST_0_i_11_n_0 ;
  wire \oMux[0]_INST_0_i_12_n_0 ;
  wire \oMux[0]_INST_0_i_13_n_0 ;
  wire \oMux[0]_INST_0_i_14_n_0 ;
  wire \oMux[0]_INST_0_i_15_n_0 ;
  wire \oMux[0]_INST_0_i_16_n_0 ;
  wire \oMux[0]_INST_0_i_17_n_0 ;
  wire \oMux[0]_INST_0_i_1_n_0 ;
  wire \oMux[0]_INST_0_i_2_n_0 ;
  wire \oMux[0]_INST_0_i_3_n_0 ;
  wire \oMux[0]_INST_0_i_4_n_0 ;
  wire \oMux[0]_INST_0_i_5_n_0 ;
  wire \oMux[0]_INST_0_i_6_n_0 ;
  wire \oMux[0]_INST_0_i_7_n_0 ;
  wire \oMux[0]_INST_0_i_8_n_0 ;
  wire \oMux[0]_INST_0_i_9_n_0 ;
  wire \oMux[1] ;
  wire \oMux[1]_INST_0_i_10_n_0 ;
  wire \oMux[1]_INST_0_i_11_n_0 ;
  wire \oMux[1]_INST_0_i_12_n_0 ;
  wire \oMux[1]_INST_0_i_13_n_0 ;
  wire \oMux[1]_INST_0_i_14_n_0 ;
  wire \oMux[1]_INST_0_i_15_n_0 ;
  wire \oMux[1]_INST_0_i_16_n_0 ;
  wire \oMux[1]_INST_0_i_17_n_0 ;
  wire \oMux[1]_INST_0_i_1_n_0 ;
  wire \oMux[1]_INST_0_i_2_n_0 ;
  wire \oMux[1]_INST_0_i_3_n_0 ;
  wire \oMux[1]_INST_0_i_4_n_0 ;
  wire \oMux[1]_INST_0_i_5_n_0 ;
  wire \oMux[1]_INST_0_i_6_n_0 ;
  wire \oMux[1]_INST_0_i_7_n_0 ;
  wire \oMux[1]_INST_0_i_8_n_0 ;
  wire \oMux[1]_INST_0_i_9_n_0 ;
  wire [1:0]oMux_BUFG;

  assign oMux[1:0] = oMux_BUFG;
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \oMux[0]_INST_0 
       (.I0(\oMux[0]_INST_0_i_1_n_0 ),
        .I1(\oMux[0]_INST_0_i_2_n_0 ),
        .I2(\oMux[0]_INST_0_i_3_n_0 ),
        .I3(\oMux[0]_INST_0_i_4_n_0 ),
        .I4(\oMux[0]_INST_0_i_5_n_0 ),
        .I5(\oMux[0]_INST_0_i_6_n_0 ),
        .O(oMux_BUFG[0]));
  LUT4 #(
    .INIT(16'h8100)) 
    \oMux[0]_INST_0_i_1 
       (.I0(iSel[15]),
        .I1(iSel[16]),
        .I2(iSel[17]),
        .I3(\oMux[0]_INST_0_i_7_n_0 ),
        .O(\oMux[0]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[0]_INST_0_i_10 
       (.I0(iSel[7]),
        .I1(iSel[6]),
        .I2(iSel[5]),
        .O(\oMux[0]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hA004)) 
    \oMux[0]_INST_0_i_11 
       (.I0(iSel[1]),
        .I1(iMux[0]),
        .I2(iSel[3]),
        .I3(iSel[2]),
        .O(\oMux[0]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \oMux[0]_INST_0_i_12 
       (.I0(iSel[31]),
        .I1(iSel[0]),
        .I2(iSel[29]),
        .I3(iSel[30]),
        .O(\oMux[0]_INST_0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[0]_INST_0_i_13 
       (.I0(iSel[27]),
        .I1(iSel[26]),
        .I2(iSel[25]),
        .O(\oMux[0]_INST_0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[0]_INST_0_i_14 
       (.I0(iSel[23]),
        .I1(iSel[22]),
        .I2(iSel[21]),
        .O(\oMux[0]_INST_0_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[0]_INST_0_i_15 
       (.I0(iSel[25]),
        .I1(iSel[24]),
        .I2(iSel[23]),
        .O(\oMux[0]_INST_0_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[0]_INST_0_i_16 
       (.I0(iSel[19]),
        .I1(iSel[18]),
        .I2(iSel[17]),
        .O(\oMux[0]_INST_0_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[0]_INST_0_i_17 
       (.I0(iSel[21]),
        .I1(iSel[20]),
        .I2(iSel[19]),
        .O(\oMux[0]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h8100)) 
    \oMux[0]_INST_0_i_2 
       (.I0(iSel[11]),
        .I1(iSel[12]),
        .I2(iSel[13]),
        .I3(\oMux[0]_INST_0_i_8_n_0 ),
        .O(\oMux[0]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8100)) 
    \oMux[0]_INST_0_i_3 
       (.I0(iSel[3]),
        .I1(iSel[4]),
        .I2(iSel[5]),
        .I3(\oMux[0]_INST_0_i_9_n_0 ),
        .O(\oMux[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8100)) 
    \oMux[0]_INST_0_i_4 
       (.I0(iSel[7]),
        .I1(iSel[8]),
        .I2(iSel[9]),
        .I3(\oMux[0]_INST_0_i_10_n_0 ),
        .O(\oMux[0]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \oMux[0]_INST_0_i_5 
       (.I0(\oMux[0]_INST_0_i_11_n_0 ),
        .I1(\oMux[0]_INST_0_i_12_n_0 ),
        .I2(\oMux[0]_INST_0_i_13_n_0 ),
        .O(\oMux[0]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \oMux[0]_INST_0_i_6 
       (.I0(\oMux[0]_INST_0_i_14_n_0 ),
        .I1(\oMux[0]_INST_0_i_15_n_0 ),
        .I2(\oMux[0]_INST_0_i_16_n_0 ),
        .I3(\oMux[0]_INST_0_i_17_n_0 ),
        .O(\oMux[0]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[0]_INST_0_i_7 
       (.I0(iSel[15]),
        .I1(iSel[14]),
        .I2(iSel[13]),
        .O(\oMux[0]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[0]_INST_0_i_8 
       (.I0(iSel[11]),
        .I1(iSel[10]),
        .I2(iSel[9]),
        .O(\oMux[0]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[0]_INST_0_i_9 
       (.I0(iSel[29]),
        .I1(iSel[28]),
        .I2(iSel[27]),
        .O(\oMux[0]_INST_0_i_9_n_0 ));
  (* TOOL_INSERTED_CLOCKBUFG *) 
  BUFG \oMux[1]_BUFG_inst 
       (.I(\oMux[1] ),
        .O(oMux_BUFG[1]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \oMux[1]_INST_0 
       (.I0(\oMux[1]_INST_0_i_1_n_0 ),
        .I1(\oMux[1]_INST_0_i_2_n_0 ),
        .I2(\oMux[1]_INST_0_i_3_n_0 ),
        .I3(\oMux[1]_INST_0_i_4_n_0 ),
        .I4(\oMux[1]_INST_0_i_5_n_0 ),
        .I5(\oMux[1]_INST_0_i_6_n_0 ),
        .O(\oMux[1] ));
  LUT4 #(
    .INIT(16'h8100)) 
    \oMux[1]_INST_0_i_1 
       (.I0(iSel[15]),
        .I1(iSel[16]),
        .I2(iSel[17]),
        .I3(\oMux[1]_INST_0_i_7_n_0 ),
        .O(\oMux[1]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[1]_INST_0_i_10 
       (.I0(iSel[7]),
        .I1(iSel[6]),
        .I2(iSel[5]),
        .O(\oMux[1]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \oMux[1]_INST_0_i_11 
       (.I0(iSel[1]),
        .I1(iSel[3]),
        .I2(iSel[2]),
        .O(\oMux[1]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \oMux[1]_INST_0_i_12 
       (.I0(iSel[31]),
        .I1(iSel[0]),
        .I2(iSel[29]),
        .I3(iSel[30]),
        .O(\oMux[1]_INST_0_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[1]_INST_0_i_13 
       (.I0(iSel[27]),
        .I1(iSel[26]),
        .I2(iSel[25]),
        .O(\oMux[1]_INST_0_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[1]_INST_0_i_14 
       (.I0(iSel[23]),
        .I1(iSel[22]),
        .I2(iSel[21]),
        .O(\oMux[1]_INST_0_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[1]_INST_0_i_15 
       (.I0(iSel[25]),
        .I1(iSel[24]),
        .I2(iSel[23]),
        .O(\oMux[1]_INST_0_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[1]_INST_0_i_16 
       (.I0(iSel[19]),
        .I1(iSel[18]),
        .I2(iSel[17]),
        .O(\oMux[1]_INST_0_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[1]_INST_0_i_17 
       (.I0(iSel[21]),
        .I1(iSel[20]),
        .I2(iSel[19]),
        .O(\oMux[1]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h8100)) 
    \oMux[1]_INST_0_i_2 
       (.I0(iSel[11]),
        .I1(iSel[12]),
        .I2(iSel[13]),
        .I3(\oMux[1]_INST_0_i_8_n_0 ),
        .O(\oMux[1]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8100)) 
    \oMux[1]_INST_0_i_3 
       (.I0(iSel[3]),
        .I1(iSel[4]),
        .I2(iSel[5]),
        .I3(\oMux[1]_INST_0_i_9_n_0 ),
        .O(\oMux[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8100)) 
    \oMux[1]_INST_0_i_4 
       (.I0(iSel[7]),
        .I1(iSel[8]),
        .I2(iSel[9]),
        .I3(\oMux[1]_INST_0_i_10_n_0 ),
        .O(\oMux[1]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \oMux[1]_INST_0_i_5 
       (.I0(\oMux[1]_INST_0_i_11_n_0 ),
        .I1(\oMux[1]_INST_0_i_12_n_0 ),
        .I2(\oMux[1]_INST_0_i_13_n_0 ),
        .O(\oMux[1]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \oMux[1]_INST_0_i_6 
       (.I0(\oMux[1]_INST_0_i_14_n_0 ),
        .I1(\oMux[1]_INST_0_i_15_n_0 ),
        .I2(\oMux[1]_INST_0_i_16_n_0 ),
        .I3(\oMux[1]_INST_0_i_17_n_0 ),
        .O(\oMux[1]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[1]_INST_0_i_7 
       (.I0(iSel[15]),
        .I1(iSel[14]),
        .I2(iSel[13]),
        .O(\oMux[1]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[1]_INST_0_i_8 
       (.I0(iSel[11]),
        .I1(iSel[10]),
        .I2(iSel[9]),
        .O(\oMux[1]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \oMux[1]_INST_0_i_9 
       (.I0(iSel[29]),
        .I1(iSel[28]),
        .I2(iSel[27]),
        .O(\oMux[1]_INST_0_i_9_n_0 ));
endmodule

(* ECO_CHECKSUM = "e40305a4" *) 
(* NotValidForBitStream *)
module TDC
   (clk_in1_n,
    clk_in1_p,
    iStart,
    iStop,
    iReset,
    oVDL,
    oTDL);
  (* CLOCK_BUFFER_TYPE = "none" *) input clk_in1_n;
  (* CLOCK_BUFFER_TYPE = "none" *) input clk_in1_p;
  input iStart;
  input iStop;
  input iReset;
  output [4:0]oVDL;
  output [5:0]oTDL;

  wire Clk;
  wire Mux_exp_cmp_n_1;
  (* IBUF_LOW_PWR *) wire clk_in1_n;
  (* IBUF_LOW_PWR *) wire clk_in1_p;
  wire iClk;
  wire [0:0]iMux;
  wire iReset;
  wire iReset_IBUF;
  wire iStart;
  wire iStart_IBUF;
  wire iStart_IBUF_BUFG;
  wire iStop;
  wire iStop_IBUF;
  wire iStop_IBUF_BUFG;
  (* DONT_TOUCH *) wire oStart;
  (* DONT_TOUCH *) wire oStop;
  wire [5:0]oTDL;
  wire [63:0]oTDLData;
  (* DONT_TOUCH *) wire [5:0]oTDLDecoder;
  wire [4:0]oVDL;
  wire [31:0]oVDLData;
  (* DONT_TOUCH *) wire [4:0]oVDLDecoder;
  wire oVDLtoMux;
  wire NLW_Clk_cmp_locked_UNCONNECTED;
  wire [61:1]NLW_Mux_exp_cmp_iMux_UNCONNECTED;
  wire [61:1]NLW_VDL_cmp_oVDL_UNCONNECTED;

initial begin
 $sdf_annotate("TDC_tb_time_impl.sdf",,,,"tool_control");
end
  (* syn_black_box = "TRUE" *) 
  clk_wiz_0 Clk_cmp
       (.clk_in1_n(clk_in1_n),
        .clk_in1_p(clk_in1_p),
        .clk_out1(Clk),
        .locked(NLW_Clk_cmp_locked_UNCONNECTED),
        .reset(iReset_IBUF));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2017.1" *) 
  LutDelayLine LutDelayLine_cmp
       (.CLK(Clk),
        .D(oVDLtoMux),
        .Q(iMux));
  Mux_exp Mux_exp_cmp
       (.iMux({NLW_Mux_exp_cmp_iMux_UNCONNECTED[61:1],iMux}),
        .iSel(oVDLData),
        .oMux({iClk,Mux_exp_cmp_n_1}));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    REG_SP
       (.C(iStop_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b1),
        .Q(oStop),
        .R(iReset_IBUF));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    REG_ST
       (.C(iStart_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b1),
        .Q(oStart),
        .R(iReset_IBUF));
  (* LENGTH = "16" *) 
  TDL TDL_cmp
       (.iClk(iClk),
        .iReset(iReset_IBUF),
        .iTaps(Mux_exp_cmp_n_1),
        .oData(oTDLData));
  (* INPUTS = "32" *) 
  (* OUTPUTS = "5" *) 
  TermDecoder TermDecoder_VDL_cmp
       (.iData(oVDLData),
        .oData(oVDLDecoder));
  (* INPUTS = "64" *) 
  (* OUTPUTS = "6" *) 
  ThermoDecoderTDL ThermoDecoderTDL_cmp
       (.iData(oTDLData),
        .oData(oTDLDecoder));
  (* LENGTH = "32" *) 
  VDL VDL_cmp
       (.iLatch(oStart),
        .iLut(oStop),
        .iReset(iReset_IBUF),
        .oData(oVDLData),
        .oVDL({NLW_VDL_cmp_oVDL_UNCONNECTED[61:1],oVDLtoMux}));
  IBUF iReset_IBUF_inst
       (.I(iReset),
        .O(iReset_IBUF));
  BUFG iStart_IBUF_BUFG_inst
       (.I(iStart_IBUF),
        .O(iStart_IBUF_BUFG));
  IBUF iStart_IBUF_inst
       (.I(iStart),
        .O(iStart_IBUF));
  BUFG iStop_IBUF_BUFG_inst
       (.I(iStop_IBUF),
        .O(iStop_IBUF_BUFG));
  IBUF iStop_IBUF_inst
       (.I(iStop),
        .O(iStop_IBUF));
  OBUF \oTDL_OBUF[0]_inst 
       (.I(oTDLDecoder[0]),
        .O(oTDL[0]));
  OBUF \oTDL_OBUF[1]_inst 
       (.I(oTDLDecoder[1]),
        .O(oTDL[1]));
  OBUF \oTDL_OBUF[2]_inst 
       (.I(oTDLDecoder[2]),
        .O(oTDL[2]));
  OBUF \oTDL_OBUF[3]_inst 
       (.I(oTDLDecoder[3]),
        .O(oTDL[3]));
  OBUF \oTDL_OBUF[4]_inst 
       (.I(oTDLDecoder[4]),
        .O(oTDL[4]));
  OBUF \oTDL_OBUF[5]_inst 
       (.I(oTDLDecoder[5]),
        .O(oTDL[5]));
  OBUF \oVDL_OBUF[0]_inst 
       (.I(oVDLDecoder[0]),
        .O(oVDL[0]));
  OBUF \oVDL_OBUF[1]_inst 
       (.I(oVDLDecoder[1]),
        .O(oVDL[1]));
  OBUF \oVDL_OBUF[2]_inst 
       (.I(oVDLDecoder[2]),
        .O(oVDL[2]));
  OBUF \oVDL_OBUF[3]_inst 
       (.I(oVDLDecoder[3]),
        .O(oVDL[3]));
  OBUF \oVDL_OBUF[4]_inst 
       (.I(oVDLDecoder[4]),
        .O(oVDL[4]));
endmodule

(* LENGTH = "16" *) 
module TDL
   (iClk,
    iTaps,
    iReset,
    oData);
  input iClk;
  input iTaps;
  input iReset;
  output [63:0]oData;

  wire iClk;
  wire iReset;
  wire iTaps;
  wire [63:0]oData;
  wire [3:0]p_0_out;
  wire [3:0]p_10_out;
  wire [3:0]p_12_out;
  wire [3:0]p_14_out;
  wire [3:0]p_16_out;
  wire [3:0]p_18_out;
  wire [3:0]p_20_out;
  wire [3:0]p_22_out;
  wire [3:0]p_24_out;
  wire [3:0]p_26_out;
  wire [3:0]p_28_out;
  wire [3:0]p_29_out;
  wire [3:0]p_2_out;
  wire [3:0]p_4_out;
  wire [3:0]p_6_out;
  wire [3:0]p_8_out;
  wire [3:0]\NLW_DL[0].g_firstcarry4.cmp_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_DL[10].nextcarry4.cmp_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_DL[11].nextcarry4.cmp_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_DL[12].nextcarry4.cmp_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_DL[13].nextcarry4.cmp_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_DL[14].nextcarry4.cmp_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_DL[15].nextcarry4.cmp_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_DL[1].nextcarry4.cmp_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_DL[2].nextcarry4.cmp_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_DL[3].nextcarry4.cmp_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_DL[4].nextcarry4.cmp_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_DL[5].nextcarry4.cmp_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_DL[6].nextcarry4.cmp_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_DL[7].nextcarry4.cmp_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_DL[8].nextcarry4.cmp_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_DL[9].nextcarry4.cmp_CARRY4_O_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[0].g_firstcarry4.cmp_CARRY4 
       (.CI(1'b0),
        .CO(p_29_out),
        .CYINIT(iTaps),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[0].g_firstcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[10].nextcarry4.cmp_CARRY4 
       (.CI(p_12_out[3]),
        .CO(p_10_out),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[10].nextcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[11].nextcarry4.cmp_CARRY4 
       (.CI(p_10_out[3]),
        .CO(p_8_out),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[11].nextcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[12].nextcarry4.cmp_CARRY4 
       (.CI(p_8_out[3]),
        .CO(p_6_out),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[12].nextcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[13].nextcarry4.cmp_CARRY4 
       (.CI(p_6_out[3]),
        .CO(p_4_out),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[13].nextcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[14].nextcarry4.cmp_CARRY4 
       (.CI(p_4_out[3]),
        .CO(p_2_out),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[14].nextcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[15].nextcarry4.cmp_CARRY4 
       (.CI(p_2_out[3]),
        .CO(p_0_out),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[15].nextcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[1].nextcarry4.cmp_CARRY4 
       (.CI(p_29_out[3]),
        .CO(p_28_out),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[1].nextcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[2].nextcarry4.cmp_CARRY4 
       (.CI(p_28_out[3]),
        .CO(p_26_out),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[2].nextcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[3].nextcarry4.cmp_CARRY4 
       (.CI(p_26_out[3]),
        .CO(p_24_out),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[3].nextcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[4].nextcarry4.cmp_CARRY4 
       (.CI(p_24_out[3]),
        .CO(p_22_out),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[4].nextcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[5].nextcarry4.cmp_CARRY4 
       (.CI(p_22_out[3]),
        .CO(p_20_out),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[5].nextcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[6].nextcarry4.cmp_CARRY4 
       (.CI(p_20_out[3]),
        .CO(p_18_out),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[6].nextcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[7].nextcarry4.cmp_CARRY4 
       (.CI(p_18_out[3]),
        .CO(p_16_out),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[7].nextcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[8].nextcarry4.cmp_CARRY4 
       (.CI(p_16_out[3]),
        .CO(p_14_out),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[8].nextcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \DL[9].nextcarry4.cmp_CARRY4 
       (.CI(p_14_out[3]),
        .CO(p_12_out),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_DL[9].nextcarry4.cmp_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[0].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_29_out[0]),
        .Q(oData[0]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[10].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_26_out[2]),
        .Q(oData[10]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[11].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_26_out[3]),
        .Q(oData[11]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[12].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_24_out[0]),
        .Q(oData[12]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[13].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_24_out[1]),
        .Q(oData[13]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[14].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_24_out[2]),
        .Q(oData[14]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[15].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_24_out[3]),
        .Q(oData[15]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[16].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_22_out[0]),
        .Q(oData[16]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[17].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_22_out[1]),
        .Q(oData[17]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[18].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_22_out[2]),
        .Q(oData[18]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[19].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_22_out[3]),
        .Q(oData[19]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[1].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_29_out[1]),
        .Q(oData[1]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[20].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_20_out[0]),
        .Q(oData[20]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[21].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_20_out[1]),
        .Q(oData[21]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[22].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_20_out[2]),
        .Q(oData[22]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[23].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_20_out[3]),
        .Q(oData[23]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[24].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_18_out[0]),
        .Q(oData[24]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[25].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_18_out[1]),
        .Q(oData[25]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[26].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_18_out[2]),
        .Q(oData[26]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[27].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_18_out[3]),
        .Q(oData[27]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[28].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_16_out[0]),
        .Q(oData[28]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[29].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_16_out[1]),
        .Q(oData[29]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[2].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_29_out[2]),
        .Q(oData[2]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[30].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_16_out[2]),
        .Q(oData[30]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[31].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_16_out[3]),
        .Q(oData[31]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[32].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_14_out[0]),
        .Q(oData[32]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[33].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_14_out[1]),
        .Q(oData[33]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[34].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_14_out[2]),
        .Q(oData[34]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[35].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_14_out[3]),
        .Q(oData[35]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[36].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_12_out[0]),
        .Q(oData[36]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[37].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_12_out[1]),
        .Q(oData[37]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[38].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_12_out[2]),
        .Q(oData[38]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[39].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_12_out[3]),
        .Q(oData[39]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[3].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_29_out[3]),
        .Q(oData[3]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[40].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_10_out[0]),
        .Q(oData[40]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[41].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_10_out[1]),
        .Q(oData[41]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[42].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_10_out[2]),
        .Q(oData[42]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[43].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_10_out[3]),
        .Q(oData[43]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[44].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_8_out[0]),
        .Q(oData[44]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[45].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_8_out[1]),
        .Q(oData[45]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[46].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_8_out[2]),
        .Q(oData[46]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[47].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_8_out[3]),
        .Q(oData[47]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[48].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_6_out[0]),
        .Q(oData[48]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[49].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_6_out[1]),
        .Q(oData[49]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[4].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_28_out[0]),
        .Q(oData[4]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[50].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_6_out[2]),
        .Q(oData[50]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[51].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_6_out[3]),
        .Q(oData[51]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[52].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_4_out[0]),
        .Q(oData[52]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[53].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_4_out[1]),
        .Q(oData[53]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[54].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_4_out[2]),
        .Q(oData[54]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[55].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_4_out[3]),
        .Q(oData[55]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[56].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_2_out[0]),
        .Q(oData[56]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[57].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_2_out[1]),
        .Q(oData[57]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[58].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_2_out[2]),
        .Q(oData[58]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[59].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_2_out[3]),
        .Q(oData[59]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[5].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_28_out[1]),
        .Q(oData[5]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[60].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(oData[60]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[61].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(oData[61]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[62].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(oData[62]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[63].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_0_out[3]),
        .Q(oData[63]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[6].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_28_out[2]),
        .Q(oData[6]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[7].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_28_out[3]),
        .Q(oData[7]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[8].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_26_out[0]),
        .Q(oData[8]),
        .R(iReset));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \REG_TAPS[9].REG 
       (.C(iClk),
        .CE(1'b1),
        .D(p_26_out[1]),
        .Q(oData[9]),
        .R(iReset));
endmodule

(* INPUTS = "32" *) (* OUTPUTS = "5" *) 
module TermDecoder
   (iData,
    oData);
  input [31:0]iData;
  output [4:0]oData;

  wire [31:0]iData;
  wire [4:0]oData;
  wire \oData[0]_INST_0_i_1_n_0 ;
  wire \oData[0]_INST_0_i_2_n_0 ;
  wire \oData[0]_INST_0_i_3_n_0 ;
  wire \oData[1]_INST_0_i_1_n_0 ;
  wire \oData[1]_INST_0_i_2_n_0 ;
  wire \oData[1]_INST_0_i_4_n_0 ;
  wire \oData[2]_INST_0_i_1_n_0 ;
  wire \oData[3]_INST_0_i_1_n_0 ;
  wire \oData[3]_INST_0_i_2_n_0 ;
  wire p_14_in;
  wire [4:0]plusOp;
  wire [4:0]temp;
  wire \temp_reg[0]_i_2_n_0 ;
  wire \temp_reg[0]_i_3_n_0 ;
  wire \temp_reg[0]_i_4_n_0 ;
  wire \temp_reg[0]_i_5_n_0 ;
  wire \temp_reg[1]_i_2_n_0 ;
  wire \temp_reg[1]_i_3_n_0 ;
  wire \temp_reg[1]_i_4_n_0 ;
  wire \temp_reg[1]_i_5_n_0 ;
  wire \temp_reg[2]_i_2_n_0 ;
  wire \temp_reg[3]_i_2_n_0 ;
  wire \temp_reg[4]_i_2_n_0 ;
  wire \temp_reg[4]_i_3_n_0 ;
  wire \temp_reg[4]_i_4_n_0 ;
  wire \temp_reg[4]_i_5_n_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFA0A3A0A0)) 
    \oData[0]_INST_0 
       (.I0(temp[0]),
        .I1(iData[13]),
        .I2(p_14_in),
        .I3(iData[11]),
        .I4(\oData[0]_INST_0_i_1_n_0 ),
        .I5(\oData[0]_INST_0_i_2_n_0 ),
        .O(oData[0]));
  LUT6 #(
    .INIT(64'hFF00FF00FFFFFF54)) 
    \oData[0]_INST_0_i_1 
       (.I0(iData[7]),
        .I1(\oData[0]_INST_0_i_3_n_0 ),
        .I2(iData[6]),
        .I3(iData[10]),
        .I4(iData[8]),
        .I5(iData[9]),
        .O(\oData[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000200030002)) 
    \oData[0]_INST_0_i_2 
       (.I0(iData[14]),
        .I1(iData[17]),
        .I2(iData[16]),
        .I3(iData[15]),
        .I4(iData[12]),
        .I5(iData[13]),
        .O(\oData[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEEFE)) 
    \oData[0]_INST_0_i_3 
       (.I0(iData[4]),
        .I1(iData[2]),
        .I2(iData[0]),
        .I3(iData[1]),
        .I4(iData[3]),
        .I5(iData[5]),
        .O(\oData[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCAAAACCCCAAFA)) 
    \oData[1]_INST_0 
       (.I0(\oData[1]_INST_0_i_1_n_0 ),
        .I1(temp[1]),
        .I2(\oData[1]_INST_0_i_2_n_0 ),
        .I3(iData[11]),
        .I4(p_14_in),
        .I5(iData[12]),
        .O(oData[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \oData[1]_INST_0_i_1 
       (.I0(iData[13]),
        .I1(iData[14]),
        .O(\oData[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF02)) 
    \oData[1]_INST_0_i_2 
       (.I0(\oData[1]_INST_0_i_4_n_0 ),
        .I1(iData[7]),
        .I2(iData[8]),
        .I3(iData[10]),
        .I4(iData[9]),
        .O(\oData[1]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \oData[1]_INST_0_i_3 
       (.I0(iData[17]),
        .I1(iData[16]),
        .I2(iData[15]),
        .O(p_14_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1110)) 
    \oData[1]_INST_0_i_4 
       (.I0(iData[3]),
        .I1(iData[4]),
        .I2(iData[1]),
        .I3(iData[2]),
        .I4(iData[6]),
        .I5(iData[5]),
        .O(\oData[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEFEEEEEEEA)) 
    \oData[2]_INST_0 
       (.I0(\oData[3]_INST_0_i_1_n_0 ),
        .I1(temp[2]),
        .I2(iData[17]),
        .I3(iData[16]),
        .I4(iData[15]),
        .I5(\oData[2]_INST_0_i_1_n_0 ),
        .O(oData[2]));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \oData[2]_INST_0_i_1 
       (.I0(iData[5]),
        .I1(iData[6]),
        .I2(iData[3]),
        .I3(iData[4]),
        .I4(\oData[3]_INST_0_i_2_n_0 ),
        .O(\oData[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAFAFAFAEE)) 
    \oData[3]_INST_0 
       (.I0(\oData[3]_INST_0_i_1_n_0 ),
        .I1(\oData[3]_INST_0_i_2_n_0 ),
        .I2(temp[3]),
        .I3(iData[17]),
        .I4(iData[16]),
        .I5(iData[15]),
        .O(oData[3]));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \oData[3]_INST_0_i_1 
       (.I0(iData[13]),
        .I1(iData[14]),
        .I2(iData[11]),
        .I3(iData[12]),
        .I4(p_14_in),
        .O(\oData[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \oData[3]_INST_0_i_2 
       (.I0(iData[10]),
        .I1(iData[8]),
        .I2(iData[9]),
        .I3(iData[7]),
        .O(\oData[3]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \oData[4]_INST_0 
       (.I0(iData[15]),
        .I1(iData[16]),
        .I2(iData[17]),
        .I3(temp[4]),
        .O(oData[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[0] 
       (.CLR(1'b0),
        .D(plusOp[0]),
        .G(p_14_in),
        .GE(1'b1),
        .Q(temp[0]));
  LUT4 #(
    .INIT(16'hFF10)) 
    \temp_reg[0]_i_1 
       (.I0(iData[30]),
        .I1(iData[31]),
        .I2(iData[29]),
        .I3(\temp_reg[0]_i_2_n_0 ),
        .O(plusOp[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000F4)) 
    \temp_reg[0]_i_2 
       (.I0(iData[22]),
        .I1(\temp_reg[0]_i_3_n_0 ),
        .I2(iData[23]),
        .I3(\temp_reg[0]_i_4_n_0 ),
        .I4(iData[26]),
        .I5(\temp_reg[0]_i_5_n_0 ),
        .O(\temp_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551011)) 
    \temp_reg[0]_i_3 
       (.I0(iData[20]),
        .I1(iData[18]),
        .I2(iData[17]),
        .I3(iData[16]),
        .I4(iData[19]),
        .I5(iData[21]),
        .O(\temp_reg[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp_reg[0]_i_4 
       (.I0(iData[28]),
        .I1(iData[24]),
        .I2(iData[31]),
        .I3(iData[30]),
        .O(\temp_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0100010001010100)) 
    \temp_reg[0]_i_5 
       (.I0(iData[28]),
        .I1(iData[30]),
        .I2(iData[31]),
        .I3(iData[27]),
        .I4(iData[25]),
        .I5(iData[26]),
        .O(\temp_reg[0]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[1] 
       (.CLR(1'b0),
        .D(plusOp[1]),
        .G(p_14_in),
        .GE(1'b1),
        .Q(temp[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1110)) 
    \temp_reg[1]_i_1 
       (.I0(iData[29]),
        .I1(iData[28]),
        .I2(iData[27]),
        .I3(iData[26]),
        .I4(\temp_reg[1]_i_2_n_0 ),
        .I5(\temp_reg[1]_i_3_n_0 ),
        .O(plusOp[1]));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    \temp_reg[1]_i_2 
       (.I0(iData[24]),
        .I1(iData[28]),
        .I2(iData[25]),
        .I3(iData[29]),
        .I4(\temp_reg[1]_i_4_n_0 ),
        .I5(\temp_reg[1]_i_5_n_0 ),
        .O(\temp_reg[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg[1]_i_3 
       (.I0(iData[30]),
        .I1(iData[31]),
        .O(\temp_reg[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg[1]_i_4 
       (.I0(iData[22]),
        .I1(iData[23]),
        .O(\temp_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFF1)) 
    \temp_reg[1]_i_5 
       (.I0(iData[16]),
        .I1(iData[17]),
        .I2(iData[18]),
        .I3(iData[19]),
        .I4(iData[21]),
        .I5(iData[20]),
        .O(\temp_reg[1]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[2] 
       (.CLR(1'b0),
        .D(plusOp[2]),
        .G(p_14_in),
        .GE(1'b1),
        .Q(temp[2]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \temp_reg[2]_i_1 
       (.I0(\temp_reg[2]_i_2_n_0 ),
        .I1(iData[29]),
        .I2(iData[31]),
        .I3(iData[30]),
        .I4(iData[28]),
        .O(plusOp[2]));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    \temp_reg[2]_i_2 
       (.I0(iData[26]),
        .I1(iData[27]),
        .I2(iData[24]),
        .I3(iData[25]),
        .I4(\temp_reg[4]_i_4_n_0 ),
        .I5(\temp_reg[3]_i_2_n_0 ),
        .O(\temp_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[3] 
       (.CLR(1'b0),
        .D(plusOp[3]),
        .G(p_14_in),
        .GE(1'b1),
        .Q(temp[3]));
  LUT5 #(
    .INIT(32'hFFFFEEFE)) 
    \temp_reg[3]_i_1 
       (.I0(iData[26]),
        .I1(iData[27]),
        .I2(\temp_reg[3]_i_2_n_0 ),
        .I3(\temp_reg[4]_i_4_n_0 ),
        .I4(\temp_reg[4]_i_2_n_0 ),
        .O(plusOp[3]));
  LUT4 #(
    .INIT(16'h0001)) 
    \temp_reg[3]_i_2 
       (.I0(iData[19]),
        .I1(iData[18]),
        .I2(iData[17]),
        .I3(iData[16]),
        .O(\temp_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[4] 
       (.CLR(1'b0),
        .D(plusOp[4]),
        .G(p_14_in),
        .GE(1'b1),
        .Q(temp[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \temp_reg[4]_i_1 
       (.I0(\temp_reg[4]_i_2_n_0 ),
        .I1(iData[19]),
        .I2(iData[18]),
        .I3(\temp_reg[4]_i_3_n_0 ),
        .I4(\temp_reg[4]_i_4_n_0 ),
        .I5(\temp_reg[4]_i_5_n_0 ),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \temp_reg[4]_i_2 
       (.I0(iData[29]),
        .I1(iData[25]),
        .I2(iData[30]),
        .I3(iData[31]),
        .I4(iData[24]),
        .I5(iData[28]),
        .O(\temp_reg[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg[4]_i_3 
       (.I0(iData[26]),
        .I1(iData[27]),
        .O(\temp_reg[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp_reg[4]_i_4 
       (.I0(iData[21]),
        .I1(iData[20]),
        .I2(iData[23]),
        .I3(iData[22]),
        .O(\temp_reg[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg[4]_i_5 
       (.I0(iData[16]),
        .I1(iData[17]),
        .O(\temp_reg[4]_i_5_n_0 ));
endmodule

(* INPUTS = "64" *) (* OUTPUTS = "6" *) 
module ThermoDecoderTDL
   (iData,
    oData);
  input [63:0]iData;
  output [5:0]oData;

  wire [63:0]iData;
  wire [5:0]oData;
  wire \oData[0]_INST_0_i_1_n_0 ;
  wire \oData[0]_INST_0_i_2_n_0 ;
  wire \oData[0]_INST_0_i_3_n_0 ;
  wire \oData[0]_INST_0_i_4_n_0 ;
  wire \oData[0]_INST_0_i_5_n_0 ;
  wire \oData[0]_INST_0_i_6_n_0 ;
  wire \oData[0]_INST_0_i_7_n_0 ;
  wire \oData[0]_INST_0_i_8_n_0 ;
  wire \oData[0]_INST_0_i_9_n_0 ;
  wire \oData[1]_INST_0_i_10_n_0 ;
  wire \oData[1]_INST_0_i_11_n_0 ;
  wire \oData[1]_INST_0_i_1_n_0 ;
  wire \oData[1]_INST_0_i_2_n_0 ;
  wire \oData[1]_INST_0_i_3_n_0 ;
  wire \oData[1]_INST_0_i_4_n_0 ;
  wire \oData[1]_INST_0_i_5_n_0 ;
  wire \oData[1]_INST_0_i_6_n_0 ;
  wire \oData[1]_INST_0_i_7_n_0 ;
  wire \oData[1]_INST_0_i_8_n_0 ;
  wire \oData[1]_INST_0_i_9_n_0 ;
  wire \oData[2]_INST_0_i_1_n_0 ;
  wire \oData[2]_INST_0_i_2_n_0 ;
  wire \oData[2]_INST_0_i_3_n_0 ;
  wire \oData[2]_INST_0_i_4_n_0 ;
  wire \oData[2]_INST_0_i_5_n_0 ;
  wire \oData[3]_INST_0_i_1_n_0 ;
  wire \oData[3]_INST_0_i_2_n_0 ;
  wire \oData[4]_INST_0_i_1_n_0 ;
  wire \oData[4]_INST_0_i_2_n_0 ;
  wire \oData[4]_INST_0_i_3_n_0 ;
  wire p_30_in;
  wire [5:0]plusOp;
  wire [5:0]temp;
  wire \temp_reg[0]_i_2_n_0 ;
  wire \temp_reg[0]_i_3_n_0 ;
  wire \temp_reg[0]_i_4_n_0 ;
  wire \temp_reg[0]_i_5_n_0 ;
  wire \temp_reg[0]_i_6_n_0 ;
  wire \temp_reg[0]_i_7_n_0 ;
  wire \temp_reg[0]_i_8_n_0 ;
  wire \temp_reg[1]_i_2_n_0 ;
  wire \temp_reg[1]_i_3_n_0 ;
  wire \temp_reg[1]_i_4_n_0 ;
  wire \temp_reg[1]_i_5_n_0 ;
  wire \temp_reg[1]_i_6_n_0 ;
  wire \temp_reg[1]_i_7_n_0 ;
  wire \temp_reg[1]_i_8_n_0 ;
  wire \temp_reg[1]_i_9_n_0 ;
  wire \temp_reg[2]_i_2_n_0 ;
  wire \temp_reg[2]_i_3_n_0 ;
  wire \temp_reg[2]_i_4_n_0 ;
  wire \temp_reg[2]_i_5_n_0 ;
  wire \temp_reg[2]_i_6_n_0 ;
  wire \temp_reg[2]_i_7_n_0 ;
  wire \temp_reg[3]_i_2_n_0 ;
  wire \temp_reg[3]_i_3_n_0 ;
  wire \temp_reg[4]_i_2_n_0 ;
  wire \temp_reg[4]_i_3_n_0 ;
  wire \temp_reg[4]_i_4_n_0 ;
  wire \temp_reg[4]_i_5_n_0 ;
  wire \temp_reg[5]_i_2_n_0 ;
  wire \temp_reg[5]_i_3_n_0 ;
  wire \temp_reg[5]_i_4_n_0 ;
  wire \temp_reg[5]_i_5_n_0 ;
  wire \temp_reg[5]_i_6_n_0 ;
  wire \temp_reg[5]_i_7_n_0 ;
  wire \temp_reg[5]_i_8_n_0 ;

  LUT5 #(
    .INIT(32'hFFFFFF40)) 
    \oData[0]_INST_0 
       (.I0(\oData[0]_INST_0_i_1_n_0 ),
        .I1(\oData[0]_INST_0_i_2_n_0 ),
        .I2(\oData[0]_INST_0_i_3_n_0 ),
        .I3(\oData[0]_INST_0_i_4_n_0 ),
        .I4(\oData[0]_INST_0_i_5_n_0 ),
        .O(oData[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \oData[0]_INST_0_i_1 
       (.I0(iData[17]),
        .I1(iData[15]),
        .I2(iData[21]),
        .I3(iData[19]),
        .O(\oData[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \oData[0]_INST_0_i_2 
       (.I0(iData[25]),
        .I1(p_30_in),
        .I2(iData[23]),
        .I3(iData[29]),
        .I4(iData[27]),
        .O(\oData[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF5510)) 
    \oData[0]_INST_0_i_3 
       (.I0(iData[13]),
        .I1(iData[11]),
        .I2(\oData[0]_INST_0_i_6_n_0 ),
        .I3(iData[12]),
        .I4(iData[14]),
        .O(\oData[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFACAFACAFAFAFAC)) 
    \oData[0]_INST_0_i_4 
       (.I0(temp[0]),
        .I1(\oData[0]_INST_0_i_7_n_0 ),
        .I2(p_30_in),
        .I3(iData[30]),
        .I4(iData[28]),
        .I5(iData[29]),
        .O(\oData[0]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF00F400)) 
    \oData[0]_INST_0_i_5 
       (.I0(iData[21]),
        .I1(iData[20]),
        .I2(\oData[0]_INST_0_i_8_n_0 ),
        .I3(\oData[0]_INST_0_i_2_n_0 ),
        .I4(iData[22]),
        .O(\oData[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551110)) 
    \oData[0]_INST_0_i_6 
       (.I0(iData[9]),
        .I1(iData[7]),
        .I2(\oData[0]_INST_0_i_9_n_0 ),
        .I3(iData[6]),
        .I4(iData[8]),
        .I5(iData[10]),
        .O(\oData[0]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000000AE)) 
    \oData[0]_INST_0_i_7 
       (.I0(iData[26]),
        .I1(iData[24]),
        .I2(iData[25]),
        .I3(iData[29]),
        .I4(iData[27]),
        .O(\oData[0]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000000AE)) 
    \oData[0]_INST_0_i_8 
       (.I0(iData[18]),
        .I1(iData[16]),
        .I2(iData[17]),
        .I3(iData[21]),
        .I4(iData[19]),
        .O(\oData[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEEFE)) 
    \oData[0]_INST_0_i_9 
       (.I0(iData[4]),
        .I1(iData[2]),
        .I2(iData[0]),
        .I3(iData[1]),
        .I4(iData[3]),
        .I5(iData[5]),
        .O(\oData[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAA8)) 
    \oData[1]_INST_0 
       (.I0(\oData[1]_INST_0_i_1_n_0 ),
        .I1(iData[21]),
        .I2(iData[22]),
        .I3(\oData[1]_INST_0_i_2_n_0 ),
        .I4(\oData[1]_INST_0_i_3_n_0 ),
        .I5(\oData[1]_INST_0_i_4_n_0 ),
        .O(oData[1]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \oData[1]_INST_0_i_1 
       (.I0(iData[27]),
        .I1(iData[24]),
        .I2(iData[28]),
        .I3(iData[23]),
        .I4(p_30_in),
        .O(\oData[1]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \oData[1]_INST_0_i_10 
       (.I0(iData[9]),
        .I1(iData[10]),
        .O(\oData[1]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \oData[1]_INST_0_i_11 
       (.I0(iData[13]),
        .I1(iData[14]),
        .O(\oData[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h1010101110101010)) 
    \oData[1]_INST_0_i_2 
       (.I0(iData[20]),
        .I1(iData[19]),
        .I2(\oData[1]_INST_0_i_5_n_0 ),
        .I3(iData[16]),
        .I4(iData[15]),
        .I5(\oData[1]_INST_0_i_6_n_0 ),
        .O(\oData[1]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \oData[1]_INST_0_i_3 
       (.I0(iData[31]),
        .I1(iData[32]),
        .I2(iData[33]),
        .I3(temp[1]),
        .O(\oData[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000FF02)) 
    \oData[1]_INST_0_i_4 
       (.I0(\oData[1]_INST_0_i_7_n_0 ),
        .I1(iData[27]),
        .I2(iData[28]),
        .I3(iData[30]),
        .I4(p_30_in),
        .I5(iData[29]),
        .O(\oData[1]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \oData[1]_INST_0_i_5 
       (.I0(iData[17]),
        .I1(iData[18]),
        .O(\oData[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55550100)) 
    \oData[1]_INST_0_i_6 
       (.I0(\oData[1]_INST_0_i_8_n_0 ),
        .I1(iData[7]),
        .I2(iData[8]),
        .I3(\oData[1]_INST_0_i_9_n_0 ),
        .I4(\oData[1]_INST_0_i_10_n_0 ),
        .I5(\oData[1]_INST_0_i_11_n_0 ),
        .O(\oData[1]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \oData[1]_INST_0_i_7 
       (.I0(iData[25]),
        .I1(iData[26]),
        .O(\oData[1]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \oData[1]_INST_0_i_8 
       (.I0(iData[11]),
        .I1(iData[12]),
        .O(\oData[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1110)) 
    \oData[1]_INST_0_i_9 
       (.I0(iData[3]),
        .I1(iData[4]),
        .I2(iData[1]),
        .I3(iData[2]),
        .I4(iData[6]),
        .I5(iData[5]),
        .O(\oData[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAC0C0FFEA)) 
    \oData[2]_INST_0 
       (.I0(\oData[2]_INST_0_i_1_n_0 ),
        .I1(\oData[2]_INST_0_i_2_n_0 ),
        .I2(\oData[2]_INST_0_i_3_n_0 ),
        .I3(iData[28]),
        .I4(p_30_in),
        .I5(temp[2]),
        .O(oData[2]));
  LUT3 #(
    .INIT(8'hFE)) 
    \oData[2]_INST_0_i_1 
       (.I0(iData[29]),
        .I1(iData[27]),
        .I2(iData[30]),
        .O(\oData[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000002)) 
    \oData[2]_INST_0_i_2 
       (.I0(\oData[2]_INST_0_i_4_n_0 ),
        .I1(iData[18]),
        .I2(iData[16]),
        .I3(iData[17]),
        .I4(iData[15]),
        .I5(\oData[2]_INST_0_i_5_n_0 ),
        .O(\oData[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \oData[2]_INST_0_i_3 
       (.I0(iData[26]),
        .I1(iData[24]),
        .I2(iData[25]),
        .I3(p_30_in),
        .I4(iData[23]),
        .O(\oData[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555554)) 
    \oData[2]_INST_0_i_4 
       (.I0(\oData[3]_INST_0_i_2_n_0 ),
        .I1(iData[4]),
        .I2(iData[3]),
        .I3(iData[6]),
        .I4(iData[5]),
        .I5(\oData[3]_INST_0_i_1_n_0 ),
        .O(\oData[2]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \oData[2]_INST_0_i_5 
       (.I0(iData[22]),
        .I1(iData[20]),
        .I2(iData[21]),
        .I3(iData[19]),
        .O(\oData[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAABBBABBBA)) 
    \oData[3]_INST_0 
       (.I0(\oData[4]_INST_0_i_1_n_0 ),
        .I1(\oData[4]_INST_0_i_2_n_0 ),
        .I2(\oData[3]_INST_0_i_1_n_0 ),
        .I3(\oData[3]_INST_0_i_2_n_0 ),
        .I4(temp[3]),
        .I5(p_30_in),
        .O(oData[3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \oData[3]_INST_0_i_1 
       (.I0(iData[12]),
        .I1(iData[11]),
        .I2(iData[14]),
        .I3(iData[13]),
        .O(\oData[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \oData[3]_INST_0_i_2 
       (.I0(iData[8]),
        .I1(iData[7]),
        .I2(iData[10]),
        .I3(iData[9]),
        .O(\oData[3]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \oData[3]_INST_0_i_3 
       (.I0(iData[33]),
        .I1(iData[32]),
        .I2(iData[31]),
        .O(p_30_in));
  LUT6 #(
    .INIT(64'hFAFAFAFAFAFAFAEE)) 
    \oData[4]_INST_0 
       (.I0(\oData[4]_INST_0_i_1_n_0 ),
        .I1(\oData[4]_INST_0_i_2_n_0 ),
        .I2(temp[4]),
        .I3(iData[33]),
        .I4(iData[32]),
        .I5(iData[31]),
        .O(oData[4]));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \oData[4]_INST_0_i_1 
       (.I0(iData[28]),
        .I1(iData[24]),
        .I2(iData[23]),
        .I3(\oData[4]_INST_0_i_3_n_0 ),
        .I4(p_30_in),
        .O(\oData[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \oData[4]_INST_0_i_2 
       (.I0(iData[20]),
        .I1(iData[22]),
        .I2(iData[16]),
        .I3(iData[18]),
        .I4(\oData[0]_INST_0_i_1_n_0 ),
        .O(\oData[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \oData[4]_INST_0_i_3 
       (.I0(iData[30]),
        .I1(iData[27]),
        .I2(iData[29]),
        .I3(iData[26]),
        .I4(iData[25]),
        .O(\oData[4]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \oData[5]_INST_0 
       (.I0(iData[31]),
        .I1(iData[32]),
        .I2(iData[33]),
        .I3(temp[5]),
        .O(oData[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[0] 
       (.CLR(1'b0),
        .D(plusOp[0]),
        .G(p_30_in),
        .GE(1'b1),
        .Q(temp[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1000)) 
    \temp_reg[0]_i_1 
       (.I0(\temp_reg[2]_i_5_n_0 ),
        .I1(iData[58]),
        .I2(\temp_reg[0]_i_2_n_0 ),
        .I3(\temp_reg[0]_i_3_n_0 ),
        .I4(\temp_reg[0]_i_4_n_0 ),
        .I5(\temp_reg[0]_i_5_n_0 ),
        .O(plusOp[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \temp_reg[0]_i_2 
       (.I0(iData[54]),
        .I1(iData[50]),
        .I2(iData[56]),
        .I3(iData[60]),
        .I4(iData[48]),
        .I5(iData[52]),
        .O(\temp_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551110)) 
    \temp_reg[0]_i_3 
       (.I0(iData[46]),
        .I1(iData[44]),
        .I2(\temp_reg[0]_i_6_n_0 ),
        .I3(iData[43]),
        .I4(iData[45]),
        .I5(iData[47]),
        .O(\temp_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C0C0C0E0F0E0E)) 
    \temp_reg[0]_i_4 
       (.I0(iData[59]),
        .I1(iData[61]),
        .I2(\temp_reg[2]_i_5_n_0 ),
        .I3(iData[58]),
        .I4(iData[57]),
        .I5(iData[60]),
        .O(\temp_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    \temp_reg[0]_i_5 
       (.I0(iData[56]),
        .I1(iData[60]),
        .I2(\temp_reg[2]_i_5_n_0 ),
        .I3(iData[58]),
        .I4(iData[55]),
        .I5(\temp_reg[0]_i_7_n_0 ),
        .O(\temp_reg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEEFE)) 
    \temp_reg[0]_i_6 
       (.I0(iData[41]),
        .I1(iData[39]),
        .I2(\temp_reg[0]_i_8_n_0 ),
        .I3(iData[38]),
        .I4(iData[40]),
        .I5(iData[42]),
        .O(\temp_reg[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEEFE)) 
    \temp_reg[0]_i_7 
       (.I0(iData[53]),
        .I1(iData[51]),
        .I2(iData[49]),
        .I3(iData[50]),
        .I4(iData[52]),
        .I5(iData[54]),
        .O(\temp_reg[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55551011)) 
    \temp_reg[0]_i_8 
       (.I0(iData[36]),
        .I1(iData[34]),
        .I2(iData[33]),
        .I3(iData[32]),
        .I4(iData[35]),
        .I5(iData[37]),
        .O(\temp_reg[0]_i_8_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[1] 
       (.CLR(1'b0),
        .D(plusOp[1]),
        .G(p_30_in),
        .GE(1'b1),
        .Q(temp[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEFE)) 
    \temp_reg[1]_i_1 
       (.I0(\temp_reg[2]_i_5_n_0 ),
        .I1(\temp_reg[1]_i_2_n_0 ),
        .I2(\temp_reg[1]_i_3_n_0 ),
        .I3(iData[60]),
        .I4(iData[61]),
        .I5(\temp_reg[1]_i_4_n_0 ),
        .O(plusOp[1]));
  LUT5 #(
    .INIT(32'h00001110)) 
    \temp_reg[1]_i_2 
       (.I0(iData[52]),
        .I1(iData[53]),
        .I2(iData[50]),
        .I3(iData[51]),
        .I4(\temp_reg[3]_i_2_n_0 ),
        .O(\temp_reg[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg[1]_i_3 
       (.I0(iData[58]),
        .I1(iData[59]),
        .O(\temp_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFFFF00FF10)) 
    \temp_reg[1]_i_4 
       (.I0(iData[44]),
        .I1(iData[45]),
        .I2(\temp_reg[1]_i_5_n_0 ),
        .I3(\temp_reg[1]_i_6_n_0 ),
        .I4(\temp_reg[4]_i_4_n_0 ),
        .I5(\temp_reg[1]_i_7_n_0 ),
        .O(\temp_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11111110)) 
    \temp_reg[1]_i_5 
       (.I0(iData[40]),
        .I1(iData[41]),
        .I2(\temp_reg[1]_i_8_n_0 ),
        .I3(iData[39]),
        .I4(iData[38]),
        .I5(\temp_reg[1]_i_9_n_0 ),
        .O(\temp_reg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000000E)) 
    \temp_reg[1]_i_6 
       (.I0(iData[55]),
        .I1(iData[54]),
        .I2(iData[56]),
        .I3(iData[60]),
        .I4(iData[57]),
        .I5(iData[61]),
        .O(\temp_reg[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg[1]_i_7 
       (.I0(iData[46]),
        .I1(iData[47]),
        .O(\temp_reg[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFF1)) 
    \temp_reg[1]_i_8 
       (.I0(iData[32]),
        .I1(iData[33]),
        .I2(iData[34]),
        .I3(iData[35]),
        .I4(iData[37]),
        .I5(iData[36]),
        .O(\temp_reg[1]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg[1]_i_9 
       (.I0(iData[42]),
        .I1(iData[43]),
        .O(\temp_reg[1]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[2] 
       (.CLR(1'b0),
        .D(plusOp[2]),
        .G(p_30_in),
        .GE(1'b1),
        .Q(temp[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
    \temp_reg[2]_i_1 
       (.I0(\temp_reg[2]_i_2_n_0 ),
        .I1(\temp_reg[2]_i_3_n_0 ),
        .I2(\temp_reg[2]_i_4_n_0 ),
        .I3(iData[61]),
        .I4(\temp_reg[2]_i_5_n_0 ),
        .I5(iData[60]),
        .O(plusOp[2]));
  LUT4 #(
    .INIT(16'h0001)) 
    \temp_reg[2]_i_2 
       (.I0(iData[57]),
        .I1(iData[56]),
        .I2(iData[59]),
        .I3(iData[58]),
        .O(\temp_reg[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp_reg[2]_i_3 
       (.I0(iData[53]),
        .I1(iData[52]),
        .I2(iData[55]),
        .I3(iData[54]),
        .O(\temp_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    \temp_reg[2]_i_4 
       (.I0(iData[50]),
        .I1(iData[51]),
        .I2(iData[48]),
        .I3(iData[49]),
        .I4(\temp_reg[5]_i_8_n_0 ),
        .I5(\temp_reg[2]_i_6_n_0 ),
        .O(\temp_reg[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg[2]_i_5 
       (.I0(iData[62]),
        .I1(iData[63]),
        .O(\temp_reg[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAB)) 
    \temp_reg[2]_i_6 
       (.I0(\temp_reg[5]_i_5_n_0 ),
        .I1(iData[35]),
        .I2(iData[34]),
        .I3(iData[33]),
        .I4(iData[32]),
        .I5(\temp_reg[2]_i_7_n_0 ),
        .O(\temp_reg[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp_reg[2]_i_7 
       (.I0(iData[41]),
        .I1(iData[40]),
        .I2(iData[43]),
        .I3(iData[42]),
        .O(\temp_reg[2]_i_7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[3] 
       (.CLR(1'b0),
        .D(plusOp[3]),
        .G(p_30_in),
        .GE(1'b1),
        .Q(temp[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFE)) 
    \temp_reg[3]_i_1 
       (.I0(\temp_reg[3]_i_2_n_0 ),
        .I1(\temp_reg[4]_i_3_n_0 ),
        .I2(iData[59]),
        .I3(\temp_reg[4]_i_2_n_0 ),
        .I4(\temp_reg[5]_i_3_n_0 ),
        .I5(\temp_reg[3]_i_3_n_0 ),
        .O(plusOp[3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp_reg[3]_i_2 
       (.I0(iData[61]),
        .I1(iData[57]),
        .I2(iData[60]),
        .I3(iData[56]),
        .O(\temp_reg[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \temp_reg[3]_i_3 
       (.I0(iData[48]),
        .I1(iData[52]),
        .I2(iData[49]),
        .I3(iData[53]),
        .I4(\temp_reg[5]_i_4_n_0 ),
        .O(\temp_reg[3]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[4] 
       (.CLR(1'b0),
        .D(plusOp[4]),
        .G(p_30_in),
        .GE(1'b1),
        .Q(temp[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF2)) 
    \temp_reg[4]_i_1 
       (.I0(\temp_reg[4]_i_2_n_0 ),
        .I1(\temp_reg[5]_i_3_n_0 ),
        .I2(iData[59]),
        .I3(\temp_reg[4]_i_3_n_0 ),
        .I4(\temp_reg[4]_i_4_n_0 ),
        .I5(\temp_reg[5]_i_4_n_0 ),
        .O(plusOp[4]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \temp_reg[4]_i_2 
       (.I0(iData[32]),
        .I1(iData[33]),
        .I2(iData[34]),
        .I3(iData[35]),
        .I4(\temp_reg[5]_i_5_n_0 ),
        .O(\temp_reg[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \temp_reg[4]_i_3 
       (.I0(iData[63]),
        .I1(iData[62]),
        .I2(iData[58]),
        .O(\temp_reg[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \temp_reg[4]_i_4 
       (.I0(iData[49]),
        .I1(iData[53]),
        .I2(iData[57]),
        .I3(iData[61]),
        .I4(\temp_reg[4]_i_5_n_0 ),
        .O(\temp_reg[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp_reg[4]_i_5 
       (.I0(iData[52]),
        .I1(iData[48]),
        .I2(iData[60]),
        .I3(iData[56]),
        .O(\temp_reg[4]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_reg[5] 
       (.CLR(1'b0),
        .D(plusOp[5]),
        .G(p_30_in),
        .GE(1'b1),
        .Q(temp[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \temp_reg[5]_i_1 
       (.I0(\temp_reg[5]_i_2_n_0 ),
        .I1(\temp_reg[5]_i_3_n_0 ),
        .I2(\temp_reg[5]_i_4_n_0 ),
        .I3(\temp_reg[5]_i_5_n_0 ),
        .I4(\temp_reg[5]_i_6_n_0 ),
        .I5(\temp_reg[5]_i_7_n_0 ),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg[5]_i_2 
       (.I0(iData[34]),
        .I1(iData[35]),
        .O(\temp_reg[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \temp_reg[5]_i_3 
       (.I0(iData[42]),
        .I1(iData[43]),
        .I2(iData[40]),
        .I3(iData[41]),
        .I4(\temp_reg[5]_i_8_n_0 ),
        .O(\temp_reg[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp_reg[5]_i_4 
       (.I0(iData[55]),
        .I1(iData[54]),
        .I2(iData[51]),
        .I3(iData[50]),
        .O(\temp_reg[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp_reg[5]_i_5 
       (.I0(iData[37]),
        .I1(iData[36]),
        .I2(iData[39]),
        .I3(iData[38]),
        .O(\temp_reg[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \temp_reg[5]_i_6 
       (.I0(iData[59]),
        .I1(iData[63]),
        .I2(iData[62]),
        .I3(iData[58]),
        .I4(\temp_reg[4]_i_4_n_0 ),
        .O(\temp_reg[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_reg[5]_i_7 
       (.I0(iData[32]),
        .I1(iData[33]),
        .O(\temp_reg[5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \temp_reg[5]_i_8 
       (.I0(iData[45]),
        .I1(iData[44]),
        .I2(iData[47]),
        .I3(iData[46]),
        .O(\temp_reg[5]_i_8_n_0 ));
endmodule

(* LENGTH = "32" *) 
module VDL
   (iLatch,
    iLut,
    iReset,
    oData,
    oVDL);
  input iLatch;
  (* gated_clock = "true" *) input iLut;
  input iReset;
  output [31:0]oData;
  output [61:0]oVDL;

  wire iLatch;
  (* GATED_CLOCK *) wire iLut;
  wire iReset;
  wire luts_31;
  (* DONT_TOUCH *) wire [61:0]merged;
  wire [31:0]oData;

  assign oVDL[61:0] = merged;
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[0].LUT_init.cmp_1LUT 
       (.I0(iLut),
        .I1(iLut),
        .O(merged[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[10].LUT_next.cmp_1LUT 
       (.I0(merged[18]),
        .I1(merged[18]),
        .O(merged[20]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[11].LUT_next.cmp_1LUT 
       (.I0(merged[20]),
        .I1(merged[20]),
        .O(merged[22]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[12].LUT_next.cmp_1LUT 
       (.I0(merged[22]),
        .I1(merged[22]),
        .O(merged[24]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[13].LUT_next.cmp_1LUT 
       (.I0(merged[24]),
        .I1(merged[24]),
        .O(merged[26]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[14].LUT_next.cmp_1LUT 
       (.I0(merged[26]),
        .I1(merged[26]),
        .O(merged[28]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[15].LUT_next.cmp_1LUT 
       (.I0(merged[28]),
        .I1(merged[28]),
        .O(merged[30]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[16].LUT_next.cmp_1LUT 
       (.I0(merged[30]),
        .I1(merged[30]),
        .O(merged[32]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[17].LUT_next.cmp_1LUT 
       (.I0(merged[32]),
        .I1(merged[32]),
        .O(merged[34]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[18].LUT_next.cmp_1LUT 
       (.I0(merged[34]),
        .I1(merged[34]),
        .O(merged[36]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[19].LUT_next.cmp_1LUT 
       (.I0(merged[36]),
        .I1(merged[36]),
        .O(merged[38]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[1].LUT_next.cmp_1LUT 
       (.I0(merged[0]),
        .I1(merged[0]),
        .O(merged[2]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[20].LUT_next.cmp_1LUT 
       (.I0(merged[38]),
        .I1(merged[38]),
        .O(merged[40]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[21].LUT_next.cmp_1LUT 
       (.I0(merged[40]),
        .I1(merged[40]),
        .O(merged[42]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[22].LUT_next.cmp_1LUT 
       (.I0(merged[42]),
        .I1(merged[42]),
        .O(merged[44]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[23].LUT_next.cmp_1LUT 
       (.I0(merged[44]),
        .I1(merged[44]),
        .O(merged[46]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[24].LUT_next.cmp_1LUT 
       (.I0(merged[46]),
        .I1(merged[46]),
        .O(merged[48]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[25].LUT_next.cmp_1LUT 
       (.I0(merged[48]),
        .I1(merged[48]),
        .O(merged[50]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[26].LUT_next.cmp_1LUT 
       (.I0(merged[50]),
        .I1(merged[50]),
        .O(merged[52]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[27].LUT_next.cmp_1LUT 
       (.I0(merged[52]),
        .I1(merged[52]),
        .O(merged[54]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[28].LUT_next.cmp_1LUT 
       (.I0(merged[54]),
        .I1(merged[54]),
        .O(merged[56]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[29].LUT_next.cmp_1LUT 
       (.I0(merged[56]),
        .I1(merged[56]),
        .O(merged[58]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[2].LUT_next.cmp_1LUT 
       (.I0(merged[2]),
        .I1(merged[2]),
        .O(merged[4]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[30].LUT_next.cmp_1LUT 
       (.I0(merged[58]),
        .I1(merged[58]),
        .O(merged[60]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[31].LUT_next.cmp_1LUT 
       (.I0(merged[60]),
        .I1(merged[60]),
        .O(luts_31));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[3].LUT_next.cmp_1LUT 
       (.I0(merged[4]),
        .I1(merged[4]),
        .O(merged[6]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[4].LUT_next.cmp_1LUT 
       (.I0(merged[6]),
        .I1(merged[6]),
        .O(merged[8]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[5].LUT_next.cmp_1LUT 
       (.I0(merged[8]),
        .I1(merged[8]),
        .O(merged[10]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[6].LUT_next.cmp_1LUT 
       (.I0(merged[10]),
        .I1(merged[10]),
        .O(merged[12]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[7].LUT_next.cmp_1LUT 
       (.I0(merged[12]),
        .I1(merged[12]),
        .O(merged[14]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[8].LUT_next.cmp_1LUT 
       (.I0(merged[14]),
        .I1(merged[14]),
        .O(merged[16]));
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DL[9].LUT_next.cmp_1LUT 
       (.I0(merged[16]),
        .I1(merged[16]),
        .O(merged[18]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[0].LATCH_init.LATCH_first 
       (.CLR(iReset),
        .D(iLatch),
        .G(merged[0]),
        .GE(1'b1),
        .Q(oData[0]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[10].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[9]),
        .G(merged[20]),
        .GE(1'b1),
        .Q(oData[10]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[11].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[10]),
        .G(merged[22]),
        .GE(1'b1),
        .Q(oData[11]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[12].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[11]),
        .G(merged[24]),
        .GE(1'b1),
        .Q(oData[12]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[13].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[12]),
        .G(merged[26]),
        .GE(1'b1),
        .Q(oData[13]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[14].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[13]),
        .G(merged[28]),
        .GE(1'b1),
        .Q(oData[14]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[15].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[14]),
        .G(merged[30]),
        .GE(1'b1),
        .Q(oData[15]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[16].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[15]),
        .G(merged[32]),
        .GE(1'b1),
        .Q(oData[16]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[17].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[16]),
        .G(merged[34]),
        .GE(1'b1),
        .Q(oData[17]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[18].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[17]),
        .G(merged[36]),
        .GE(1'b1),
        .Q(oData[18]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[19].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[18]),
        .G(merged[38]),
        .GE(1'b1),
        .Q(oData[19]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[1].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[0]),
        .G(merged[2]),
        .GE(1'b1),
        .Q(oData[1]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[20].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[19]),
        .G(merged[40]),
        .GE(1'b1),
        .Q(oData[20]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[21].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[20]),
        .G(merged[42]),
        .GE(1'b1),
        .Q(oData[21]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[22].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[21]),
        .G(merged[44]),
        .GE(1'b1),
        .Q(oData[22]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[23].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[22]),
        .G(merged[46]),
        .GE(1'b1),
        .Q(oData[23]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[24].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[23]),
        .G(merged[48]),
        .GE(1'b1),
        .Q(oData[24]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[25].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[24]),
        .G(merged[50]),
        .GE(1'b1),
        .Q(oData[25]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[26].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[25]),
        .G(merged[52]),
        .GE(1'b1),
        .Q(oData[26]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[27].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[26]),
        .G(merged[54]),
        .GE(1'b1),
        .Q(oData[27]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[28].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[27]),
        .G(merged[56]),
        .GE(1'b1),
        .Q(oData[28]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[29].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[28]),
        .G(merged[58]),
        .GE(1'b1),
        .Q(oData[29]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[2].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[1]),
        .G(merged[4]),
        .GE(1'b1),
        .Q(oData[2]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[30].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[29]),
        .G(merged[60]),
        .GE(1'b1),
        .Q(oData[30]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[31].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[30]),
        .G(luts_31),
        .GE(1'b1),
        .Q(oData[31]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[3].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[2]),
        .G(merged[6]),
        .GE(1'b1),
        .Q(oData[3]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[4].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[3]),
        .G(merged[8]),
        .GE(1'b1),
        .Q(oData[4]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[5].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[4]),
        .G(merged[10]),
        .GE(1'b1),
        .Q(oData[5]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[6].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[5]),
        .G(merged[12]),
        .GE(1'b1),
        .Q(oData[6]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[7].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[6]),
        .G(merged[14]),
        .GE(1'b1),
        .Q(oData[7]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[8].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[7]),
        .G(merged[16]),
        .GE(1'b1),
        .Q(oData[8]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[9].LATCH_next.LATCH 
       (.CLR(iReset),
        .D(oData[8]),
        .G(merged[18]),
        .GE(1'b1),
        .Q(oData[9]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_1
       (.I0(oData[30]),
        .I1(oData[31]),
        .O(merged[61]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_10
       (.I0(oData[21]),
        .I1(oData[22]),
        .O(merged[43]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_11
       (.I0(oData[20]),
        .I1(oData[21]),
        .O(merged[41]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_12
       (.I0(oData[19]),
        .I1(oData[20]),
        .O(merged[39]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_13
       (.I0(oData[18]),
        .I1(oData[19]),
        .O(merged[37]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_14
       (.I0(oData[17]),
        .I1(oData[18]),
        .O(merged[35]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_15
       (.I0(oData[16]),
        .I1(oData[17]),
        .O(merged[33]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_16
       (.I0(oData[15]),
        .I1(oData[16]),
        .O(merged[31]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_17
       (.I0(oData[14]),
        .I1(oData[15]),
        .O(merged[29]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_18
       (.I0(oData[13]),
        .I1(oData[14]),
        .O(merged[27]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_19
       (.I0(oData[12]),
        .I1(oData[13]),
        .O(merged[25]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_2
       (.I0(oData[29]),
        .I1(oData[30]),
        .O(merged[59]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_20
       (.I0(oData[11]),
        .I1(oData[12]),
        .O(merged[23]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_21
       (.I0(oData[10]),
        .I1(oData[11]),
        .O(merged[21]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_22
       (.I0(oData[9]),
        .I1(oData[10]),
        .O(merged[19]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_23
       (.I0(oData[8]),
        .I1(oData[9]),
        .O(merged[17]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_24
       (.I0(oData[7]),
        .I1(oData[8]),
        .O(merged[15]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_25
       (.I0(oData[6]),
        .I1(oData[7]),
        .O(merged[13]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_26
       (.I0(oData[5]),
        .I1(oData[6]),
        .O(merged[11]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_27
       (.I0(oData[4]),
        .I1(oData[5]),
        .O(merged[9]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_28
       (.I0(oData[3]),
        .I1(oData[4]),
        .O(merged[7]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_29
       (.I0(oData[2]),
        .I1(oData[3]),
        .O(merged[5]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_3
       (.I0(oData[28]),
        .I1(oData[29]),
        .O(merged[57]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_30
       (.I0(oData[1]),
        .I1(oData[2]),
        .O(merged[3]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_31
       (.I0(oData[0]),
        .I1(oData[1]),
        .O(merged[1]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_4
       (.I0(oData[27]),
        .I1(oData[28]),
        .O(merged[55]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_5
       (.I0(oData[26]),
        .I1(oData[27]),
        .O(merged[53]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_6
       (.I0(oData[25]),
        .I1(oData[26]),
        .O(merged[51]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_7
       (.I0(oData[24]),
        .I1(oData[25]),
        .O(merged[49]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_8
       (.I0(oData[23]),
        .I1(oData[24]),
        .O(merged[47]));
  LUT2 #(
    .INIT(4'h2)) 
    merged_inferred_i_9
       (.I0(oData[22]),
        .I1(oData[23]),
        .O(merged[45]));
endmodule

module clk_wiz_0
   (clk_out1,
    reset,
    locked,
    clk_in1_p,
    clk_in1_n);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;

  wire clk_in1_n;
  wire clk_in1_p;
  wire clk_out1;
  wire reset;
  wire NLW_inst_locked_UNCONNECTED;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1_n(clk_in1_n),
        .clk_in1_p(clk_in1_p),
        .clk_out1(clk_out1),
        .locked(NLW_inst_locked_UNCONNECTED),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    reset,
    locked,
    clk_in1_p,
    clk_in1_n);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;

  wire clk_in1_clk_wiz_0;
  wire clk_in1_n;
  wire clk_in1_p;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufgds
       (.I(clk_in1_p),
        .IB(clk_in1_n),
        .O(clk_in1_clk_wiz_0));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(5.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(5.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(10.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "4" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
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
  wire NLW_i_synth_CE_UNCONNECTED;
  wire NLW_i_synth_SCLR_UNCONNECTED;
  wire NLW_i_synth_SINIT_UNCONNECTED;
  wire NLW_i_synth_SSET_UNCONNECTED;
  wire [3:0]NLW_i_synth_A_UNCONNECTED;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "4" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  LutDelayLine_c_shift_ram_v12_0_10_viv i_synth
       (.A(NLW_i_synth_A_UNCONNECTED[3:0]),
        .CE(NLW_i_synth_CE_UNCONNECTED),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(NLW_i_synth_SCLR_UNCONNECTED),
        .SINIT(NLW_i_synth_SINIT_UNCONNECTED),
        .SSET(NLW_i_synth_SSET_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
jbAfnJ0v1+WyXFyoA4HPEEFIjct7HgnI0mu4TSa25NsNE/pLj2WtLSLh+MgbV27MIMC9UvROBVjP
gqB0QczG1A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iArFgKcNA28U2Eexs8OyquuJbt26oJGHI2dVz82DefbgkIzwBZqRgMwV9QYXm3aSgPselv0tTo5n
g01rsqZEeGqnYZbTBqWQoIg7HHNsAobFWltw26z04KJTen3TN34K5FEB8uoz2RWkigJqGWtmFPf5
0LfPAPn1r0GZJF2V37Y=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Fn+SZPTjAfffsgcrEnynRmIKdcysZiMgAm4t45a80RTQO/upKBokh7+MXzpbDkyg0TPtzn06JI7W
PAM0XFAkpOgjpT4f3CGMfDqNVk15KN4lgWq+YFoni+IwUxQe1pdFYvR6mA9pXmIe2yqiRnhO/VZi
GIL+pupoQnmFpmpCErQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j2RoUfZbcSXmNIzxefei/9VueCswS9iqM6vR0gy30/l0lsabB1PnK8/EGfqhLHWuljQj/btb8BxZ
iJUWbspySxj2874/wZAqKfeErsEKhr35DuI3pSf4rZSOjyLWEaUsgwUy7Z+RaiU8xGRrv01+HBOb
1FaZei3Kf57I3zGcircXpwkHdwkW3h5c/ZNQ1AvaH5okCT1Ca5AH3+b+cLpc+m0TTgWWZuRY4cAc
9r4kxh7LsaspJoAkbkIlkJeWcuzQP2uuUn1THyZB8bz7LwrljiZ4KVd1rMDA7u2kd1vVW/YZNUhk
B7lpBrnHngJ+C8XLe9Ld6pgZaWouuy6YPEn5Uw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pw1TRZ/vl3ANpl2F4u8LQ5ifhzF0xWd/IGtqFEz6kU+lVygFOiabJ0QxeiyiyIQ1polveGf1HnVu
QthLjsqYV+jh8HigpspBEPPrp9iKqON4iNNnTW55BkbEX/8wUAQKcrx3/GaUIyYeXBkM7XXzbMTw
13gppUFc9YfWn2ORjNaHgk6333CMd8CBXXvYs191nisVBSnZRBu26nhpKUPegoovXe6lszRLfcqg
gJJUywmOKg9v1mbPIj9DFIRfJPAZ7gTQ5ICFVApYL+qzyTGl2ZgQNnWms9NSILbKwUyMQ++bepJc
u1fPdlRL55RchnK9cii6NJwsNKLkkaE5yHbZYw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bliYkWBfAu5u7gMOkHFrEDyrD602ES2dC5b2Mp6Ja0IFKckKKXk7Bgw1utw617aNUpPh4s08Ttfx
xRSnsQO0XXdGm7SgNrPaiqIkwg8w5ZjdBFsx/symDCtR2CjTXWcyYeqqRv3BbWZTAQ4qRjPg0B7J
YuVZ53jL2vbNn7z4opAiMZ7C4uXnVveIG8flQoOdhfZBvELa0kSGgz/3DGz4fmoTUz5+MJQlVtQL
7dcffYHAt84qk6zzPtSwshrkJbh5k6Vkc6qYRqqHuix7G1hj0/+oMAd4aZtYIYQKl0R8RXunIuu1
sms1PFkGFS9jsZu1EAtYAzTT8Qvra3RyX5jTSw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
Mgga22BJjfK/VrNqnjQAksg4k9VPPcxycFmodWT6evBp4R3MK0KhlJQNJtrKKD0YM6PWlNCNNMnX
zGK9Td4JRLPEs8lEFdW8RAnAm7vRzc9rqfumQWgWM6MwZyMeXtyA9r75Ui+Us7AH4UNBM8LFjcNc
EJZr5PT7ghQKqd6mV4ALtjX6cacjIoRUvUe9lCxm0emcaMxGq0TNTYwCnGf13icS6/w1PK3Q1yfE
9NEuUk+TG68HpVmp97zTqBekY5lmZigdiu928FVynJWu9lO41Q1iaJ8mVsXZOfLq2f5InKfk5Jbp
45+tpVwTTgVMp91lEMS642jy8CCJ6kC1JECuuw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
dhZ8NR1wUwcdqrfzobgf1NNjhxnsDxDUw215X2Ydg8pL9GtiNeSX1fLrT3L14NDqonjgYn7b62zg
KopxGQMArzTFNXbBz6vbPjRlEpfNq0PdipXa8iLIT5i74UVCNBRV+YW51zpqex92/+26LEC7SsIk
bALrcLk3qKqNu07Gq3xnAM+p/jZW/HowpY7Mq9JZHWDFAVw3WxXYzbjHInhBc7KJ4OZQZ5/+eL8z
PWs5scTcPIBwcTmFc0dALozvCBPNr+XZ07eqi0rG6rJsJuKKd5miuvV/T4XR12bBCo0EM/an4VjW
g6C32Df8FdjGYpGG97CRBY7Kwb0esfCXwJZL8A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4992)
`pragma protect data_block
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
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
