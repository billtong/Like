    .data    
    .comm    u,8
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    movl    $0,u+4
    movl    $4,n
    movl    u+0,%eax
    movl    %eax,u+4
    incl    n
    call    pttrap0
    leave    
    ret    
