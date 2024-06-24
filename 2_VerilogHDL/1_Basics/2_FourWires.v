// Exercise 2-1-2: Four Wires
module FourWires (
    input a,b,c,
    output w,x,y,z
);
    // Easy method
    /*
    assign w = a;
    assign x = b;
    assign y = b;
    assign z = c;
    */

    // Concatenate
    assign {w,x,y,z} = {a,{2{b}},c};
endmodule