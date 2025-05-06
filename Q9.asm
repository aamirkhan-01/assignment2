.model small
.stack 100h
.data
msg db 'Match found.$'
.code
main:
    mov ax, @data
    mov ds, ax
    mov al, 11
    mov bl, 11
    cmp al, bl
    je matched
    jmp endp
matched:
    mov ah, 09h
    lea dx, msg
    int 21h
endp:
    mov ah, 4ch
    int 21h
end main
