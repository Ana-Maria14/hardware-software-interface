; SPDX-License-Identifier: BSD-3-Clause

%include "printf32.asm"

section .data
    N: dd 7          ; N-th fibonacci number to calculate

section .text
    global main
    extern printf

main:
    mov ecx, DWORD [N]       ; we want to find the N-th fibonacci number; N = ECX = 7
    ; TODO: calculate the N-th fibonacci number (f(0) = 0, f(1) = 1)
    PRINTF32 `%d\n\x0`, ecx  ; DO NOT REMOVE/MODIFY THIS LINE

    mov eax, 0
    mov ebx, 1

fibonacci:

    dec ecx
    jz print

    add ebx, eax                           ; ebx ia valoarea urmat element din sir
    mov edx, ebx                   ; eax ia valoarea lui ebx de dinaintea modif acestuia
    sub edx, eax
    mov eax, edx

    jmp fibonacci

print:
    PRINTF32 `%d\n\x0`, ebx
    ret
