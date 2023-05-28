`timescale 1ns / 1ps

module Test();
    reg [7:0] an_mask;
    reg [31:0] numbers;
    reg [3:0] num;
    reg clk, clk2;
    wire [7:0] anodes, segments;
    initial
    begin
        clk = 0;
        clk2 = 0;
        numbers = 0;
        num = 0;
        an_mask = 8'b11111111;
    end
    always #5 clk = ~clk;
    always #60 clk2 = ~clk2;
    always @(posedge clk2)
    begin
        num = num + 3;
        numbers = numbers << 4;
        numbers[3:0] = num;
        an_mask = an_mask << 1;
    end
    LED_CONTROL ldcntrl(.an_mask(an_mask), .number(numbers), .reset(0), .clk(clk),
    .clk_enable(1'b1), .anodes(anodes), .segments(segments));
endmodule