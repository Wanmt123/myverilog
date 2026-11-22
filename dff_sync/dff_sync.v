module dff_sync(input wire d,input wire clk, input wire rst_n, output reg q);
	always @(posedge clk) begin
		if(!rst_n)
			q <= 1'b0;
		else
			q <= d;
	end
endmodule
