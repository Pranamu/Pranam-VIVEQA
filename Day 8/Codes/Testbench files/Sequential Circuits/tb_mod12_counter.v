`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2026 11:42:51 PM
// Design Name: 
// Module Name: tb_mod12_counter
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


module tb_mod12_counter();

reg clk,rst,load;
reg [3:0] data;
wire [3:0] count;

mod12_counter uut(
    .clk(clk),
    .rst(rst),
    .load(load),
    .data(data),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    clk=0;
    rst=1;
    load=0;
    data=0;

    #10 rst=0;

    #20 load=1;
    data=4'd8;
    #10 load=0;

    #80 $finish;
end

initial
    $monitor("Time=%0t Count=%d",$time,count);

endmodule
