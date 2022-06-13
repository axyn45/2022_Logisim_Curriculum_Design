//2020.4.18
`include "../define.v"

module add4(


	input  wire[`InstAddr_BUS]	pc,
	output wire[`InstAddr_BUS]	pcadd4
	
);

assign pcadd4 = pc + 4;


endmodule