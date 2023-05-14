; Program   : Latihan3.asm
; Fungsi    : Mencetak Karakter 'A - z'
;             beserta atributnya
        .MODEL SMALL
        .CODE
        ORG 100h
 PROSES :
        MOV AH, 02h
        MOV DL, 'A'
        MOV CX, 26
 ULANG :
        INT 21h
        ADD DL,1
 LOOP ULANG
        INT 20h
 END PROSES