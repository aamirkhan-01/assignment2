.model small
.stack 100h
.data
str db '19H$', 0
.code
main:
    mov ax, @data
    mov ds, ax
    lea si, str
loop1:
    mov al, [si]
    cmp al, '$'
    je done
    call print_ascii
    inc si
    jmp loop1
done:
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
