    .data    
    .comm    u,8
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+0
    movl    $1,u+4
    movl    $4,n
    incl    u+4
    incl    n
    decl    u+4
    incl    n
    incl    n
    incl    n
    call    pttrap0
    leave    
    ret    
