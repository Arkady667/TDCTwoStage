#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/arkady/Xilinx/SDK/2017.1/bin:/home/arkady/Xilinx/Vivado/2017.1/ids_lite/ISE/bin/lin64:/home/arkady/Xilinx/Vivado/2017.1/bin
else
  PATH=/home/arkady/Xilinx/SDK/2017.1/bin:/home/arkady/Xilinx/Vivado/2017.1/ids_lite/ISE/bin/lin64:/home/arkady/Xilinx/Vivado/2017.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/arkady/Xilinx/Vivado/2017.1/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/arkady/Xilinx/Vivado/2017.1/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/arkady/Documents/Vivado Projects/TDCTwoStage/TDCTwoStage.runs/SynchTDL_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log SynchTDL.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source SynchTDL.tcl