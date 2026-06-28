`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2026 11:58:39 PM
// Design Name: 
// Module Name: multi_freq_blinker
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


module multi_freq_blinker(
    input clk,
    output clk_out,
    output reg led1 = 0,   
    output reg led2 = 0,  
    output reg led3 = 0,   
    output reg led4 = 0    
);

assign clk_out = clk;

reg [26:0] counter = 0;

always @(posedge clk)
begin
    if(counter == 27'd23_999_999)
        counter <= 27'd0;
    else
        counter <= counter + 1;

    if(counter == 27'd23_999_999)
        led1 <= ~led1;

    if(counter == 27'd11_999_999)
        led2 <= ~led2;

    if(counter == 27'd5_999_999)
        led3 <= ~led3;

    if(counter == 27'd2_999_999)
        led4 <= ~led4;
end

endmodule
