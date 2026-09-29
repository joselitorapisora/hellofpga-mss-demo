/*******************************************************************************
 * (c) Copyright 2009-2015 Microsemi SoC Products Group.  All rights reserved.
 *
 * Simple SmartFusion2 microcontroller subsystem (MSS) GPIO example program.
 *
 * Please refer to the file README.txt for further details about this example.
 *
 * SVN $Revision: 7923 $
 * SVN $Date: 2015-10-01 11:37:48 +0530 (Thu, 01 Oct 2015) $
 */

#include "drivers/mss_gpio/mss_gpio.h"
#include "CMSIS/system_m2sxxx.h"
#include "sys_config_mss_clocks.h"
#include <stdio.h>
#include <string.h>
#include "mss_uart.h"
#include "mss_gpio.h"


void delay_ms(uint32_t ms)
{
    const uint32_t ticks_per_ms = (MSS_SYS_M3_CLK_FREQ / 1000u) - 1u;
    while (ms--)
    {
        SysTick->LOAD = ticks_per_ms;
        SysTick->VAL  = 0u;
        SysTick->CTRL = SysTick_CTRL_CLKSOURCE_Msk | SysTick_CTRL_ENABLE_Msk;
        while ((SysTick->CTRL & SysTick_CTRL_COUNTFLAG_Msk) == 0u);
        SysTick->CTRL = 0u;
    }
}

int main(void)
{
	uint8_t counter = 0;
    MSS_GPIO_init();

    MSS_GPIO_config(MSS_GPIO_0, MSS_GPIO_OUTPUT_MODE);
    MSS_GPIO_config(MSS_GPIO_1, MSS_GPIO_OUTPUT_MODE);
    MSS_GPIO_config(MSS_GPIO_2, MSS_GPIO_OUTPUT_MODE);

    MSS_UART_init(&g_mss_uart0, MSS_UART_230400_BAUD, MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT);

    while(1)
    {
        char msg[32];
        MSS_GPIO_set_output(MSS_GPIO_0, (counter >> 0) & 0x1);
        MSS_GPIO_set_output(MSS_GPIO_1, (counter >> 1) & 0x1);
        MSS_GPIO_set_output(MSS_GPIO_2, (counter >> 2) & 0x1);

        counter = ++counter & 0x7;
        sprintf(msg, "Hello FPGA! Counter = %u\r\n", counter);
        MSS_UART_polled_tx(&g_mss_uart0, msg, sizeof(msg)-1);

        // To use printf(), add the following under preprocessor directive
        // MICROSEMI_STDIO_THRU_MMUART0
        // MICROSEMI_STDIO_BAUD_RATE=MSS_UART_230400_BAUD

        delay_ms(1000);
    }
}

