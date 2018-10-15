	component Main is
		port (
			clk_clk                                 : in  std_logic                     := 'X';             -- clk
			lcd_output_external_connection_export   : out std_logic_vector(11 downto 0);                    -- export
			push_buttons_external_connection_export : in  std_logic_vector(3 downto 0)  := (others => 'X')  -- export
		);
	end component Main;

	u0 : component Main
		port map (
			clk_clk                                 => CONNECTED_TO_clk_clk,                                 --                              clk.clk
			lcd_output_external_connection_export   => CONNECTED_TO_lcd_output_external_connection_export,   --   lcd_output_external_connection.export
			push_buttons_external_connection_export => CONNECTED_TO_push_buttons_external_connection_export  -- push_buttons_external_connection.export
		);

