# let's start:

below is the simple asm code
it call's the syscall exit give it exit code
tell the os to take over.


```asm
.section .text
.global _start
_start:
    mov x8, 93   # call syscall exit.
    mov x0, 0    # give it exit code 0.
    svc 0        # tell os to take over

```

let's generate a object file with the GNU assembler (as).

```bash
~ $ as -o exit.o exit.s
```

link it with linker ld

```bash
~ $ ld -o exit exit.o
```

let's run it.
```bash
~ $ ./exit
```

boom.
```bash
~ $ 
```

nothing happened ?
but there arn't any error messages so it executed without any problem.

let's see what was the exit code of our program.

```bash
~ $ echo $?
    0
```
congrat's our first program  ran and it returned exit code 0

but let's do a double check to see that it realy is what it seems to be
```bash
~ $ strace ./exit
execve("/data/data/com.termux/files/home/exes/exit", ["/data/data/com.termux/files/home"...], 0x7fcc31e568 /* 43 vars */) = 0
exit(0)                                 = ?
+++ exited with 0 +++
```

so now we have confirmed that it did exited with  0.

[<< Previous](https://github.com/black-scythe0/Exp-aarch64-asm/blob/main/README.md)
