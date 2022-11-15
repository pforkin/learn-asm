/*

GNU Assembler Hello World 64 bit edition
Using Linux System calls for 64-bit

*/

#data section
.data

#constants
SYS_WRITE = 1
SYS_EXIT = 60
STD_OUT = 1

msg:
    .string "Hello World!\n"
    .set msglen, . - msg

#section code
.text 

#set main function
.global _start 

_start:
    #write string
    movq $SYS_WRITE, %rax
    movq $STD_OUT, %rdi
    movq $msg, %rsi
    movq $msglen, %rdx
    syscall

    #exit
    movq $SYS_EXIT, %rax
    xor %rdi, %rdi
    syscall
