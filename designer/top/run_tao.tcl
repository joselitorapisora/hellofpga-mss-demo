set_device -family {SmartFusion2} -die {M2S010} -speed {-1}
read_verilog -mode system_verilog {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode system_verilog {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode system_verilog {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\component\work\mymss_sb\CCC_0\mymss_sb_CCC_0_FCCC.v}
read_verilog -mode system_verilog {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\component\work\mymss_sb\FABOSC_0\mymss_sb_FABOSC_0_OSC.v}
read_verilog -mode system_verilog {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\component\work\mymss_sb_MSS\mymss_sb_MSS.v}
read_verilog -mode system_verilog {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\component\work\mymss_sb\mymss_sb.v}
read_verilog -mode system_verilog {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\component\work\mymss\mymss.v}
read_verilog -mode system_verilog {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\hdl\top.v}
set_top_level {top}
map_netlist
check_constraints {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\constraint\synthesis_sdc_errors.log}
write_fdc {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\designer\top\synthesis.fdc}
