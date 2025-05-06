.model small
.stack 100h
.data
even db 'Even.$'
odd db 'Odd.$'
.code
main:
    mov ax, @data
    mov ds, ax
    mov al, 73
    test al, 1
    jz ev
od:
    mov ah, 09h
    lea dx, odd
    int 21h
    jmp ex
ev:
    mov ah, 09h
    lea dx, even
    int 21h
ex:
    mov ah, 4ch
    int 21h
end main
