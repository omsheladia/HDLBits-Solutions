module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	wire p1ac;
    wire p1df;
    wire p1af;
    wire p2ab;
    wire p2cd;
    wire p2ad;
    
    assign p1ac = p1a && p1b && p1c;
    assign p1df = p1d && p1e && p1f;
    assign p1af = p1ac | p1df;
    
    assign p2ab = p2a & p2b;
    assign p2cd = p2c & p2d;
    assign p2ad = p2ab | p2cd;
    
    assign p1y = p1af;
    assign p2y = p2ad;

endmodule
