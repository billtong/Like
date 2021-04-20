    .data    
    .comm    u,12
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    jmp    f1
p13:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+4
    movl    $5,n
    movl    $2,u+4
    leave    
    ret    
f1:    movl    $1,u+8
    movl    $8,n
    pushl    u+8
    call    p13
    addl    $4,%esp
    movl    $8,n
    incl    n
    call    pttrap0
    leave    
    ret    
