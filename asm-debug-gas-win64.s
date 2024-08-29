.section .data
.heading: .string "Assembly Debugger\n\n"
.divider: .string "- - - - -\n"

.binary: .string "["
.binclose: .string "]\n"
.z: .string "0"
.o: .string "1"

.rax: .string "rax: %llu, 0x%016llx | "
.eax: .string "eax: %u, 0x%08x | "
.ax: .string "ax: %u, 0x%04hx | "
.ah: .string "ah: %u, 0x%02hhx | "
.al: .string "al: %u, 0x%02hhx\n"

.rbx: .string "rbx: %llu, 0x%016llx | "
.ebx: .string "ebx: %u, 0x%08x | "
.bx: .string "bx: %u, 0x%04hx | "
.bh: .string "bh: %u, 0x%02hhx | "
.bl: .string "bl: %u, 0x%02hhx\n"

.rcx: .string "rcx: %llu, 0x%016llx | "
.ecx: .string "ecx: %u, 0x%08x | "
.cx: .string "cx: %u, 0x%04hx | "
.ch: .string "ch: %u, 0x%02hhx | "
.cl: .string "cl: %u, 0x%02hhx\n"

.rdx: .string "rdx: %llu, 0x%016llx | "
.edx: .string "edx: %u, 0x%08x | "
.dx: .string "dx: %u, 0x%04hx | "
.dh: .string "dh: %u, 0x%02hhx | "
.dl: .string "dl: %u, 0x%02hhx\n"

.rdi: .string "rdi: %llu, 0x%016llx | "
.edi: .string "edi: %u, 0x%08x | "
.di: .string "di: %u, 0x%04hx | "
.dil: .string "dil: %u, 0x%02hhx\n"

.rsi: .string "rsi: %llu, 0x%016llx | "
.esi: .string "esi: %u, 0x%08x | "
.si: .string "si: %u, 0x%04hx | "
.sil: .string "sil: %u, 0x%02hhx\n"

.rspv: .quad 0

.rsp: .string "rsp: %llu, 0x%016llx | "
.esp: .string "esp: %u, 0x%08x | "
.sp: .string "sp: %u, 0x%04hx | "
.spl: .string "sip: %u, 0x%02hhx\n"

.rbpv: .quad 0

.rbp: .string "rbp: %llu, 0x%016llx | "
.ebp: .string "ebp: %u, 0x%08x | "
.bp: .string "bp: %u, 0x%04hx | "
.bpl: .string "sbp: %u, 0x%02hhx\n"

.r8: .string "r8: %llu, 0x%016llx | "
.r8d: .string "r8d: %u, 0x%08x | "
.r8w: .string "r8w: %u, 0x%04hx | "
.r8b: .string "r8b: %u, 0x%02hhx\n"

.r9: .string "r9: %llu, 0x%016llx | "
.r9d: .string "r9d: %u, 0x%08x | "
.r9w: .string "r9w: %u, 0x%04hx | "
.r9b: .string "r9b: %u, 0x%02hhx\n"

.r10: .string "r10: %llu, 0x%016llx | "
.r10d: .string "r10d: %u, 0x%08x | "
.r10w: .string "r10w: %u, 0x%04hx | "
.r10b: .string "r10b: %u, 0x%02hhx\n"

.r11: .string "r11: %llu, 0x%016llx | "
.r11d: .string "r11d: %u, 0x%08x | "
.r11w: .string "r11w: %u, 0x%04hx | "
.r11b: .string "r11b: %u, 0x%02hhx\n"

.r12: .string "r12: %llu, 0x%016llx | "
.r12d: .string "r12d: %u, 0x%08x | "
.r12w: .string "r12w: %u, 0x%04hx | "
.r12b: .string "r12b: %u, 0x%02hhx\n"

.r13: .string "r13: %llu, 0x%016llx | "
.r13d: .string "r13d: %u, 0x%08x | "
.r13w: .string "r13w: %u, 0x%04hx | "
.r13b: .string "r13b: %u, 0x%02hhx\n"

