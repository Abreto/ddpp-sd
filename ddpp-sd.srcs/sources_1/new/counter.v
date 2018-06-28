`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UESTC ESE
// Engineer: Abreto
// 
// Create Date: 2018/06/28 16:25:51
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,
    input en,
    output reg j
    );
    reg [1:0] state, snext;
    parameter [1:0] INIT    = 2'b00,
                    ADVANCE = 2'b01,
                    BACK    = 2'b10;
    
    always @ (posedge clk)
        state <= snext;
    
    always @ (en, state) begin
      if(en == 1) begin
        case (state)
            INIT:       snext = ADVANCE;
            ADVANCE:    snext = BACK;
            BACK:       snext = INIT;
            default:    snext = INIT;
        endcase
      end
      else snext = state;
    end
    
    always @ (state) begin
        if(state == BACK) j = 0;
        else j = 1;
    end
endmodule
