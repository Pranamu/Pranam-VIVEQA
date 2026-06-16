`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2026 11:45:08 PM
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(
    input clk,
    input rst,
    input load,
    input up_down,
    input [3:0] data,
    output reg [3:0] count
);

always @(posedge clk)
begin
    if(rst)
        count <= 4'd0;
    else if(load)
        count <= data;
    else if(up_down)
        count <= count + 1'b1;
    else
        count <= count - 1'b1;
end

endmodule