# TCL File Generated by Component Editor 18.1
# Sun Oct 14 23:27:37 BRT 2018
# DO NOT MODIFY


# 
# ControllerLCD "ControllerLCD" v1.0
#  2018.10.14.23:27:37
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module ControllerLCD
# 
set_module_property DESCRIPTION ""
set_module_property NAME ControllerLCD
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP CustomLogic
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME ControllerLCD
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL ControllerLCD
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file LCD_Controller.v VERILOG PATH Main/synthesis/LCD_Controller.v TOP_LEVEL_FILE
add_fileset_file LCD_Controller.v.bak OTHER PATH Main/synthesis/LCD_Controller.v.bak


# 
# parameters
# 
add_parameter LCD_BACKLIGHT INTEGER 11
set_parameter_property LCD_BACKLIGHT DEFAULT_VALUE 11
set_parameter_property LCD_BACKLIGHT DISPLAY_NAME LCD_BACKLIGHT
set_parameter_property LCD_BACKLIGHT TYPE INTEGER
set_parameter_property LCD_BACKLIGHT UNITS None
set_parameter_property LCD_BACKLIGHT ALLOWED_RANGES -2147483648:2147483647
set_parameter_property LCD_BACKLIGHT HDL_PARAMETER true
add_parameter LCD_EN INTEGER 10
set_parameter_property LCD_EN DEFAULT_VALUE 10
set_parameter_property LCD_EN DISPLAY_NAME LCD_EN
set_parameter_property LCD_EN TYPE INTEGER
set_parameter_property LCD_EN UNITS None
set_parameter_property LCD_EN ALLOWED_RANGES -2147483648:2147483647
set_parameter_property LCD_EN HDL_PARAMETER true
add_parameter LCD_RS INTEGER 9
set_parameter_property LCD_RS DEFAULT_VALUE 9
set_parameter_property LCD_RS DISPLAY_NAME LCD_RS
set_parameter_property LCD_RS TYPE INTEGER
set_parameter_property LCD_RS UNITS None
set_parameter_property LCD_RS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property LCD_RS HDL_PARAMETER true
add_parameter LCD_RW INTEGER 8
set_parameter_property LCD_RW DEFAULT_VALUE 8
set_parameter_property LCD_RW DISPLAY_NAME LCD_RW
set_parameter_property LCD_RW TYPE INTEGER
set_parameter_property LCD_RW UNITS None
set_parameter_property LCD_RW ALLOWED_RANGES -2147483648:2147483647
set_parameter_property LCD_RW HDL_PARAMETER true


# 
# display items
# 


# 
# connection point nios_custom_instruction_slave
# 
add_interface nios_custom_instruction_slave nios_custom_instruction end
set_interface_property nios_custom_instruction_slave clockCycle 0
set_interface_property nios_custom_instruction_slave operands 2
set_interface_property nios_custom_instruction_slave ENABLED true
set_interface_property nios_custom_instruction_slave EXPORT_OF ""
set_interface_property nios_custom_instruction_slave PORT_NAME_MAP ""
set_interface_property nios_custom_instruction_slave CMSIS_SVD_VARIABLES ""
set_interface_property nios_custom_instruction_slave SVD_ADDRESS_GROUP ""

add_interface_port nios_custom_instruction_slave dataa dataa Input 32
add_interface_port nios_custom_instruction_slave datab datab Input 32
add_interface_port nios_custom_instruction_slave result result Output 32
add_interface_port nios_custom_instruction_slave clk_en clk_en Input 1
add_interface_port nios_custom_instruction_slave done done Output 1
add_interface_port nios_custom_instruction_slave reset reset Input 1
add_interface_port nios_custom_instruction_slave start start Input 1
add_interface_port nios_custom_instruction_slave clk clk Input 1

