// Exercise 3-2-1-9: DFF4
module DFF4 (
    input clk,
    input d, 
    input r,   // synchronous reset
    output q
);
    reg q_r;
    assign q = q_r;

    always @(posedge clk) begin
        if (r) q_r <= 0;
        else q_r <= d; 
    end
endmodule