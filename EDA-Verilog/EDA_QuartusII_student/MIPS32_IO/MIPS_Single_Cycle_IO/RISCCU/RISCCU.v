`include "../define.v"

module RISCCU(

	input wire 					Z,
	input wire[`OP_BUS]		op,
	input wire[`FUNC_BUS]func,

//uCommand
	output wire					RStoPC , 
	output wire					TargettoPC ,
	output wire					MEMtoREG ,      			
	output wire					Branch , 
	output wire					nWriteMEM ,
	output wire	[`ALUOPBus]	ALUOP ,	
	output wire					ShamttoA ,
	output wire					Lui ,  	
	output wire					ImmtoB , 	
	output wire					Sigextend , 
	output wire					nWriteREG ,      			
	output wire					PCtoR31 , 
	output wire					REGDes ,
	output wire	[1:0]			Mode,
	output wire					Halt
	
);
//op	
	wire					R_Type ;
	//R
	wire					iadd ; 
	wire					isub ;
	wire					iaddu ; 
	wire					isubu ;
	
	wire					imult ;
	wire					idiv ; 
	wire					imultu ;
	wire					idivu ;   	
	
	wire					iand ; 
	wire					ior  ;	
	wire					inor ; 
	wire					ixor ; 
	
	wire					islt ; 
	wire					isltu ; 

	
	wire					isll ; 
	wire					isrl ; 
	wire					isra ; 
	wire					isllv ; 
	wire					isrlv ; 
	wire					israv ; 
	
	wire					ijr  ; 
	
	wire 					syscall;
	
	//I	
	wire					ilw  ;
	wire					ilbu  ;
	wire					ilhu  ;	
	wire					isw  ;
	wire					isb  ;	
	wire					ish  ;		

	
	wire					iaddi;
	wire					iaddiu;	
	wire					isubi;
	wire					isubiu;		
	wire					iandi;	
	wire					iori ;
	wire					inori ;	
	wire					ixori ;	
	
	wire					ilui  ;	
	wire					ibeq ; 
	wire					ibne ; 
	wire					islti ; 	
	wire					isltiu ; 	
	
	//J	
	wire					ij   ; 
	wire					ijal ;	
	
//inst decode	

InstDecoder InstDecoder0(
	.op(op),
	.func(func),

//R
	.R_Type(R_Type),
	.iadd(iadd) , 
//	.iaddu(iaddu) , 	
//	.isub(isub) ,
//	.isubu(isubu) ,
	
//	.imult(imult) ,
//	.imultu(imultu) ,
//	.idiv(idiv) , 	
//	.idivu(idivu) ,   	
	
//	.iand(iand) , 
	.ior(ior)  ,	
//	.inor(inor) , 
//	.ixor(ixor) , 
	
//	.islt(islt) , 
//	.isltu(isltu) , 
	
//	.isll(isll) , 
//	.isrl(isrl) , 
//	.isra(isra) , 
//	.isllv(isllv) , 
//	.isrlv(isrlv) , 
//	.israv(israv) , 
	
	.ijr(ijr)  , 
	
	.syscall(syscall),	
//I	
//	.ilw(ilw)  ,
//	.ilhu(ilhu)  ,
//	.ilbu(ilbu)  ,
	
	.isw(isw)  ,
//	.ish(ish)  ,		
//	.isb(isb)  ,	
	
	.iaddi(iaddi),
//	.iaddiu(iaddiu),	
//	.isubi(isubi),
//	.isubiu(isubiu),		
//	.iandi(iandi),	
//	.iori(iori) ,
//	.inori(inori) ,	
//	.ixori(ixori) ,	
	
	.ilui(ilui)  ,
	
	.ibeq(ibeq) , 
//	.ibne(ibne) , 
//	.islti(islti) , 	
//	.isltiu(isltiu) ,	
//J	
	.ij(ij)   , 
	.ijal(ijal)
);

//uCommand:
uCommand uCommand0(
	.Z(Z),
	.R_Type(R_Type),	
	.iadd(iadd), 
//	.iaddu(iaddu), 	
//	.isub(isub),
//	.isubu(isubu),
	
//	.imult(imult),
//	.imultu(imultu),
//	.idiv(idiv), 	
//	.idivu(idivu),   	
	
//	.iand(iand), 
	.ior(ior),	
//	.inor(inor), 
//	.ixor(ixor), 
	
//	.islt(islt), 
//	.isltu(isltu), 
	
//	.isll(isll), 
//	.isrl(isrl), 
//	.isra(isra), 
//	.isllv(isllv), 
//	.isrlv(isrlv), 
//	.israv(israv), 
	
	.ijr(ijr), 
	
	.syscall(syscall),	
//I	
//	.ilw(ilw),
//	.ilhu(ilhu),
//	.ilbu(ilbu),
	
	.isw(isw),
//	.ish(ish),		
//	.isb(isb),	
	
	.iaddi(iaddi),
//	.iaddiu(iaddiu),	
//	.isubi(isubi),
//	.isubiu(isubiu),		
//	.iandi(iandi),	
//	.iori(iori),
//	.inori(inori),	
//	.ixori(ixori),	
	
	.ilui(ilui),
	
	.ibeq(ibeq), 
//	.ibne(ibne), 
//	.islti(islti), 	
//	.isltiu(isltiu),	
//J	
	.ij(ij), 
	.ijal(ijal),	
//uCommand
	.RStoPC(RStoPC) , 
	.TargettoPC(TargettoPC) ,
	.MEMtoREG(MEMtoREG) ,      			
	.Branch(Branch) , 
	.nWriteMEM(nWriteMEM) ,
	.ALUOP(ALUOP) ,	
	.ShamttoA(ShamttoA) ,
	.Lui(Lui) ,  	
	.ImmtoB(ImmtoB) , 	
	.Sigextend(Sigextend) , 
	.nWriteREG(nWriteREG) ,      			
	.PCtoR31(PCtoR31) , 
	.REGDes(REGDes) ,
	.Mode(Mode),
	.Halt(Halt)
);
	
endmodule