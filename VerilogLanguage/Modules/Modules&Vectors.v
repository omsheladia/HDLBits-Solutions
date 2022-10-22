module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] q0, q1, q2;
    my_dff8 dff0 ( .clk(clk), .d(d), .q(q0) );
    my_dff8 dff1 ( .clk(clk), .d(q0), .q(q1) );
    my_dff8 dff2 ( .clk(clk), .d(q1), .q(q2) );
    
    assign q = sel[1] ? (sel[0] ? q2:q1):(sel[0] ? q0:d);
    
endmodule
