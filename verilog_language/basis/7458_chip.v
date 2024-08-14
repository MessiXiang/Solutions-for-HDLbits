module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire p1y1, p1y2, p2y1, p2y2;
    assign {p2y1, p2y2} = {p2a & p2b, p2c & p2d};
    assign {p1y1, p1y2} = {p1a & p1b & p1c, p1d & p1e & p1f};
    assign {p1y, p2y} = {p1y1 | p1y2, p2y1 | p2y2};

endmodule