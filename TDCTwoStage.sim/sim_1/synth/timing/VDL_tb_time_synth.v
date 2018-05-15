// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Thu May 10 16:25:08 2018
// Host        : hal running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {/home/arkady/Documents/Vivado
//               Projects/TDCTwoStage/TDCTwoStage.sim/sim_1/synth/timing/VDL_tb_time_synth.v}
// Design      : VDL
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* LENGTH = "8" *) 
(* NotValidForBitStream *)
module VDL
   (iLatch,
    iLut,
    oData,
    outputSim);
  input iLatch;
  input iLut;
  output [7:0]oData;
  output [13:0]outputSim;

  wire iLatch;
  wire iLatch_IBUF;
  wire iLut;
  wire iLut_IBUF;
  wire luts_7;
  (* DONT_TOUCH *) wire [13:0]merged;
  wire [7:0]oData;
  wire [7:0]oData_OBUF;
  (* DONT_TOUCH *) wire [6:0]oNand;
  wire [13:0]outputSim;

initial begin
 $sdf_annotate("VDL_tb_time_synth.sdf",,,,"tool_control");
end
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h0)) 
    \DL[0].LUT_init.cmp_1LUT 
       (.I0(iLut_IBUF),
        .O(merged[1]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h0)) 
    \DL[1].LUT_next.cmp_1LUT 
       (.I0(merged[1]),
        .O(merged[3]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h0)) 
    \DL[2].LUT_next.cmp_1LUT 
       (.I0(merged[3]),
        .O(merged[5]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h0)) 
    \DL[3].LUT_next.cmp_1LUT 
       (.I0(merged[5]),
        .O(merged[7]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h0)) 
    \DL[4].LUT_next.cmp_1LUT 
       (.I0(merged[7]),
        .O(merged[9]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h0)) 
    \DL[5].LUT_next.cmp_1LUT 
       (.I0(merged[9]),
        .O(merged[11]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h0)) 
    \DL[6].LUT_next.cmp_1LUT 
       (.I0(merged[11]),
        .O(merged[13]));
  (* box_type = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h0)) 
    \DL[7].LUT_next.cmp_1LUT 
       (.I0(merged[13]),
        .O(luts_7));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b0)) 
    \LATCH_TAPS[0].LATCH_init.LATCH_first 
       (.CLR(1'b0),
        .D(iLatch_IBUF),
        .G(merged[1]),
        .GE(1'b1),
        .Q(oData_OBUF[0]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[1].LATCH_next.LATCH 
       (.CLR(1'b0),
        .D(oData_OBUF[0]),
        .G(merged[3]),
        .GE(1'b1),
        .Q(oData_OBUF[1]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[2].LATCH_next.LATCH 
       (.CLR(1'b0),
        .D(oData_OBUF[1]),
        .G(merged[5]),
        .GE(1'b1),
        .Q(oData_OBUF[2]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[3].LATCH_next.LATCH 
       (.CLR(1'b0),
        .D(oData_OBUF[2]),
        .G(merged[7]),
        .GE(1'b1),
        .Q(oData_OBUF[3]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[4].LATCH_next.LATCH 
       (.CLR(1'b0),
        .D(oData_OBUF[3]),
        .G(merged[9]),
        .GE(1'b1),
        .Q(oData_OBUF[4]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[5].LATCH_next.LATCH 
       (.CLR(1'b0),
        .D(oData_OBUF[4]),
        .G(merged[11]),
        .GE(1'b1),
        .Q(oData_OBUF[5]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[6].LATCH_next.LATCH 
       (.CLR(1'b0),
        .D(oData_OBUF[5]),
        .G(merged[13]),
        .GE(1'b1),
        .Q(oData_OBUF[6]));
  (* box_type = "PRIMITIVE" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \LATCH_TAPS[7].LATCH_next.LATCH 
       (.CLR(1'b0),
        .D(oData_OBUF[6]),
        .G(luts_7),
        .GE(1'b1),
        .Q(oData_OBUF[7]));
  IBUF iLatch_IBUF_inst
       (.I(iLatch),
        .O(iLatch_IBUF));
  IBUF iLut_IBUF_inst
       (.I(iLut),
        .O(iLut_IBUF));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(oNand[6]),
        .O(merged[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(oNand[5]),
        .O(merged[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(oNand[4]),
        .O(merged[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(oNand[3]),
        .O(merged[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(oNand[2]),
        .O(merged[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(oNand[1]),
        .O(merged[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(oNand[0]),
        .O(merged[0]));
  OBUF \oData_OBUF[0]_inst 
       (.I(oData_OBUF[0]),
        .O(oData[0]));
  OBUF \oData_OBUF[1]_inst 
       (.I(oData_OBUF[1]),
        .O(oData[1]));
  OBUF \oData_OBUF[2]_inst 
       (.I(oData_OBUF[2]),
        .O(oData[2]));
  OBUF \oData_OBUF[3]_inst 
       (.I(oData_OBUF[3]),
        .O(oData[3]));
  OBUF \oData_OBUF[4]_inst 
       (.I(oData_OBUF[4]),
        .O(oData[4]));
  OBUF \oData_OBUF[5]_inst 
       (.I(oData_OBUF[5]),
        .O(oData[5]));
  OBUF \oData_OBUF[6]_inst 
       (.I(oData_OBUF[6]),
        .O(oData[6]));
  OBUF \oData_OBUF[7]_inst 
       (.I(oData_OBUF[7]),
        .O(oData[7]));
  LUT2 #(
    .INIT(4'h2)) 
    oNand_inferred_i_1
       (.I0(oData_OBUF[6]),
        .I1(oData_OBUF[7]),
        .O(oNand[6]));
  LUT2 #(
    .INIT(4'h2)) 
    oNand_inferred_i_2
       (.I0(oData_OBUF[5]),
        .I1(oData_OBUF[6]),
        .O(oNand[5]));
  LUT2 #(
    .INIT(4'h2)) 
    oNand_inferred_i_3
       (.I0(oData_OBUF[4]),
        .I1(oData_OBUF[5]),
        .O(oNand[4]));
  LUT2 #(
    .INIT(4'h2)) 
    oNand_inferred_i_4
       (.I0(oData_OBUF[3]),
        .I1(oData_OBUF[4]),
        .O(oNand[3]));
  LUT2 #(
    .INIT(4'h2)) 
    oNand_inferred_i_5
       (.I0(oData_OBUF[2]),
        .I1(oData_OBUF[3]),
        .O(oNand[2]));
  LUT2 #(
    .INIT(4'h2)) 
    oNand_inferred_i_6
       (.I0(oData_OBUF[1]),
        .I1(oData_OBUF[2]),
        .O(oNand[1]));
  LUT2 #(
    .INIT(4'h2)) 
    oNand_inferred_i_7
       (.I0(oData_OBUF[0]),
        .I1(oData_OBUF[1]),
        .O(oNand[0]));
  OBUF \outputSim_OBUF[0]_inst 
       (.I(merged[0]),
        .O(outputSim[0]));
  OBUF \outputSim_OBUF[10]_inst 
       (.I(merged[10]),
        .O(outputSim[10]));
  OBUF \outputSim_OBUF[11]_inst 
       (.I(merged[11]),
        .O(outputSim[11]));
  OBUF \outputSim_OBUF[12]_inst 
       (.I(merged[12]),
        .O(outputSim[12]));
  OBUF \outputSim_OBUF[13]_inst 
       (.I(merged[13]),
        .O(outputSim[13]));
  OBUF \outputSim_OBUF[1]_inst 
       (.I(merged[1]),
        .O(outputSim[1]));
  OBUF \outputSim_OBUF[2]_inst 
       (.I(merged[2]),
        .O(outputSim[2]));
  OBUF \outputSim_OBUF[3]_inst 
       (.I(merged[3]),
        .O(outputSim[3]));
  OBUF \outputSim_OBUF[4]_inst 
       (.I(merged[4]),
        .O(outputSim[4]));
  OBUF \outputSim_OBUF[5]_inst 
       (.I(merged[5]),
        .O(outputSim[5]));
  OBUF \outputSim_OBUF[6]_inst 
       (.I(merged[6]),
        .O(outputSim[6]));
  OBUF \outputSim_OBUF[7]_inst 
       (.I(merged[7]),
        .O(outputSim[7]));
  OBUF \outputSim_OBUF[8]_inst 
       (.I(merged[8]),
        .O(outputSim[8]));
  OBUF \outputSim_OBUF[9]_inst 
       (.I(merged[9]),
        .O(outputSim[9]));
endmodule
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
