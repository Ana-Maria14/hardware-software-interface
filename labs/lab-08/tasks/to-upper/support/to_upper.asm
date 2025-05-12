section .text

global to_upper

to_upper:
    push ebp
    mov ebp, esp
    push ebx                ; preserve ebx as required by cdecl

    mov eax, [ebp + 8]      ; accesez argumentul functiei
    ; TODO

loop:
    mov bl, [eax]          ; mut continutul de la adresa eax in ebx
    test bl, bl          ; verific daca am ajuns la \0
    je out  
    sub bl, 0x20           ; scad 32 ca sa fac conversie lower -> upper
    mov [eax], bl          ; modific continutul de la adresa [eax]
    inc eax                 ; incrementez eax pentru a trece la urmatorul byte
    jmp loop                

out:
    pop ebx
    leave
    ret
