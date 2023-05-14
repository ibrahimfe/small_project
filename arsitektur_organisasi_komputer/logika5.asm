; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A Semester 2

; Program : logika5.asm
; Fungsi : GERBANG NOR

.model small
.code
org 100h
proses : 
    MOV AL, 3FH
    MOV BL, 1AH
    OR AL, BL
    NOT AL

INT 20H
END proses