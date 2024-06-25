// Exercise 2-3-4: Three Modules
module top_module (
    input clk,
    input d,
    output q
);
    // module my_dff ( input clk, input d, output q );
    // interconnects
    wire q1, q2;

    // three FF
    my_dff d1(.clk(clk), .d(d), .q(q1));
    my_dff d2(.clk(clk), .d(q1), .q(q2));
    my_dff d3(.clk(clk), .d(q2), .q(q));
endmodule