TITLE : 'Display FENI UNIVESITY 30 TIMES'
.MODEL SMALL
.STACK 100H
.DATA
MSG DB 0DH,0AH,'FENI UNIVERSITY $'
.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV CX,20 ;counter 30
    LEA DX,MSG
    MOV AH,9
    TOP:
    INT 21H
    LOOP TOP
    MOV AH,4CH
    INT 21H
    MAIN ENDP
        END MAIN