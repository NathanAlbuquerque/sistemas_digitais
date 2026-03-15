module nand_expressao (input A, B, output Y);

	assign Y = !(A & B);

endmodule