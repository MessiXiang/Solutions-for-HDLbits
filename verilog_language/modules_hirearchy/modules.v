module mod_a ( input in1, input in2, output out );
    // Module body
endmodule

module top_module ( input a, input b, output out );
    mod_a inst(.out(out), .in1(a), .in2(b));
endmodule