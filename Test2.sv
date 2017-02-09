// Code your design here
// Code your design here
// Code your design here
// Code your design here
  
// ALU module, bevat alle andere module objecten voor de functies

// Operation flag, deze specificeerd welke operatie er uitgevoerd moet worden.
/*
                Operation flag: 

                NOT: 000001
                OR:  000010
                AND: 000100
                ADD: 001000
                SUB: 010000
                XOR: 100000

          */

//`include "ramtest.qip"
//`include "ramtest.v"

//`include "tmp.sv"

	 
module Test2(clock, wen, ren, out);

	
	//input [7:0] val1;
	//input [7:0] val2;
	
	output wen, ren;
	output clock;
	output [7:0] out;
	
	reg [7:0] address;
	reg [7:0] data;
	reg wen;
	wire [7:0] out;
	reg clock;
	
	//reg wen;
	//reg ren
	
	initial begin
		address = 8'b00100110;
		data = 8'b00110011;
		wen = 1;
		clock = 0;
	end
	
	always @(posedge clock) begin
	
			data += 1;
			wen = ~wen;
			
			if(wen == 0) begin
			
				data = out;
			end

	end
	always begin
		#5 clock = ~clock;
	end

	ramtest ram(address, clock, data, wen, out);
	//asdf	hoi();
	//ALUcontroller alu(val1, val2, )
	
endmodule
			 





  
