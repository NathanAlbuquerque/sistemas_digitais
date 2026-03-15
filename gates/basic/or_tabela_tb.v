`timescale 1ns/1ps

module or_tabela_tb;
    reg a, b;
    wire y;

    or_tabela uut (
        .A(a),
        .B(b),
        .Y(y)
    );

    initial begin
        $dumpfile("or_tabela.vcd");
        $dumpvars(0, or_tabela_tb);

        $monitor("Tempo=%0d,  a=%b, b=%b, y=%b", $time, a, b, y);

        a = 1'b0; b = 1'b0; #10;
        a = 1'b0; b = 1'b1; #10;
        a = 1'b1; b = 1'b0; #10;
        a = 1'b1; b = 1'b1; #10;

        $display("Simulação finalizada!");
        $finish;
    end
endmodule