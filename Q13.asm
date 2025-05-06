.model small
.stack 100h
.data
z db 'Zero.$'
nz db 'Non-zero.$'
.code
main:
    mov ax, @data
    mov ds, ax
    mov al, 22
    sub al, 22
    jz z1
    jnz nz1
z1:
    mov ah, 09h
    lea dx, z
    int 21h
    jmp e
nz1:
    mov ah, 09h
    lea dx, nz
    int 21h
e:
    mov ah, 4ch
    int 21h
end main
