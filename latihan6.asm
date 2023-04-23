; Program   : latihan6.asm
; Fungsi    : Mencetak Karakter Diberi Warna Per Huruf

.MODEL SMALL
.CODE
ORG 100h
Proses  :
        MOV AH, 09h     ; Kode Untuk Mencetak Warna
        MOV BL, 93h     ; Kode Warna Yang akan dicetak
        MOV CX, 6h      ; Jumlah karakter yang akan dicetak
Ulang   :
        INT 10h         ; Cetak Warna
        ADD BL, 1       ; Menambah Kode Warna Sebanyak 1, Sehingga Warnanya akan berbeda beda
        LOOP Ulang      ; Ulangi perintah Ulang

MOV AH, 02h
MOV DL, 41h     ; push 'A'
INT 21h
MOV DL, 49h     ; push 'I'
INT 21h
MOV DL, 53h     ; push 'S'
INT 21h
MOV DL, 60h     ; push 'Z'
INT 21h
MOV DL, 41h     ; push 'A'
INT 21h
MOV DL, 48h     ; push 'H'
INT 21h
INT 20h     ; Stop
END Proses