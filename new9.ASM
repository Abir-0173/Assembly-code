TITLE 'Display IBM256 charecter'
.MODEL MEDIUM
.STACK 100H
.DATA
.CODE
	MAIN PROC
	MOV CX,256
	MOV DL,0; ASCILL code null
	PRINT_LOOP:
	MOV AH,2
	INT 21H; DISPLAY A CHARECTER
	INC DL; INCREMENT ASCII CODE
	DEC CX
	JNZ PRINT_LOOP ;
	JCXZ EXIT;
	EXIT:
	MOV AH,4CH
	INT 21H
	MAIN ENDP
		END MAIN