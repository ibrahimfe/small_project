; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A

; Program : logika3.asm
; Fungsi : Gerbang AND

.model small
.code
org 100h
proses :
    MOV AL, 3FH
    MOV BL, 1AH
    AND AL, BL

INT 20H
END proses