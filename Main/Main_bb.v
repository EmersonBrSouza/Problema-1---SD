
module Main (
	clk_clk,
	lcd_output_external_connection_export,
	push_buttons_external_connection_export);	

	input		clk_clk;
	output	[11:0]	lcd_output_external_connection_export;
	input	[3:0]	push_buttons_external_connection_export;
endmodule
