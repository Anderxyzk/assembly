.386 ; Oque define o conjunto de instruções suportados pelo programa. 32Bits
.model flat, stdcall ;  Define o modelo de memória e a convenção de chamada. flat significa que todo o espaço de endereçamento é linear, stdcall é a convenção de chamada usada pelo Windows.
option casemap:none ; Desativa a conversão de maiúsculas/minúsculas para identificadores.


; Bibliotecas necessárias
include \masm32\include\kernel32.inc 
include \masm32\include\masm32.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib
.data
    greeting db "Seja bem-vindo ao meu primeiro programa em Assembly!", 0 ; Declaracao de variavél, tudo oque estiver a direita, será armazanado dentro do greeting.

.code
main:
    invoke StdOut, addr greeting ; Funciona como se fosse um printf, do C. Para imprimir a string no console.
    invoke ExitProcess, 0         ; Sair.
end main
