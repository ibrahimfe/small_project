; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A Semester 2


; Program : math6.asm
; Fungsi  : Operator Aritmatika Sub dengan Debug

.MODEL SMALL
.CODE
ORG 100h

Proses:
        MOV AX, 15H     ; AX: = 15
        MOV BX, 12H     ; BX: = 12
        SUB AX, BX      ; AX: = 15 - 12 = 3
        SBB AX, BX      ; AX: = 0

        INT 20H
END Proses 