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
ExecStep $xv_path/bin/xsim TDC_tb_func_synth -key {Post-Synthesis:sim_1:Functional:TDC_tb} -tclbatch TDC_tb.tcl -log simulate.log
