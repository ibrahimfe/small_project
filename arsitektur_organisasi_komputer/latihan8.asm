; Program   : latihan8.asm
; Fungsi    : Mencetak Kalimat My name is Ibr

.MODEL SMALL
.CODE
ORG 100H
proses :
        jmp ulang
        vkal db 'My Name Is Ibrahim'
ulang  :
        MOV DL, VKAL[BX]
        MOV AH, 02H
        INT 21h
        INC BX
        MOV AX, BX
        CMP AX, 14
        JE EXIT
        JMP ulang

EXIT : INT 20H
END proses