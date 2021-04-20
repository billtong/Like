    .data    
    .comm    u,16
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    movl    $44,u+4
    movl    $5,n
    jmp    f1
v26:    movl    $5,n
    movl    $5,u+8
    jmp    m22
v39:    movl    $8,n
    movl    $6,u+12
    jmp    m22
a22:b2:    movl    $10,n
    pushl    n
    call    pttrap14
f1:    movl    u+4,%eax
    subl    $42,%eax
    cmpl    $2,%eax
    ja    b2
    shl    $2,%eax
    movl    c22(%eax),%eax
    jmp    *%eax
    .data    
c22:    .long    v26
    .long    v26
    .long    v39
    .text    
m22:    movl    $10,n
    incl    n
    call    pttrap0
    leave    
    ret    
