// Exercise 3-1-2-5: 256-to-1 4-Bit Mux
module Mux_256to1_4Bit (
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out
);
    // We can't part-select multiple bits without an error, but we can select one bit at a time,
	// four times, then concatenate them together.
    assign out = {in[sel*4+3],in[sel*4+2],in[sel*4+1],in[sel*4]};
endmodule