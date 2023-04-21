; PROGRAM   : math.asm
; FUNGSI    : ARITMATIKA PERKALIAN DENGAN MUL

.MODEL SMALL
.CODE
ORG 100h
proses  :
        MOV AH, 15h     ; AH : = 15h
        MOV AL, 4       ; AL : = 4
        ADD AH, AL      ; AH:= AH + AL, JADI AH = 19h

        INT 20H
END proses