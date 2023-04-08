module VM(clk, reset, cash_in, cash_return, purchase, current_state, next_state);
	
	input clk, reset;
	input [1:0] cash_in;
	
	output reg purchase;
	output reg [1:0] cash_return;
	output reg [1:0]current_state, next_state;
	
	parameter s0 = 2'b00, s1 = 2'b01;
	parameter [1:0] in_0tk = 2'b00, 				
					in_10tk = 2'b01, 
					in_20tk = 2'b10;
					
	parameter [1:0] ret_0tk = 2'b00, 
					ret_5tk = 2'b01, 
					ret_15tk = 2'b10; 
					
					
	always @(posedge clk, posedge reset)
	begin
		if (reset == 1)
		begin
			next_state = s0;
			current_state = s0;
			purchase = 0;
			cash_return = ret_0tk;
		end
		else
		begin
			current_state = next_state;
			case(current_state)
			s0:
			begin 
			
				if(cash_in == in_0tk)
				begin
					next_state =s0;
					purchase = 0;
					cash_return = ret_0tk;
				end
				
				else if(cash_in == in_10tk)
				begin
					next_state =s1;
					purchase = 0;
					cash_return = ret_0tk;				
				end
						
				else if (cash_in == in_20tk)
				begin
					next_state =s0;
					purchase = 1;
					cash_return = ret_5tk;
				end

			end
						
			s1:
			begin
			
				if(cash_in == in_0tk)
				begin
					next_state =s0;
					purchase = 0;
					cash_return = ret_0tk;
				end
				
				else if(cash_in == in_10tk)
				begin
					next_state =s0;
					purchase = 1;
					cash_return = ret_5tk;				
				end
				
				
				else if (cash_in == in_20tk)
				begin
					next_state =s0;
					purchase = 1;
					cash_return = ret_15tk;
				end
			end
			
			endcase	
					
		end	
	end
	
endmodule
