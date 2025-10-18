.model small
.stack 100h
.data
a db "Enter Your Name: $"
b db 13,10,"Hello, $"
c db 50 dup('$')
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    lea si,c
    
    loop:
    mov ah,1
    int 21h
    cmp al,13
    je terminate
    mov [si],al
    inc si
    jmp loop
    
    terminate:
    mov byte ptr [si], '$'
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,9
    lea dx,c
    int 21h   
    
    exit:
    mov ah,4ch
    mov al,0
    int 21h
    main endp
end main