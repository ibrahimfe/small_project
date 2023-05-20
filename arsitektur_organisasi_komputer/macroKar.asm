; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A Semester 2

; Program : macroKar.asm
; Fungsi : Perintah Cetak Karakter
Cetak_Kar MACRO Kar
MOV CX, 3
MOV AH, 02
MOV DL, Kar
Ulang :
INT 21h     ; Cetak Karakter
LOOP Ulang
ENDM  ; END Macro
.MODEL SMALL
.CODE
ORG 100h
Proses:
Cetak_Kar "S" ; Cetak Huruf S
INT 20h
END Proses