#!/bin/bash -f
xv_path="/home/arkady/Xilinx/Vivado/2017.1"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim UartModule_tb_func_impl -key {Post-Implementation:sim_1:Functional:UartModule_tb} -tclbatch UartModule_tb.tcl -log simulate.log
