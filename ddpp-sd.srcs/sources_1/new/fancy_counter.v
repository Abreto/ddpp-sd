`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/28 16:51:40
// Design Name: 
// Module Name: fancy_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fancy_counter(
    input CLOCK,
    input ENABLE,
    output BACK,
    output DONE
    );
    
    wire dir;   // 1 means stepping forward, 0 means stepping back
    counter record( .clk(CLOCK), .en(ENABLE), .j(dir) );
    
endmodule
