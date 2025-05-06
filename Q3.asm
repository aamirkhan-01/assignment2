.model small
.stack 100h
.data
str db 'HeLLoWoRLd$', 0
.code
main:
    mov ax, @data
    mov ds, ax
    lea si, str
loop1:
    mov al, [si]
    cmp al, '$'
    je done
    cmp al, 'A'
    jb skip
    cmp al, 'Z'
    ja skip
    add al, 32
skip:
    mov dl, al
    mov ah, 02h
    int 21h
    inc si
    jmp loop1
done:
    mov ah, 4ch
    int 21h
end main
