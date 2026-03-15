module and_tabela (input A, B, output reg Y);

	always @(*) begin
		case ({A, B})
			2'b11: Y = 1'b1;
			default: Y = 1'b0;
		endcase
	end

endmodule
