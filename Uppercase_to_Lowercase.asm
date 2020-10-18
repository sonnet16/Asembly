.model small
.stack 100h
.code

main proc
    
    mov ah,1
    int 21h
                      
    ADD AL,20H
    
    mov ah,2
    mov dl,al
    int 21h
    
    exit:
    main endp
end main
