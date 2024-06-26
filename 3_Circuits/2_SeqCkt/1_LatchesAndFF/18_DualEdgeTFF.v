// Exercise 3-2-1-18: Dual-Edge Triggered Flip-Flop
module DualEdgeTFF (
    input clk,
    input d,
    output q
);
    wire p_edge, n_edge;

    // posedge
    always @(posedge clk) begin
        p_edge <= d;    
    end

    // negedge
    always @(negedge clk) begin
        n_edge <= d;
    end

    // choose edge
    assign q = (clk) ? p_edge : n_edge;
endmodule