module or_tabela (input A, B, output reg Y);

	always @(*) begin
		case ({A, B})
			2'b00: Y = 1'b0;
			default: Y = 1'b1;
		endcase
	end

endmodule