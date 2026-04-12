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

module demo1_xor(Y,A,B);
    // ports
	 input  A;
	 input  B;
	 output Y;
	 
	 // nets
	 wire w1,w2,w3,w4;
	 
	// xor gate
	or   u5(Y,w3,w4);
	not  u1(w1,A);
	not  u3(w2,B);
	and  u4(w4,A,w2);
	and  u2(w3,w1,B);
	
endmodule
	