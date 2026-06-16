`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2026 11:38:06 PM
// Design Name: 
// Module Name: sync_up_counter
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

module sync_up_counter(
    input clk,
    input rst,
    input load,
    input [3:0] data,
    output reg [3:0] count
);

always @(posedge clk)
begin
    if(rst)
        count <= 4'b0000;
    else if(load)
        count <= data;
    else
        count <= count + 1'b1;
end

endmodule