    .data    
    .comm    u,32
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    movl    $1,u+4
    movl    $5,u+8
    movl    $4,n
    call    pttrap0
    leave    
    ret    
