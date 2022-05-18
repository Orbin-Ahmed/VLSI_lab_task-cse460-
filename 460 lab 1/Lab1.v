module Lab1 (a,b,c,y);

input a,b,c;
output y;

assign y= ((~a&~b)&c)|((~a&b)&~c)|((~b&~c)&a);

endmodule
