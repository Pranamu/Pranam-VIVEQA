`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2026 11:35:16 PM
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    input clk,
    input D,
    output reg Q
);

always @(posedge clk)
    Q <= D;

endmodule

module t_ff(
    input clk,
    input T,
    output Q
);

wire D;
wire q_int;

assign D = T ^ q_int;

d_ff d1(
    .clk(clk),
    .D(D),
    .Q(q_int)
);

assign Q = q_int;

endmodule
