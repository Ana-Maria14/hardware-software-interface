section .data
    print_format db "String length is %d", 10, 0

section .text

extern printf
global print_string_length

print_string_length:
    push ebp
    mov ebp, esp
    push ebx                ; preserve ebx as required by cdecl

    ; TODO: print the string length
    mov ecx, [ebp + 8]      ; accesez argumentul functiei (stringul pe care vreau sa l printez)
    push ecx                ; dau push la al doilea argument
    push print_format       ; dau push la primul argument
    call printf             ; apelez printf
    add esp, 8              ; resetez stiva

    pop ebx
    leave
    ret
