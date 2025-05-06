.model small
.stack 100h
.data
    char db 'a'
.code
main:
    mov ax, @data
    mov ds, ax

    mov al, char
    sub al, 32        
    mov ah, 0Eh
    int 10h           
    mov ah, 4Ch
    int 21h
end main
