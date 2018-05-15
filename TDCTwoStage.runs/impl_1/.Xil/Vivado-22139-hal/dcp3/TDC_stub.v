// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module TDC(iStart, iStop, iReset, oVDL, oTDL);
  input iStart;
  input iStop;
  input iReset;
  output [4:0]oVDL;
  output [4:0]oTDL;
endmodule
