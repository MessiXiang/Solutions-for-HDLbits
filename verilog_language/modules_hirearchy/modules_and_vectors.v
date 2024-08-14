module my_dff8 ( input clk, input [7:0] d, output [7:0] q );
    // content
endmodule

module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q
);
    wire [7:0] int1;
    wire [7:0] int2;
    wire [7:0] int3;
    reg [7:0]tmp_out;
    my_dff8 inst1(clk, d, int1);
    my_dff8 inst2(clk, int1, int2);
    my_dff8 inst3(clk, int2, int3);
    assign q = tmp_out;
    always @(*) begin
        case(sel)// wire is non-logic, cannot be used inside <begin><end>
            // also, assign is contunuous, cannot be used too.
            2'b00: tmp_out = d;
            2'b01: tmp_out = int1;
            2'b10: tmp_out = int2;
            2'b11: tmp_out = int3;
        endcase
    end
endmodule