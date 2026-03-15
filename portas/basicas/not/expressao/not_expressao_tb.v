`timescale 1ns/1ps

module not_expressao_tb;
    reg a;
    wire y;

    not_expressao uut (
        .A(a),
        .Y(y)
    );

    initial begin
        $dumpfile("not_expressao.vcd");
        $dumpvars(0, not_expressao_tb);

        $monitor("Tempo=%0d,  a=%b, y=%b", $time, a, y);

        a = 1'b0; #10;
        a = 1'b1; #10;

        $display("Simulação finalizada!");
        $finish;
    end
endmodule