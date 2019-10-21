.MODEL SMALL 
.STACK 100H
.DATA
.CODE
MAIN PROC
    
    MOV BL,80H
    MOV BH,0
    MOV CX,127
    
    
    DISPLAY:
    CMP BH,10
    JE NEWLINE
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,32D
    INT 21H
    INC BL
    INC BH
    
    LOOP DISPLAY
    JMP EXIT
    
    NEWLINE: 
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV BH,0
    
    JMP DISPLAY
    
    
   
    
    EXIT:
    MAIN ENDP
END MAIN