module decoder3_8(input wire [2:0]din, input wire rst_n, output reg [7:0]dout);
	always @(*) begin
		if(!rst_n)
			dout = 8'd0;
		else
			case(din)
				3'd0 : dout = 8'd0;
				3'd1 : dout = 8'd1;
				3'd2 : dout = 8'd2;
				3'd3 : dout = 8'd3;
				3'd4 : dout = 8'd4;
				3'd5 : dout = 8'd5;
				3'd6 : dout = 8'd6;
				3'd7 : dout = 8'd7;
				default : dout = 8'd0;
			endcase
	end
endmodule

