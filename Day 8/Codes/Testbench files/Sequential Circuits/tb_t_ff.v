`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2026 11:36:11 PM
// Design Name: 
// Module Name: tb_t_ff
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


module tb_t_ff();

reg clk;
reg T;
wire Q;

t_ff uut(
    .clk(clk),
    .T(T),
    .Q(Q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;

    T = 0;
    #10;

    T = 1;
    #40;

    T = 0;
    #20;

    $finish;
end

initial
    $monitor("Time=%0t T=%b Q=%b",$time,T,Q);

endmodule