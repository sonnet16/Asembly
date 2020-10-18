.model small
.stack 100h 
.data
msg1 db 'lowercase $'
msg2 db 'upercase $'
msg3 db 'not a letter $'
msg4 db 'Enter a character : $'

.code


main proc
    
    mov ax,@data
    mov ds,ax
    
    
    lea dx,msg4
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    cmp al,65         ;jump lower
    jl l1             ;jump gater
    cmp al,90
    jg lp
    
    mov ah,2
    mov dl,0ah    ;new line
    int 21h
    mov dl,0dh
    int 21h
    
    
    
    mov dl,al
    int 21h 
    
   
    lea dx,msg2
    mov ah,9
    int 21h
    jmp exit
    
    
     lp:
    
    cmp al,97
    jl exit
    cmp al,122
    jg exit         
    
    mov ah,2 
    mov dl,0ah
    int 21h                ;new line
    mov dl,0dh
    int 21h
    
    mov dl,al
    int 21h
    
   
    lea dx,msg1
    mov ah,9
    int 21h
    jmp exit
    
     
      l1: 
      
    mov ah,2 
    mov dl,0ah
    int 21h                ;new line
    mov dl,0dh
    int 21h
      
     mov dl,al
     int 21h
     
     lea dx,msg3
     mov ah,9
     int 21h
     jmp exit
     
    
    exit:
    
    main endp
end main
