module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
endmodule

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire choose;
    wire [15:0]out0;
    wire [15:0]out1;
    add16 low16(a[15:0], b[15:0], 1'b0, sum[15:0], choose);
    add16 high16_0(a[31:16], b[31:16], 1'b0, out0,);
    add16 high16_1(a[31:16], b[31:16], 1'b1, out1,);

    reg [15:0]tmp;
    always @(*) 
    begin
        case(choose)
            1'b0:tmp = out0;
            1'b1:tmp = out1;
        endcase
    end
    assign sum = {tmp, sum[15:0]};

endmodule