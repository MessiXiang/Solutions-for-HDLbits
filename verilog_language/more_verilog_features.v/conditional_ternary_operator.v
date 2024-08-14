module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);
    wire [7:0]int1;
    wire [7:0]int2;
    assign int1 = (a < b)? a : b;
    assign int2 = (c < d)? c : d;
    assign min = (int1 < int2)? int1 : int2;
endmodule
