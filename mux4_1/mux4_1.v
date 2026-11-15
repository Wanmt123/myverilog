module mux4_1(input wire [3:0] din, input wire [1:0]sel, output reg y);
	always @(*)begin
		case (sel)
			2'b00: y = din[0]; 
			2'b01: y = din[1]; 
			2'b10: y = din[2]; 
			2'b11: y = din[3];
		endcase
	end
endmodule 
