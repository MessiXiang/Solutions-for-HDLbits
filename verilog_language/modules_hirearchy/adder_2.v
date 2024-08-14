module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire addout;
    add16 low16(a[15:0], b[15:0], 1'b0, sum[15:0], addout);
    add16 high16(a[31:16], b[31:16], addout, sum[31:16], );
endmodule

module add1 ( input a, input b, input cin, output sum, output cout );
    assign {cout, sum} = {(a & b) | (a & cin) | (b & cin), a ^ b ^ cin};
endmodule
/* not been tested
module add16 ( input [15:0] a, input [15:0] b, input cin, output [15:0] sum, output cout);
    wire [16:0]cout_wire;
    assign cout_wire[0] = cin;
    reg tmp_out;
    genvar i;
    generate
        for(i=0; i<16; i=i+1)
            begin:unit_add
                add1 add1_inst(a[i],b[i],cout_wire[i],sum[i],cout_wire[i+1]);
            end
    endgenerate
    assign cout_wire[16] = tmp_out;
    assign cout = tmp_out;
endmodule
*/