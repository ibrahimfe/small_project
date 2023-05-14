; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A

; Program : geserL.asm
; Fungsi Geser Kiri (shift left)
.model small
.code
org 100h
proses :
    MOV AX, 0FABH   ; Inputkan nilai AX = 0FABH
    MOV CL, 3
    SHL AX, CL      ; Geser 3 bit ke Kiri

INT 20H
END proses