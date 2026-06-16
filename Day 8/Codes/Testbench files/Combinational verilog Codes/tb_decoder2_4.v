`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2026 08:56:09 PM
// Design Name: 
// Module Name: tb_decoder2_4
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


module tb_decoder2_4();

reg [1:0] a;
wire [3:0] y;

decoder2x4 DUT(a,y);

initial begin
    $monitor("a=%b y=%b",a,y);

    a=2'b00;
    #10 a=2'b01;
    #10 a=2'b10;
    #10 a=2'b11;

    #10 $finish;
end

endmodule