module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    wire [100:0]cout_wire;
    assign cout_wire[0] = cin;
    genvar i;
    generate
        for(i = 0; i < 100; i = i + 1)
            begin:unit_add
                add1 add1_inst(a[i],b[i],cout_wire[i],sum[i],cout_wire[i + 1]);
            end
    endgenerate
    assign cout = cout_wire[100:1];


endmodule

module add1 ( input a, input b, input cin, output sum, output cout );
    assign {cout, sum} = {(a & b) | (a & cin) | (b & cin), a ^ b ^ cin};
endmodule