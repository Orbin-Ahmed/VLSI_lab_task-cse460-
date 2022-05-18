module task2(A, Y);

	input [3:0]Y;
	output reg [1:0]A;

	always@(Y)
	begin
	casex(Y)
		4'bxxx1:A = 2'b00;
		4'bxx1x:A = 2'b01;
		4'b1xxx:A = 2'b11;
		4'bx1xx:A = 2'b10;
	endcase
	end
endmodule
