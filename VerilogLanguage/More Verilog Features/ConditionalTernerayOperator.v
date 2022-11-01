module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0] ab,cd;
    
    assign ab = (a > b) ? b : a;
    assign cd = (c > d) ? d : c;
    assign min = (ab > cd) ? cd : ab;

    // assign intermediate_result1 = compare? true: false;

endmodule
