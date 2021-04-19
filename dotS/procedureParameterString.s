    .data    
    .comm    u,260
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $2,u+0
    jmp    f1
p13:    pushl   %ebp
        movl    %esp, %ebp    
    movb    8(%ebp),%al
    movb    %al,u+4
    movl    $3,n
