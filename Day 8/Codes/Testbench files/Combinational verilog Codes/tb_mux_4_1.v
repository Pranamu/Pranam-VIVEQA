`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2026 09:12:19 PM
// Design Name: 
// Module Name: tb_mux_4_1
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


module tb_mux_4_1();

reg i0,i1,i2,i3;
reg [1:0] s;

wire y;

mux_4_1 DUT(i0,i1,i2,i3,s,y);

initial begin
    i0=0; i1=1; i2=0; i3=1;

    $monitor("s=%b y=%b",s,y);

    s=2'b00;
    #10 s=2'b01;
    #10 s=2'b10;
    #10 s=2'b11;

    #10 $finish;
end

endmodule