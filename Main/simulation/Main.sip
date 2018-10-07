set_global_assignment -entity "Main" -library "lib_Main" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "Main" -library "lib_Main" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "Main" -library "lib_Main" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_Main" -name SPD_FILE [file join $::quartus(sip_path) "../Main.spd"]
set_global_assignment -library "lib_Main" -name MISC_FILE [file join $::quartus(sip_path) "../../Main.qsys"]

set_global_assignment -library "lib_Main" -name MISC_FILE [file join $::quartus(sip_path) "Main.v"]
