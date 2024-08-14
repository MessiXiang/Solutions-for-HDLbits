// my_dff ( input clk, input d, output q );

module top_module ( input clk, input d, output q );
    wire internal1, internal2;
    my_dff inst1(.clk(clk), .d(d), .q(internal1));
    my_dff inst2(.clk(clk), .d(internal1), .q(internal2));
    my_dff inst3(.clk(clk), .d(internal2), .q(q));
endmodule