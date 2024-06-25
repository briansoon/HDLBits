// Exercise 2-5-6: Generate For-Loop: 100-bit Binary Adder 2
module GenForBinAdd (
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum
);
    // first full-adder
    assign sum[0] = a[0] ^ b[0] ^ cin;
    assign cout[0] = a[0] & b[0] |  cin & (a[0] ^ b[0]);

    // full adders
    generate
        genvar i;
        for (i = 1; i < 100; i = i + 1)
        begin: binadd
            assign sum[i] = a[i] ^ b[i] ^ cout[i-1];
            assign cout[i] = a[i] & b[i] | cout[i-1] & (a[i] ^ b[i]);
        end
    endgenerate*/
    
    // alternative: array instantiate
    /*
    FA fafa [99:0] (
        .a(a),
        .b(b),
        .cin({cout[98:0],cin}),
        .cout(cout),
        .sum(sum)
    );
    */
endmodule

module FA (
    input a, b, cin,
    output cout, sum
);
    assign {cout,sum} = {((a & b) | (cin & (a ^ b))),(a ^ b ^ cin)};
endmodule