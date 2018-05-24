-makelib ies/xil_defaultlib -sv \
  "/home/arkady/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/home/arkady/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "/home/arkady/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xbip_utils_v3_0_7 \
  "../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/c_reg_fd_v12_0_3 \
  "../../../ipstatic/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies/c_mux_bit_v12_0_3 \
  "../../../ipstatic/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies/c_shift_ram_v12_0_10 \
  "../../../ipstatic/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../TDCTwoStage.srcs/sources_1/ip/SynchVDL/sim/SynchVDL.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

