# Legal Notice: (C)2018 Altera Corporation. All rights reserved.  Your
# use of Altera Corporation's design tools, logic functions and other
# software and tools, and its AMPP partner logic functions, and any
# output files any of the foregoing (including device programming or
# simulation files), and any associated documentation or information are
# expressly subject to the terms and conditions of the Altera Program
# License Subscription Agreement or other applicable license agreement,
# including, without limitation, that your use is for the sole purpose
# of programming logic devices manufactured by Altera and sold by Altera
# or its authorized distributors.  Please refer to the applicable
# agreement for further details.

#**************************************************************
# Timequest JTAG clock definition
#   Uncommenting the following lines will define the JTAG
#   clock in TimeQuest Timing Analyzer
#**************************************************************

#create_clock -period 10MHz {altera_reserved_tck}
#set_clock_groups -asynchronous -group {altera_reserved_tck}

#**************************************************************
# Set TCL Path Variables 
#**************************************************************

set 	Main_nios2_qsys_0 	Main_nios2_qsys_0:*
set 	Main_nios2_qsys_0_oci 	Main_nios2_qsys_0_nios2_oci:the_Main_nios2_qsys_0_nios2_oci
set 	Main_nios2_qsys_0_oci_break 	Main_nios2_qsys_0_nios2_oci_break:the_Main_nios2_qsys_0_nios2_oci_break
set 	Main_nios2_qsys_0_ocimem 	Main_nios2_qsys_0_nios2_ocimem:the_Main_nios2_qsys_0_nios2_ocimem
set 	Main_nios2_qsys_0_oci_debug 	Main_nios2_qsys_0_nios2_oci_debug:the_Main_nios2_qsys_0_nios2_oci_debug
set 	Main_nios2_qsys_0_wrapper 	Main_nios2_qsys_0_jtag_debug_module_wrapper:the_Main_nios2_qsys_0_jtag_debug_module_wrapper
set 	Main_nios2_qsys_0_jtag_tck 	Main_nios2_qsys_0_jtag_debug_module_tck:the_Main_nios2_qsys_0_jtag_debug_module_tck
set 	Main_nios2_qsys_0_jtag_sysclk 	Main_nios2_qsys_0_jtag_debug_module_sysclk:the_Main_nios2_qsys_0_jtag_debug_module_sysclk
set 	Main_nios2_qsys_0_oci_path 	 [format "%s|%s" $Main_nios2_qsys_0 $Main_nios2_qsys_0_oci]
set 	Main_nios2_qsys_0_oci_break_path 	 [format "%s|%s" $Main_nios2_qsys_0_oci_path $Main_nios2_qsys_0_oci_break]
set 	Main_nios2_qsys_0_ocimem_path 	 [format "%s|%s" $Main_nios2_qsys_0_oci_path $Main_nios2_qsys_0_ocimem]
set 	Main_nios2_qsys_0_oci_debug_path 	 [format "%s|%s" $Main_nios2_qsys_0_oci_path $Main_nios2_qsys_0_oci_debug]
set 	Main_nios2_qsys_0_jtag_tck_path 	 [format "%s|%s|%s" $Main_nios2_qsys_0_oci_path $Main_nios2_qsys_0_wrapper $Main_nios2_qsys_0_jtag_tck]
set 	Main_nios2_qsys_0_jtag_sysclk_path 	 [format "%s|%s|%s" $Main_nios2_qsys_0_oci_path $Main_nios2_qsys_0_wrapper $Main_nios2_qsys_0_jtag_sysclk]
set 	Main_nios2_qsys_0_jtag_sr 	 [format "%s|*sr" $Main_nios2_qsys_0_jtag_tck_path]

#**************************************************************
# Set False Paths
#**************************************************************

set_false_path -from [get_keepers *$Main_nios2_qsys_0_oci_break_path|break_readreg*] -to [get_keepers *$Main_nios2_qsys_0_jtag_sr*]
set_false_path -from [get_keepers *$Main_nios2_qsys_0_oci_debug_path|*resetlatch]     -to [get_keepers *$Main_nios2_qsys_0_jtag_sr[33]]
set_false_path -from [get_keepers *$Main_nios2_qsys_0_oci_debug_path|monitor_ready]  -to [get_keepers *$Main_nios2_qsys_0_jtag_sr[0]]
set_false_path -from [get_keepers *$Main_nios2_qsys_0_oci_debug_path|monitor_error]  -to [get_keepers *$Main_nios2_qsys_0_jtag_sr[34]]
set_false_path -from [get_keepers *$Main_nios2_qsys_0_ocimem_path|*MonDReg*] -to [get_keepers *$Main_nios2_qsys_0_jtag_sr*]
set_false_path -from *$Main_nios2_qsys_0_jtag_sr*    -to *$Main_nios2_qsys_0_jtag_sysclk_path|*jdo*
set_false_path -from sld_hub:*|irf_reg* -to *$Main_nios2_qsys_0_jtag_sysclk_path|ir*
set_false_path -from sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1] -to *$Main_nios2_qsys_0_oci_debug_path|monitor_go
