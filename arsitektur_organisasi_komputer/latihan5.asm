; Program   : latihan5.asm
; Fungsi    : Mencetak 16 Buah Karakter Dengan INT 21h Servis 02

.MODEL SMALL
.CODE
ORG 100h
Proses  :
        MOV AH, 02h     ; Nilai Servis Untuk Mencetak Karakter
        MOV DL, 'A'     ; DL = Karaker 'A' atau DL = 41h
        MOV CX, 10h     ; Banyaknya pengulangan yang akan dilakukan
Ulang   :
        INT 21h         ; Cetak Karakter
        INC DL          ; Tambah DL dengan 1
        LOOP Ulang      ; Lompat ke Ulang

        INt 20h
END Proses