; Nama : Ibrahim
; NIM : 3337220054
; Kelas : A semester 2

; ================================ ;
; PROGRAM : macro2.asm ;
; AUTHOR : S’2 ;
; FUNGSI : Perintah Menampilkan ;
; Menu : ;
; 1. Mencetak karakter satu warna ;
; 2. Mencetak karakter warna-warni ;
; 3. Program huruf rontok ;
; 4. Keluar ;
; ================================ ;
cls macro
mov ax,0600h
xor cx,cx
mov dx,184fh
mov bh,7
int 10h
endm
gotoxy macro x,y
mov ah,02
xor bx,bx
mov dh,y
mov dl,x
int 10h
endm
simpanl macro
local ulang
mov ax,0b800h
mov es,ax
mov cx,4000
xor bx,bx
ulang :
mov al,es:[bx]
mov layar[bx],al
inc bx
loop ulang
endm
balikl macro
local ulang
mov cx,4000
xor bx,bx
ulang :
mov al,layar[bx]
mov es:[bx],al
inc bx
loop ulang
endm
sorot macro x,y
local ulang
mov bl,y
mov al,160
mul bl
mov bx,ax
mov al,x
mov ah,2
mul ah
add bx,ax
inc bx
mov cx,20
ulang :
mov byte ptr es:[bx],6fh
add bx,2
loop ulang
endm
readkey macro
mov ah,00
int 16h
endm
menul macro string
mov ah,09
lea dx,string
int 21h
endm
delay macro
push cx
xor cx,cx
loop1 :
loop loop1
pop cx
endm
Geser macro PosY
push ax
push bx
push cx
xor cx,cx
mov al,26
sub al,PosY
mov cl,al
loop2 :
mov al,byte ptr es:[bx]
mov byte ptr es:[bx-160],al
hilang :
mov byte ptr es:[bx],' '
delay
sub bx,160
loop loop2
pop cx
pop bx
pop ax
endm
.model small
.code
org 100h
tdata :
jmp proses
layar db 4000 dup (?)
menu db 9,9,'+============================= +',13,10
db 9,9,'| >> >> Menu Sorot << << |',13,10
db 9,9,'+================================== +',13,10
db 9,9,'| |',13,10
db 9,9,'| 1. Cetak Karakter |',13,10
db 9,9,'| 2. Karakter Berwarna |',13,10
db 9,9,'| 3. Program Rontok |',13,10
db 9,9,'| 4. Keluar |',13,10
db 9,9,'| |',13,10
db 9,9,'+================================== +$'
posx db 22
posy db 12
panah_atas equ 72
panah_bawah equ 80
tenter equ 0dh
proses :
cls
gotoxy 0 8
menul menu
simpanl
ulang :
balikl
sorot posx,posy
masukan :
readkey
cmp ah,panah_bawah
je bawah
cmp ah,panah_atas
je ceky
cmp al,tenter
jne masukan
jmp banding
ceky :
cmp posy,12
je maxy
dec posy
jmp ulang
maxy :
mov posy,15
jmp ulang
bawah :
cmp posy,15
je no1y
inc posy
jmp ulang
no1y :
mov posy,12
jmp ulang
banding :
cmp posy,12
je karakter
cmp posy,13
je warna
cmp posy,14
je rontok
cmp posy,15
je keluar
keluar :
jmp selesai
karakter :
cls
gotoxy 22,12
mov ah,2h
mov dl,'A'
mov cx,26
k1 :
int 21h
inc dl
loop k1
readkey
jmp proses
warna :
cls
gotoxy 22,12
mov ah,9h
mov bx,29h
mov al,'Z'
mov cx,26
k2 :
int 10h
dec al
inc bl
loop k2
readkey
jmp proses
rontok : jmp prontok
prontok : jmp kalimat
kal db "Melayang-layang $"
kal2 db "Tekan Enter Untuk Kembali ke Menu $"
kalimat :
cls
gotoxy 22,12
mov ah,09
lea dx,kal
int 21h
mov ax,0B800h
mov es,ax
mov bx,3998
mov cx,25
ulangY :
mov PosY,12
push cx
mov cx,80
ulangX :
cmp byte ptr es:[bx],33
jb Tdk
Geser PosY
Tdk :
sub bx,2
loop ulangX
pop cx
loop ulangY
gotoxy 22,12
mov ah,09h
lea dx,kal2
int 21h
readkey
jmp proses
selesai :
int 20h
end tdata