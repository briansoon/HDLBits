// Exercise 2-3-5: Modules and Vectors
module top_module (
    input clk,
    input [7:0] d,
    input [1:0] sel,
    output [7:0] q
);
    // module my_dff8 ( input clk, input [7:0] d, output [7:0] q );
    // interconnects
    wire [7:0] q1, q2, q3;
    reg [7:0] q_r;
    assign q = q_r;

    // three FF
    my_dff8 d1(.clk(clk), .d(d), .q(q1));
    my_dff8 d2(.clk(clk), .d(q1), .q(q2));
    my_dff8 d3(.clk(clk), .d(q2), .q(q3));

    // mux
    always @(*) begin
        case (sel)
            2'b00: q_r = d;
            2'b01: q_r = q1;
            2'b10: q_r = q2;
            2'b11: q_r = q3;
        endcase
    end
endmodule