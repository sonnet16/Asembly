.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV CL,AL
    
    
                        ;BL=BL-CL
    SUB BL,CL
    ADD BL,48          
   
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    
    MOV DL,BL
    INT 21H
    
    
    EXIT:
    
    MAIN ENDP
END MAIN
