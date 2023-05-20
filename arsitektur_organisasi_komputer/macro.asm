; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A

; Program : macro.asm
; Fungsi : Perintah Menampilkan Bilangan Prima 0 sampai 1000
Cetak_Klm MACRO Klm
mov ah, 09
lea dx, Klm
int 21h
endm
CDesimal MACRO Angka
local Ulang, Cetak
mov ax, Angka
mov bx, 10 ; BX = Penyebut
xor cx, cx
ulang :
xor dx, dx
div bx
push dx
inc cx
cmp ax, 0
jne ulang
cetak :
pop dx
add dl, "0"
mov ah, 02
int 21h
loop cetak
endm
.model small
.code
org 100h
tdata :
jmp awal
batas dw 1000
prima dw 0
i dw 2
j dw 2
spasi db " $"
header db 9,9,9,"bilangan prima 1 sampai 1000 :", 13, 10
db 9,9,9,"--------------------------",13,10,10,"$"
awal:
cetak_klm header
proses:
mov ax, batas
cmp ax, i
je exit
forI :
mov j, 2
mov prima, 0
forprima:
mov ax, Prima
cmp ax, 0
jne tambahi
mov ax, i
cmp ax, j
jne tidak
cdesimal i
cetak_klm spasi
mov prima, 1
jmp tambahj
tidak:
mov dx, 0 ;
mov ax, i ;
mov bx, j
div bx
cmp dx, 0
jne tambahj
mov prima, 1
tambahj :
inc j
jmp forPrima
tambahi:
inc i
jmp proses
exit:
int 20h
end tdata