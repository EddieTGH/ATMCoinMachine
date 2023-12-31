# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/kfranz/Desktop/ServoControlwithPmodCON3/ServoControlwithPmodCON3.cache/wt [current_project]
set_property parent.project_path C:/Users/kfranz/Desktop/ServoControlwithPmodCON3/ServoControlwithPmodCON3.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib {
  C:/Users/kfranz/Desktop/ServoControlwithPmodCON3/ServoControlwithPmodCON3.srcs/sources_1/new/sw_to_angle.v
  C:/Users/kfranz/Desktop/ServoControlwithPmodCON3/counter.v
  C:/Users/kfranz/Desktop/ServoControlwithPmodCON3/comparator.v
  C:/Users/kfranz/Desktop/ServoControlwithPmodCON3/ServoControlwithPmodCON3.srcs/sources_1/new/angle_decoder.v
  C:/Users/kfranz/Desktop/ServoControlwithPmodCON3/Servo_interface.v
}
read_xdc C:/Users/kfranz/Desktop/ServoControlwithPmodCON3/ServoControlwithPmodCON3.srcs/constrs_1/new/pwm.xdc
set_property used_in_implementation false [get_files C:/Users/kfranz/Desktop/ServoControlwithPmodCON3/ServoControlwithPmodCON3.srcs/constrs_1/new/pwm.xdc]

synth_design -top Servo_interface -part xc7a35tcpg236-1
write_checkpoint -noxdef Servo_interface.dcp
catch { report_utilization -file Servo_interface_utilization_synth.rpt -pb Servo_interface_utilization_synth.pb }
