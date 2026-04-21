#ifndef SRC_MAIN_H_
#define SRC_MAIN_H_

#include <sleep.h>
#include "netif/xadapter.h"
#include "platform_config.h"
#include "xil_printf.h"
#include "lwip/init.h"
#include "lwip/inet.h"
#include "lwip/dhcp.h"
#include "xtime_l.h"
#include "xuartps.h"        // Xilinx UART驱动库
#include "xil_printf.h"     // 调试输出库
#include "xparameters.h"
#include "xscutimer.h"
#include "xscugic.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "AXI_DMA.h"
#include "ps_pl_axi4.h"

#define SysTick_Frequency   222222222  //SysTick时钟频率222MHz
extern void Lwip_Receive_thread(void *p);/* 以太网数据接收处理任务 */
extern QueueHandle_t Lwip_Receive_Queue;/* 以太网数据接收队列 */
extern QueueHandle_t Lwip_Send_Queue;/* 以太网数据接收队列 */
extern QueueHandle_t PS_AXI_TO_PL_Queue;/* PS发送到PL队列 */
extern QueueHandle_t PL_AXI_TO_PS_Queue;/* PL发送到PS队列 */

extern XScuGic xInterruptController;// 引用FreeRTOS已初始化的中断控制器

#endif /* SRC_MAIN_H_ */
