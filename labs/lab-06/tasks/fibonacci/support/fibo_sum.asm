; SPDX-License-Identifier: BSD-3-Clause

%include "printf32.asm"

section .data
    N dd 9 ; DO NOT MOFIDY THIS LINE EXCEPT FOR THE VALUE OF N!
           ; compute the sum of the first N fibonacci numbers
    sum_print_format db "Sum first %d fibonacci numbers is %d", 10, 0

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp

    ; TODO: calculate the sum of first N fibonacci numbers
    ;       (f(0) = 0, f(1) = 1)
    xor eax, eax     ;store the sum in eax
    mov ecx, [N]
    mov ebx, 0
    mov edx, 1  ; primul element din sir

fibonacci:
    add eax, ebx        ; stocheaza suma in eax
    add ebx, edx        
    xchg ebx, edx       ; edx ia valoarea elem i, iar ebx elem i - 1

    loop fibonacci

    push eax
    push dword [N]
    push sum_print_format
    call printf
    add esp, 12

    xor eax, eax
    leave
    ret
