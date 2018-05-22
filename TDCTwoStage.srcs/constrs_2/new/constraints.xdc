##########################
## PHYSICAL CONSTRAINTS ##
##########################

## Latch negative gate

set_property IS_G_INVERTED 1'b1 [get_cells {VDL_cmp/LATCH_TAPS[*].LATCH_next.LATCH}]
set_property IS_G_INVERTED 1'b1 [get_cells {VDL_cmp/LATCH_TAPS[0].LATCH_init.LATCH_first}]

## Ports

# Uart Tx

# Clock

##Input TI

## USER_SMA_CLOCK_P with 50ohm
#set_property PACKAGE_PIN AJ32 [get_ports iStart]
#set_property IOSTANDARD LVCMOS18 [get_ports iStart]
#
## USER_SMA_CLOCK_N with 50ohm
#set_property PACKAGE_PIN AK32 [get_ports iStop]
#set_property IOSTANDARD LVCMOS18 [get_ports iStop]

# USER_SMA_GPIO
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets iStart_IBUF]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets iStop_IBUF]

set_property PACKAGE_PIN AN31 [get_ports iStart]
set_property IOSTANDARD LVCMOS18 [get_ports iStart]
set_property PACKAGE_PIN AP31 [get_ports iStop]
set_property IOSTANDARD LVCMOS18 [get_ports iStop]




##########################
##  TIMING CONSTRAINTS  ##
##########################

## virtual clocks
create_clock -period 5.000 -name VirInClk

## Input Delays
set_input_delay -clock [get_clocks VirInClk] -max 2.000 [get_ports iStart]
set_input_delay -clock [get_clocks VirInClk] -min 1.000 [get_ports iStart]
set_input_delay -clock [get_clocks VirInClk] -max 2.000 [get_ports iStop]
set_input_delay -clock [get_clocks VirInClk] -min 1.000 [get_ports iStop]

set_false_path -from [get_ports iStart] -to [get_pins {VDL_cmp/LATCH_TAPS[0].LATCH_init.LATCH_first/D}]

##TI timing (from Latches-ANDs to iMUX ] )

#set_min_delay -datapath_only -from [get_pins {VDL_cmp/LATCH_TAPS[*].LATCH_next.LATCH/Q}] -to [get_pins {Mux_exp_cmp/oMux[0]_INST_0/O}] 33.000

## TI timing (form LUTs to iMUX)



## Sel timing (from Latches to iSel)

# Have to be shorter than TI timing


set_max_delay -datapath_only -from [get_pins {VDL_cmp/LATCH_TAPS[0].LATCH_init.LATCH_first/Q}] -to [get_pins {Mux_exp_cmp/oMux[0]_INST_0/O}] 1.000
set_max_delay -datapath_only -from [get_pins {VDL_cmp/LATCH_TAPS[*].LATCH_next.LATCH/Q}] -to [get_pins {Mux_exp_cmp/oMux[0]_INST_0/O}] 1.000
set_max_delay -datapath_only -from [get_pins {VDL_cmp/LATCH_TAPS[0].LATCH_init.LATCH_first/Q}] -to [get_pins {Mux_exp_cmp/oMux[1]_INST_0/O}] 1.000
set_max_delay -datapath_only -from [get_pins {VDL_cmp/LATCH_TAPS[*].LATCH_next.LATCH/Q}] -to [get_pins {Mux_exp_cmp/oMux[1]_INST_0/O}] 1.000




##########################
##   FLOORPLANNING      ##
##########################

#set_property EXCLUDE_PLACEMENT FALSE [get_pblocks test]




create_pblock MUX
add_cells_to_pblock [get_pblocks MUX] [get_cells -quiet [list Mux_exp_cmp]]
resize_pblock [get_pblocks MUX] -add {SLICE_X44Y16:SLICE_X47Y18}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks MUX]


create_pblock TDL
add_cells_to_pblock [get_pblocks TDL] [get_cells -quiet [list TDL_cmp]]
resize_pblock [get_pblocks TDL] -add {SLICE_X42Y3:SLICE_X43Y18}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks TDL]


create_pblock VDL_LATCH
add_cells_to_pblock [get_pblocks VDL_LATCH] [get_cells -quiet [list {VDL_cmp/LATCH_TAPS[0].LATCH_init.LATCH_first} {VDL_cmp/LATCH_TAPS[10].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[11].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[12].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[13].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[14].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[15].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[16].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[17].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[18].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[19].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[1].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[20].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[21].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[22].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[23].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[24].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[25].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[26].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[27].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[28].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[29].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[2].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[30].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[31].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[3].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[4].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[5].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[6].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[7].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[8].LATCH_next.LATCH} {VDL_cmp/LATCH_TAPS[9].LATCH_next.LATCH}]]
resize_pblock [get_pblocks VDL_LATCH] -add {SLICE_X44Y7:SLICE_X47Y15}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks VDL_LATCH]

