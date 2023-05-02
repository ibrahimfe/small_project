; Progam    : math2.asm
; FUNGSI    : Melakukan Penjumlahan dengan DEBUG

.MODEL SMALL
.CODE
ORG 100h
Proses  :
        MOV AL, 30h     ; AX: = FF30
        MOV BL, 20h     ; BX: = 0020
        ADD AL, BL      ;AX = 30 + 20 = FF50

        INT 21H
        INT 20H
END Proses