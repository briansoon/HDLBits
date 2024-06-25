// Exercise 2-2-2: Vectors in More Details
`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module VecDetail (
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo
);
    // concatenate
    assign {out_hi, out_lo} = in;

    // beginner
    /*
    assign out_hi = in[15:8];
    assign out_lo = in[7:0];
    */
endmodule