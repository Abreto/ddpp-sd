`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2018 07:28:51 PM
// Design Name: 
// Module Name: fancy_tb
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


module fancy_tb(

    );
    reg clk;
    reg reset;
    reg en;
    wire back, done;
    
    fancy_counter fancy(
        .CLOCK(clk),
        .RESET(reset)
    );

    initial begin
        clk = 0;
    end
    
    always begin
        #5 clk = ~clk;
    end
endmodule
