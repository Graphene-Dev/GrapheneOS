mov ah, 0x0e 
mov al, 'G'
int 0x10
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

jmp $
times 510-($-$$) db 0
db 0x55, 0xaa