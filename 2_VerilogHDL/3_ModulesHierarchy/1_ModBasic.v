// Exercise 2-3-1: Module Basics
module top_module (
    input a,
    input b,
    output out
);
    // module mod_a( input in1, input in2, output out );
    mod_a a1(a,b,out);// by position
    // mod_a a2(.in1(a), .in2(b), .out(out)); // by name
endmodule