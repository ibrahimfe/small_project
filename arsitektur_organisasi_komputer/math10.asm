; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A Semester 2

; Program : math10.asm
; Fungsi : Melakukan Perkalian dengan Debug

.MODEL SMALL
.CODE
ORG 100h

Mdata:
    JMP Proses      ; Lompat ke proses
    A   DW 01EFh
    B   DW 02FEh
    Hsllo DW ?
    HslHi DW ?
Proses :
    MOV AX, A   ; AX: = 1EF
    MUL B
    MOV Hsllo, AX
    MOV HslHi, DX

    INT 20H
END Mdata
