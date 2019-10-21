.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
    
    
    MOV BL,4
    
    MOV DL,0
     
    
    
   
    
    LOP1:
     
    
    MOV CX,BX
    
    
    LOP2:
    CMP BL,0
    JE LOOP3
    
    MOV AH,2
    MOV DL,'*'
   
    INT 21H
    LOOP LOP2
    
    DEC BL
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    
    
    LOOP LOP1
    
    
    
    LOOP3:
    
    
    
    
    MOV CX,BX
    
    LOP4:
    
    
    CMP BL,4
    JE END_
    
    MOV AH,2
    MOV DL,'*'   
   
    INT 21H
    LOOP LOP4
    
    INC BL
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    
    
    LOOP LOOP3
    
     
    
    
    
    
END_:  
     
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN