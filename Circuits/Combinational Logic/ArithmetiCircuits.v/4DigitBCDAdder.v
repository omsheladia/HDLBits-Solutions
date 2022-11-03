module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire [2:0] carry;
    
    bcd_fadd adder1(a[3:0],b[3:0],cin,carry[0],sum[3:0]);
    bcd_fadd adder2(a[7:4],b[7:4],carry[0],carry[1],sum[7:4]);
    bcd_fadd adder3(a[11:8],b[11:8],carry[1],carry[2],sum[11:8]);
    bcd_fadd adder4(a[15:12],b[15:12],carry[2],cout,sum[15:12]);
    
endmodule
