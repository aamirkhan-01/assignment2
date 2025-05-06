.model small
.stack 100h
.data
msg1 db 'Enter 3 numbers:$'
notunique db 'Not unique!$'
maxmsg db 'Max:$'
.code
main:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    lea dx, msg1
    int 21h

    call input
    mov bl, al

    call input
    mov bh, al

    call input
    mov cl, al

    cmp bl, bh
    je exit
    cmp bl, cl
    je exit
    cmp bh, cl
    je exit

    cmp bl, bh
    jg cmp1
    mov dl, bh
    jmp cmp2
cmp1:
    mov dl, bl
cmp2:
    cmp dl, cl
    jg show
    mov dl, cl
show:
    mov ah, 09h
    lea dx, maxmsg
    int 21h
    mov ah, 02h
    int 21h
    jmp finish

exit:
    mov ah, 09h
    lea dx, notunique
    int 21h

finish:
    mov ah, 4ch
    int 21h

input:
    mov ah, 01h
    int 21h
    sub al, 30h
    ret
end main
