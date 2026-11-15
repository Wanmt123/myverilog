module tb_mux2_1();
	reg a;
	reg b;
	reg sel;
	wire y;

	initial begin
		$dumpfile("wave.vcd");
		$dumpvars(0, tb_mux2_1);
	end

	mux2_1 u_mux2_1(.a(a), .b(b), .sel(sel), .y(y));

	initial begin
		a = 0; b = 0; sel = 0;
		#10 a = 1;		
		#10 b = 1;		
		#10 a = 0;
		#10 sel = 1;		
		#10 b = 0;
		#10 a = 1;
		#10 b = 1;
		#10 ;
	end
endmodule
