vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/xbip_utils_v3_0_7
vlib riviera/c_reg_fd_v12_0_3
vlib riviera/c_mux_bit_v12_0_3
vlib riviera/c_shift_ram_v12_0_10

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap xbip_utils_v3_0_7 riviera/xbip_utils_v3_0_7
vmap c_reg_fd_v12_0_3 riviera/c_reg_fd_v12_0_3
vmap c_mux_bit_v12_0_3 riviera/c_mux_bit_v12_0_3
vmap c_shift_ram_v12_0_10 riviera/c_shift_ram_v12_0_10

vlog -work xil_defaultlib  -sv2k12 \
"/home/arkady/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/arkady/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/home/arkady/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_7 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_3 -93 \
"../../../ipstatic/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work c_mux_bit_v12_0_3 -93 \
"../../../ipstatic/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_10 -93 \
"../../../ipstatic/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../TDCTwoStage.srcs/sources_1/ip/SynchTDL/sim/SynchTDL.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

