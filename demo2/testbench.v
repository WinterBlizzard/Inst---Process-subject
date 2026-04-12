module testbench;
	// tb signals
		 reg  a;
		 reg  b;
		 reg c;
		 wire cout;
		 wire sum;
		 
	// instantiate FA module
		demo2_FA dut(
					 .cout(cout),
					 .sum(sum),
					 .A(a),
					 .B(b),
					 .cin(c)
				);
				
		// apply stimuli
			 initial begin
				a=0; b=0; c=0;  #10;
				a=0; b=0; c=1; #10;
				a=0; b=1; c=0; #10;
				a=0; b=1; c=1; #10;
				a=1; b=0; c=0; #10;
				a=1; b=0; c=1; #10;
				a=1; b=1; c=0; #10;
				a=1; b=1; c=1; #10;
			end
		

endmodule