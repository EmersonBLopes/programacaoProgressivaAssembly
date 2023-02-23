;esta seção declara e inicializa os dados
section .data;define a seção data, na qual sera declarada e inicializada as variáveis que serão usadas
msg db  'Hello world!', 0AH;cria e inicializa a variável msg com o comando db "define byte" que reserva um byte em memoria, logo apos isso é atribuido a string 'Hello world!' a variavel e ao fina é atribuido um caracter de nova linha com o seu código em hexadecimal "0AH";
len equ $-msg ;define a largura da string. "equ" define valores absolutos ou relocáveis a simbolos serve também para trocar o valor de len para $-msg, que o assembler interpreta como o valor do endereço atual menos o valor do endereço de msg. no caso len equivale a 13;

;unica seção realmente obrigatória o programa começa a rodar apartir daqui
section .text;define a seção de código executavel, text
global  _start
_start: mov   edx, len ;label _start semelhante a função main de algumas linguagens
        mov   ecx, msg
        mov   ebx, 1
        mov   eax, 4
        int   80h

        mov   ebx, 0
        mov   eax, 1
        int   80h
