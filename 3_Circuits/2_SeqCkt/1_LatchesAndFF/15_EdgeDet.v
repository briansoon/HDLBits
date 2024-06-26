// Exercise 3-2-1-15: Detect an Edge
module PosEdgeDet (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0] in_d, pedge_r;
    assign pedge = pedge_r;

    always @(posedge clk) begin
        in_d <= in; // remember the input of previous cycle
        pedge_r <= in & ~in_d; // posedge occurs when current input is 1 and previous input is 0
    end
endmodule