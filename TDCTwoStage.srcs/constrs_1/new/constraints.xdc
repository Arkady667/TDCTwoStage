##########################
## PHYSICAL CONSTRAINTS
##########################

## Latch negative gate
set_property IS_G_INVERTED 1'b1 [get_cells {LATCH_TAPS[*].LATCH_next.LATCH}]
set_property IS_G_INVERTED 1'b1 [get_cells {LATCH_TAPS[0].LATCH_init.LATCH_first}]

set_property IS_G_INVERTED 1'b1 [get_cells {VDL_cmp/LATCH_TAPS[*].LATCH_next.LATCH}]
set_property IS_G_INVERTED 1'b1 [get_cells {VDL_cmp/LATCH_TAPS[0].LATCH_init.LATCH_first}]

## Ports

# Uart Tx
set_property PACKAGE_PIN AU33 [get_ports oTx]
set_property IOSTANDARD LVCMOS18 [get_ports oTx]

# Clock
set_property PACKAGE_PIN E19 [get_ports clk_in1_p]
set_property IOSTANDARD LVDS [get_ports clk_in1_p]
set_property PACKAGE_PIN E18 [get_ports clk_in1_n]
set_property IOSTANDARD LVDS [get_ports clk_in1_n]

##Input TI

# USER_SMA_CLOCK_P with 50ohm
set_property PACKAGE_PIN AJ32 [get_ports iStart]
set_property IOSTANDARD LVCMOS18 [get_ports iStart]

# USER_SMA_CLOCK_N with 50ohm
set_property PACKAGE_PIN AK32 [get_ports iStop]
set_property IOSTANDARD LVCMOS18 [get_ports iStop]

set_property PACKAGE_PIN AK34 [get_ports USER_CLOCK_P]
set_property IOSTANDARD LVDS [get_ports USER_CLOCK_P]
set_property PACKAGE_PIN AL34 [get_ports USER_CLOCK_N]
set_property IOSTANDARD LVDS [get_ports USER_CLOCK_N]

set_property PACKAGE_PIN AN31 [get_ports USER_SMA_GPIO_P]
set_property IOSTANDARD LVCMOS18 [get_ports USER_SMA_GPIO_P]
set_property PACKAGE_PIN AP31 [get_ports USER_SMA_GPIO_N]
set_property IOSTANDARD LVCMOS18 [get_ports USER_SMA_GPIO_N]



##########################
## TIMING CONSTRAINTS   ##
##########################

# virtual clocks
create_clock -period 5.000 -name VirInClk

# Input Delays
set_input_delay -clock [get_clocks VirInClk] -max 2.000 [get_ports iStart]
set_input_delay -clock [get_clocks VirInClk] -min 1.000 [get_ports iStart]
set_input_delay -clock [get_clocks VirInClk] -max 2.000 [get_ports iStop]
set_input_delay -clock [get_clocks VirInClk] -min 1.000 [get_ports iStop]

set_false_path -from [get_ports iStart] -to [get_pins {VDL_cmp/LATCH_TAPS[0].LATCH_init.LATCH_first/D}]



