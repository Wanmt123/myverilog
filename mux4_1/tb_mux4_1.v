module tb_mux4_1();
	reg [3:0] din;
	reg [1:0] sel;
	wire y;

	initial begin
		$dumpfile("wave.vcd");
		$dumpvars(0, tb_mux4_1);
		

		din = 4'b0000; sel = 2'd0;
		#10 din = 4'b0001;
		#10 din = 4'b0010;
		#10 din = 4'b0100;
		#10 din = 4'b1000;
		#10 din = 4'b0000; sel = 2'd1;
		#10 din = 4'b0001;
		#10 din = 4'b0010;
		#10 din = 4'b0100;
		#10 din = 4'b1000;
		#10 din = 4'b0000; sel = 2'd2;
		#10 din = 4'b0001;
		#10 din = 4'b0010;
		#10 din = 4'b0100;
		#10 din = 4'b1000;
		#10 din = 4'b0000; sel = 2'd3;
		#10 din = 4'b0001;
		#10 din = 4'b0010;
		#10 din = 4'b0100;
		#10 din = 4'b1000;
		#10;
		$finish;
	end
	
	mux4_1 u_mux4_1(.din(din), .sel(sel), .y(y));
endmodule
