`timescale 1ns / 1ps

module clk_div #(div = 2)(
    input clk,
    output reg clk2
    );
    reg [$clog2(div/2):0] cnt;
    
    always @(posedge clk) begin
        cnt <= cnt + 1;
        if (cnt == div) begin
            cnt <= 0;
            clk2 <= ~clk2;
        end
    end
endmodule
