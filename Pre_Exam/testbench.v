
   // testbench for xor module
	module testbench;
	    // tb signals
		 reg  A;
		 reg  B;
		 wire Y0;
		 wire Y1;
		 wire Y2;
		 wire Y3;
		 
		 // instantiate xor module
		Prelim_Exam_Compas dut(
		    .Y0(Y0),
			 .Y1(Y1),
			 .Y2(Y2),
			 .Y3(Y3),
		    .A(A),
		    .B(B)
		);
		 
		 
		 
		 
		 // apply stimuli
		 initial begin
		   A=0; B=0;  #10;
			A=0; B=1;  #10;
			A=1; B=0;  #10;
			A=1; B=1;  #10;
		end
			
			
	
	endmodule
