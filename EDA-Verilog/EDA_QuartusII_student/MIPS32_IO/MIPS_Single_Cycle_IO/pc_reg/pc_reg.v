`include "../define.v"

module pc_reg(

	input wire					enable,
	input wire					clk,
	input wire					nrst,	
	input wire[`InstAddr_BUS]	pc_in,
	output reg[`InstAddr_BUS]	pc_out
	
);

	always @ (posedge clk) begin
		if (nrst == `nRstEnable) begin
			pc_out <= 32'h00000000;
		end else if (enable == `Enable)begin
			pc_out <= pc_in;
		end
	end

endmodule