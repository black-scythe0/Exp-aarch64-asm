# add numbers

adding numbers in assembly is fairly simple


you mov a value in register (in our case **x1**). 
```asm
    mov x1, 1 // x1 = 1 (sort of)
```
now we can use add instruction to add.
```asm
    add x2, x1 , 2  // 1 + 2
```


now sum of 1 and 2 is in x2
only thing remaining is to verify it.

we know how to call exit syscall and give it a value to exit with.


```asm
    mov x0, x2   // mov the value of x2 to x0 (the value of exit syscall) 
    mov x8, 93   // call exit syscall
    svc 0
```


Our Program
```asm
.section .text
.global _start

_start:
    mov x1, 1
    add x2, x1, 2

    mov x0, x2
    mov x8, 93
    svc 0

```

[<<Previous](https://github.com/black-scythe0/Exp-aarch64-asm/blob/main/code/page1/page1.md)
