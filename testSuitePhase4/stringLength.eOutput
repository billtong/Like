    .data    
    .comm    u,12
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
        movl    %esp, %ebp    
    movl    $1,u+0
    movl    $2,u+4
    movl    $3,n
    pushl    u+4
    .data    
s28:    .asciz  "arreter"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s28,%eax
    pushl    %eax
    call    pttrap105
    addl    $4,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    pushl    %eax
    pushl    $10
    call    pttrap8
    addl    $12,%esp
    movl    $5,n
    .data    
s56:    .asciz  "arreter"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s56,%eax
    pushl    %eax
    call    pttrap105
    addl    $4,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    movb    %al,u+8
    call    pttrap0
    leave    
    ret    
