	/*==============================
				 XOR_GATE
	================================
	Description:
	This is an xor gate using dataflow modeling.

	Designer Engineer:
		  Compas, Gabriel Zion
			
	Date:
		 16d Apr 2026
	-----------------------------------------------*/

module demo1_xor(Y,A,B);
    // ports
	 input  A;
	 input  B;
	 output Y;
	 
	// xor gate
	assign Y = (~A&B)+(A&~B);
	
endmodule
	