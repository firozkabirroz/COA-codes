J.MODEL SMALL
.STACK 100H
.DATA
MSG DB 'ENTER A HEX DIGIT: $'
MSG1 DB 'IN DECIMAL IT IS: $' 
MSG2 DB 'DO YOU WANT TO DO IT AGAIN ?$ '
MSG3 DB 'TRY AGAIN : $'

.CODE
MAIN PROC
 MOV AX,@DATA 
 MOV DS,AX
 
 
 JMP AGAIN
     
AGAIN:

MOV AH,2
 MOV DL,0DH
 INT 21H
 MOV DL,0AH 
 INT 21H

LEA DX,MSG
 MOV AH,9
 INT 21H
     
 MOV AH,1
 INT 21H

 MOV BH,AL

 
 
 
 CMP BH,'9'
 JLE DECI_NUMBER2
 
 CMP BH,'F'
 JLE DECI_NUMBER1
 
 JMP L1
 
 A_TO_F:
 
 CMP BH,'F'
 JL DECI_NUMBER1
 
 JMP L1
 
 L1:
 
 MOV AH,2
 MOV DL,0DH
 INT 21H
 MOV DL,0AH 
 INT 21H
 
 LEA DX,MSG3
 MOV AH,9
 INT 21H
 JMP AGAIN
 
 DECI_NUMBER2:
 MOV AH,2
 MOV DL,0DH
 INT 21H
 MOV DL,0AH
 INT 21H
 
 LEA DX,MSG1
 MOV AH,9
 INT 21H
 
 MOV AH,2
 
 MOV DL,BH
 INT 21H 
         
 JMP START
 


 
 
 DECI_NUMBER1:
 
 MOV AH,2
 MOV DL,0DH
 INT 21H
 MOV DL,0AH 
 INT 21H
 
 LEA DX,MSG1
 MOV AH,9
 INT 21H
 
 
 
 MOV AH,2
 
 
 MOV DL,049
 INT 21H
 
 SUB BH,11H

 
 MOV DL,BH
 INT 21H
 
 JMP START
 
  
 
 START: 
 MOV AH,2
 MOV DL,0DH
 INT 21H
 MOV DL,0AH 
 INT 21H
 
 LEA DX,MSG2
 MOV AH,9
 INT 21H
 
 MOV AL,'Y'
 
 MOV AH,1
 MOV BL,AL
 INT 21H
 
 CMP AL,BL
 
 JE AGAIN 
 
 
 JMP EXIT
 
 
 
 EXIT:

 MOV AH,4CH
 INT 21H


 MAIN ENDP
 END MAIN