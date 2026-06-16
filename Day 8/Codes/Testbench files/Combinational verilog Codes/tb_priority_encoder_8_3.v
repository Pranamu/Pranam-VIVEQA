`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2026 09:31:50 PM
// Design Name: 
// Module Name: tb_priority_encoder_8_3
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


module tb_priority_encoder_8_3(

reg [7:0] d;
wire [2:0] y;

priority_encoder_8_3 DUT(d,y);

initial begin
    $monitor("d=%b y=%b",d,y);

    d=8'b00000001;
    #10 d=8'b00000010;
    #10 d=8'b00000100;
    #10 d=8'b00001000;
    #10 d=8'b00010000;
    #10 d=8'b00100000;
    #10 d=8'b01000000;
    #10 d=8'b10000000;

    #10 $finish;
end

endmodule
