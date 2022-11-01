module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
	genvar i;
    adder add1 (.p(a[0]), .q(b[0]), .ci(cin), .co(cout[0]), .add(sum[0]));
    //always @(*) begin 
        generate
            for(i = 1;i < 100; i = i+1) begin : add_100

                adder add100 (.p(a[i]), .q(b[i]), .ci(cout[i-1]), .co(cout[i]), .add(sum[i]) );

            end 
        endgenerate
    //end                                                           
endmodule

module adder(      
    input p,input q, input ci,
    output co, output add );
    assign add = p + q + ci;
    assign co = p&q | p&ci | q&ci;
endmodule    
   
