// Exercise 3-2-1-17: Edge Capture Register
module EdgeCapReg (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg [31:0] out_r, in_d;
    wire [31:0] set;
    assign out = out_r;
    assign set = ~in & in_d;
    
    always @(posedge clk) begin
        in_d <= in; // keep previous input value
    end

    always @(posedge clk) begin
        if (reset)
            out_r <= 0;
        else   
            out_r <= set | out_r; // to maintain the output, the immediate edge is ORed with the previous cycle out_r
    end
endmodule