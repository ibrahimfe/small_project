; Program : latihan1.asm
; Fungsi  : Mencetak Karakter 'A' Dengan INT 21

.MODEL SMALL
.CODE
ORG 100h
proses :
        MOV AH, 02h     ; Nilai Servis Untuk Mencetak Karakter
        MOV DL, 'A'     ; DL = Karakter ASCII yang akan dicetak

        INT 21h     ; Cetak Karakter
        INT 20h     ; Selesai Kembali ke DOS
END proses