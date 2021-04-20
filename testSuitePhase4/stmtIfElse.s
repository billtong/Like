    .data    
    .comm    u,24
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    movl    $1,u+4
    movl    $2,u+8
    movl    $6,n
    movl    u+4,%eax
    cmpl    %eax,u+8
    jle    f1
    movl    $1,u+12
    jmp    f2
f1:    movl    $8,n
    movl    u+8,%eax
    cmpl    %eax,u+4
    jle    f3
    movl    $3,u+16
    jmp    f4
f3:    movl    $11,n
    movl    $3,u+20
f4:f2:    incl    n
    call    pttrap0
    leave    
    ret    
