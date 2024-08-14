`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

    wire and_1, and_2;
    assign {and_1, and_2} = {a & b, c & d};
    assign {out, out_n} = {and_1 | and_2, ~(and_1 | and_2)};

endmodule