.model small
.stack 100h
.data
big db 'Bigger than 13.$'
small db 'Smaller than 13.$'
.code
main:
    mov ax, @data
    mov ds, ax
    mov ah, 01h
    int 21h
    sub al, 30h
    mov bl, 13
    cmp al, bl
    jg b1
    jl s1
    jmp ex
b1:
    mov ah, 09h
    lea dx, big
    int 21h
    jmp ex
s1:
    mov ah, 09h
    lea dx, small
    int 21h
ex:
    mov ah, 4ch
    int 21h
end main
