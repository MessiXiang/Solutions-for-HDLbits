module top_module( 
    input [254:0] in,
    output [7:0] out );

    reg [7:0]cnt;
    reg [7:0]i;
    always @(*) 
    begin
        cnt = 8'd0;
        for(i = 8'd0;i < 8'd255;i = i + 8'd1)
            cnt += ((in[i] == 1'b1) ? 8'd1 : 8'd0);    
    end
    assign out = cnt;

endmodule