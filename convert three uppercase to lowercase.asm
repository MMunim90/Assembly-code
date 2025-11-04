.model small
.stack 100h
.data
a db "Enter Three Uppercase Character: $"
b db 13,10,"Lowercase character are: $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    add bl,32
    
    mov ah,1
    int 21h
    mov bh,al
    add bh,32
    
    mov ah,1
    int 21h
    mov cl,al
    add cl,32
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    mov dl,bh
    int 21h
    mov dl,cl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main