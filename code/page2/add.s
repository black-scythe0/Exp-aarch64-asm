

.section .text

.global _start

_start:

    mov x1, 1
    add x2, x1, 2
    
    mov x0, x28
    mov x8, 93

    svc 0
