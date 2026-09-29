///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: top.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::256 VF>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module top (
    input  wire DEVRST_N,
    output wire LED1_debug,
    output wire LED2_debug,  
    output wire LED3_debug,
    output wire UART_TX,
    input  wire UART_RX
);

    wire GPIO0_M2F;
    wire GPIO1_M2F;
    wire GPIO2_M2F;
    
    mymss mss_inst (
        .DEVRST_N ( DEVRST_N ),
        .GPIO_0_M2F ( GPIO0_M2F ),
        .GPIO_1_M2F ( GPIO1_M2F ),
        .GPIO_2_M2F ( GPIO2_M2F ),        
        .MMUART_0_TXD_M2F ( UART_TX ),
        .MMUART_0_RXD_F2M ( UART_RX )
    );

    assign LED1_debug = GPIO0_M2F;
    assign LED2_debug = GPIO1_M2F;
    assign LED3_debug = GPIO2_M2F;    
endmodule

