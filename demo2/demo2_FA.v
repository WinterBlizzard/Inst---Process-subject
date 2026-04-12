	/*==============================
				 XOR_GATE
	================================
	Description:
	This is an xor gate using gate-level modeling.

	Designer Engineer:
			Compas, Gabriel Zion
			
	Date:
		 10 Apr 2026
	-----------------------------------------------*/
	
	module demo2_FA(cout,sum,A,B,cin);
	// ports
		 input  A;
		 input  B;
		 input  cin;
		 output sum;
		 output cout;
	
	// nets
		wire w1,w2,w3;
	
	// xor gate
		xor u1(w1,A,B);
		xor u2(sum,cin,w1);
		and u3(w2,cin,w1);
		and u4(w3,A,B);
		or u5(cout,w2,w3);
	
	endmodule