	.file	"primes_optimized.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.p2align 4
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB10338:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rbp
	testq	%rbp, %rbp
	je	.L7
	cmpb	$0, 56(%rbp)
	movq	%rdi, %rbx
	je	.L3
	movsbl	67(%rbp), %esi
.L4:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
.L3:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	call	*48(%rax)
	movsbl	%al, %esi
	jmp	.L4
.L7:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE10338:
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.p2align 4
	.globl	_Z11isPrime_AVXx
	.type	_Z11isPrime_AVXx, @function
_Z11isPrime_AVXx:
.LFB9533:
	.cfi_startproc
	endbr64
	cmpq	$1, %rdi
	jle	.L44
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x70
	movq	%rdi, %rbx
	subq	$32, %rsp
	cmpq	$2, %rdi
	je	.L16
	testb	$1, %dil
	jne	.L45
.L12:
	leaq	-16(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L45:
	.cfi_restore_state
	movq	%rdi, -24(%rbp)
	fildq	-24(%rbp)
	fldz
	fucomip	%st(1), %st
	ja	.L36
	fsqrt
.L15:
	fisttpq	-24(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$2, %rsi
	jle	.L16
	vxorps	%xmm2, %xmm2, %xmm2
	vmovd	%ebx, %xmm4
	movl	$3, %edx
	vcvtsi2ssq	%rbx, %xmm2, %xmm2
	vpbroadcastd	%xmm4, %ymm4
	vpxor	%xmm3, %xmm3, %xmm3
	vbroadcastss	%xmm2, %ymm2
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L47:
	addq	$16, %rdx
	cmpq	%rdx, %rsi
	jl	.L46
.L17:
	leal	8(%rdx), %edi
	leal	12(%rdx), %r9d
	vmovd	%edx, %xmm6
	leal	4(%rdx), %eax
	vmovd	%edi, %xmm0
	vmovd	%r9d, %xmm1
	leal	10(%rdx), %edi
	leal	14(%rdx), %r8d
	vmovd	%eax, %xmm5
	vpinsrd	$1, %r8d, %xmm1, %xmm1
	leal	6(%rdx), %eax
	leal	2(%rdx), %ecx
	vpinsrd	$1, %edi, %xmm0, %xmm0
	vpinsrd	$1, %eax, %xmm5, %xmm5
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vpinsrd	$1, %ecx, %xmm6, %xmm1
	vpunpcklqdq	%xmm5, %xmm1, %xmm1
	vinserti128	$0x1, %xmm0, %ymm1, %ymm1
	vcvtdq2ps	%ymm1, %ymm0
	vdivps	%ymm0, %ymm2, %ymm0
	vroundps	$1, %ymm0, %ymm0
	vcvttps2dq	%ymm0, %ymm0
	vpmulld	%ymm1, %ymm0, %ymm0
	vpsubd	%ymm0, %ymm4, %ymm0
	vpcmpeqd	%ymm3, %ymm0, %ymm0
	vpmovmskb	%ymm0, %eax
	testl	%eax, %eax
	je	.L47
.L38:
	vzeroupper
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L46:
	cmpq	$16, %rsi
	jle	.L23
	leaq	-16(%rsi), %rcx
	movl	$3, %eax
	cmpq	%rax, %rcx
	cmovl	%rax, %rcx
	cmpq	%rsi, %rcx
	jg	.L42
	.p2align 4,,10
	.p2align 3
.L22:
	movq	%rbx, %rax
	cqto
	idivq	%rcx
	testq	%rdx, %rdx
	jne	.L20
	cmpq	%rcx, %rbx
	jne	.L38
.L20:
	addq	$2, %rcx
	cmpq	%rcx, %rsi
	jge	.L22
.L42:
	vzeroupper
.L16:
	leaq	-16(%rbp), %rsp
	movl	$1, %eax
	popq	%rbx
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L44:
	.cfi_restore 3
	.cfi_restore 6
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x76,0x70
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movl	$3, %ecx
	jmp	.L22
.L36:
	pushq	%rax
	pushq	%rax
	fstpt	(%rsp)
	call	sqrtl@PLT
	popq	%rdx
	popq	%rcx
	jmp	.L15
	.cfi_endproc
.LFE9533:
	.size	_Z11isPrime_AVXx, .-_Z11isPrime_AVXx
	.section	.text._ZNSt6vectorIlSaIlEED2Ev,"axG",@progbits,_ZNSt6vectorIlSaIlEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIlSaIlEED2Ev
	.type	_ZNSt6vectorIlSaIlEED2Ev, @function
_ZNSt6vectorIlSaIlEED2Ev:
.LFB9897:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L50
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L50:
	ret
	.cfi_endproc
.LFE9897:
	.size	_ZNSt6vectorIlSaIlEED2Ev, .-_ZNSt6vectorIlSaIlEED2Ev
	.weak	_ZNSt6vectorIlSaIlEED1Ev
	.set	_ZNSt6vectorIlSaIlEED1Ev,_ZNSt6vectorIlSaIlEED2Ev
	.section	.rodata._ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.str1.1,"aMS",@progbits,1
.LC3:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_
	.type	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_, @function
_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_:
.LFB10087:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	movabsq	$1152921504606846975, %rdx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	8(%rdi), %r12
	movq	(%rdi), %r13
	movq	%r12, %rax
	subq	%r13, %rax
	sarq	$3, %rax
	cmpq	%rdx, %rax
	je	.L74
	movq	%rsi, %rdx
	movq	%rdi, %rbp
	movq	%rsi, %r14
	subq	%r13, %rdx
	cmpq	%r12, %r13
	je	.L75
	leaq	(%rax,%rax), %rcx
	cmpq	%rax, %rcx
	jb	.L66
	testq	%rcx, %rcx
	jne	.L76
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
.L57:
	movq	(%r15), %rax
	leaq	8(%rcx,%rdx), %r8
	subq	%r14, %r12
	leaq	(%r8,%r12), %r15
	movq	%rax, (%rcx,%rdx)
	testq	%rdx, %rdx
	jg	.L77
	testq	%r12, %r12
	jle	.L61
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%r8, %rdi
	movq	%rcx, (%rsp)
	call	memcpy@PLT
	movq	(%rsp), %rcx
.L61:
	testq	%r13, %r13
	jne	.L60
.L63:
	movq	%rcx, 0(%rbp)
	movq	%r15, 8(%rbp)
	movq	%rbx, 16(%rbp)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	.cfi_restore_state
	movabsq	$9223372036854775800, %rbx
.L56:
	movq	%rbx, %rdi
	movq	%rdx, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rcx
	addq	%rax, %rbx
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L77:
	movq	%rcx, %rdi
	movq	%r13, %rsi
	movq	%r8, (%rsp)
	call	memmove@PLT
	movq	%rax, %rcx
	testq	%r12, %r12
	jg	.L78
.L60:
	movq	16(%rbp), %rsi
	movq	%r13, %rdi
	movq	%rcx, (%rsp)
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	movq	(%rsp), %rcx
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L75:
	addq	$1, %rax
	jc	.L66
	movabsq	$1152921504606846975, %rcx
	cmpq	%rcx, %rax
	movq	%rcx, %rbx
	cmovbe	%rax, %rbx
	salq	$3, %rbx
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L78:
	movq	(%rsp), %rdi
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rax, 8(%rsp)
	call	memcpy@PLT
	movq	8(%rsp), %rcx
	jmp	.L60
.L76:
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %rcx
	cmova	%rax, %rcx
	leaq	0(,%rcx,8), %rbx
	jmp	.L56
.L74:
	leaq	.LC3(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE10087:
	.size	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_, .-_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"Usage: "
.LC5:
	.string	" <n>"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"basic_string: construction from null is not valid"
	.section	.rodata.str1.1
.LC7:
	.string	"stol"
.LC9:
	.string	"\320\227\320\275\320\260\320\271\320\264\320\265\320\275\320\276 "
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	" \320\277\321\200\320\276\321\201\321\202\320\270\321\205 \321\207\320\270\321\201\320\265\320\273 \320\264\320\276 "
	.section	.rodata.str1.1
.LC11:
	.string	"."
.LC12:
	.string	"\320\222\320\270\321\202\321\200\320\260\321\207\320\265\320\275\320\276 \321\207\320\260\321\201\321\203: "
.LC13:
	.string	" \321\201\320\265\320\272\321\203\320\275\320\264."
	.section	.text.unlikely,"ax",@progbits
.LCOLDB15:
	.section	.text.startup,"ax",@progbits
.LHOTB15:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB9534:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9534
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	cmpl	$2, %edi
	je	.L80
	leaq	_ZSt4cerr(%rip), %rbp
	movl	$7, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rbp, %rdi
.LEHB0:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rsi
	movq	%rbp, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$4, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE0:
	movl	$1, %eax
.L79:
	movq	88(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L115
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L80:
	.cfi_restore_state
	movq	8(%rsi), %rbp
	leaq	64(%rsp), %r14
	leaq	48(%rsp), %r12
	movq	%r14, 48(%rsp)
	testq	%rbp, %rbp
	je	.L117
	movq	%rbp, %rdi
	call	strlen@PLT
	movq	%rax, 16(%rsp)
	movq	%rax, %rbx
	cmpq	$15, %rax
	ja	.L118
	cmpq	$1, %rax
	jne	.L86
	movzbl	0(%rbp), %eax
	leaq	16(%rsp), %r13
	movb	%al, 64(%rsp)
.L87:
	movq	16(%rsp), %rax
	movq	48(%rsp), %rdx
	movq	%rax, 56(%rsp)
	movb	$0, (%rdx,%rax)
	movq	48(%rsp), %r15
	call	__errno_location@PLT
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%r15, %rdi
	movl	(%rax), %r14d
	movl	%edx, (%rax)
	movl	$10, %edx
	movq	%rax, %rbx
	call	__isoc23_strtol@PLT
	movq	%rax, %rbp
	cmpq	16(%rsp), %r15
	je	.L119
	movl	(%rbx), %eax
	cmpl	$34, %eax
	je	.L120
	testl	%eax, %eax
	jne	.L92
	movl	%r14d, (%rbx)
.L92:
	movq	%r12, %rdi
	movl	$2, %ebx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)
	vmovdqa	%xmm0, 16(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	$2, 8(%rsp)
	movq	%rax, %r12
	cmpq	$1, %rbp
	jg	.L93
	jmp	.L94
	.p2align 4,,10
	.p2align 3
.L99:
	addq	$1, %rbx
	movq	%rbx, 8(%rsp)
	cmpq	%rbp, %rbx
	jg	.L94
.L93:
	movq	%rbx, %rdi
	call	_Z11isPrime_AVXx
	testb	%al, %al
	je	.L99
	movq	24(%rsp), %rsi
	cmpq	32(%rsp), %rsi
	je	.L100
	movq	%rbx, (%rsi)
	addq	$8, %rsi
	addq	$1, %rbx
	movq	%rsi, 24(%rsp)
	movq	%rbx, 8(%rsp)
	cmpq	%rbp, %rbx
	jle	.L93
.L94:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorps	%xmm0, %xmm0, %xmm0
	movl	$17, %edx
	leaq	.LC9(%rip), %rsi
	subq	%r12, %rax
	leaq	_ZSt4cout(%rip), %r12
	movq	%r12, %rdi
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vdivsd	.LC8(%rip), %xmm0, %xmm1
	vmovq	%xmm1, %rbx
.LEHB1:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	24(%rsp), %rsi
	subq	16(%rsp), %rsi
	movq	%r12, %rdi
	sarq	$3, %rsi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$32, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movl	$29, %edx
	leaq	.LC12(%rip), %rsi
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovq	%rbx, %xmm0
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$14, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	%r13, %rdi
	call	_ZNSt6vectorIlSaIlEED1Ev
	xorl	%eax, %eax
	jmp	.L79
.L100:
	leaq	8(%rsp), %rdx
	movq	%r13, %rdi
	call	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_
.LEHE1:
	jmp	.L99
.L86:
	leaq	16(%rsp), %r13
	testq	%rax, %rax
	je	.L87
	movq	%r14, %rdi
	jmp	.L85
.L118:
	leaq	16(%rsp), %r13
	movq	%r12, %rdi
	xorl	%edx, %edx
	movq	%r13, %rsi
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE2:
	movq	%rax, 48(%rsp)
	movq	%rax, %rdi
	movq	16(%rsp), %rax
	movq	%rax, 64(%rsp)
.L85:
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	call	memcpy@PLT
	jmp	.L87
.L115:
	call	__stack_chk_fail@PLT
.L119:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L115
	leaq	.LC7(%rip), %rdi
.LEHB3:
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L120:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L115
	leaq	.LC7(%rip), %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE3:
.L117:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L115
	leaq	.LC6(%rip), %rdi
.LEHB4:
	call	_ZSt19__throw_logic_errorPKc@PLT
.LEHE4:
.L106:
	endbr64
	movq	%rax, %rbx
	jmp	.L102
.L107:
	endbr64
	movq	%rax, %rbp
	jmp	.L95
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9534:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9534-.LLSDACSB9534
.LLSDACSB9534:
	.uleb128 .LEHB0-.LFB9534
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9534
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L106-.LFB9534
	.uleb128 0
	.uleb128 .LEHB2-.LFB9534
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB9534
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L107-.LFB9534
	.uleb128 0
	.uleb128 .LEHB4-.LFB9534
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE9534:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC9534
	.type	main.cold, @function
main.cold:
.LFSB9534:
.L102:
	.cfi_def_cfa_offset 160
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r13, %rdi
	vzeroupper
	call	_ZNSt6vectorIlSaIlEED1Ev
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L116
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L95:
	cmpl	$0, (%rbx)
	jne	.L96
	movl	%r14d, (%rbx)
.L96:
	movq	%r12, %rdi
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L116
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
.L116:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE9534:
	.section	.gcc_except_table
.LLSDAC9534:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC9534-.LLSDACSBC9534
.LLSDACSBC9534:
	.uleb128 .LEHB5-.LCOLDB15
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC9534:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE15:
	.section	.text.startup
.LHOTE15:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.long	0
	.long	1104006501
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
