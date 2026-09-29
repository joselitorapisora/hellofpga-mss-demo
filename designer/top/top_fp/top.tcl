open_project -project {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\designer\top\top_fp\top.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {M2S010} \
    -fpga {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\designer\top\top.map} \
    -header {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\designer\top\top.hdr} \
    -envm {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\designer\top\top.efc} \
    -spm {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\designer\top\top.spm} \
    -dca {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\designer\top\top.dca}
export_single_ppd \
    -name {M2S010} \
    -file {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\designer\top\export\top.ppd}

export_single_dat \
    -name {M2S010} \
    -file {C:\1WT_FY27Q2_HelloFPGA\project\MSSBlinky\designer\top\export\top.dat} \
    -secured

save_project
close_project
