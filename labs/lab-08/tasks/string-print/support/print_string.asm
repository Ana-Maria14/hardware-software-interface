section .text

extern puts
global print_string

print_string:
    push ebp
    mov ebp, esp
    push ebx                ; preserve ebx as required by cdecl

    ; TODO: print the string
    mov eax, [ebp + 8]      ; acceseaza argumentul

    push eax                ; da push la argumentul lui puts
    call puts               ; apeleaza puts
    add esp, 4              ; reseteaza stiva

    pop ebx
    leave
    ret
