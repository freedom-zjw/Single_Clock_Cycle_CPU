# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35ticpg236-1L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.cache/wt [current_project]
set_property parent.project_path C:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files C:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/ROM.coe
add_files C:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/RAM.coe
add_files -quiet c:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.srcs/sources_1/ip/dram/dram.dcp
set_property used_in_implementation false [get_files c:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.srcs/sources_1/ip/dram/dram.dcp]
add_files -quiet c:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.srcs/sources_1/ip/irom_1/irom.dcp
set_property used_in_implementation false [get_files c:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.srcs/sources_1/ip/irom_1/irom.dcp]
read_verilog -library xil_defaultlib {
  C:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.srcs/sources_1/new/ctr.v
  C:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.srcs/sources_1/new/smg_ip_model.v
  C:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.srcs/sources_1/new/signext.v
  C:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.srcs/sources_1/new/regFile.v
  C:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.srcs/sources_1/new/aluctr.v
  C:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.srcs/sources_1/new/alu.v
  C:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.srcs/sources_1/new/top.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.srcs/constrs_3/new/show.xdc
set_property used_in_implementation false [get_files C:/Users/freedom/Desktop/Single_Clock_Cycle_CPU/CPU_showALUres/CPU1.srcs/constrs_3/new/show.xdc]


synth_design -top top -part xc7a35ticpg236-1L


write_checkpoint -force -noxdef top.dcp

catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
