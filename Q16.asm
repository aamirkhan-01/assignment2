.model small
.stack 100h
.data
s db 'Carry ON.$'
c db 'Carry OFF.$'
.code
main:
    mov ax, @data
    mov ds, ax
    stc
    jc show1
    clc
    jnc show2
show1:
    mov ah, 09h
    lea dx, s
    int 21h
    jmp x
show2:
    mov ah, 09h
    lea dx, c
    int 21h
x:
    mov ah, 4ch
    int 21h
end main
