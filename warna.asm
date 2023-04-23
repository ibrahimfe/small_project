; PROGRAM   : warna.asm
; FUNGSI    : Menampilkan Kata Dengan Warna

.MODEL SMALL
.CODE
ORG 100h

mulai :
        MOV AH, 09h
        MOV BL, 00000100b
        MOV CX, 13
lagi  :
        INT 10h
        INC BL
        MOV AH, 02h
        MOV DL, 'M'
        MOV CX, 13
ulang :
        INC BL
        INT 21h
        DEC DL
        LOOP ulang
        INT 20h
END mulai