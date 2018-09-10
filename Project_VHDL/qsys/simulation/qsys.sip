set_global_assignment -entity "qsys" -library "lib_qsys" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "qsys" -library "lib_qsys" -name IP_TOOL_VERSION "13.0sp1"
set_global_assignment -entity "qsys" -library "lib_qsys" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_qsys" -name SPD_FILE [file join $::quartus(sip_path) "../../qsys.spd"]
set_global_assignment -library "lib_qsys" -name MISC_FILE [file join $::quartus(sip_path) "../../qsys.qsys"]

set_global_assignment -library "lib_qsys" -name MISC_FILE [file join $::quartus(sip_path) "qsys.vhd"]
set_global_assignment -library "lib_qsys" -name MISC_FILE [file join $::quartus(sip_path) "submodules/qsys_onchip_memory2_0.vhd"]
