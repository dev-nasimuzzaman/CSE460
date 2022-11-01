module MUX(A,B,c);
	input [7:0]A;
	input [2:0]B;
	output reg c;
	
	always@(A,B)
		case ({B})
			0: c=A[0];
			1: c=A[1];
			2: c=A[2];
			3: c=A[3];
			4: c=A[4];
			5: c=A[5];
			6: c=A[6];
			7: c=A[7];
			
			default: c=1'bx;
			
		endcase
	endmodule 