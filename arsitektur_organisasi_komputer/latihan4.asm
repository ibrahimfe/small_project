; Program   : latihan4.asm
; Fungsi    : Mencetak Karakter 'A-z'
;             Beserta Atributnya loop Diberi Warna

.MODEL SMALL
.CODE
ORG 100h
Proses :
        MOV AH, 9h
        MOV BL, 96h
        MOV CX, 26
Ulang :
        INT 10h
        ADD BL, 1
        LOOP Ulang
        MOV AH, 2h
        MOV DL, 'A'
        MOV CX, 26
Dua   :
        INT 21h
        ADD DL, 1
        LOOP Dua
        INT 20h
END Proses