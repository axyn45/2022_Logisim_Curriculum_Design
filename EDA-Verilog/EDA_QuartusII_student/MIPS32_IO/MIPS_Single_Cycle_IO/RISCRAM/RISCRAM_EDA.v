`include "../define.v"
`timescale 1ns / 1ns
module RISCRAM_EDA(Din,RWn,Addr,Mode,CLK,Dout); 
	input [`RAM_Addr_width-1:0] Addr;   //字节地址
	input [`bit_width-1:0] Din;
	input [1:0] Mode;
	input RWn,CLK;
	output [`bit_width-1:0] Dout;
	
	wire [7:0] Dout3,Dout2,Dout1,Dout0;	
	wire [7:0] Din3,Din2,Din1,Din0;
	wire RW3n,RW2n,RW1n,RW0n;		

    //定义存储体，若RAM_Addr_width为9位，则存储容量为4*128K=512B(位扩展)
	
	data_ram0 ram0 (
		.address(Addr[`RAM_Addr_width-1:2]),
		.clock(CLK),
		.data(Din0),
		.wren(!RW0n),
		.q(Dout0)	 
	 );
	 
	data_ram1 ram1 (
		.address(Addr[`RAM_Addr_width-1:2]),
		.clock(CLK),
		.data(Din1),
		.wren(!RW1n),
		.q(Dout1)	 
	 );
	 
	data_ram2 ram2 (
		.address(Addr[`RAM_Addr_width-1:2]),
		.clock(CLK),
		.data(Din2),
		.wren(!RW2n),
		.q(Dout2)	 
	 );

	data_ram3 ram3 (
		.address(Addr[`RAM_Addr_width-1:2]),
		.clock(CLK),
		.data(Din3),
		.wren(!RW3n),
		.q(Dout3)	 
	 );
	 

	//读进程
	wire [`bit_width-1:0] DoutW,DoutB,DoutH;
	
	assign DoutW = {Dout3,Dout2,Dout1,Dout0};	
	assign DoutB =	(Addr[1:0]==2'b00)?	{24'b0,Dout0}:
						(Addr[1:0]==2'b01)?	{24'b0,Dout1}:
						(Addr[1:0]==2'b10)?	{24'b0,Dout2}:
													{24'b0,Dout3};
	assign DoutH = (Addr[1]==1'b0)?	{16'b0,Dout1,Dout0}:
												{16'b0,Dout3,Dout2};	
	assign Dout = 	(Mode==2'b00)? DoutW:
						(Mode==2'b01)? DoutB:
						(Mode==2'b10)? DoutH:
											DoutW;

	//写进程
	wire [`bit_width-1:0] DinW,DinB,DinH;	
	
	assign RW3n = !(!RWn && (Mode==2'b00 ||(Mode==2'b01 && Addr[1:0]==2'b11) || (Mode==2'b10 && Addr[1]==1'b1) ));
	assign RW2n = !(!RWn && (Mode==2'b00 ||(Mode==2'b01 && Addr[1:0]==2'b10) || (Mode==2'b10 && Addr[1]==1'b1) ));	
	assign RW1n = !(!RWn && (Mode==2'b00 ||(Mode==2'b01 && Addr[1:0]==2'b01) || (Mode==2'b10 && Addr[1]==1'b0) ));
	assign RW0n = !(!RWn && (Mode==2'b00 ||(Mode==2'b01 && Addr[1:0]==2'b00) || (Mode==2'b10 && Addr[1]==1'b0) ));
	
	assign DinW =  Din;
	assign DinB = 	(Addr[1:0]==2'b00)?	{24'b0,Din[7:0]}:
						(Addr[1:0]==2'b01)?	{16'b0,Din[7:0],8'b0}:
						(Addr[1:0]==2'b10)?	{8'b0,Din[7:0],16'b0}:
													{Din[7:0],24'b0};	
	assign DinH =  (Addr[1]==1'b0)?	{16'b0,Din[15:0]}:
												{Din[15:0],16'b0};						
	
	assign {Din3,Din2,Din1,Din0} = 	(Mode==2'b00)? DinW:
												(Mode==2'b01)? DinB:
												(Mode==2'b10)? DinH:
																	DinW;
	
endmodule