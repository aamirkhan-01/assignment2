.model small
.stack 100h
.data
l db 'A < B.$'
g db 'A > B.$'
e db 'A = B.$'
.code
main:
    mov ax, @data
    mov ds, ax
    mov al, -9
    mov bl, 4
    cmp al, bl
    jl l1
    jg g1
    mov ah, 09h
    lea dx, e
    int 21h
    jmp ex
l1:
    mov ah, 09h
    lea dx, l
    int 21h
    jmp ex
g1:
    mov ah, 09h
    lea dx, g
    int 21h
ex:
    mov ah, 4ch
    int 21h
end main
