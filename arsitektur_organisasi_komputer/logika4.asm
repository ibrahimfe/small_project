; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A semester 2

; Program : logika4.asm
; Fungsi : Gerbang NAND

.model small
.code
org 100h
proses :
    MOV AL, 3FH
    MOV BL, 1AH
    AND AL, BL
    NOT AL

INT 20H
END proses