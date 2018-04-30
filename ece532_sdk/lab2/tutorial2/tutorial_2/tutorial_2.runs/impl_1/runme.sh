#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/nfs/ug/cad/cad1/Xilinx/SDK/2018.1/bin:/nfs/ug/cad/cad1/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/lin64:/nfs/ug/cad/cad1/Xilinx/Vivado/2018.1/bin
else
  PATH=/nfs/ug/cad/cad1/Xilinx/SDK/2018.1/bin:/nfs/ug/cad/cad1/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/lin64:/nfs/ug/cad/cad1/Xilinx/Vivado/2018.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/nfs/ug/cad/cad1/Xilinx/Vivado/2018.1/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/nfs/ug/cad/cad1/Xilinx/Vivado/2018.1/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/nfs/ug/homes-0/s/smithqu1/GitHub/research2018/ece532_sdk/lab2/tutorial2/tutorial_2/tutorial_2.runs/impl_1'
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

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log design_tutorial_2_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source design_tutorial_2_wrapper.tcl -notrace


