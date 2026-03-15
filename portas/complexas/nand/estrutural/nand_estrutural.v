module nand_estrutural (input A, B, output Y);

	wire fio1;
	
	and_expressao u1 (
		.A(A),
		.B(B),
		.Y(fio1)
	);
	
	not_expressao u2 (
		.A(fio1),
		.Y(Y)
	);

endmodule