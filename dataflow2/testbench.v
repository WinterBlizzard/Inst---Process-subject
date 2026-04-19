module testbench;
	// tb signals
		 reg  A;
		 reg  B;
		 reg C;
		 wire cout;
		 wire sum;
		 
	// instantiate FA module
		demo2_FA dut(
					 .cout(cout),
					 .sum(sum),
					 .A(A),
					 .B(B),
					 .C(C)
				);
				
		// apply stimuli
			 initial begin
				A=0; B=0; C=0;  #10;
				A=0; B=0; C=1; #10;
				A=0; B=1; C=0; #10;
				A=0; B=1; C=1; #10;
				A=1; B=0; C=0; #10;
				A=1; B=0; C=1; #10;
				A=1; B=1; C=0; #10;
				A=1; B=1; C=1; #10;
			end
		

endmodule