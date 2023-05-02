; Program   : math3.asm
; Fungsi    : Operator Matematika ADD, ADC, & DEBUG

.MODEL SMALL
.CODE
ORG 100h
Proses :
        MOV AX, 1234h   ; AX = 1234h CF = 0
        MOV BX, 9ABCh   ; BX = 9ABCh CF = 0
        MOV CX, 5678h   ; CH = 5678h CF = 0
        MOV DX, DEF0h   ; DX = DEF0h CF = 0
        ADD CX, DX      ; CX = 3568h CF = 1
        ADC AX, BX      ; AX = AX + BX + CF = ACF1

        INT 20h
END Proses