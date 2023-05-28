`timescale 1ns / 1ps

module num_spliter(
    input [2:0] i,
    input [31:0] numbers,
    output reg [3:0] num
    );
    always @(*) begin
        case(i)
            3'd0: num = numbers[3:0];
            3'd1: num = numbers[7:4];
            3'd2: num = numbers[11:8];
            3'd3: num = numbers[15:12];
            3'd4: num = numbers[19:16];
            3'd5: num = numbers[23:20];
            3'd6: num = numbers[27:24];
            3'd7: num = numbers[31:28];
        endcase
     end
endmodule
