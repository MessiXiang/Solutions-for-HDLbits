module top_module( input in, output out );
    assign out = !in;   // or you can choose : ~in
endmodule