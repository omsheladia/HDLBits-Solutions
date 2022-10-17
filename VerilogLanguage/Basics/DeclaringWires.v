`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire and_ab;
    wire and_cd;
    wire or_ad;
    
    assign and_ab = a & b;
    assign and_cd = c & d;
    assign or_ad = and_ab | and_cd;
    assign out = or_ad;
    assign out_n = ~or_ad;

endmodule
