module top_module (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
); 
    assign out_sop = (~a&~b&c) | (c&d);
    assign out_pos = (~a|b) & (~b|d) & (c);
    assign output = x2;

endmodule
