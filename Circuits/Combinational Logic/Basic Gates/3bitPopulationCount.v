module top_module( 
    input [2:0] in,
    output [1:0] out );
    integer i;
    wire tmp = 0;
    always @(*) begin
        out = tmp;
        for (i=0;i<3;i = i+1) begin
            out = in[i] ? out+1 : out;
        end
    end
endmodule
