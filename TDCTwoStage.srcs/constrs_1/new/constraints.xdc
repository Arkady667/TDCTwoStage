#set_property IS_G_INVERTED 1'b1 [get_cells {LATCH_TAPS[1].LATCH_next.LATCH}]
#set_property IS_G_INVERTED 1'b1 [get_cells {LATCH_TAPS[2].LATCH_next.LATCH}]
#set_property IS_G_INVERTED 1'b1 [get_cells {LATCH_TAPS[3].LATCH_next.LATCH}]
set_property IS_G_INVERTED 1'b1 [get_cells {LATCH_TAPS[*].LATCH_next.LATCH}]
set_property IS_G_INVERTED 1'b1 [get_cells {LATCH_TAPS[0].LATCH_init.LATCH_first}]

set_property IS_G_INVERTED 1'b1 [get_cells {VDL_cmp/LATCH_TAPS[*].LATCH_next.LATCH}]
set_property IS_G_INVERTED 1'b1 [get_cells {VDL_cmp/LATCH_TAPS[0].LATCH_init.LATCH_first}]

create_clock -period 47.0 -name virtclk

set_input_delay -clock [get_clocks virtclk] -max 1.0 [get_ports iLut]

set_output_delay -clock [get_clocks virtclk] -max 2.0 [get_ports oData[*]]
# where:
# input_delay_value + maximum feedthrough path delay (44ns) + output_delay_value = virtclk period