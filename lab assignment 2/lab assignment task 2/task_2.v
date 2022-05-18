module task_2(clock, reset, cash_in, purchase, present_state, next_state, cash_return);
	input clock, reset;
	input [1:0] cash_in;
	output reg purchase;
	output reg [1:0] cash_return, present_state, next_state;
	parameter 	state0= 2'b00,
				state1= 2'b01,
				n = 15,
				R0= 2'b00,
				R5= 2'b01, 
				R10= 2'b10, 
				R15= 2'b11; 
	
	always@(posedge clock)
	begin
			if(reset==1)
			begin 
				present_state = state0;
				next_state = state0;
			end
			else
			begin
				present_state = next_state;
				
				case(present_state)
				state0: if(cash_in == 2'b00) 
							begin
								next_state = state0;
								purchase =0;
								cash_return = R0;
							end
						else if(cash_in == 2'b01) 
							begin
								next_state = state1;
								purchase = 0;
								cash_return = R0;
							end
						else if(cash_in == 2'b10)  
							begin
								next_state = state0;
								purchase = 1;
								cash_return = R5;
							end
							
				state1: if(cash_in == 2'b00)
							begin
								next_state = state0;
								purchase =0;
								cash_return = R10;
							end
						else if(cash_in == 2'b01)
							begin
								next_state=state0;
								purchase = 1;
								cash_return = R5;
							end
						else if(cash_in == 2'b10)
							begin
								next_state=state0;
								purchase=1;
								cash_return = R15;
							end
				endcase
			end
	end
	endmodule