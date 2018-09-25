module ControllerLCD(
	clk, // CPU's master-input clk <required for multi-cycle>
	reset, // CPU's master asynchronous reset <required for multi-cycle>
	clk_en, // Clock-qualifier <required for multi-cycle>
	start, // True when this instr. issues <required for multi-cycle>
	done, // True when instr. completes <required for variable muli-cycle>
	dataa, // operand A <always required>
	datab, // operand B <optional>
	n, // N-field selector <required for extended>
	a, // operand A selector <used for Internal register file access>
	b, // operand b selector <used for Internal register file access>
	c, // result destination selector <used for Internal register file access>
	readra, // register file index <used for Internal register file access>
	readrb, // register file index <used for Internal register file access>
	writerc,// register file index <used for Internal register file access>
	result // result <always required>
);
	input clk;
	input reset;
	input clk_en;
	input start;
	input readra;
	input readrb;
	input writerc;
	input [7:0] n;
	input [4:0] a;
	input [4:0] b;
	input [4:0] c;
	input [31:0]dataa;
	input [31:0]datab;
	output[31:0]result;
	output done;
// Port Declaration
// Wire Declaration
// Integer Declaration
// Concurrent Assignment
endmodule