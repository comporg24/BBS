	.file	"test.c"
# GNU C17 (Gentoo 11.3.0 p4) version 11.3.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 11.3.0, GMP version 6.2.1, MPFR version 4.1.0-p13, MPC version 1.2.1, isl version none
# warning: GMP header version 6.2.1 differs from library version 6.3.0.
# warning: MPFR header version 4.1.0-p13 differs from library version 4.2.1.
# warning: MPC header version 1.2.1 differs from library version 1.3.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fno-stack-protector -fno-dwarf2-cfi-asm
	.text
	.globl	function
	.type	function, @function
function:
.LFB0:
	pushq	%rbp	#
.LCFI0:
	movq	%rsp, %rbp	#,
.LCFI1:
	movl	%edi, -36(%rbp)	# a, a
	movl	%esi, -40(%rbp)	# b, b
	movl	%edx, -44(%rbp)	# c, c
# test.c:8:   ret = buf + 18 + 8 ;
	leaq	-18(%rbp), %rax	#, tmp84
	addq	$26, %rax	#, tmp85
	movq	%rax, -8(%rbp)	# tmp85, ret
# test.c:9:   (*ret) += 7;
	movq	-8(%rbp), %rax	# ret, tmp86
	movl	(%rax), %eax	# *ret_3, _1
	leal	7(%rax), %edx	#, _2
	movq	-8(%rbp), %rax	# ret, tmp87
	movl	%edx, (%rax)	# _2, *ret_3
# test.c:10: }
	nop	
	popq	%rbp	#
.LCFI2:
	ret	
.LFE0:
	.size	function, .-function
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	pushq	%rbp	#
.LCFI3:
	movq	%rsp, %rbp	#,
.LCFI4:
	subq	$16, %rsp	#,
# test.c:15:    x = 0;
	movl	$0, -4(%rbp)	#, x
# test.c:16:    function(1,2,3);
	movl	$3, %edx	#,
	movl	$2, %esi	#,
	movl	$1, %edi	#,
	call	function	#
# test.c:17:    x = 1;
	movl	$1, -4(%rbp)	#, x
# test.c:18:    printf ("%d\n", x);
	movl	-4(%rbp), %eax	# x, tmp82
	movl	%eax, %esi	# tmp82,
	leaq	.LC0(%rip), %rax	#, tmp83
	movq	%rax, %rdi	# tmp83,
	movl	$0, %eax	#,
	call	printf@PLT	#
# test.c:19: }
	nop	
	leave	
.LCFI5:
	ret	
.LFE1:
	.size	main, .-main
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0
	.byte	0x3
	.string	"zR"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1b
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 8
.LECIE1:
.LSFDE1:
	.long	.LEFDE1-.LASFDE1
.LASFDE1:
	.long	.LASFDE1-.Lframe1
	.long	.LFB0-.
	.long	.LFE0-.LFB0
	.uleb128 0
	.byte	0x4
	.long	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.long	.LFB1-.
	.long	.LFE1-.LFB1
	.uleb128 0
	.byte	0x4
	.long	.LCFI3-.LFB1
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE3:
	.ident	"GCC: (Gentoo 11.3.0 p4) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
