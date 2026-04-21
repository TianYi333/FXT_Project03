#ifndef __AXI_DMA_APP_H_
#define __AXI_DMA_APP_H_

#include "xaxidma.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xscugic.h"
#include "platform_config.h"
#include "netif/xadapter.h"
#include "main.h"
#define DMA_DEV_ID          XPAR_AXIDMA_0_DEVICE_ID
#define RX_INTR_ID          XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR
#define INTC_DEVICE_ID      XPAR_SCUGIC_SINGLE_DEVICE_ID

#define RESET_TIMEOUT_COUNTER   10000   //复位时间
#define TEST_START_VALUE        0x0     //测试起始值
#define MAX_PKT_LEN             4096   //最大数据长度
#define S2MM_LENGTH             0x58	//传输长度寄存器
extern XScuGic xInterruptController;

extern u8 *rx_buffer_ptr;  // 接收缓冲区指针
void ProcessReceivedData(int length);
void tx_intr_handler(void *callback);
void rx_intr_handler(void *callback);
int InitDma(XAxiDma *AxiDmaPtr, u16 DeviceId);
int SetupInterruptSystem(XScuGic * int_ins_ptr, XAxiDma * axidma_ptr, u16 rx_intr_id);
void disable_intr_system(XScuGic * int_ins_ptr, u16 tx_intr_id, u16 rx_intr_id);
int AXI_DMA_APP(void);


#endif /* __AXI_DMA_APP_H_ */
