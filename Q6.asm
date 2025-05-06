.model small
.stack 100h
.data
reg1 db 01h
reg2 db 09h
reg3 db 08h
reg4 db 3Ch
.code
main:
    mov ax, @data
    mov ds, ax
    mov ah, 4ch
    int 21h
end main
