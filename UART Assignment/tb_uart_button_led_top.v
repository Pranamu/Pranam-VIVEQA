`timescale 1ns/1ps

module tb_uart_button_led_top;

reg clk;
reg rst;

reg [15:0] buttons;

reg uart_rx;
wire uart_tx;

wire [7:0] leds;

uart_button_led_top DUT(
    .clk(clk),
    .rst(rst),
    .buttons(buttons),
    .uart_rx(uart_rx),
    .uart_tx(uart_tx),
    .leds(leds)
);

/////////////////////////////////////////////////
// Clock
/////////////////////////////////////////////////

initial
begin
    clk = 0;
    forever #20 clk = ~clk;   // 25 MHz approx
end

/////////////////////////////////////////////////
// Test
/////////////////////////////////////////////////

initial
begin

    rst = 1;
    buttons = 0;
    uart_rx = 1;

    #200;

    rst = 0;

    /////////////////////////////////////
    // Press Button 0
    /////////////////////////////////////

    buttons = 16'h0001;
    #1000;

    buttons = 16'h0000;
    #50000;

    /////////////////////////////////////
    // Press Button A
    /////////////////////////////////////

    buttons = 16'h0400;
    #1000;

    buttons = 16'h0000;
    #50000;

    /////////////////////////////////////
    // Press Button F
    /////////////////////////////////////

    buttons = 16'h8000;
    #1000;

    buttons = 16'h0000;
    #50000;

    $stop;

end

endmodule