`timescale 1ns / 1ps

module button_filter (
    input clk,
    input in_signal,
    input Clock_Enable,
    output reg Out_signal,
    output reg Out_signal_enable,
    output wire [1:0] countout,
    output wire clken,
    output wire syncou,
    output wire k_count
    );
    wire syncout;
    sync synchronize(.clk(clk), .asyncin(in_signal), .out(syncout));
    reg clock_count;
    wire [3:0] count;
    reg clear;
    counter #(1,3) cnt(.clk(clk), .clear(clear), .ce(Clock_Enable), .out(count));
    initial
    begin
        Out_signal = 0;
        Out_signal_enable = 0;
        clear = 0;
        clock_count = 0;
    end
    always @(posedge clk) begin
        if (count == 3 && Clock_Enable == 1)
            clock_count = 1;
        else clock_count = 0;
        if (clock_count == 1) begin
            Out_signal = syncout;
            if (syncout == 1) 
                Out_signal_enable = 1;
        end
        else Out_signal_enable = 0;
        if (syncout == 0 && Out_signal == 0)
            clear = 1;
        else
            clear = 0;
        end
    assign countout = count ;
    assign clken = Clock_Enable;
    assign syncou = syncout;
    assign k_count = clock_count;
endmodule