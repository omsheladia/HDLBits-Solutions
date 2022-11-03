module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    wire [100:0] res;
    assign res = a + b +cin;
    assign cout = res[100];
    assign sum = res[99:0];
    
endmodule

