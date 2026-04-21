-makelib ies_lib/xilinx_vip -sv \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  "E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../HSC.gen/sources_1/ip/ila_0_3/sim/ila_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

