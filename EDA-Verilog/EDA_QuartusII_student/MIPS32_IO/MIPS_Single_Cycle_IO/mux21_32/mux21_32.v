//2020.4.18
`include "../define.v"

module mux21_32(

	input wire	sel,	
	input wire [`bit_width-1:0]		a,
	input wire [`bit_width-1:0]		b,	
	output wire	[`bit_width-1:0] 		c
	
);

assign c = (sel == 1'b0) ? a:b;

endmodule