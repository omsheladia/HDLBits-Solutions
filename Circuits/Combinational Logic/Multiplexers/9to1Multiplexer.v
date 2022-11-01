module top_module( 
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output [15:0] out );
    always@(*) begin  // This is a combinational circuit
        case (sel)
        	3'd0 : out = a;
            3'd1 : out = b;
            3'd2 : out = c;
            3'd3 : out = d;
            3'd4 : out = e;
            3'd5 : out = f;
            3'd6 : out = g;
            3'd7 : out = h;
            4'd8 : out = i;
            default : out = {16{1'b1}};
        endcase
    end
            
endmodule
