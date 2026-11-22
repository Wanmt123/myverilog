module tb_dff_sync;
	
	reg d;
	reg clk;
	reg rst_n;
	wire q;

	initial begin
		clk = 0;
		forever #10 clk = ~clk;
	end

	dff_sync u_dff_sync(.d(d), .q(q), .clk(clk), .rst_n(rst_n));
	initial begin
		$dumpfile("wave.vcd");
		$dumpvars(0, tb_dff_sync);

		rst_n = 0; d = 1;
		#20 rst_n = 1; d = 1;
		#20 d = 0;
		#20 d = 1;
		#20 d = 0;
		#20 d = 1;
		#20 d = 0;
		#20 d = 1;
		#20 d = 0;

		$finish;
	end
endmodule
