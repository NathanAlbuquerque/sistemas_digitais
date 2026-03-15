`timescale 1ns/1ps

module not_tabela_tb;
    reg a;
    wire y;

    not_tabela uut (
        .A(a),
        .Y(y)
    );

    initial begin
        $dumpfile("not_tabela.vcd");
        $dumpvars(0, not_tabela_tb);

        $monitor("Tempo=%0d, a=%b, y=%b", $time, a, y);

        a = 1'b0; #10;
        a = 1'b1; #10;

        $display("Simulação finalizada!");
        $finish;
    end
endmodule