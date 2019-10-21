.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
    MOV CH,0
    MOV CL,4
    MOV BL,1
     
    
    
   
    
    LOP1: 
    
    MOV CX,BX
    
    LOP2:
    CMP BL,4
    JG END_
    MOV AH,2
    MOV DL,'*'
    INT 21H
    LOOP LOP2
    
    INC BL
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LOOP LOP1
     
    
    
    
    
END_:  
     
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN