// Exercise 3-2-1-16: Detect Both Edges
module BothEdgeDet (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
    reg [7:0] in_d, anyedge_r;
    assign anyedge = anyedge_r;

    always @(posedge clk) begin
        in_d <= in; // remember the input of previous cycle
        anyedge_r <= in ^ in_d; // use XOR to detect either edge (=(in & ~in_d) | (~in & in_d))
    end
endmodule