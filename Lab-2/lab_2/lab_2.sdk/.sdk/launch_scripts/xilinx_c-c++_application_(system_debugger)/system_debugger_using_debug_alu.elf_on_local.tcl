connect -url tcp:127.0.0.1:3121
source C:/Users/alexivensky/ADDLabs/Lab-2/lab_2/lab_2.sdk/lab_2_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A8B88CA" && level==0} -index 1
fpga -file C:/Users/alexivensky/ADDLabs/Lab-2/lab_2/lab_2.sdk/lab_2_wrapper_hw_platform_0/lab_2_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A8B88CA"} -index 0
loadhw -hw C:/Users/alexivensky/ADDLabs/Lab-2/lab_2/lab_2.sdk/lab_2_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A8B88CA"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A8B88CA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A8B88CA"} -index 0
dow C:/Users/alexivensky/ADDLabs/Lab-2/lab_2/lab_2.sdk/alu/Debug/alu.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A8B88CA"} -index 0
con
