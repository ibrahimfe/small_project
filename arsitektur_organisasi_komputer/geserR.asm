; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A

; Program : geserR.asm
; Fungsi : Geser Kanan (Shift RIght)
.model small
.code
org 100h
proses :
    MOV AX, 0FADH   ; Inputkan Nilai AX = 0FADH
    MOV CL, 3
    SHR AX, CL

INT 20H
END proses