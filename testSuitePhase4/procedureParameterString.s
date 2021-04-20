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
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    movl    8(%ebp),%eax
    pushl    %eax
    lea    u+4,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    $3,n
    .data    
s26:    .asciz  "word"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s26,%eax
    pushl    %eax
    lea    u+4,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    leave    
    ret    
f1:    movl    $6,n
    call    pttrap0
    leave    
    ret    
