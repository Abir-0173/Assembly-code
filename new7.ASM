TITLE 'DISPLAY AND READ CHARACTER UNTIL ENTER PRESS'
.MODEL MEDIUM
.STACK 100H
.DATA
.CODE
    MAIN PROC
    MOV AH,1
    AGAIN:
    INT 21H
    CMP AL,0DH
    JNE AGAIN;
    JMP EXIT;
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
        END MAIN