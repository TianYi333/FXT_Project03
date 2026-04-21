# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\ASUS-PC\Desktop\temporary\HSC\vitis\system_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\ASUS-PC\Desktop\temporary\HSC\vitis\system_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {system_wrapper}\
-hw {D:\ASUS-PC\Desktop\temporary\HSC\vitis\system_wrapper.xsa}\
-out {D:/ASUS-PC/Desktop/temporary/HSC/vitis}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_lwip_tcp_perf_server}
platform generate -domains 
platform active {system_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
bsp reload
bsp setlib -name xilffs -ver 4.5
bsp removelib -name xilffs
bsp reload
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
domain active {zynq_fsbl}
bsp reload
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
platform generate
bsp reload
bsp config max_task_name_len "30"
bsp config tick_rate "1000"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform clean
platform generate
platform active {system_wrapper}
bsp reload
bsp config socket_mode_thread_prio "8"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
bsp config tcp_snd_buf "65535"
bsp config tcp_snd_buf "65535"
bsp config tcp_snd_buf "65535"
bsp config tcp_snd_buf "100000"
bsp write
bsp reload
catch {bsp regenerate}
bsp config tcp_snd_buf "102400"
bsp config tcp_wnd "102400"
bsp write
bsp reload
catch {bsp regenerate}
platform active {system_wrapper}
domain active {zynq_fsbl}
bsp reload
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
bsp write
bsp reload
bsp reload
bsp reload
platform active {system_wrapper}
bsp reload
bsp config tcp_wnd "65535"
bsp write
bsp reload
catch {bsp regenerate}
bsp config tcp_snd_buf "65535"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
bsp reload
platform clean
bsp reload
platform generate
platform active {system_wrapper}
platform generate -domains 
bsp reload
bsp reload
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
bsp reload
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
bsp reload
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform active {system_wrapper}
platform config -updatehw {E:/HSC_PRO/HSC/vitis/system_wrapper.xsa}
platform config -updatehw {E:/HSC_PRO/HSC/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {E:/HSC_PRO/HSC/vitis/system_wrapper.xsa}
platform config -updatehw {E:/HSC_PRO/HSC/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {E:/HSC_PRO/HSC/vitis/system_wrapper.xsa}
platform config -updatehw {E:/HSC_PRO/HSC/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {E:/HSC_PRO/HSC/vitis/system_wrapper.xsa}
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/HSC/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/HSC/vitis/system_wrapper.xsa}
platform generate
platform active {system_wrapper}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
bsp reload
catch {bsp regenerate}
catch {bsp regenerate}
platform config -updatehw {D:/ASUS-PC/Desktop/temporary/HSC/vitis/system_wrapper.xsa}
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
