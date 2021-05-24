jmp start

output:
    mov ah, 0x0e 
    int 0x10
    ret

enter:
    call newLine
    jmp input
    
;delete:
;    call output
;    mov al, ' '
;    call output
;    mov al, 0x53
;    call output
;    jmp input

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


    ;read input
    input:
        mov ah, 0x00
        int 0x16
        mov dh, 0x1c
        cmp ah, dh
        je enter
        ;mov dh, 0x53
        ;cmp ah, dh
        ;je delete

        call output
    jmp input

times 510-($-$$) db 0 
db 0x55, 0xaa 