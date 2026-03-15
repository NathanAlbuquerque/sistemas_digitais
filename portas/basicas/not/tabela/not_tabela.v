module not_tabela (input A, output reg Y);

	always @(*) begin
		case (A)
			1'b0: Y = 1'b1;
			1'b1: Y = 1'b0;
			default: Y = 1'b0;
		endcase
	end

endmodule