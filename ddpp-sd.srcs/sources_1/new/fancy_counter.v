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
    input RESET,
    input ENABLE,
    output reg BACK,
    output reg DONE
    );
    
    wire dir;   // 1 means stepping forward, 0 means stepping back
    counter record( .clk(CLOCK), .en(ENABLE), .j(dir) );
    
    reg [2:0] s, sn;
    always @(posedge CLOCK)
        s <= sn;
    
    always @(RESET) begin
        if(RESET == 1) sn = 3'o0;
    end
    
    always @(ENABLE, dir) begin
        if(s == 3'o7) begin
            sn = 3'o7;
        end else begin
            if(ENABLE == 1) begin
                if(dir == 1) sn = s + 1;
                else sn = s - 1;
            end
            else    sn = s;
        end
    end
    
    always @(ENABLE, s, dir) begin
        if(ENABLE == 0) begin
            BACK = 0;
            DONE = 0;
        end else begin
            if(dir == 0) BACK = 1;
            if(s == 3'o7) DONE = 1;
        end
    end
endmodule
