# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\A_Rada_V1.1\vitis\system_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\A_Rada_V1.1\vitis\system_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {system_wrapper}\
-hw {D:\A_Rada_V1.1\vitis\system_wrapper.xsa}\
-out {D:/A_Rada_V1.1/vitis}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_lwip_tcp_perf_server}
platform generate -domains 
platform active {system_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
bsp reload
bsp config max_task_name_len "100"
bsp config tick_rate "1000"
bsp config total_heap_size "655360"
bsp config socket_mode_thread_prio "8"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {system_wrapper}
platform config -updatehw {D:/A_Rada_V1.1/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {D:/A_Rada_V1.1/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform clean
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {D:/A_Rada_V1.1/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform clean
platform generate
platform config -updatehw {D:/A_Rada_V1.1/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform active {system_wrapper}
platform config -updatehw {D:/A_Rada_V1.1/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform clean
platform generate
