// Exercise 3-1-1-8: Truth Table
module TruthTable (
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    // based on truth table: assign f = (~x3 & x2) | (x3 & x1); 
    // can be further simplified to mux: f = x3 ? x1 : x2;
    assign f = (~x3 & x2) | (x3 & x1);
endmodule