`timescale 1ns / 1ps

module sync(
    input clk,
    input asyncin,
    output out);
    reg outreg;
    reg dt;
    initial
    begin
        outreg = 0;
        dt = 0;
    end
    always@(posedge clk) begin
        dt <= asyncin;
    end
    always@(posedge clk) begin
        outreg <= dt;
    end
    assign out = outreg;
endmodule