module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
endmodule

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire addout;
    add16 low16(a[15:0], b[15:0], 1'b0, sum[15:0], addout);
    add16 high16(a[31:16], b[31:16], addout, sum[31:16], );
endmodule
