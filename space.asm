.model small
.stack 100h
.code

main proc
    
    mov ah,1
    int 21h
    
    lp:
    
    cmp al,20h
    je exit
    
    mov ah,1
    int 21h
    jmp lp  ;jump equale
    
    mov ah,2
    mov dl,al
    int 21h
    
    exit:
    
    main endp
end main
