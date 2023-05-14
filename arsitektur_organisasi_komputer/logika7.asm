; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A Semester 2

; Program : logika7.asm
; Fungsi : Gerbang XNOR

.model small
.code
org 100h
proses : 
    MOV AL, 3FH
    MOV BL, 1AH
    XOR AL, BL
    NOT AL

INT 20H
END proses