.r14: .string "r14: %llu, 0x%016llx | "
.r14d: .string "r14d: %u, 0x%08x | "
.r14w: .string "r14w: %u, 0x%04hx | "
.r14b: .string "r14b: %u, 0x%02hhx\n"

.r15: .string "r15: %llu, 0x%016llx | "
.r15d: .string "r15d: %u, 0x%08x | "
.r15w: .string "r15w: %u, 0x%04hx | "
.r15b: .string "r15b: %u, 0x%02hhx\n"

.eflags: .string "eflags: "

.stack: .string "working stack, from 0x%llx to 0x%llx :\n"
.stdesc16: .string "16 bits blocks\naddr\t\thex\tdec\thigh\tlow\t  bin\n"
.stdesc32: .string "32 bits blocks\naddr\t\thex\t\tdec\t\t  bin\n"
.stdesc64: .string "64 bits blocks\naddr\t\thex\t\t\tdec\t\t\t  bin\n"
.stackaddr16: .string "0x%llx\t0x%04hx\t%05hu\t[%03hhu\t%03hhu]\t| "
.stackaddr32: .string "0x%llx\t0x%08x\t%010u\t| "
.stackaddr64: .string "0x%llx\t0x%016llx\t%020llu\t| "

.st0: .string "st0: %.33Lf | "
.st0i: .string "%llu - %hu | "
.st0ix: .string "0x%016llx - 0x%04hx\n"

.st1: .string "st1: %.33Lf | "
.st1i: .string "%llu - %hu | "
.st1ix: .string "0x%016llx - 0x%04hx\n"

.st2: .string "st2: %.33Lf | "
.st2i: .string "%llu - %hu | "
.st2ix: .string "0x%016llx - 0x%04hx\n"

.st3: .string "st3: %.33Lf | "
.st3i: .string "%llu - %hu | "
.st3ix: .string "0x%016llx - 0x%04hx\n"

.st4: .string "st4: %.33Lf | "
.st4i: .string "%llu - %hu | "
.st4ix: .string "0x%016llx - 0x%04hx\n"

.st5: .string "st5: %.33Lf | "
.st5i: .string "%llu - %hu | "
.st5ix: .string "0x%016llx - 0x%04hx\n"

.st6: .string "st6: %.33Lf | "
.st6i: .string "%llu - %hu | "
.st6ix: .string "0x%016llx - 0x%04hx\n"

.st7: .string "st7: %.33Lf | "
.st7i: .string "%llu - %hu | "
.st7ix: .string "0x%016llx - 0x%04hx\n"

.mm0: .string "mm0: %llu, 0x%016llx\n"

.mm1: .string "mm1: %llu, 0x%016llx\n"

.mm2: .string "mm2: %llu, 0x%016llx\n"

.mm3: .string "mm3: %llu, 0x%016llx\n"

.mm4: .string "mm4: %llu, 0x%016llx\n"

.mm5: .string "mm5: %llu, 0x%016llx\n"

.mm6: .string "mm6: %llu, 0x%016llx\n"

.mm7: .string "mm7: %llu, 0x%016llx\n"

