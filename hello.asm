;esta seção declara e inicializa os dados
section .data
msg db  'Hello world!', 0AH
len equ $-msg

;unica seção realmente obrigatória o programa começa a rodar apartir daqui
section .text
global  _start
_start: mov   edx, len
        mov   ecx, msg
        mov   ebx, 1
        mov   eax, 4
        int   80h

        mov   ebx, 0
        mov   eax, 1
        int   80h
