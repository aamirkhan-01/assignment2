
.model small
.stack 100h
.data
text db 'PAKSTAN$', 0
.code
main:
    mov ax, @data
    mov ds, ax
    lea si, text
next:
    mov al, [si]
    cmp al, '$'
    je done
    add al, 32
    mov dl, al
    mov ah, 02h
    int 21h
    inc si
    jmp next
done:
    mov ah, 4ch
    int 21h
end main
