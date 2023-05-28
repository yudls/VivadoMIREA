`timescale 1ns / 1ps

module top(
    input [3:0] number,
    input sys_clk,
    input button_pushed,
    output wire [7:0] anodes,
    output wire [7:0] segments
    );
    reg [7:0] an_mask;
    reg [31:0] numbers;
    wire clk;
    wire button_enable;
    
    initial begin
        numbers = 0;
        an_mask = 8'b11111111;
    end
    
    always @(posedge button_enable)
    begin
        numbers = numbers << 4;
        numbers[3:0] = number;
        an_mask = an_mask << 1;
    end
    button_filter flt(.clk(sys_clk), .in_signal(button_pushed), .Clock_Enable(1'b1),
    .Out_signal_enable(button_enable));
    
    clk_div #(10000) dv(.clk(sys_clk), .clk2(clk));
    
    LED_CONTROL ldcntrl(.an_mask(an_mask), .number(numbers), .reset(0),
    .clk(clk), .clk_enable(1'b1), .anodes(anodes), .segments(segments));
    
endmodule
