; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A semester 2

; Program : logika6.asm
; Fungsi : Gerbang XOR

.model small
.code
org 100h
proses :
    MOV AL, 3FH
    MOV BL, 1AH
    XOR AL, BL

INT 20H
END proses