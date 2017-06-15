@echo off
set xv_path=D:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xsim topsim_behav -key {Behavioral:sim_1:Functional:topsim} -tclbatch topsim.tcl -view C:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/topsim_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
