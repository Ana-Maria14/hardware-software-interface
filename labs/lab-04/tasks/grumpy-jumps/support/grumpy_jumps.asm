; SPDX-License-Identifier: BSD-3-Clause

%include "printf32.asm"

section .data
    wrong: db 'Not today, son.',0
    right: db 'Well done!',0

section .text
    global main
    extern printf

main:
    mov eax, 0x2                ; TODO3.1: modify eax register
    mov ebx, 0x3                ; TODO3.1: modify ebx register
    mov ecx, 0x5                ; hardcoded; DO NOT change
    cmp eax, ebx
    jns bad                     ; => eax < ebx
    cmp ecx, ebx
    jb bad                      ; => ecx >= ebx  ==> eax < ebx <= ecx
    add eax, ebx                ; eax = eax + ebx
    xor eax, ecx                ; eax ^ ecx
    jnz bad               ; eax = ecx  ===> eax + ebx = ecx (valorile initiale eax, ebx)

good:
    PRINTF32 `%s\n\x0`, right
    ret

bad:
    PRINTF32 `%s\n\x0`, wrong
    ret
