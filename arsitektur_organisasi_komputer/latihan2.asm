;   Latihan 2
;   Fungsi : Mencetak Karakter A Beserta Atributnya

        .MODEL SMALL
        .CODE
        ORG 100h
Proses:
        MOV AH, 09h     ; Nilai Servis untuk mencetak karakter
        MOV AL, 'A'     ; AL = karakter ASCII yang akan dicetak
        MOV BH, 00h     ; Nomor halaman layar
        MOV BL, 93h     ; Atribut dari karakter berupa warna
        MOV CX, 03h     ; Banyaknya karakter yang ingin dicetak

        INT 10h         ; Laksanakan
        INT 20h         ; Selesai kembali ke DOS
END Proses