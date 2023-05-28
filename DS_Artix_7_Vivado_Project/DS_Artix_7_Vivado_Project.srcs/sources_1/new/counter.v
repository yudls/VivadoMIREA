`timescale 1ns / 1ps

module counter # (count = 1, modul = 2)(
    input clk,
    input ce,
    input clear,
    output wire [$clog2(modul):0] out
    );
    reg [$clog2(modul):0] outC;
    initial
    begin
        outC = (count > 0)? 0 : modul;
    end
    always @(posedge clk) begin
        if (clear) outC = 0;
        if (ce) begin
            outC = (outC + count);
            if (outC > modul)
                outC = 0;
        end
    end
assign out = outC;
endmodule
