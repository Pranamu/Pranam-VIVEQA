`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2026 08:49:12 PM
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder();

reg a,b,cin;
wire sum,carry;

full_adder DUT(a,b,cin,sum,carry);

initial begin
    $monitor("a=%b b=%b cin=%b sum=%b carry=%b",
              a,b,cin,sum,carry);

    {a,b,cin}=3'b000;
    #10 {a,b,cin}=3'b001;
    #10 {a,b,cin}=3'b010;
    #10 {a,b,cin}=3'b011;
    #10 {a,b,cin}=3'b100;
    #10 {a,b,cin}=3'b101;
    #10 {a,b,cin}=3'b110;
    #10 {a,b,cin}=3'b111;

    #10 $finish;
end

endmodule
