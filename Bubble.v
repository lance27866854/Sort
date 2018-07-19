`define IDEL 2'b00
`define READ 2'b01
`define WRITE 2'b11
`define RE 2'b10

module Bubble(clk, rst, Start, RData, RAddr, WAddr, WData, Wen, Finish); 
	
	parameter dataWidth = 32;
	parameter addrWidth = 10;

	input clk, rst, Start;
	input signed [dataWidth-1:0] RData;

	output [addrWidth-1:0] RAddr;
	output [addrWidth-1:0] WAddr;
	output signed [dataWidth-1:0] WData;
	output  Wen, Finish;
	
	reg [1:0]state, next_state;
	reg signed[dataWidth-1:0]rA, next_rA, rB, next_rB;
	reg [addrWidth-1:0]idx, next_idx;
	reg [addrWidth-1:0]leng, next_leng;//the length
	//reg [addrWidth-1:0]times, next_times;//how many times need to do.
	reg [1:0]count, next_count;//1 or 0 or 2
	
	wire signed [dataWidth-1:0]diff, line1, line2;
	assign diff = rA - rB;
	assign line1 = (diff[31] == 1)? rA : rB;//small ->>rB>rA
	assign line2 = (diff[31] == 0)? rA : rB;//large ->>rA>rB
	
	always@(posedge clk)begin
		if(rst == 1'd1)begin
			state <= `IDEL;
			rA <= 32'd0;
			rB <= 32'd0;
			idx <= 10'd1023;
			leng <= 10'd0;
			count <= 2'd0;
			//times <= 10'd0;
		end
		else begin
			state <= next_state;
			rA <= next_rA;
			rB <= next_rB;
			idx <= next_idx;
			leng <= next_leng;
			count <= next_count;
			//times <= next_times;
		end
	end
	
	always@(*)begin
		case(state)
			`IDEL:begin
				next_state = (Start == 1'd1)? `READ : `IDEL;
				next_rA = 32'd0;
				next_rB = 32'd0;
				next_idx = (Start == 1'd1)? 10'd0 : 10'd1023;
				next_leng = (Start == 1'd1)? RData : 10'd0;
				next_count = 2'd0;
				//next_times = (Start == 1'd1)? RData : 10'd0;
			end
			`READ:begin
				next_state = (count == 2'd2)? `WRITE : `READ;
				next_rA = (count == 2'd1)? RData : rA;
				next_rB = (count == 2'd2)? RData : rB;
				next_idx = idx;
				next_leng = leng;
				next_count = (count == 2'd2)? 2'd0 : count + 2'd1;
				//next_times = times;
			end
			`WRITE:begin//2 cycles//swap?
				next_state = (count == 2'd1)? `RE :`WRITE;
				next_rA = rA;
				next_rB = rB;
				next_idx = idx;
				next_leng = leng;
				next_count = (count == 2'd0)? 2'd1 : 2'd0;
				//next_times = times;
			end
			`RE:begin//renew
				next_state = `READ;
				next_rA = rA;
				next_rB = rB;
				next_idx = (idx == leng - 2)? 10'd0 : idx + 10'd1;
				next_leng = (idx == leng - 2)? leng - 10'd1 : leng;
				next_count = 1'd0;
				//next_times = (idx == leng - 2)? times - 10'd1 : times;
			end
		endcase
	end
	
	assign RAddr = idx + count;
	assign WAddr = idx + count;
	assign WData = (count == 2'd0)? line1 : line2;
	assign Wen = state[1]&state[0];
	assign Finish = (leng == 10'd1 && Start == 1'd1)? 1'd1: 1'd0;//times or unswapped
	
endmodule
