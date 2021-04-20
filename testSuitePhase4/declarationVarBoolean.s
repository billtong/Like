    .data    
    .comm    u,6
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    movl    $3,n
    movb    $1,u+4
    incl    n
    call    pttrap0
    leave    
    ret    
