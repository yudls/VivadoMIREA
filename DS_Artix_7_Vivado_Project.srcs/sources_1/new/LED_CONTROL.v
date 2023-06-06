`timescale 1ns / 1ps

module LED_CONTROL(
    input clk,
    input clk_enable,
    input reset,
    input [7:0] an_mask,
    input [31:0] number,
    output [7:0] anodes,
    output [7:0] segments
    );
    reg [2:0] i;
    wire [3:0] num_i;
    
    initial begin
    i = 0;
    end
    
    assign anodes = ~(8'b1 << i) | an_mask;
    
    always @(posedge clk) begin
        if(clk_enable)
            i <= i + 3'b1;
        if(reset)
            i <= 0;
    end
    
    num_spliter num_spliter(.i(i), .numbers(number), .num(num_i));
    num_to_seg num_to_seg(.in(num_i), .out(segments));
endmodule
