module uart_button_led_top(

    input clk,
    input rst,

    input [15:0] buttons,

    input uart_rx,
    output uart_tx,

    output [7:0] leds

);

wire [7:0] ascii_char;
wire button_valid;

reg tx_start;
wire tx_busy;

wire [7:0] rx_data;
wire rx_done;

reg [15:0] buttons_d;

/////////////////////////////////////////////////
// Button Decoder
/////////////////////////////////////////////////

button_decoder u_decoder(
    .buttons(buttons),
    .ascii_char(ascii_char),
    .valid(button_valid)
);

/////////////////////////////////////////////////
// UART TX
/////////////////////////////////////////////////

uart_tx u_tx(
    .clk(clk),
    .rst(rst),
    .tx_start(tx_start),
    .tx_data(ascii_char),
    .tx(uart_tx),
    .tx_busy(tx_busy)
);

/////////////////////////////////////////////////
// UART RX
/////////////////////////////////////////////////

uart_rx u_rx(
    .clk(clk),
    .rst(rst),
    .rx(uart_rx),
    .rx_data(rx_data),
    .rx_done(rx_done)
);

/////////////////////////////////////////////////
// LED Controller
/////////////////////////////////////////////////

led_controller u_led(
    .clk(clk),
    .rst(rst),
    .rx_done(rx_done),
    .rx_data(rx_data),
    .leds(leds)
);

/////////////////////////////////////////////////
// Button Edge Detect
/////////////////////////////////////////////////

always @(posedge clk or posedge rst)
begin

    if(rst)
    begin
        buttons_d <= 16'h0000;
        tx_start  <= 1'b0;
    end

    else
    begin

        tx_start <= 1'b0;

        if((buttons != 16'h0000) &&
           (buttons_d == 16'h0000) &&
           button_valid &&
           !tx_busy)
        begin
            tx_start <= 1'b1;
        end

        buttons_d <= buttons;

    end

end

endmodule