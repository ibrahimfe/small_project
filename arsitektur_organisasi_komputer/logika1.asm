; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A Semester 2

; Program : Logika1.asm
; AUTHOR : Ibrahim
; FUGNSI : Gerbang OR

.model small
.code
org 100h
proses :
    MOV AL, 3FH
    MOV BL, 1AH
    OR AL, BL

INT 20H
END proses