/*----------------------------------------------------------------------------
===========================================
                    FULL-ADDER-4B
===========================================
Description:
		This is a Full-adder 4bit module unsing behavioral modeling

Design Engineer:
		Compas, Gabriel Zion

Date:
		7 May 2026
---------------------------------------------------------------------------*/
module full_adder_4b(S, A, B);
	// ports
	input  [3:0] A;
	input  [3:0] B;
	output [4:0] S;
	wire   [2:0] W;
	
	
	// half-adder instances
	Half_Adder ha(
		.sum  (S[0]),
		.carry(W[0]),
		.A    (A[0]),
		.B    (B[0])
	);
	
	// full-adder instances
	full_adder fa1(
		.sum  (S[1]),
		.cout (W[1]),
		.A    (A[1]),
		.B    (B[1]),
		.cin  (W[0])
	);
	
		full_adder fa2(
		.sum  (S[2]),
		.cout (W[2]),
		.A    (A[2]),
		.B    (B[2]),
		.cin  (W[1])
	);
	
		full_adder fa3(
		.sum  (S[3]),
		.cout (S[4]),
		.A    (A[3]),
		.B    (B[3]),
		.cin  (W[2])
	);
	
	
endmodule