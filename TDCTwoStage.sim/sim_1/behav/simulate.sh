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
ExecStep $xv_path/bin/xsim tUART_sim_behav -key {Behavioral:sim_1:Functional:tUART_sim} -tclbatch tUART_sim.tcl -log simulate.log
