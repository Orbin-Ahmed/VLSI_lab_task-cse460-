module lab_2(d,load,clk,q);

	input [3:0]d;
	input load,clk;
	output reg[3:0]q;
	
	always @(posedge clk)
	begin
		if (load)
			q = d;

		else
		begin
			q[0]<=q[3];
			q[1]<=q[0];
			q[2]<=q[1];
			q[3]<=q[2];
		end
	end

endmodule