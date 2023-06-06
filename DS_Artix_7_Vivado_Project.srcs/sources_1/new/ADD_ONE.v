`timescale 1ns / 1ps

module ADD_ONE(
    input [2:0] D,
    output [2:0] Q 
    );
    assign Q = D + 3'b001;
endmodule
