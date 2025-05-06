.model small
.stack 100h
.data
m1 db 'Hidden message.$'
m2 db 'Visible message.$'
.code
main:
    mov ax, @data
    mov ds, ax
    jmp skip
    mov ah, 09h
    lea dx, m1
    int 21h
skip:
    mov ah, 09h
    lea dx, m2
    int 21h
    mov ah, 4ch
    int 21h
end main
