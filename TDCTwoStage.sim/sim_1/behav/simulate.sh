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
ExecStep $xv_path/bin/xsim VDL_tb_behav -key {Behavioral:sim_1:Functional:VDL_tb} -tclbatch VDL_tb.tcl -log simulate.log
