module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
	genvar i;
    wire [99:0] carry;
    
    //always @(*) begin 
    generate
        bcd_fadd add1 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(carry[0]), .sum(sum[3:0]));
        for(i = 4;i < 400; i = i+4) begin : add_100
            bcd_fadd add100 (.a(a[i+3:i]), .b(b[i+3:i]), .cin(carry[i/4-1]), .cout(carry[i/4]), .sum(sum[i+3:i]) );
        end 
    endgenerate
    assign cout = carry[99];
endmodule
