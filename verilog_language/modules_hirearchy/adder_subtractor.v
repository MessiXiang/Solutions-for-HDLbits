module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
endmodule

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0]real_b;
    sub32 pre1(b, sub, real_b);
    wire addout;
    add16 low16(a[15:0], real_b[15:0], sub, sum[15:0], addout);
    add16 high16(a[31:16], real_b[31:16], addout, sum[31:16], );
endmodule

module sub32(input [31:0]line, input i, output [31:0]out);
    reg [31:0]tmp;
    always @(*) begin
        case (i)
            1'b0: tmp = line;
            1'b1: tmp = ~line;
        endcase
    end
    assign out = tmp;
endmodule