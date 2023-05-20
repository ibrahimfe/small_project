; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A Semester 2

; Program : proc1.asm
; Fungso : perintah CALL

.model small
.code
org 100h
AData   :
    JMP proses
    Kar DB ?
    klm DB "Universitas Sultan Ageng Tirtayasa"
proses :
    MOV CX, 25      ; Banyaknya pengulangan
    XOR BX, BX      ; Addresing Mode
Ulang :
    MOV DL, klm [BX]
    MOV Kar, DL
    CALL Cetak_Kar  ; Cetak_Kar
    INC BX
    LOOP Ulang
INT 20h
Cetak_Kar PROC NEAR

    PUSH AX         ; Simpan Semua Register
    PUSH DX         ; Yang digunakan
MOV AH, 02h
MOV DL, Kar
INT 21h             ; Cetak Karakter

    POP DX          ; Kembalikan Semua Register yang disimpan
    POP AX
    RET        ; Kembali kepada pemanggil
Cetak_Kar ENDP      ; END procedures
END AData