.section .text
# prints the infos about a register; takes a value and its size and prints it in binary
print_bin:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp

    movq %rcx, -8(%rbp)
    movl %edx, -12(%rbp)
    movl $8, -16(%rbp)

    xorq %rdx, %rdx
    movl -12(%rbp), %eax
    divl -16(%rbp)
    decl %eax
    addl %eax, -12(%rbp)

    xorq %rdx, %rdx
    movl -12(%rbp), %ecx
    call malloc
    movq %rax, %rbx

    movzx -12(%rbp), %rax
    movb $0, (%rbx, %rax, 1)

    leaq .binary(%rip), %rcx
    call __mingw_printf

    movq $2, -24(%rbp)
    movl $0, -28(%rbp)
    decl -12(%rbp)
    .L0:
        cmpl $8, -28(%rbp)
        jne .L2
            movzx -12(%rbp), %rcx
            movb $32, (%rbx, %rcx, 1)
            movl $0, -28(%rbp)
            decl -12(%rbp)
        .L2:
        incl -28(%rbp)
        xorq %rdx, %rdx
        movq -8(%rbp), %rax
        divq -24(%rbp)
        movq %rax, -8(%rbp)
        cmpq $0, %rdx
        jne .L1
            movzx -12(%rbp), %rcx
            movb $48, (%rbx, %rcx, 1)
            jmp .LE
        .L1:
            movzx -12(%rbp), %rcx
            movb $49, (%rbx, %rcx, 1)
        .LE:
    decl -12(%rbp)
    cmpl $0, -12(%rbp)
    jge .L0

    movq %rbx, %rcx
    call __mingw_printf

    leaq .binclose(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    xorq %rdx, %rdx
    call free

    addq $64, %rsp
    popq %rbp
    ret

# debugger function, requires no argument
.globl asm_debug
asm_debug:
    movq %rsp, .rspv(%rip)
    movq %rbp, .rbpv(%rip)
    
    pushq %rbp
    movq %rsp, %rbp
    subq $256, %rsp

    movq %rax, -24(%rbp)
    movq %rbx, -32(%rbp)
    movq %rcx, -40(%rbp)
    movq %rdx, -48(%rbp)
    movq %r8, -56(%rbp)
    movq %r9, -64(%rbp)
    movq %r10, -72(%rbp)
    movq %r11, -80(%rbp)

    leaq .heading(%rip), %rcx
    call __mingw_printf

    # RAX debug
    movq -24(%rbp), %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .rax(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .eax(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .ax(%rip), %rcx
    call __mingw_printf
    movb %bh, %dl
    movb %dl, %r8b
    leaq .ah(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .al(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # RBX debug
    movq -32(%rbp), %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .rbx(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .ebx(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .bx(%rip), %rcx
    call __mingw_printf
    movb %bh, %dl
    movb %dl, %r8b
    leaq .bh(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .bl(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # RCX debug
    movq -40(%rbp), %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .rcx(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .ecx(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .cx(%rip), %rcx
    call __mingw_printf
    movb %bh, %dl
    movb %dl, %r8b
    leaq .ch(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .cl(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # RDX debug
    movq -48(%rbp), %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .rdx(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .edx(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .dx(%rip), %rcx
    call __mingw_printf
    movb %bh, %dl
    movb %dl, %r8b
    leaq .dh(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .dl(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # RDI debug
    movq %rdi, %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .rdi(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .edi(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .di(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .dil(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # RSI debug
    movq %rsi, %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .rsi(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .esi(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .si(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .sil(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # RSP debug
    movq .rspv(%rip), %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .rsp(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .esp(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .sp(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .spl(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # RBP debug
    movq .rbpv(%rip), %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .rbp(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .ebp(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .bp(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .bpl(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # R8 debug
    movq -56(%rbp), %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .r8(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .r8d(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .r8w(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .r8b(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # R9 debug
    movq -64(%rbp), %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .r9(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .r9d(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .r9w(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .r9b(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # R10 debug
    movq -72(%rbp), %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .r10(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .r10d(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .r10w(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .r10b(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # R11 debug
    movq -80(%rbp), %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .r11(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .r11d(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .r11w(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .r11b(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # R12 debug
    movq %r12, %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .r12(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .r12d(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .r12w(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .r12b(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # R13 debug
    movq %r13, %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .r13(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .r13d(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .r13w(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .r13b(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # R14 debug
    movq %r14, %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .r14(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .r14d(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .r14w(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .r14b(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # R15 debug
    movq %r15, %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .r15(%rip), %rcx
    call __mingw_printf
    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .r15d(%rip), %rcx
    call __mingw_printf
    movw %bx, %dx
    movw %bx, %r8w
    leaq .r15w(%rip), %rcx
    call __mingw_printf
    movb %bl, %dl
    movb %bl, %r8b
    leaq .r15b(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $64, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # EFLAGS debug
    pushf
    popq %rbx

    movl %ebx, %edx
    movl %ebx, %r8d
    leaq .eflags(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    movl $32, %edx
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # stack debug
    movq .rbpv(%rip), %rdx
    movq .rspv(%rip), %r8
    leaq .stack(%rip), %rcx
    call __mingw_printf

    # 16b stack debug
    leaq .stdesc16(%rip), %rcx
    call __mingw_printf

    movq .rbpv(%rip), %rbx
    subq $2, %rbx
    .SP160:
        movq %rbx, %rdx
        movw (%rbx), %r8w
        movw (%rbx), %r9w
        movb 1(%rbx), %cl
        movb %cl, 32(%rsp)
        movb (%rbx), %cl
        movb %cl, 40(%rsp)
        leaq .stackaddr16(%rip), %rcx
        call __mingw_printf
        pushq %rbx
        movsxw (%rbx), %rcx
        movl $16, %edx
        call print_bin
        popq %rbx
    subq $2, %rbx
    cmpq %rbx, .rspv(%rip)
    jle .SP160

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # 32b stack debug
    leaq .stdesc32(%rip), %rcx
    call __mingw_printf

    movq .rbpv(%rip), %rbx
    subq $4, %rbx
    .SP320:
        movq %rbx, %rdx
        movl (%rbx), %r8d
        movl (%rbx), %r9d
        leaq .stackaddr32(%rip), %rcx
        call __mingw_printf
        pushq %rbx
        movsxd (%rbx), %rcx
        movl $32, %edx
        call print_bin
        popq %rbx
    subq $4, %rbx
    cmpq %rbx, .rspv(%rip)
    jle .SP320

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # 64b stack debug
    leaq .stdesc64(%rip), %rcx
    call __mingw_printf

    movq .rbpv(%rip), %rbx
    subq $8, %rbx
    .SP640:
        movq %rbx, %rdx
        movq (%rbx), %r8
        movq (%rbx), %r9
        leaq .stackaddr64(%rip), %rcx
        call __mingw_printf
        pushq %rbx
        movq (%rbx), %rcx
        movl $64, %edx
        call print_bin
        popq %rbx
    subq $8, %rbx
    cmpq %rbx, .rspv(%rip)
    jle .SP640

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # ST0 debug

    fstpt -90(%rbp)
    leaq -90(%rbp), %rdx
    movq -90(%rbp), %r8
    movl -90(%rbp), %r9d
    leaq .st0(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st0i(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st0ix(%rip), %rcx
    call __mingw_printf
    fldt -90(%rbp)

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # ST1 debug

    fxch %st(1)

    fstpt -90(%rbp)
    leaq -90(%rbp), %rdx
    movq -90(%rbp), %r8
    movl -90(%rbp), %r9d
    leaq .st1(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st1i(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st1ix(%rip), %rcx
    call __mingw_printf
    fldt -90(%rbp)

    fxch %st(1)

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # ST2 debug

    fxch %st(2)

    fstpt -90(%rbp)
    leaq -90(%rbp), %rdx
    movq -90(%rbp), %r8
    movl -90(%rbp), %r9d
    leaq .st2(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st2i(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st2ix(%rip), %rcx
    call __mingw_printf
    fldt -90(%rbp)

    fxch %st(2)

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # ST3 debug

    fxch %st(3)

    fstpt -90(%rbp)
    leaq -90(%rbp), %rdx
    movq -90(%rbp), %r8
    movl -90(%rbp), %r9d
    leaq .st3(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st3i(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st3ix(%rip), %rcx
    call __mingw_printf
    fldt -90(%rbp)

    fxch %st(3)

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # ST4 debug

    fxch %st(4)

    fstpt -90(%rbp)
    leaq -90(%rbp), %rdx
    movq -90(%rbp), %r8
    movl -90(%rbp), %r9d
    leaq .st4(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st4i(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st4ix(%rip), %rcx
    call __mingw_printf
    fldt -90(%rbp)

    fxch %st(4)

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # ST5 debug

    fxch %st(5)

    fstpt -90(%rbp)
    leaq -90(%rbp), %rdx
    movq -90(%rbp), %r8
    movl -90(%rbp), %r9d
    leaq .st5(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st5i(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st5ix(%rip), %rcx
    call __mingw_printf
    fldt -90(%rbp)

    fxch %st(5)

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # ST6 debug

    fxch %st(6)

    fstpt -90(%rbp)
    leaq -90(%rbp), %rdx
    movq -90(%rbp), %r8
    movl -90(%rbp), %r9d
    leaq .st6(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st6i(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st6ix(%rip), %rcx
    call __mingw_printf
    fldt -90(%rbp)

    fxch %st(6)

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # ST7 debug

    fxch %st(7)

    fstpt -90(%rbp)
    leaq -90(%rbp), %rdx
    movq -90(%rbp), %r8
    movl -90(%rbp), %r9d
    leaq .st7(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st7i(%rip), %rcx
    call __mingw_printf
    movq -90(%rbp), %rdx
    movw -82(%rbp), %r8w
    leaq .st7ix(%rip), %rcx
    call __mingw_printf
    fldt -90(%rbp)

    fxch %st(7)

    leaq .divider(%rip), %rcx
    call __mingw_printf

	# MM0 debug

	movq %mm0, %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .mm0(%rip), %rcx
    call __mingw_printf

	leaq .divider(%rip), %rcx
    call __mingw_printf

	# MM1 debug

	movq %mm1, %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .mm1(%rip), %rcx
    call __mingw_printf

	movq %rbx, %rcx
    movl $64, %edx
    call print_bin

	leaq .divider(%rip), %rcx
    call __mingw_printf

	# MM2 debug

	movq %mm2, %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .mm2(%rip), %rcx
    call __mingw_printf

	movq %rbx, %rcx
    movl $64, %edx
    call print_bin

	leaq .divider(%rip), %rcx
    call __mingw_printf

	# MM3 debug

	movq %mm3, %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .mm3(%rip), %rcx
    call __mingw_printf

	movq %rbx, %rcx
    movl $64, %edx
    call print_bin

	leaq .divider(%rip), %rcx
    call __mingw_printf

	# MM4 debug

	movq %mm4, %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .mm4(%rip), %rcx
    call __mingw_printf

	movq %rbx, %rcx
    movl $64, %edx
    call print_bin

	leaq .divider(%rip), %rcx
    call __mingw_printf

	# MM5 debug

	movq %mm5, %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .mm5(%rip), %rcx
    call __mingw_printf

	movq %rbx, %rcx
    movl $64, %edx
    call print_bin

	leaq .divider(%rip), %rcx
    call __mingw_printf

	# MM6 debug

	movq %mm6, %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .mm6(%rip), %rcx
    call __mingw_printf

	movq %rbx, %rcx
    movl $64, %edx
    call print_bin

	leaq .divider(%rip), %rcx
    call __mingw_printf

	# MM7 debug

	movq %mm7, %rbx

    movq %rbx, %rdx
    movq %rbx, %r8
    leaq .mm7(%rip), %rcx
    call __mingw_printf

	movq %rbx, %rcx
    movl $64, %edx
    call print_bin

	leaq .divider(%rip), %rcx
    call __mingw_printf

    movq -24(%rbp), %rax
    movq -32(%rbp), %rbx
    movq -40(%rbp), %rcx
    movq -48(%rbp), %rdx
    movq -56(%rbp), %r8
    movq -64(%rbp), %r9
    movq -72(%rbp), %r10
    movq -80(%rbp), %r11

    addq $256, %rsp
    popq %rbp
    ret
    