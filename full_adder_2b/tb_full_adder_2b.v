// testbench for full adder
module tb_full_adder_2b;
		//tb signals
		reg [1:0] A;
		reg [1:0] B;
		wire [2:0] S;
		
		//half adder instance
		full_adder_2b dut(
		.S(S), 
		.A(A), 
		.B(B)
		);
		
		//apply stimulate
		initial begin
			A = 2'd0; B = 2'd0; #1;
			repeat(3)begin
				B = 2'd0;
				A = A+2'd1;
				#1;
					repeat(3)begin
						B = B+2'd1;
						#1;
					end
			end
	end
endmodule