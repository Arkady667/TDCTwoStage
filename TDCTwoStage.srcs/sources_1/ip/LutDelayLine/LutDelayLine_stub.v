// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Tue May 22 13:43:11 2018
// Host        : hal running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode synth_stub {/home/arkady/Documents/Vivado
//               Projects/TDCTwoStage/TDCTwoStage.srcs/sources_1/ip/LutDelayLine/LutDelayLine_stub.v}
// Design      : LutDelayLine
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_shift_ram_v12_0_10,Vivado 2017.1" *)
module LutDelayLine(D, CLK, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="D[0:0],CLK,SCLR,Q[0:0]" */;
  input [0:0]D;
  input CLK;
  input SCLR;
  output [0:0]Q;
endmodule
