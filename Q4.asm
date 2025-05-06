.model small
.stack 100h
.data
val1 db '6'
val2 db 'H'
.code
main:
    mov ax, @data
    mov ds, ax

    mov al, val1
    call print_ascii

    mov al, val2
    call print_ascii

    mov ah, 4ch
    int 21h

print_ascii:
    aam
    add ah, 30h
    mov dl, ah
    mov ah, 02h
    int 21h
    add al, 30h
    mov dl, al
    mov ah, 02h
    int 21h
    mov dl, 20h
    int 21h
    ret
end main
