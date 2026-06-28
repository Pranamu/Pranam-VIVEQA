`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/17/2026 12:07:14 AM
// Design Name: 
// Module Name: tb_left_right_shifter
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


module tb_left_right_shifter();

reg clk;
reg btn_left;
reg btn_right;
wire [7:0] led;

left_right_shifter uut(
    .clk(clk),
    .btn_left(btn_left),
    .btn_right(btn_right),
    .led(led)
);
initial begin
    clk =0;
    forever begin
     clk = ~clk;
     #5;
     end
end
initial begin
    clk = 0;
    btn_left = 0;
    btn_right = 0;

    repeat(8)
    begin
        #10 btn_left = 1;
        #10 btn_left = 0;
    end

    repeat(8)
    begin
        #10 btn_right = 1;
        #10 btn_right = 0;
    end

    #50 $finish;
end

initial
    $monitor("Time=%0t LED=%b",$time,led);

endmodule
