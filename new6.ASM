TITLE: 'Display A COLOUM OF 40 STAR'
.MODEL SMALL
.STACK 100H
.DATA
MSG DB 0DH,0AH,' * $'
.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV CX,40 ; counter 40
    LEA DX,MSG
    MOV AH,9
    TOP:
        INT 21H
        LOOP TOP
        MOV AH,4CH
        INT 21H
        MAIN ENDP
            END MAIN
