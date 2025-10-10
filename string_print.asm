.model small
.stack 100h  

.data
msg db 'Hello Munim$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    mov dx, offset msg
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main