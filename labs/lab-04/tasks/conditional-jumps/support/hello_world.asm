; SPDX-License-Identifier: BSD-3-Clause

%include "printf32.asm"

section .data
    myString: db "Hello, World!", 0
    N: dd 6                         ; N = 6
    myGoodbyeString: db "Goodbye, World!", 0

section .text
    global main
    extern printf

main:
    mov ecx, DWORD [N]              ; ecx will store the value of N
    PRINTF32 `%d\n\x0`, ecx         ; DO NOT REMOVE/MODIFY THIS LINE

    mov eax, 2
    mov ebx, 1
    cmp eax, ebx
    jns print                        ; TODO1: eax > ebx?
    ret

print:
    PRINTF32 `%s\n\x0`, myString
                                                ; TODO2.2: print "Hello, World!" N times
    dec ecx                    ; scad ecx pana e 0 moment in care o sa printeze Goodbye
    jg print
                                                ; TODO2.1: print "Goodbye, World!"
    PRINTF32 `%s\n\x0`, myGoodbyeString         

    ret
