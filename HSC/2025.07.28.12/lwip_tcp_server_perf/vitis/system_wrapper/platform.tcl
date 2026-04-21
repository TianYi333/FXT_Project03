# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\ASUS-PC\Desktop\temporary\37_lwip_tcp_server_perf\vitis\system_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\ASUS-PC\Desktop\temporary\37_lwip_tcp_server_perf\vitis\system_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {system_wrapper}\
-hw {D:\ASUS-PC\Desktop\temporary\37_lwip_tcp_server_perf\vitis\system_wrapper.xsa}\
-out {D:/ASUS-PC/Desktop/temporary/37_lwip_tcp_server_perf/vitis}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_lwip_tcp_perf_server}
platform generate -domains 
platform active {system_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform generate
platform active {system_wrapper}
bsp reload
bsp reload
platform active {system_wrapper}
bsp reload
bsp reload
platform generate
platform active {system_wrapper}
platform generate -domains 
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
platform generate -domains 
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform active {system_wrapper}
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform write
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate -domains standalone_ps7_cortexa9_0 
platform generate -domains freertos10_xilinx_ps7_cortexa9_0,standalone_ps7_cortexa9_0 
platform generate -domains freertos10_xilinx_ps7_cortexa9_0,standalone_ps7_cortexa9_0 
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
platform generate
platform active {system_wrapper}
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
bsp reload
platform generate -domains 
bsp config socket_mode_thread_prio "2"
bsp config socket_mode_thread_prio "10"
bsp write
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
bsp reload
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
bsp config api_mode "SOCKET_API"
bsp reload
bsp reload
bsp config max_task_name_len "10"
bsp config tick_rate "1000"
bsp config total_heap_size "131072"
bsp write
bsp reload
catch {bsp regenerate}
bsp reload
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
bsp reload
bsp config max_task_name_len "30"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
bsp reload
bsp reload
bsp reload
platform generate -domains 
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
bsp reload
bsp reload
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
domain active {zynq_fsbl}
bsp reload
platform generate -domains 
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
platform generate -domains 
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
bsp reload
bsp reload
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
bsp reload
bsp reload
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform active {system_wrapper}
bsp reload
bsp reload
platform generate -domains 
bsp config minimal_stack_size "2048"
bsp reload
bsp reload
platform active {system_wrapper}
bsp reload
bsp reload
bsp reload
bsp config total_heap_size "131072"
bsp config total_heap_size "89128960"
bsp write
bsp reload
catch {bsp regenerate}
bsp write
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/lwip_tcp_server_perf/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
