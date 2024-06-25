// Exercise 3-1-2-1: 2-to-1 Mux
module 2to1Mux( 
    input a, b, sel,
    output out 
); 
    // sel = 1, out = b
    // sel = 0, out = a
    assign out = sel ? b : a;
endmodule