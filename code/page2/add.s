

.section .text

.global _start

_start:
    mov x1, 2
    mov x2, 3
    mul x1, x2, x3

    mov x0, x2
    mov x8, 93
   
    svc 0
