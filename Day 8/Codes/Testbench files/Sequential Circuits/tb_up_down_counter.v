`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2026 11:46:27 PM
// Design Name: 
// Module Name: tb_up_down_counter
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


module tb_up_down_counter();

reg clk,rst,load,up_down;
reg [3:0] data;
wire [3:0] count;

up_down_counter uut(
    .clk(clk),
    .rst(rst),
    .load(load),
    .up_down(up_down),
    .data(data),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    clk=0;
    rst=1;
    load=0;
    up_down=1;
    data=0;

    #10 rst=0;

    #30;

    load=1;
    data=4'd10;
    #10 load=0;

    #30 up_down=0;

    #50 $finish;
end

initial
    $monitor("Time=%0t UpDown=%b Count=%d",
              $time,up_down,count);

endmodule