module top_module( 
    input [254:0] in,
    output [7:0] out );
	integer i;
    reg [7:0] out_temp;
    always @(*) begin
        out_temp = 0;
        for (i = 0; i < 255; i = i + 1) begin
            if (in[i] == 1) begin
            	out_temp = out_temp + 1;  
            end
        end
        out = out_temp;
    end
endmodule
