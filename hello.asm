section .data
    msg db 'Hello, World!', 0x0A ; message to print

section .text
    global _start

_start:
    ; write the message to stdout
    mov eax, 4         ; syscall number for sys_write
    mov ebx, 1         ; file descriptor (stdout)
    mov ecx, msg       ; pointer to the message
    mov edx, 14        ; length of the message
    int 0x80           ; call kernel

    ; exit
    mov eax, 1         ; syscall number for sys_exit
    xor ebx, ebx       ; exit status 0
    int 0x80           ; call kernel
