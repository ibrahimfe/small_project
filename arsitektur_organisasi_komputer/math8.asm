; Nama : ibrahim
; NIM : 3337220054
; Kelas : A Semester 2

; Program  ; math8.asm
; Fungsi   ; Aritmatika Dengan Perintah SUB & SBB

.MODEL SMALL
.CODE
ORG 100h
Proses :
    MOV AL, 10H
    MOV BL, 20H
    MOV DL, 30H
    SUB AL, BL
    SBB BL, DL

    INT 20H
END Proses