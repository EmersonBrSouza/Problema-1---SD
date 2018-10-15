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
	
	output reg [31:0] result;
	output done;
	
	parameter LCD_BACKLIGHT = 11; // 0 - off, 1 - on
	parameter LCD_EN = 10; // 1 - transfer data/command
	parameter LCD_RS = 9; // 0 - command, 1 - data
	parameter LCD_RW = 8; // 0 - read, 1 - write
	
	always @(posedge clk) 
		begin
			case ({ dataa })
				8'h01 : // Clear display
					begin
						result <= 8'h01;
						result[LCD_RW] <= 1'b0;
						result[LCD_RS] <= 1'b1;
						result[LCD_EN] <= 1'b1;
						result[LCD_BACKLIGHT] <= 1'b1;
					end	
				8'h02 : // Return home
					begin
						result <= 8'h02;
						result[LCD_RW] <= 1'b0;
						result[LCD_RS] <= 1'b0;
						result[LCD_EN] <= 1'b1;
						result[LCD_BACKLIGHT] <= 1'b1;
					end
				8'h08 : // Display Off
					begin
						result <= 8'h08;
						result[LCD_RW] <= 1'b0;
						result[LCD_RS] <= 1'b0;
						result[LCD_EN] <= 1'b1;
						result[LCD_BACKLIGHT] <= 1'b1;
					end
				8'h10 : // Move Cursor Left
					begin
						result <= 8'h10;
						result[LCD_RW] <= 1'b0;
						result[LCD_RS] <= 1'b0;
						result[LCD_EN] <= 1'b1;
						result[LCD_BACKLIGHT] <= 1'b1;
					end
				8'h14 : // Move Cursor Right
					begin
						result <= 8'h14;
						result[LCD_RW] <= 1'b0;
						result[LCD_RS] <= 1'b0;
						result[LCD_EN] <= 1'b1;
						result[LCD_BACKLIGHT] <= 1'b1;
					end
				8'h0E : // Display On, Cursor On
					begin
						result <= 8'h0E;
						result[LCD_RW] <= 1'b0;
						result[LCD_RS] <= 1'b0;
						result[LCD_EN] <= 1'b1;
						result[LCD_BACKLIGHT] <= 1'b1;
					end
				8'h0C : // Display On, Cursor Off
					begin
						result <= 8'h0C;
						result[LCD_RW] <= 1'b0;
						result[LCD_RS] <= 1'b0;
						result[LCD_EN] <= 1'b1;
						result[LCD_BACKLIGHT] <= 1'b1;
					end
				8'h20 : // Start 4 bits with 1 line
					begin
						result <= 8'h20;
						result[LCD_RW] <= 1'b0;
						result[LCD_RS] <= 1'b0;
						result[LCD_EN] <= 1'b1;
						result[LCD_BACKLIGHT] <= 1'b1;
					end 
				8'h25: // Write a letter
					begin
						result <= datab[8:0];
						result[LCD_RW] <= 1'b0;
						result[LCD_RS] <= 1'b1;
						result[LCD_EN] <= 1'b1;
						result[LCD_BACKLIGHT] <= 1'b1;
					end
				8'h28 : // Start 4 bits with 2 lines
					begin
						result <= 8'h28;
						result[LCD_RW] <= 1'b0;
						result[LCD_RS] <= 1'b0;
						result[LCD_EN] <= 1'b1;
						result[LCD_BACKLIGHT] <= 1'b1;
					end
				8'h30 : // Start 8 bits with 1 line 
					begin
						result <= 8'h30;
						result[LCD_RW] <= 1'b0;
						result[LCD_RS] <= 1'b0;
						result[LCD_EN] <= 1'b1;
						result[LCD_BACKLIGHT] <= 1'b1;
					end
				8'h38 : // Start 8 bits with 2 lines 
					begin
						result <= 8'h38;
						result[LCD_RW] <= 1'b0;
						result[LCD_RS] <= 1'b0;
						result[LCD_EN] <= 1'b1;
						result[LCD_BACKLIGHT] <= 1'b1;
					end			
				default :
					begin
						result[LCD_RW] <= 1'b0;
						result[LCD_RS] <= 1'b0;
						result[LCD_EN] <= 1'b0;
						result[LCD_BACKLIGHT] <= 1'b1;
					end
			endcase
		end
		
	
	
	Main u0 (
	  .clk_clk                                 (clk),
	  .lcd_output_external_connection_export   (result[11:0])
	);
	
endmodule