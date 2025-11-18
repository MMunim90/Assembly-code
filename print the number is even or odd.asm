.model small
.stack 100h
.data
a db "Enter a Number : $"
msg_even db 13,10,"Even$"
msg_odd db 13,10,"Odd$"
.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah,9
    mov dx, offset a
    int 21h

    mov ah, 1
    int 21h

    sub al, '0'     
    test al, 1      
    jz is_even
    lea dx, msg_odd
    jmp print

is_even:
    lea dx, msg_even

print:
    mov ah, 9
    int 21h

    mov ah, 4Ch
    int 21h
main endp
end main
