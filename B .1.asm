.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
    
    MOV DH,41H
    MOV BL,5
    
     
    
    
   
    
    LOP1:
     
    
    MOV CX,BX
    
    
    LOP2:
    CMP BL,0
    JE END_
    
    MOV AH,2
    MOV DL,DH
   
    INT 21H
    LOOP LOP2
    
    DEC BL
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    INC DH
    
    
    LOOP LOP1
     
    
    
    
    
END_:  
     
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN