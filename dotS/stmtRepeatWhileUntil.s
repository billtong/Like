    .data    
    .comm    u,8
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    movl    $5,u+4
b1:    movl    $5,n
    decl    u+4
    cmpl    $0,u+4
    jle    f2
    jmp    b1
f2:    incl    n
    call    pttrap0
    leave    
    ret    
