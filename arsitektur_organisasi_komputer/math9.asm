; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A Semester 2

; Program : math9.asm
; Fungsi : Aritmatika dengan perintah DEC

.MODEL SMALL
.CODE
ORG 100h
Proses :
    MOV DL, 20H
    DEC DL

    INT 20H
END Proses