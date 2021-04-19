    .data    
    .comm    u,4
n:    .long    0
    .text    
    .globl    ptmain
ptmain:    pushl   %ebp
    movl    %esp, %ebp    
    movl    $2,u+0
    movl    $3,n

%%The below section has extra code as it is two concatenetes - put("Je" | word | "e")
    pushl    u+4
    .data    
s512:    .asciz  "test"               % s512 will be different
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    u+264,%eax
    pushl    %eax
    lea    s512,%eax
    pushl    %eax
    call    pttrap103
    addl    $8,%esp
    movl    %eax,%esi
    popl    %edx
    popl    %ecx
    popl    %ebx
    popl    %eax
    movl    %esi,%eax
    .data    
s527:    .asciz  "1"              % s527 will be different
    .text    
    pushl    %eax
    pushl    %ebx
    pushl    %ecx
    pushl    %edx
    lea    s527,%ebx
    pushl    %ebx
    movl    %eax,%ebx
    pushl    %ebx
    call    pttrap103
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
    call    pttrap0 %%HALT
    leave    
    ret    
