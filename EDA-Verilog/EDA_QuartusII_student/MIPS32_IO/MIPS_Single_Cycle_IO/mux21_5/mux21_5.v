//2020.4.18
`include "../define.v"

module mux21_5(

	input wire	sel,	
	input wire 	[`RegAddr_BUS]		a,
	input wire 	[`RegAddr_BUS]		b,	
	output wire	[`RegAddr_BUS] 	c
	
);

assign c = (sel == 1'b0) ? a:b;

endmodule