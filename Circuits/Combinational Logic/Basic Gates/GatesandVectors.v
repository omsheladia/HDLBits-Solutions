module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
	integer i;
    always @(*) begin
        for (i = 0;i<3;i=i+1) begin
            out_both[i] = in[i] & in[i+1];
            out_any[3-i] = in[3-i] | in[2-i];
            out_different[i] = in[i] ^ in[i+1];
        end
    end
    assign out_different[3] = in[3] ^ in[0];
endmodule
