// Testbench for Exercise 1-1: Getting Started
module tb;
// inputs as registers, outputs as wires
wire one;

// unit under test (UUT)
one_out UUT(.one(one));

// creates fsdb file for nWave debugging
initial begin
    $fsdbDumpfile("Ex1.fsdb");
    $fsdbDumpvars(0, tb, "+mda");
end

// test
initial begin
    #5 $finish;
end

endmodule