	component Main is
		port (
			clk_clk                                 : in  std_logic                     := 'X';             -- clk
			push_buttons_external_connection_export : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			controllerlcd_0_conduit_end_readdata    : out std_logic_vector(12 downto 0)                     -- readdata
		);
	end component Main;

	u0 : component Main
		port map (
			clk_clk                                 => CONNECTED_TO_clk_clk,                                 --                              clk.clk
			push_buttons_external_connection_export => CONNECTED_TO_push_buttons_external_connection_export, -- push_buttons_external_connection.export
			controllerlcd_0_conduit_end_readdata    => CONNECTED_TO_controllerlcd_0_conduit_end_readdata     --      controllerlcd_0_conduit_end.readdata
		);

