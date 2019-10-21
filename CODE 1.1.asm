.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    
     
   
     MOV DH,0
    
    
    LOP:
    
    MOV CX,4  
    
    MOV AH,2
    MOV DL,'*'
    
    
    
    
    
    
   
    
    
    
    TOP:
    
    INT 21H
     
    
    
    LOOP TOP
     
    
    CMP CX,4
    JE SPACE 
    
    SPACE:
    MOV AH,2
    
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    

    
    INC DH
    CMP DH,4
    
    
    JE E
    JMP LOP
    
  
    
    E: 
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN