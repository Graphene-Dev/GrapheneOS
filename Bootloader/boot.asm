jmp start
output:
    mov ah, 0x0e 
    int 0x10
    ret

newLine:
    mov al, 0xA
    call output
    mov al, 0xD
    call output
    ret

start:
    mov al, 'G'
    call output
    mov al, 'r'
    call output
    mov al, 'a'
    call output 
    mov al, 'p'
    call output
    mov al, 'h'
    call output
    mov al, 'e'
    call output
    mov al, 'n'
    call output
    mov al, 'e'
    call output
    mov al, 'O'
    call output
    mov al, 'S'
    call output
    call newLine

; jmp keyboard

; keyboard: 
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


; jmp $
times 510-($-$$) db 0 ; add  some 0 bits 
db 0x55, 0xaa ; adding those fancy bits in the end that makes it boot 