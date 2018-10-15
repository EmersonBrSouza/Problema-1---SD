module LCD_Driver (
	result,
	lcd
);
	input [31:0] result;
	output reg [7:0] lcd;
	
	always @(*)
		begin
			lcd <= result[7:0];
		end
LCD_Controller custom (
	.result(result)
);

Main u0 (
  .lcd_output_external_connection_export   (lcd)   //   lcd_output_external_connection.export
);
endmodule