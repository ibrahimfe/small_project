; Program   : latihan7.asm
; Fungsi    ; Mencetak Kata Hello World

.model tiny
.code
org 100h
main proc
     mov    ah, 9
     mov    dx, offset hello_message
     int    21h
     retn

hello_message db 'Hello, World!'
main    endp
end     main'