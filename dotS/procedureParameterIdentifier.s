    .data    
    .comm    u,12
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    movl    $5,u+4
    jmp    f1
p22:    pushl   %ebp
        movl    %esp, %ebp    
    movl    8(%ebp),%eax
    movl    %eax,u+8
    movl    $5,n
    movl    $5,u+8
    leave    
    ret    
f1:    movl    $8,n
    call    pttrap0
    leave    
    ret    
