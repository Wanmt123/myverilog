module tb_decoder3_8();
	reg [2:0]din;
	reg rst_n;
	wire [7:0]dout;

	initial begin
		$dumpfile("wave.vcd");
		$dumpvars;

		rst_n = 1;
		din = 3'd0;
		#10 din = 3'd1;
		#10 din = 3'd2;
		#10 din = 3'd3;
		#10 din = 3'd4;
		#10 din = 3'd5;
		#10 din = 3'd6;
		#10 din = 3'd7;
		#10 rst_n = 0;
		#10;
		$finish;
	end
	
	decoder3_8 u_decoder3_8(.din(din), .rst_n(rst_n), .dout(dout));
endmodule


