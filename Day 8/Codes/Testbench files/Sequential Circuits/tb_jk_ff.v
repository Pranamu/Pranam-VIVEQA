`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2026 11:32:40 PM
// Design Name: 
// Module Name: tb_jk_ff
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


module tb_jk_ff();

reg clk;
reg J,K;
wire Q;

jk_ff uut(
    .clk(clk),
    .J(J),
    .K(K),
    .Q(Q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;

    J=0; K=0;
    #10;

    J=0; K=1;
    #10;

    J=1; K=0;
    #10;

    J=1; K=1;
    #20;

    $finish;
end

initial
    $monitor("Time=%0t J=%b K=%b Q=%b",$time,J,K,Q);

endmodule