; SPDX-License-Identifier: BSD-3-Clause

%include "printf32.asm"

section .text
    global main
    extern printf

main:

    mov al, 0x7F            ; 0x7F reprezinta 127 in baza 10
    PRINTF32 `the Overflow Flag is not active\n\x0`
    test al, al
    ;TODO: activate the Overflow Flag
    add al, 2          ; pentru a putea avea overflow (peste 127, sau mai putin de -128)
    jo overflow_flag        
    jmp end

overflow_flag:
    PRINTF32 `the Overflow Flag is active\n\x0`

end:
    ret
