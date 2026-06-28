`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/17/2026 12:02:10 AM
// Design Name: 
// Module Name: adjustable_blink
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


module adjustable_blink(
    input clk,
    input btn_inc,
    input btn_dec,
    output reg led = 0
);

reg [2:0] speed_sel = 3'd2;

reg [26:0] counter = 0;
reg [26:0] divider;

always @(*)
begin
    case(speed_sel)
        3'd0: divider = 27'd47_999_999; 
        3'd1: divider = 27'd23_999_999; 
        3'd2: divider = 27'd11_999_999; 
        3'd3: divider = 27'd5_999_999;  
        3'd4: divider = 27'd2_999_999;  
        default: divider = 27'd11_999_999;
    endcase
end

always @(posedge clk)
begin
    
    if(btn_inc && speed_sel < 3'd4)
        speed_sel <= speed_sel + 1;

    
    else if(btn_dec && speed_sel > 3'd0)
        speed_sel <= speed_sel - 1;

    if(counter >= divider)
    begin
        counter <= 0;
        led <= ~led;
    end
    else
        counter <= counter + 1;
end

endmodule