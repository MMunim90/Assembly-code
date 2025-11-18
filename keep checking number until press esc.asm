.model small
.stack 100h
.data
    msg_even db " Even$"
    msg_odd db " Odd$"
    newline db 0Dh,0Ah,"$"
.code
main proc
    mov ax, @data
    mov ds, ax
again:
    mov ah, 1
    int 21h        

    cmp al, 27     
    je exit_prog

    sub al, '0'   
    test al, 1
    jz print_even

    lea dx, msg_odd
    jmp show
print_even:
    lea dx, msg_even
show:
    mov ah, 9
    int 21h

    lea dx, newline
    mov ah, 9
    int 21h
    jmp again
exit_prog:
    mov ah, 4Ch
    int 21h
main endp
end main

