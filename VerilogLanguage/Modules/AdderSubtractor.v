module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire carry, carry1;
    wire [31:0] bxor;
    assign bxor = b ^ {32{sub}};
    
    add16 addl ( .a(a[15:0]), .b(bxor[15:0]), .cin(sub), .cout(carry), .sum(sum[15:0] ) );
    add16 add2 ( .a(a[31:16] ), .b(bxor[31:16] ), .cin(carry), .cout(carry1), .sum(sum[31:16] ) );
endmodule
