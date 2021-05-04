
mov ah, 0x0e ; Switching to teletype mode
mov al, 'G' ; moving the caracter we want to the al register
int 0x10 ; calling a BIOS interupt 
mov ah, 0x0e 
mov al, 'r'
int 0x10
mov ah, 0x0e 
mov al, 'a'
int 0x10
mov ah, 0x0e 
mov al, 'p'
int 0x10
mov ah, 0x0e 
mov al, 'h'
int 0x10
mov ah, 0x0e 
mov al, 'e'
int 0x10
mov ah, 0x0e 
mov al, 'n'
int 0x10
mov ah, 0x0e 
mov al, 'e'
int 0x10
mov ah, 0x0e 
mov al, 'O'
int 0x10
mov ah, 0x0e 
mov al, 'S'
int 0x10


jmp keyboard

keyboard: 
    ; Commented this out for now
    ;  mov ah, 0x0e 
    ; mov al, ''
    ; int 0x10
    ; mov ah, 0x0e
    ; mov al, 'i'
    ; int 0x10
    ; mov ah, 0x0e
    ; mov al, 'n'
    ; int 0x10
    ; mov ah, 0x0e
    ; mov al, 'p'
    ; int 0x10
    ; mov ah, 0x0e
    ; mov al, 'u'
    ; int 0x10
    ; mov ah, 0x0e
    ; mov al, 't'
    ; int 0x10



times 510-($-$$) db 0 ; add  some 0 bits 
db 0x55, 0xaa ; adding those fancy bits in the end that makes it boot 