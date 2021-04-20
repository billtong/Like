    .data    
    .comm    u,8
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
    movl    $3,n
    movl    u+4,%eax
    movl    $5,(%eax)
    leave    
    ret    
f1:    movl    $6,n
    call    pttrap0
    leave    
    ret    
