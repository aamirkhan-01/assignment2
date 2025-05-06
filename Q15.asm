.model small
.stack 100h
.data
of db 'Overflow!$'
no_of db 'No Overflow.$'
.code
main:
    mov ax, @data
    mov ds, ax
    mov al, 180
    mov bl, 2
    mul bl
    jo of1
    jmp nof1
of1:
    mov ah, 09h
    lea dx, of
    int 21h
    jmp ex
nof1:
    mov ah, 09h
    lea dx, no_of
    int 21h
ex:
    mov ah, 4ch
    int 21h
end main
