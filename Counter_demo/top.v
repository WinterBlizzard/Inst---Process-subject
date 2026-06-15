/*==================================================================
																TOP LEVEL
==================================================================*/
module top(b,clk_in,rst_n);
	//ports
		input clk_in;
		input rst_n;
		output [3:0] b;
		wire clk_wire;
		
	//clock-divider instance
		clk_div clk_div_inst (
			.clk_out	(clk_wire), 
			.clk_in		(clk_in)
		);
		
	// counter instance
		counter_demo counter_demo_inst(
				.b			(b),
				.clk			(clk_wire),
				.rst_n	(rst_n)
			);
		
endmodule