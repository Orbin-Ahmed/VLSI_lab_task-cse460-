module task_1(clk,resetn,w,z);

input clk,resetn,w;
output reg z;
reg y, Y;
parameter [3:1] q0=3'b000,
				q1=3'b001,
				q2=3'b010,
				q3=3'b011,
				q4=3'b100;
always@(w,y)
	case (y)
		q0: if (w)
		begin
		z = 0;
		Y = q1;
		end
		else
		begin
		z = 0;
		Y = q0;
		end
		q1: if (w)
		begin
		z = 0;
		Y = q1;
		end
		else
		begin
		z = 0;
		Y = q2;
		end		
		q2: if (w)
		begin
		z = 0;
		Y = q3;
		end
		else
		begin
		z = 0;
		Y = q0;
		end		
		q3: if (w)
		begin
		z = 0;
		Y = q0;
		end
		else
		begin
		z = 1;
		Y = q4;
		end	
		q4: if (w)
		begin
		z = 0;
		Y = q3;
		end
		else
		begin
		z = 0;
		Y = q0;
		end
	endcase
	
always @ (negedge resetn, posedge clk)
	if (resetn == 0) y <= q0;
	else y<=Y;
endmodule
