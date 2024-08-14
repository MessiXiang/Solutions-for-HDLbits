module top_module( 
    input [99:0] in,
    output [99:0] out
);
    reg [99:0]tmp;
    reg [31:0]i;
    always @(*)
    begin
        for(i = 0;i < 100;i = i + 1)
            tmp[99 - i] = in[i];
    end
    assign out = tmp;
endmodule