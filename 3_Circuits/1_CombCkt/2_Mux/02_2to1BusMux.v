// Exercise 3-1-2-2: 2-to-1 Bus Mux
module 2to1BusMux( 
    input [99:0] a, b,
    input sel,
    output [99:0] out 
);
    // sel = 1, out = b
    // sel = 0, out = a
    assign out = sel ? b : a;
endmodule