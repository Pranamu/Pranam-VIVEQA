`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2026 09:05:50 PM
// Design Name: 
// Module Name: tb_ripple_carry_adder
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


module tb_ripple_carry_adder();

reg [3:0] A,B;
reg Cin;

wire [3:0] Sum;
wire Cout;

ripple_carry_adder DUT(A,B,Cin,Sum,Cout);

initial begin
    $monitor("A=%d B=%d Cin=%b Sum=%d Cout=%b",
              A,B,Cin,Sum,Cout);

    A=4'd5; B=4'd3; Cin=0;
    #10 A=4'd9; B=4'd7;
    #10 A=4'd15; B=4'd1;

    #10 $finish;
end

endmodule
