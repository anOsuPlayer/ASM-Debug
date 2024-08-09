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

.rsp: .string "rsp: %llu, 0x%016llx | "
.esp: .string "esp: %u, 0x%08x | "
.sp: .string "sp: %u, 0x%04hx | "
.spl: .string "sip: %u, 0x%02hhx\n"

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

.section .text
# prints the infos about a register; takes a quadword and prints it in binary
print_bin:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp

    movq %rcx, %rax
    movq $2, -8(%rbp)
    movl $70, -12(%rbp)
    movl $0, -24(%rbp)

    movq %rax, -20(%rbp)
    movl $72, %ecx
    call malloc
    movq %rax, %rbx

    movq $71, %rcx
    movb $0, (%rbx, %rcx, 1)

    leaq .binary(%rip), %rcx
    call __mingw_printf

    .LBIN:
        cmpl $8, -24(%rbp)
        jne .SK
            cmpl $0, -12(%rbp)
            je .SK
                movl -12(%rbp), %ecx
                cmpl $35, %ecx
                jne .DEF2
                    movb $92, (%rbx, %rcx, 1)
                    jmp .DEND
                .DEF2:
                cmpl $53, %ecx
                jne .DEF3
                    movb $92, (%rbx, %rcx, 1)
                    jmp .DEND
                .DEF3:
                cmpl $62, %ecx
                jne .DEF
                    movb $92, (%rbx, %rcx, 1)
                    jmp .DEND
                .DEF:
                movb $45, (%rbx, %rcx, 1)
                .DEND:
                decl -12(%rbp)
                movl $0, -24(%rbp)
                cmpl $0, -12(%rbp)
                jge .LBIN
        .SK:
        incl -24(%rbp)
        xorq %rdx, %rdx
        movq -20(%rbp), %rax
        divq -8(%rbp)
        movq %rax, -20(%rbp)
        cmpq $0, %rdx
        jne .P1
            movzx -12(%rbp), %rcx
            movb $48, (%rbx, %rcx, 1)
        jmp .PE
        .P1:
            movzx -12(%rbp), %rcx
            movb $49, (%rbx, %rcx, 1)
        .PE:
    decl -12(%rbp)
    cmpl $0, -12(%rbp)
    jge .LBIN

    movq %rbx, %rcx
    call __mingw_printf

    leaq .binclose(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    call free

    addq $64, %rsp
    popq %rbp
    ret

print_bin32:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp

    movq %rcx, %rax
    movq $2, -8(%rbp)
    movl $34, -12(%rbp)
    movl $0, -24(%rbp)

    movq %rax, -20(%rbp)
    movl $36, %ecx
    call malloc
    movq %rax, %rbx

    movq $35, %rcx
    movb $0, (%rbx, %rcx, 1)

    leaq .binary(%rip), %rcx
    call __mingw_printf

    .2LBIN:
        cmpl $8, -24(%rbp)
        jne .2SK
            cmpl $0, -12(%rbp)
            je .2SK
                movl -12(%rbp), %ecx
                cmpl $26, %ecx
                jne .2DEF3
                    movb $92, (%rbx, %rcx, 1)
                    jmp .2DEND
                .2DEF3:
                cmpl $17, %ecx
                jne .2DEF
                    movb $92, (%rbx, %rcx, 1)
                    jmp .2DEND
                .2DEF:
                movb $45, (%rbx, %rcx, 1)
                .2DEND:
                decl -12(%rbp)
                movl $0, -24(%rbp)
                cmpl $0, -12(%rbp)
                jge .2LBIN
        .2SK:
        incl -24(%rbp)
        xorq %rdx, %rdx
        movq -20(%rbp), %rax
        divq -8(%rbp)
        movq %rax, -20(%rbp)
        cmpq $0, %rdx
        jne .2P1
            movzx -12(%rbp), %rcx
            movb $48, (%rbx, %rcx, 1)
        jmp .2PE
        .2P1:
            movzx -12(%rbp), %rcx
            movb $49, (%rbx, %rcx, 1)
        .2PE:
    decl -12(%rbp)
    cmpl $0, -12(%rbp)
    jge .2LBIN

    movq %rbx, %rcx
    call __mingw_printf

    leaq .binclose(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    call free

    addq $64, %rsp
    popq %rbp
    ret

print_bin16:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp

    movq %rcx, %rax
    movq $2, -8(%rbp)
    movl $16, -12(%rbp)
    movl $0, -24(%rbp)

    movq %rax, -20(%rbp)
    movl $18, %ecx
    call malloc
    movq %rax, %rbx

    movq $17, %rcx
    movb $0, (%rbx, %rcx, 1)

    leaq .binary(%rip), %rcx
    call __mingw_printf

    .3LBIN:
        cmpl $8, -24(%rbp)
        jne .3SK
            cmpl $0, -12(%rbp)
            je .3SK
                movl -12(%rbp), %ecx
                cmpl $8, %ecx
                jne .3DEF
                    movb $92, (%rbx, %rcx, 1)
                    jmp .3DEND
                .3DEF:
                movb $45, (%rbx, %rcx, 1)
                .3DEND:
                decl -12(%rbp)
                movl $0, -24(%rbp)
                cmpl $0, -12(%rbp)
                jge .3LBIN
        .3SK:
        incl -24(%rbp)
        xorq %rdx, %rdx
        movq -20(%rbp), %rax
        divq -8(%rbp)
        movq %rax, -20(%rbp)
        cmpq $0, %rdx
        jne .3P1
            movzx -12(%rbp), %rcx
            movb $48, (%rbx, %rcx, 1)
        jmp .3PE
        .3P1:
            movzx -12(%rbp), %rcx
            movb $49, (%rbx, %rcx, 1)
        .3PE:
    decl -12(%rbp)
    cmpl $0, -12(%rbp)
    jge .3LBIN

    movq %rbx, %rcx
    call __mingw_printf

    leaq .binclose(%rip), %rcx
    call __mingw_printf

    movq %rbx, %rcx
    call free

    addq $64, %rsp
    popq %rbp
    ret

# debugger function, requires no argument
.globl asm_debug
asm_debug:
    pushq %rbp
    pushq %rsp
    movq %rsp, %rbp
    subq $1024, %rsp

    popq -8(%rbp)
    popq -16(%rbp)
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
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # RSP debug
    movq -8(%rbp), %rbx

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
    call print_bin

    leaq .divider(%rip), %rcx
    call __mingw_printf

    # RBP debug
    movq -16(%rbp), %rbx

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
    call print_bin32

    leaq .divider(%rip), %rcx
    call __mingw_printf

    popq %rax
    pushq %rax

    addq $1024, %rsp
    ret
    