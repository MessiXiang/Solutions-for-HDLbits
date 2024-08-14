module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [100:0]cout_wire;
    assign cout_wire[0] = cin;
    genvar i;
    generate
        for(i = 0; i < 100; i = i + 1)
            begin:unit_add
                bcd_fadd add4_inst(a[i*4+3:i*4],b[i*4+3:i*4],cout_wire[i],cout_wire[i + 1],sum[i*4+3:i*4]);
            end
    endgenerate
    assign cout = cout_wire[100];

endmodule

module bcd_fadd (
    input [3:0] a,
    input [3:0] b,
    input     cin,
    output   cout,
    output [3:0] sum );
endmodule