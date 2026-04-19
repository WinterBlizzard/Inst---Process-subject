	/*==============================
				 FA_GATE
	================================
	Description:
	This is an FA gate using dataflow modeling.

	Designer Engineer:
			Compas, Gabriel Zion
			
	Date:
		 10 Apr 2026
	-----------------------------------------------*/
	
	module demo2_FA(cout,sum,A,B,C);
	// ports
		 input  A;=
		 input  B;
		 input  C;
		 output sum;
		 output cout;
	
	assign sum = ((A ^ B) ^ C);
	assign cout = ((A ^ B) & C) + (A & B);
	
	endmodule