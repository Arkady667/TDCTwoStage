##########################
## PHYSICAL CONSTRAINTS ##
##########################

## Ports

# Uart Tx

set_property PACKAGE_PIN AU36 [get_ports oTx]
set_property IOSTANDARD LVCMOS18 [get_ports oTx]

# Clock





##########################
##  TIMING CONSTRAINTS  ##
##########################

### virtual clocks
#create_clock -period 5.000 -name VirInClk

### Input Delays
#set_input_delay -clock [get_clocks VirInClk] -max 2.000 [get_ports iVDL]
#set_input_delay -clock [get_clocks VirInClk] -min 1.000 [get_ports iStart]
#set_input_delay -clock [get_clocks VirInClk] -max 2.000 [get_ports iTDL]
#set_input_delay -clock [get_clocks VirInClk] -min 1.000 [get_ports iStop]

