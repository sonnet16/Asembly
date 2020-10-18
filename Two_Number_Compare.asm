.model small
.stack 100h
.data 

msg1 db 'a>b $'
msg2 db 'a<b $'

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov cl,al
    
    cmp bl,cl
    jge l2     
    
    
       lea dx,msg2
       mov ah,9
       int 21h
       jmp exit
       
       
       l2:
       
       lea dx,msg1
       
       mov ah,9
       int 21h
       
       exit:
       
       main endp
end main
