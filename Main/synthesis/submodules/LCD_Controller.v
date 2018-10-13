module ControllerLCD(
	clk,
	clk_en,
	reset,
	start,
	done,
	dataa,
	datab,
	result
);
	input clk;
	input clk_en;
	input reset;
	input start;
	input [31:0]dataa;
	input [31:0]datab;
	
	output reg[31:0]result;
	output done;
	
// Port Declaration
// Wire Declaration
// Integer Declaration
// Concurrent Assignment
	
	always @(posedge clk) 
		begin
			case ({ dataa })
				8'h01 : result <= 8'h01; // Clear display
				8'h02 : result <= 8'h02; // Return home
				8'h30 : result <= 8'h30; // Start 8 bits with 1 line
				8'h38 : result <= 8'h38; // Start 8 bits with 2 lines
				8'h20 : result <= 8'h20; // Start 4 bits with 1 line
				8'h28 : result <= 8'h28; // Start 4 bits with 2 lines
			endcase
		end
endmodule