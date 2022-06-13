`include "../define.v"

module add(


	input  wire[`InstAddr_BUS]	a,
	input  wire[`InstAddr_BUS]	b,
	output wire[`InstAddr_BUS]	sum
	
);

assign sum = a + b;


endmodule