# Conteúdo desenvolvido na disciplina de Sistemas Digitais

## Como rodar a simulação
1. Certifique-se de ter o `iverilog` e o `gtkwave` instalados.
2. Execute a compilação: `iverilog -o simulacao.vvp porta.v testador.v`
3. Rode o simulador: `vvp simulacao.vvp`
4. Visualize: `gtkwave ondas.vcd`