/* Once upon a time... Assembly (AT&T syntax) */
.section .data
msg: .asciz "Transylvania age: %d\n"
.section .text
.globl _start
_start:
    # This is a tiny illustrative snippet, not full syscalls
    movl $1476, %eax
    subl $1428, %eax
    # pretend to print using C printf (illustrative only)
    ret
