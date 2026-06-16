`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2026 09:21:15 PM
// Design Name: 
// Module Name: tb_decoder_3_8
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


module tb_decoder_3_8();

reg [2:0] a;
wire [7:0] y;

decoder3x8 DUT(a,y);

initial begin
    $monitor("a=%b y=%b",a,y);

    repeat(8)
    begin
        a=$random;
        #10;
    end

    $finish;
end

endmodule