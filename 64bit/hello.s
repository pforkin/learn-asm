#data section
.data
msg:
    .string "Hello World!\n"
    .set len, . - msg

#section code
.text 

#set main function
.global _start 

_start:
    #write string
    mov $1, %rax
    mov $1, %rdi
    mov $msg,   %rsi
    mov $len,   %rdx
    syscall

    #exit
    mov $60, %rax
    xor %rdi, %rdi
    syscall
