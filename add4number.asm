.model small
.stack 100h
.data
a db ?
b db ?
.code 
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,1
    int 21h
    mov cl,al
    
    mov ah,1
    int 21h
    mov ch,al
    
    add bl,bh ;bl = bl+bh
    sub bl,48
    mov a,bl
    add cl,a ;cl = cl+a
    sub cl,48
    mov b,cl
    add ch,b ;ch = ch+b
    sub ch,48
    
    mov ah,2
    mov dl,ch
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main