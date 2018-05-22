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
ExecStep $xv_path/bin/xelab -wto 7ca1ca23962d498595c817b5be870ee7 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip -L xpm --snapshot tUART_sim_behav xil_defaultlib.tUART_sim -log elaborate.log
