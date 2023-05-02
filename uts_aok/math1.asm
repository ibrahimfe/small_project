; Program : math1.asm
; Fungsi : Operator Matematika ADD

.Model Small
.Code
ORG 100h
Tdata :
        JMP Proses
        ALo     Equ     0EFFH
        AHi     Equ     122h
        BLo     Equ     0FFFFH
        BHi     Equ     0EFFH
        HslLo   dw      ?
        HslHi   dw      ?
Proses :
        MOV     AX, ALo
        SUB     AX, BLo
        MOV     HslLo, AX
        MOV     AX, AHi
        SBB     AX, BHi
        MOV     HslHi, AX
        INT     20h
End Tdata