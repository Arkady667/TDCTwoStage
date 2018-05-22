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
echo "xvhdl -m64 --relax -prj tUART_sim_vhdl.prj"
ExecStep $xv_path/bin/xvhdl -m64 --relax -prj tUART_sim_vhdl.prj 2>&1 | tee -a compile.log
