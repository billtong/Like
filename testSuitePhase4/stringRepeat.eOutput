    .data    
    .comm    u,264
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
s28:    .asciz  "test"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    $4
    lea    s28,%eax
    pushl    %eax
    call    pttrap110
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    incl    n
    pushl    u+4
    call    pttrap6
    addl    $4,%esp
    movl    $6,n
    .data    
s64:    .asciz  "test"
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    $4
    lea    s64,%eax
    pushl    %eax
    call    pttrap110
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    pushl    %eax
    lea    u+8,%eax
    pushl    %eax
    call    pttrap101
    addl    $8,%esp
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    incl    n
    pushl    u+4
    lea    u+8,%eax
    pushl    %eax
    pushl    $0
    call    pttrap109
    addl    $12,%esp
    movl    $9,n
    call    pttrap0
    leave    
    ret    
