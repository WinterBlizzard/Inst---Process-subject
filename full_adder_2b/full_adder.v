/*----------------------------------------------------------------------------
===========================================
                    FULL-ADDER
===========================================
Description:
		This is a full-adder module unsing behavioral modeling

Design Engineer:
		Compas, Gabriel Zion

Date:
		7 May 2026
---------------------------------------------------------------------------*/

module full_adder(sum, cout, A, B, cin);
		//port
		input A;
		input B;
		input cin;
		output reg sum;
		output reg cout;
		
		//full-adder
		always @(A,B,cin)begin
			case({A,B,cin})
				3'd0: {cout,sum} = 2'b00;
				3'd1: {cout,sum} = 2'b01;
				3'd2: {cout,sum} = 2'b01;
				3'd3: {cout,sum} = 2'b10;
				3'd4: {cout,sum} = 2'b01;
				3'd5: {cout,sum} = 2'b10;
				3'd6: {cout,sum} = 2'b10;
				3'd7: {cout,sum} = 2'b11;
				default: {cout,sum} = 2'b00;
			endcase
		end
	
endmodule