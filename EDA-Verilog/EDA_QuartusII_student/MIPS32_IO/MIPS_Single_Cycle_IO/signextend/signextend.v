//2020.4.18
`include "../define.v"

module signextend(

	input wire	signE,
	input wire [`bit_width/2-1:0]		din,
	output wire	[`bit_width-1:0] 		dout 
	
);

assign dout = (signE == 1'b1) ? {{`bit_width/2{din[`bit_width/2-1]}},din[`bit_width/2-1:0]}:{{`bit_width/2{1'b0}},din[`bit_width/2-1:0]};

endmodule