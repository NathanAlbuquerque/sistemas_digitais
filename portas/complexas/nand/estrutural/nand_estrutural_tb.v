`timescale 1ns/1ps

module nand_estrutural_tb;
    reg a, b;
    wire y;

    nand_estrutural uut (
        .A(a),
        .B(b),
        .Y(y)
    );

    initial begin
        $dumpfile("nand_estrutural.vcd");
        $dumpvars(0, nand_estrutural_tb);

        $monitor("Tempo=%0d, a=%b, b=%b, y=%b", $time, a, b, y);

        a = 1'b0; b = 1'b0; #10;
        a = 1'b0; b = 1'b1; #10;
        a = 1'b1; b = 1'b0; #10;
        a = 1'b1; b = 1'b1; #10;

        $display("Simulação finalizada!");
        $finish;
    end
endmodule