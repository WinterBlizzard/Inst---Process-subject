/*----------------------------------------------------------------------------
===========================================
                    HALF-ADDER
===========================================
Description:
		This is a half-adder module unsing behavioral modeling

Design Engineer:
		Compas, Gabriel Zion

Date:
		7 May 2026
---------------------------------------------------------------------------*/

module Half_Adder(sum, carry, A, B);
		//port
		input A;
		input B;
		output reg sum;
		output reg carry;
		
		//half-adder
		always @(A,B)begin
			case({A,B})
				2'B00: {carry,sum} = 2'b00;
				2'B01: {carry,sum} = 2'b01;
				2'B10: {carry,sum} = 2'b01;
				2'B11: {carry,sum} = 2'b10;
				default: {carry,sum} = 2'b00;
			endcase
		end
	
endmodule