//2020.4.18

`include "../define.v"

module Splitter(

	
	input wire[`Inst_BUS] 		inst,
	
	output wire[`OP_BUS]			op,
	output wire[`FUNC_BUS]		func,

	output wire[`Target_BUS]	target , 
	output wire[`Shamt_BUS]		shamt , 
	output wire[`Imm_BUS]		imm_offset , 	
	output wire[`RegAddr_BUS]	rs , 
	output wire[`RegAddr_BUS]	rt , 
	output wire[`RegAddr_BUS]	rd  
	
);

	assign op = 	inst[31:26];	
	assign func =	inst[5:0];
	
	assign target =	inst[25:0];	
	assign shamt = 	inst[10:6];	
	assign imm_offset = inst[15:0];	
	assign rs = inst[25:21];	
	assign rt = inst[20:16];	
	assign rd = inst[15:11];		
	
	
endmodule