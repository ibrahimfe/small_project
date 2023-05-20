; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A Semester 2

; Program : cobaPop2.asm
; Fungsi : Input satu karakter dari keyboard

;=========================================
; INTERUPSI 16H
;=========================================
; Input : Output :
; AH = 0 jika tombol biasa maka:
; AL = ASCII
; AH = Scan

; Jika tombol Khusus maka
; AL = 00 ;; AH = Extended
.MODEL SMALL
.CODE
ORG 100h
TData : JMP Proses
T_ASCII DB 13,10,"ini adalah tombol ascii : $"
T_Extended DB 13,10,"Ini adalah tombol Extended $"

Proses :
MOV AH, 0; Servis Input satu Karakter
INT 16h ; Laksanakan
PUSH AX ; Simpan Hasil pembacaan pada stack
CMP AL, 00 ; Apakah ini karakter extended?
JE Extended ; Ya !. Lompat ke extended
ASCII:
    LEA DX, T_ASCII ; Ambil alamat efektif T_ASCII
    MOV AH, 09     ; Servis cetak kalimat
    INT 21h ; Cetak Kalimat !
    POP AX ; Ambil kembali nilai AX pada stack
    MOV DL, AL ; Ambil Kode ASCII yang ditekan
    MOV AH, 2
    INT 21h
CMP AL, "Q" ; Apakah ditekan huruf Q >

JE exit ; Ya!!. Lompat ke exit
    CMP AL, "q" ; apakah ditekan huruf "q" ?
JE exit ; YA Lompat ke exit
    JMP Proses ; Lompat ke proses

Extended:
    LEA DX, T_Extended ; Ambil alamat efektif T_Extended
    MOV AH, 09 ;Servis cetak kalimat
    INT 21H
JMP Proses
exit:
INT 20h
END TData