create_pblock VDL_LUT
add_cells_to_pblock [get_pblocks VDL_LUT] [get_cells -quiet [list {VDL_cmp/DL[0].LUT_init.cmp_1LUT} {VDL_cmp/DL[10].LUT_next.cmp_1LUT} {VDL_cmp/DL[11].LUT_next.cmp_1LUT} {VDL_cmp/DL[12].LUT_next.cmp_1LUT} {VDL_cmp/DL[13].LUT_next.cmp_1LUT} {VDL_cmp/DL[14].LUT_next.cmp_1LUT} {VDL_cmp/DL[15].LUT_next.cmp_1LUT} {VDL_cmp/DL[16].LUT_next.cmp_1LUT} {VDL_cmp/DL[17].LUT_next.cmp_1LUT} {VDL_cmp/DL[18].LUT_next.cmp_1LUT} {VDL_cmp/DL[19].LUT_next.cmp_1LUT} {VDL_cmp/DL[1].LUT_next.cmp_1LUT} {VDL_cmp/DL[20].LUT_next.cmp_1LUT} {VDL_cmp/DL[21].LUT_next.cmp_1LUT} {VDL_cmp/DL[22].LUT_next.cmp_1LUT} {VDL_cmp/DL[23].LUT_next.cmp_1LUT} {VDL_cmp/DL[24].LUT_next.cmp_1LUT} {VDL_cmp/DL[25].LUT_next.cmp_1LUT} {VDL_cmp/DL[26].LUT_next.cmp_1LUT} {VDL_cmp/DL[27].LUT_next.cmp_1LUT} {VDL_cmp/DL[28].LUT_next.cmp_1LUT} {VDL_cmp/DL[29].LUT_next.cmp_1LUT} {VDL_cmp/DL[2].LUT_next.cmp_1LUT} {VDL_cmp/DL[30].LUT_next.cmp_1LUT} {VDL_cmp/DL[31].LUT_next.cmp_1LUT} {VDL_cmp/DL[3].LUT_next.cmp_1LUT} {VDL_cmp/DL[4].LUT_next.cmp_1LUT} {VDL_cmp/DL[5].LUT_next.cmp_1LUT} {VDL_cmp/DL[6].LUT_next.cmp_1LUT} {VDL_cmp/DL[7].LUT_next.cmp_1LUT} {VDL_cmp/DL[8].LUT_next.cmp_1LUT} {VDL_cmp/DL[9].LUT_next.cmp_1LUT}]]
resize_pblock [get_pblocks VDL_LUT] -add {SLICE_X44Y3:SLICE_X47Y4}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks VDL_LUT]

create_pblock VDL_AND
add_cells_to_pblock [get_pblocks VDL_AND] [get_cells -quiet [list VDL_cmp/merged_inferred_i_1 VDL_cmp/merged_inferred_i_10 VDL_cmp/merged_inferred_i_11 VDL_cmp/merged_inferred_i_12 VDL_cmp/merged_inferred_i_13 VDL_cmp/merged_inferred_i_14 VDL_cmp/merged_inferred_i_15 VDL_cmp/merged_inferred_i_16 VDL_cmp/merged_inferred_i_17 VDL_cmp/merged_inferred_i_18 VDL_cmp/merged_inferred_i_19 VDL_cmp/merged_inferred_i_2 VDL_cmp/merged_inferred_i_20 VDL_cmp/merged_inferred_i_21 VDL_cmp/merged_inferred_i_22 VDL_cmp/merged_inferred_i_23 VDL_cmp/merged_inferred_i_24 VDL_cmp/merged_inferred_i_25 VDL_cmp/merged_inferred_i_26 VDL_cmp/merged_inferred_i_27 VDL_cmp/merged_inferred_i_28 VDL_cmp/merged_inferred_i_29 VDL_cmp/merged_inferred_i_3 VDL_cmp/merged_inferred_i_30 VDL_cmp/merged_inferred_i_31 VDL_cmp/merged_inferred_i_4 VDL_cmp/merged_inferred_i_5 VDL_cmp/merged_inferred_i_6 VDL_cmp/merged_inferred_i_7 VDL_cmp/merged_inferred_i_8 VDL_cmp/merged_inferred_i_9]]
resize_pblock [get_pblocks VDL_AND] -add {SLICE_X44Y5:SLICE_X47Y6}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks VDL_AND]
