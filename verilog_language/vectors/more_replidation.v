module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    assign out = {~{a, b, c, d, e} ^ {5{a}},
                  ~{a, b, c, d, e} ^ {5{b}},
                  ~{a, b, c, d, e} ^ {5{c}},
                  ~{a, b, c, d, e} ^ {5{d}},
                  ~{a, b, c, d, e} ^ {5{e}}};

    /*
    wire [24:0] top, bottom;
	assign top    = { {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} };
	assign bottom = {5{a,b,c,d,e}};
	assign out = ~top ^ bottom;	// Bitwise XNOR

	// This could be done on one line:
	// assign out = ~{ {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} } ^ {5{a,b,c,d,e}};
    */

endmodule