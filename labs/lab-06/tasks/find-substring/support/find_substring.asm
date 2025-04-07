; SPDX-License-Identifier: BSD-3-Clause

%include "printf32.asm"

section .data
source_text: db "ABCABCBABCBABCBBBABABBCBABCBAAACCCB", 0 ; DO NOT MODIFY THIS LINE EXCEPT FOR THE STRING IN QUOTES
substring: db "BABC", 0 ; DO NOT MODIFY THIS LINE EXCEPT FOR THE STRING IN QUOTES

print_format: db "Substring found at index: %d", 10, 0

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp
    mov esi, source_text
    mov edi, substring
    
initialize: 
    mov eax, esi
    mov edx, edi
    mov ebx, 0

increment:
    cmp byte[eax + 4 - ecx + 1], byte[edx + 4 - ecx + 1]
    jne next
    cmp ecx, 1
    je print
    loop increment

next:
    mov ecx, 4
    inc eax
    inc edx
    inc ebx
    jne initialize

    jump increment

print:
    
    leave
    ret
