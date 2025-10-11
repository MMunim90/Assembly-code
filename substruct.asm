.model small
.stack 100h
.data
a db "Substruction of two number: $"
b db 10,13,"Input First digit: $" 
; minimal new line 10,13,
c db 10,13,"Input Second digit: $"
d db 10,13,"Sum is: $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,9
    lea dx,d
    int 21h
    
    sub bl,bh ;bl = bl-bh
    add bl,48
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main