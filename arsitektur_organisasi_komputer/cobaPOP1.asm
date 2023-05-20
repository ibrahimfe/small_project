; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A Semester 2

; Program : cobaPOP1.asm
; Fungsi : Program sederhanan POP

.MODEL SMALL
.CODE
ORG 100h
MULAI :
        MOV DX, "S"
        PUSH DX
        MOV DX, "E"
        PUSH DX
        MOV AH, 02H
        MOV DL, "Y"
        INT 21H
        POP DX
        INT 21H
        POP DX
        INT 21H
END MULAI