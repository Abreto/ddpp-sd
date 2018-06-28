`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/28 16:40:02
// Design Name: 
// Module Name: cnt_tb
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


module cnt_tb(

    );
    reg clk, en;
    wire j;
    
    counter cnt( .clk(clk), .en(en), .j(j) );
    
    initial begin
        clk = 0;
        en = 1;
        #40 en = 0;
        #50 en = 1;
    end
    
    always begin
        #5 clk = ~clk;
    end
    
endmodule
