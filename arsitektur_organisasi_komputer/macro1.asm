; Nama : ibrahim
; NIM : 3337220054
; Kelas : A Semester 2

; Program : macro1.asm
; Fungsi : Perintah Menampilkan
;               Menu:
;           1. Pilihan Pertama
;           2. Pilihan Kedua
;           3. Pilihan Ketiga
;           4. Pilihan keempat

Cls MACRO
MOV AX,0600h
XOR CX,CX
MOV DX,184Fh
MOV BH,10
INT 10h
ENDM
GotoXY MACRO X,Y
MOV AH,02
XOR BX,BX
MOV DH,Y
MOV DL,X
INT 10h
ENDM
SimpanL MACRO
LOCAL Ulang
MOV AX,0B800h
MOV ES,AX
MOV CX,4000
XOR BX,BX
Ulang:
MOV AL,ES:[BX]
MOV Layar[BX],AL
INC BX
LOOP Ulang
ENDM
BalikL MACRO
LOCAL Ulang
MOV CX,4000
XOR BX,BX
Ulang:
MOV AL,Layar[BX]
MOV ES:[BX],AL
INC BX
LOOP Ulang
ENDM
Sorot MACRO X,Y
LOCAL Ulang
MOV BL,Y
MOV AL,160
MUL BL
MOV BX,AX
MOV AL,X
MOV AH,2
MUL AH
ADD BX,AX
INC BX
MOV CX,25
Ulang:
MOV BYTE PTR ES:[BX],4Fh
ADD BX,2
LOOP Ulang
ENDM
Readkey MACRO
MOV AH,00
INT 16h
ENDM
MenuL MACRO String
MOV AH,09
LEA DX,String
INT 21h
ENDM
.MODEL SMALL
.CODE
ORG 100h
TData: JMP Proses
Layar DB 4000 DUP (?)
Menu DB 9,9,'+=============================+',13,10
DB 9,9,'| MENU SOROT |',13,10
DB 9,9,'+=============================+',13,10
DB 9,9,'| |',13,10
DB 9,9,'| 1. Pilihan Pertama |',13,10
DB 9,9,'| 2. Pilihan Kedua |',13,10
DB 9,9,'| 3. Pilihan Ketiga |',13,10
DB 9,9,'| 4. Pilihan Keempat |',13,10
DB 9,9,'| |',13,10
DB 9,9,'+=============================+$'
PosX DB 22 ; Posisi kolom mula-mula
PosY DB 12 ; Posisi baris mula-mula
Panah_Atas EQU 72 ; Kode tombol panah atas
Panah_Bawah EQU 80 ; Kode tombolpanah bawah
TEnter EQU 0Dh ; Kode tombol Enter
Proses :
Cls
GotoXY 0 8
MenuL Menu
SimpanL
Ulang :
BalikL
Sorot PosX,PosY
Masukan:
Readkey
CMP AH,Panah_Bawah
JE Bawah
CMP AH,Panah_Atas
JE CekY
CMP AL,TEnter
JNE Masukan
JMP Selesai
CekY :
CMP PosY,12
JE MaxY
DEC PosY
JMP Ulang
MaxY :
MOV PosY,15
JMP Ulang
Bawah :
CMP PosY,15
JE NolY
INC PosY
JMP Ulang
NolY :
MOV PosY,12
JMP Ulang
Selesai:
INT 20h
END TData