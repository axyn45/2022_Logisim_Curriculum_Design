//2022.4.18
//共阳极数码管显示译码，4位二进制输入，7段译码输出	
module DispDecoder(
	
	input wire	[3:0]din ,

	output reg	[`DispSegment-1:0]	hex
	);
	
	always@(din) begin
		case(din)		//gfedcba
			4'b0000: hex<=`DispSegment'b1000000; //0
			4'b0001: hex<=`DispSegment'b1111001; //1
			4'b0010: hex<=`DispSegment'b0100100; //2
			4'b0011: hex<=`DispSegment'b0110000; //3
			4'b0100: hex<=`DispSegment'b0011001; //4
			4'b0101: hex<=`DispSegment'b0010010; //5
			4'b0110: hex<=`DispSegment'b0000010; //6
			4'b0111: hex<=`DispSegment'b1111000; //7
			4'b1000: hex<=`DispSegment'b0000000; //8
			4'b1001: hex<=`DispSegment'b0010000; //9

			4'b1010: hex<=`DispSegment'b0001000; //A
			4'b1011: hex<=`DispSegment'b0000011; //B
			4'b1100: hex<=`DispSegment'b1000110; //C
			4'b1101: hex<=`DispSegment'b0100001; //D
			4'b1110: hex<=`DispSegment'b0000110; //E
			4'b1111: hex<=`DispSegment'b0001110; //F	

			default:   hex<=`DispSegment'b1111111;                    
		endcase
	end
endmodule