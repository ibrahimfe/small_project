; PROGRAM   : latihan9.asm
; FUNGSI    : Mencetak Kalimat My Name Is Ibrahim

.MODEL SMALL
.CODE
ORG 100H
proses  :
        jmp ulang
        vkal db 'My Name Is Ibrahim'
ulang   :
        MOV DL, VKAL[BX]
        MOV AH, 02H
        INT 21H
        INC BX
        MOV AX, BX
        CMP AX, 30
        JE EXIT
        JMP ulang

EXIT : INT 20H
END proses