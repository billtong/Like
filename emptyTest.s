    .data    
    .comm    u,4
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    movl    $3,n
    pushl    u+0
    pushl    $2
    pushl    $10
    call    pttrap8
    addl    $12,%esp
    incl    n
    pushl    u+0
    call    pttrap6
    addl    $4,%esp
    call    pttrap0
