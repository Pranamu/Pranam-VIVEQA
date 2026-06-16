`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2026 09:11:04 PM
// Design Name: 
// Module Name: mux_4_1
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


module mux_2_1(
    input a,b,s,
    output y
);

assign y = s ? b : a;

endmodule

module mux_4_1(
    input i0,i1,i2,i3,
    input [1:0] s,
    output y
);

wire w1,w2;

mux_2_1 M1(i0,i1,s[0],w1);
mux_2_1 M2(i2,i3,s[0],w2);
mux_2_1 M3(w1,w2,s[1],y);

endmodule