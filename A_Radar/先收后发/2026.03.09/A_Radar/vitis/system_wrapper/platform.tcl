# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\ASUS-PC\Desktop\temporary\A_Radar\vitis\system_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\ASUS-PC\Desktop\temporary\A_Radar\vitis\system_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {system_wrapper}\
-hw {D:\ASUS-PC\Desktop\temporary\A_Radar\vitis\system_wrapper.xsa}\
-out {D:/ASUS-PC/Desktop/temporary/A_Radar/vitis}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_lwip_tcp_perf_client}
platform generate -domains 
platform active {system_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
bsp reload
bsp config max_task_name_len "30"
bsp config minimal_stack_size "200"
bsp config tick_rate "1000"
bsp config socket_mode_thread_prio "8"
bsp config memp_num_netbuf "4096"
bsp config default_tcp_recvmbox_size "4096"
bsp config lwip_tcpip_core_locking_input "true"
bsp config tcpip_mbox_size "4096"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform generate
platform generate
platform generate
platform generate -domains freertos10_xilinx_ps7_cortexa9_0,zynq_fsbl 
