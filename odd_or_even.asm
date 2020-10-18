.model small
.stack 100h
.data

msg1 db 'odd number $'
msg2 db 'even number $'

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h 
    mov dl,al
    mov bl,2
    div bl
    
    
    cmp ah,0       ;jump not equal
    jne e
    
       lea dx,msg2
       mov ah,9
       int 21h
       jmp exit        
    
    
    e:
       lea dx,msg1
       mov ah,9
       int 21h
       
       exit:
       
       main endp
end main

