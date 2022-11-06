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
    movl $4, %eax
    movl $1, %ebx
    movl $msg,   %ecx
    movl $len,   %edx
    int $0x80

    #exit
    movl $1, %eax
    xor %ebx, %ebx
    int $0x80
