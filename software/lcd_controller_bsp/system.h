/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2_processor' in SOPC Builder design 'Main'
 * SOPC Builder design path: ../../Main.sopcinfo
 *
 * Generated: Sun Oct 07 17:31:09 BRT 2018
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00020820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x12
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00010020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x12
#define ALT_CPU_NAME "nios2_processor"
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x00010000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00020820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x12
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00010020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x12
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x00010000


/*
 * Custom instruction macros
 *
 */

#define ALT_CI_CONTROLLERLCD_0(A,B) __builtin_custom_inii(ALT_CI_CONTROLLERLCD_0_N,(A),(B))
#define ALT_CI_CONTROLLERLCD_0_N 0x0


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_NIOS2_GEN2
#define __CONTROLLERLCD


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone IV E"
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/null"
#define ALT_STDERR_BASE 0x0
#define ALT_STDERR_DEV null
#define ALT_STDERR_TYPE ""
#define ALT_STDIN "/dev/null"
#define ALT_STDIN_BASE 0x0
#define ALT_STDIN_DEV null
#define ALT_STDIN_TYPE ""
#define ALT_STDOUT "/dev/null"
#define ALT_STDOUT_BASE 0x0
#define ALT_STDOUT_DEV null
#define ALT_STDOUT_TYPE ""
#define ALT_SYSTEM_NAME "Main"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 4
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * lcd_output configuration
 *
 */

#define ALT_MODULE_CLASS_lcd_output altera_avalon_pio
#define LCD_OUTPUT_BASE 0x21030
#define LCD_OUTPUT_BIT_CLEARING_EDGE_REGISTER 0
#define LCD_OUTPUT_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LCD_OUTPUT_CAPTURE 0
#define LCD_OUTPUT_DATA_WIDTH 11
#define LCD_OUTPUT_DO_TEST_BENCH_WIRING 0
#define LCD_OUTPUT_DRIVEN_SIM_VALUE 0
#define LCD_OUTPUT_EDGE_TYPE "NONE"
#define LCD_OUTPUT_FREQ 50000000
#define LCD_OUTPUT_HAS_IN 0
#define LCD_OUTPUT_HAS_OUT 1
#define LCD_OUTPUT_HAS_TRI 0
#define LCD_OUTPUT_IRQ -1
#define LCD_OUTPUT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LCD_OUTPUT_IRQ_TYPE "NONE"
#define LCD_OUTPUT_NAME "/dev/lcd_output"
#define LCD_OUTPUT_RESET_VALUE 0
#define LCD_OUTPUT_SPAN 16
#define LCD_OUTPUT_TYPE "altera_avalon_pio"


/*
 * main_memory configuration
 *
 */

#define ALT_MODULE_CLASS_main_memory altera_avalon_onchip_memory2
#define MAIN_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define MAIN_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define MAIN_MEMORY_BASE 0x10000
#define MAIN_MEMORY_CONTENTS_INFO ""
#define MAIN_MEMORY_DUAL_PORT 0
#define MAIN_MEMORY_GUI_RAM_BLOCK_TYPE "AUTO"
#define MAIN_MEMORY_INIT_CONTENTS_FILE "Main_main_memory"
#define MAIN_MEMORY_INIT_MEM_CONTENT 1
#define MAIN_MEMORY_INSTANCE_ID "NONE"
#define MAIN_MEMORY_IRQ -1
#define MAIN_MEMORY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MAIN_MEMORY_NAME "/dev/main_memory"
#define MAIN_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
#define MAIN_MEMORY_RAM_BLOCK_TYPE "AUTO"
#define MAIN_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
#define MAIN_MEMORY_SINGLE_CLOCK_OP 0
#define MAIN_MEMORY_SIZE_MULTIPLE 1
#define MAIN_MEMORY_SIZE_VALUE 40096
#define MAIN_MEMORY_SPAN 40096
#define MAIN_MEMORY_TYPE "altera_avalon_onchip_memory2"
#define MAIN_MEMORY_WRITABLE 1


/*
 * push_buttons configuration
 *
 */

#define ALT_MODULE_CLASS_push_buttons altera_avalon_pio
#define PUSH_BUTTONS_BASE 0x21020
#define PUSH_BUTTONS_BIT_CLEARING_EDGE_REGISTER 0
#define PUSH_BUTTONS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PUSH_BUTTONS_CAPTURE 0
#define PUSH_BUTTONS_DATA_WIDTH 4
#define PUSH_BUTTONS_DO_TEST_BENCH_WIRING 0
#define PUSH_BUTTONS_DRIVEN_SIM_VALUE 0
#define PUSH_BUTTONS_EDGE_TYPE "NONE"
#define PUSH_BUTTONS_FREQ 50000000
#define PUSH_BUTTONS_HAS_IN 1
#define PUSH_BUTTONS_HAS_OUT 0
#define PUSH_BUTTONS_HAS_TRI 0
#define PUSH_BUTTONS_IRQ -1
#define PUSH_BUTTONS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PUSH_BUTTONS_IRQ_TYPE "NONE"
#define PUSH_BUTTONS_NAME "/dev/push_buttons"
#define PUSH_BUTTONS_RESET_VALUE 0
#define PUSH_BUTTONS_SPAN 16
#define PUSH_BUTTONS_TYPE "altera_avalon_pio"

#endif /* __SYSTEM_H_ */