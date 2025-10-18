.model small
.stack 100h
.data
a db "Name: Md. Shahan Al Munim $"
b db 13,10,"Roll: 3802 $"
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
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main     