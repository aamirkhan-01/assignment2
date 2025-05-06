.model small
.stack 100h
.data
yes db 'Yes carry.$'
no db 'No carry.$'
.code
main:
    mov ax, @data
    mov ds, ax
    mov al, 255
    add al, 15
    jc c1
    jnc c2
c1:
    mov ah, 09h
    lea dx, yes
    int 21h
    jmp x
c2:
    mov ah, 09h
    lea dx, no
    int 21h
x:
    mov ah, 4ch
    int 21h
end main
