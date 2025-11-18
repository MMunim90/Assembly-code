.model small
.stack 100h
.data
    msg1  db "Enter first digit: $"
    msg2  db 13,10,"Enter second digit: $"
    msg3  db 13,10,"Result = $"
    minus db "-$"
.code

main proc
    mov ax, @data
    mov ds, ax
    mov dx, offset msg1
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h
    mov bl, al
    mov dx, offset msg2
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h
    mov cl, al
    mov al, bl
    sub al, cl       
    mov bh, al       

    mov dx, offset msg3
    mov ah, 09h
    int 21h

    mov al, bh
    cmp al, 0
    jge positive
    neg al        
    mov dx, offset minus
    mov ah, 09h
    int 21h       
positive:
    add al, 30h   
    mov dl, al
    mov ah, 02h
    int 21h       
    mov ah, 4ch
    int 21h

main endp
end main
