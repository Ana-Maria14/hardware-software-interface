section .text
extern printf
extern puts
global print_reverse_string

; TODO: add the reverse_string() function

reverse_string:
    push ebp
    mov ebp, esp
    push ebx                ; preserve ebx as required by cdecl

    ; TODO: call the reverse_string() function and print the reversed string
    mov eax, [ebx + 8]      ; accesez stringul
    mov ecx, [ebx + 12]     ; accesez lungimea stringului
    mov edx, [ebx + 16]     ; accesez destinatia stringului reversed

    add eax, ecx            ; ma duc la ultimul caracter din string (NULL)
    dec eax                 ; ma mut pe ultimul caracter care nu e null

loop:
    mov bl, [eax]           ; accesez informatia de la adresa lui eax (initial ultimul caracter)
    mov [edx], bl           ; adaug continutul pe byte ul actual 
    dec eax                 ; trec la urmatorul string din eax
    inc edx                 ; trec la urmat byte din string
    dec ecx
    jnz loop

out:
    mov byte [edx], 0       ; null-terminate the destination string

    pop ebx                 ; restore ebx
    leave
    ret

print_reverse_string:
    push ebp
    mov ebp, esp
    push ebx                ; preserve ebx as required by cdecl

    mov eax, [ebp + 8]
    mov ecx, [ebp + 12]

    push store_string
    push ecx
    push eax
    call reverse_string
    add esp, 12

    push store_string
    call puts
    add esp, 4

    pop ebx
    leave
    ret
