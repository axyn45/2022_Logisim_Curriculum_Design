//全局关宏定义
`define bit_width 		32    
`define nRstEnable 		1'b0 
`define Enable 			1'b1 


//移位寄存器相关宏定义
`define shift_op_width 	2
`define shift_op_sll `shift_op_width'b00
`define shift_op_sra `shift_op_width'b01
`define shift_op_srl `shift_op_width'b10


//RISCALU运算器相关宏定义
`define ALUOP_width	4
`define ALUOPBus 		3:0
`define ALUOP_sll   			`ALUOP_width'b0000	//shift_left_logic   
`define ALUOP_sra 			`ALUOP_width'b0001	//shift_right_arithmetic 
`define ALUOP_srl   			`ALUOP_width'b0010	//shift_right_logic   
`define ALUOP_mul_unsigned	`ALUOP_width'b0011

`define ALUOP_div_unsigned	`ALUOP_width'b0100
`define ALUOP_add		     	`ALUOP_width'b0101
`define ALUOP_sub		     	`ALUOP_width'b0110
`define ALUOP_and		     	`ALUOP_width'b0111

`define ALUOP_or			 	`ALUOP_width'b1000
`define ALUOP_xor				`ALUOP_width'b1001
`define ALUOP_nor		  		`ALUOP_width'b1010

`define ALUOP_slt_signed  	`ALUOP_width'b1011	//set_less_than_signed
`define ALUOP_slt_unsigned	`ALUOP_width'b1100	//set_less_than

`define ALUOP_mul_signed  	`ALUOP_width'b1101
`define ALUOP_div_signed  	`ALUOP_width'b1110


//RISCREG相关宏定义  
`define REG_Addr_width 	5
`define RegAddr_BUS 		4:0    
`define REG_Number 		32


//RISCRAM相关宏定义
`define RAM_Addr_width 		9  
`define Addr_width 			9
`define RAM_Mode_Word    	2'b00
`define RAM_Mode_Byte   	2'b01
`define RAM_Mode_Half_Word	2'b10


//RISCCU相关宏定义
`define InstAddr_BUS	31:0
`define Inst_BUS 		31:0
`define OP_BUS 		5:0
`define FUNC_BUS 		5:0
`define Target_BUS 	25:0
`define Shamt_BUS 	4:0
`define Imm_BUS 		15:0


//IO相关宏定义
`define DispSegment 7