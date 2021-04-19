    .data    
    .comm    u,12
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    movl    $3,u+4
    movl    $2,u+8
    movl    $5,n
    call    pttrap0
    leave    
    ret    
