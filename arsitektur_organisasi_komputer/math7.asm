; Nama : ibrahim
; NIM : 3337220054
; Kelas : A Semester 2

; Program : math7.asm
; Fungsi : Operator Matematika SUB dan Debug

.MODEL SMALL
.CODE
ORG 100h

Proses :
        MOV AX, 24h     ; AH: = 24
        MOV BX, 5h      ; BX: = 5
        SUB AX, BX      ; AH: = 24 - 5 = 19
        SUB AX, AX      ; AX = 0

INT 20H
END Proses