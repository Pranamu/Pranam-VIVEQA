`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2026 11:28:26 PM
// Design Name: 
// Module Name: tb_sr_latch
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


module tb_sr_latch();

reg S, R;
wire Q, Qbar;

sr_latch uut(
    .S(S),
    .R(R),
    .Q(Q),
    .Qbar(Qbar)
);

initial begin
    $monitor("Time=%0t S=%b R=%b Q=%b Qbar=%b",
              $time,S,R,Q,Qbar);

    S=1; R=1;
    #10 S=0; R=1;
    #10 S=1; R=1;
    #10 S=1; R=0;
    #10 S=1; R=1;
    #10 S=0; R=0;
    #10 $finish;
end

endmodule
