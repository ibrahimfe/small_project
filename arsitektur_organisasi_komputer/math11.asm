; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A

; Program : math11.asm
; Fungsi : Melakukan Pembagian dengan Debug

.MODEL SMALL
.CODE
ORG 100h
Proses :
    MOV BX, 20H
    MOV AX, 1FH
    DIV BX

    INT 20H
END Proses