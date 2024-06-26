// Exercise 3-2-1-7: D Latch
module D_Latch (
    input d,
    input ena,
    output q
);
    reg q_r;
    assign q = q_r;
    
    // latch is created with comb
    always @(*) begin
        if (ena)
            q_r = d;
    end
endmodule