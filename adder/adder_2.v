module adder_2(input wire a, input wire b, input wire cin, output wire sum, output wire cout);
	assign sum = a ^ b ^ cin;
	assign cout = a*b + (a^b)*cin;
endmodule
