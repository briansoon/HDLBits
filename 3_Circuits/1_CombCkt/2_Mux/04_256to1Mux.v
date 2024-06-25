// Exercise 3-1-2-4: 256-to-1 Mux
module 256to1Mux (
    input [255:0] in,
    input [7:0] sel,
    output out
);
    // use sel as index
    assign out = in[sel];
endmodule