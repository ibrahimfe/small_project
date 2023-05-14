; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A Semester 2

; Program : logika2.asm
; Fungsi : Gerbang NOT

.model small
.code
org 100h
proses :
    MOV AL, 3FH
    NOT AL

INT 20H
END proses