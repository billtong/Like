    .data    
    .comm    u,8
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+0
    movl    $2,u+4
    movl    $3,n
    .data    
s23:    .asciz  "arreter"
    .text    
    .data    
s38:    .asciz  "arreter"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s38,%eax
    pushl    %eax
    lea    s23,%eax
    pushl    %eax
    call    pttrap107
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    cmpb    $0,%al
    je    f1
    incl    n
    pushl    u+4
    .data    
s64:    .asciz  "true"
    .text    
    lea    s64,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    jmp    f2
f1:    movl    $6,n
    pushl    u+4
    .data    
s93:    .asciz  "false"
    .text    
    lea    s93,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
f2:    movl    $10,n
    call    pttrap0
    leave    
    ret    
