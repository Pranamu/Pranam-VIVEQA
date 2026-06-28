`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/17/2026 12:05:47 AM
// Design Name: 
// Module Name: left_right_shifter
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


module left_right_shifter(input clk,btn1,btn2,output reg[7:0]led=8'b00000001);

reg btn1_prev=0;
reg btn2_prev=0;

always @(posedge clk) begin

    if(btn1 && !btn1_prev) begin
        if(led==8'b10000000)
            led<=8'b00000001;
        else
            led<=led<<1;
    end

    if(btn2 && !btn2_prev) begin
        if(led==8'b00000001)
            led<=8'b10000000;
        else
            led<=led>>1;
    end

    btn1_prev<=btn1;
    btn2_prev<=btn2;

end

endmodule