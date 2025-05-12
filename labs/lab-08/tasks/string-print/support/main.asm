%include "../utils/printf32.asm"

section .data
    mystring db "This is my string", 0

section .text

extern printf
extern print_string
global main
main:
    push ebp
    mov ebp, esp

    PRINTF32 `[PRINTF32]: %s\n[PUTS]: \x0`, mystring

    push mystring           ; adauga argumentul in stiva
    call print_string       ; apeleaza functia 
    add esp, 4              ; reseteaza stiva

    leave
    ret
