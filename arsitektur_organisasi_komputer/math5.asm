; Program   : math5.asm
; Fungsi    : Melihat Penambahan Yang dilakukan oleh berbagai perintah

.MODEL SMALL
.CODE
ORG 100h
proses :
        MOV AH, 15h     ; AH: = 15h
        MOV AL, 4       ; AL: = 4
        ADD AH, AL      ; AH: = AH + AL, Jadi AH = 19h
        MOV AX, 1234h   ; Nilai AX: = 1234h dan carry = 0
        MOV BX, 0F221h  ; Nilai BX: = F221h dan carry = 0
        ADD AX, BX      ; AX = AX + BX, jadi nilai AX = 0455h
        MOV AX, 1234h   ; AX = 1234h, CF = 0
        MOV BX, 9ABCh   ; BX = 4567h, CF = 0
        MOV CX, 5678h   ; CX = 5678h, CF = 0
        MOV DX, 0DEF0h  ; DX = DEF0h, CF = 0
        ADD CX, DX      ; CX = 3568h CF = 1
        ADC AX, BX      ; AX: = AL + BX + CF = ACF1
        INC AL          ; AL: = AL + 1, Nilai Pada AL ditambah 1
        INT 20h
END proses