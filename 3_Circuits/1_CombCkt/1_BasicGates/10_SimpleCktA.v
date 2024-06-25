// Exercise 3-1-1-10: Simple Circuit A
module CktA (
    input x,
    input y,
    output z
);
    assign z = (x^y) & x;
endmodule