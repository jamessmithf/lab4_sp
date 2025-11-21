	.file	"primes.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.p2align 4
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB3364:
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
.LFE3364:
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.p2align 4
	.globl	_Z7isPrimel
	.type	_Z7isPrimel, @function
_Z7isPrimel:
.LFB2708:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	cmpq	$1, %rdi
	jle	.L8
	movq	%rdi, %rsi
	sarq	%rsi
	cmpq	$1, %rsi
	je	.L13
	testb	$1, %dil
	je	.L8
	addq	$1, %rsi
	movl	$2, %ecx
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L11:
	movq	%rdi, %rax
	cqto
	idivq	%rcx
	testq	%rdx, %rdx
	je	.L15
.L10:
	addq	$1, %rcx
	cmpq	%rsi, %rcx
	jne	.L11
.L13:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	xorl	%eax, %eax
.L8:
	ret
	.cfi_endproc
.LFE2708:
	.size	_Z7isPrimel, .-_Z7isPrimel
	.section	.text._ZNSt6vectorIlSaIlEED2Ev,"axG",@progbits,_ZNSt6vectorIlSaIlEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIlSaIlEED2Ev
	.type	_ZNSt6vectorIlSaIlEED2Ev, @function
_ZNSt6vectorIlSaIlEED2Ev:
.LFB3021:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L18
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L18:
	ret
	.cfi_endproc
.LFE3021:
	.size	_ZNSt6vectorIlSaIlEED2Ev, .-_ZNSt6vectorIlSaIlEED2Ev
	.weak	_ZNSt6vectorIlSaIlEED1Ev
	.set	_ZNSt6vectorIlSaIlEED1Ev,_ZNSt6vectorIlSaIlEED2Ev
	.section	.rodata._ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.str1.1,"aMS",@progbits,1
.LC0:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_
	.type	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_, @function
_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_:
.LFB3161:
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
	je	.L42
	movq	%rsi, %rdx
	movq	%rdi, %rbp
	movq	%rsi, %r14
	subq	%r13, %rdx
	cmpq	%r12, %r13
	je	.L43
	leaq	(%rax,%rax), %rcx
	cmpq	%rax, %rcx
	jb	.L34
	testq	%rcx, %rcx
	jne	.L44
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
.L25:
	movq	(%r15), %rax
	leaq	8(%rcx,%rdx), %r8
	subq	%r14, %r12
	leaq	(%r8,%r12), %r15
	movq	%rax, (%rcx,%rdx)
	testq	%rdx, %rdx
	jg	.L45
	testq	%r12, %r12
	jle	.L29
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%r8, %rdi
	movq	%rcx, (%rsp)
	call	memcpy@PLT
	movq	(%rsp), %rcx
.L29:
	testq	%r13, %r13
	jne	.L28
.L31:
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
.L34:
	.cfi_restore_state
	movabsq	$9223372036854775800, %rbx
.L24:
	movq	%rbx, %rdi
	movq	%rdx, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rcx
	addq	%rax, %rbx
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L45:
	movq	%rcx, %rdi
	movq	%r13, %rsi
	movq	%r8, (%rsp)
	call	memmove@PLT
	movq	%rax, %rcx
	testq	%r12, %r12
	jg	.L46
.L28:
	movq	16(%rbp), %rsi
	movq	%r13, %rdi
	movq	%rcx, (%rsp)
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	movq	(%rsp), %rcx
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L43:
	addq	$1, %rax
	jc	.L34
	movabsq	$1152921504606846975, %rcx
	cmpq	%rcx, %rax
	movq	%rcx, %rbx
	cmovbe	%rax, %rbx
	salq	$3, %rbx
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L46:
	movq	(%rsp), %rdi
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rax, 8(%rsp)
	call	memcpy@PLT
	movq	8(%rsp), %rcx
	jmp	.L28
.L44:
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %rcx
	cmova	%rax, %rcx
	leaq	0(,%rcx,8), %rbx
	jmp	.L24
.L42:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE3161:
	.size	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_, .-_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"\320\222\320\270\320\272\320\276\321\200\320\270\321\201\321\202\320\260\320\275\320\275\321\217: "
.LC2:
	.string	" <n>"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"basic_string: construction from null is not valid"
	.section	.rodata.str1.1
.LC4:
	.string	"stol"
.LC6:
	.string	"\320\227\320\275\320\260\320\271\320\264\320\265\320\275\320\276 "
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	" \320\277\321\200\320\276\321\201\321\202\320\270\321\205 \321\207\320\270\321\201\320\265\320\273 \320\264\320\276 "
	.section	.rodata.str1.1
.LC8:
	.string	"."
.LC9:
	.string	"\320\222\320\270\321\202\321\200\320\260\321\207\320\265\320\275\320\276 \321\207\320\260\321\201\321\203: "
.LC10:
	.string	" \321\201\320\265\320\272\321\203\320\275\320\264."
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"\320\235\320\265 \320\262\320\264\320\260\320\273\320\276\321\201\321\217 \320\277\320\265\321\200\320\265\321\202\320\262\320\276\321\200\320\270\321\202\320\270 '"
	.section	.rodata.str1.1
.LC12:
	.string	"' \320\275\320\260 \321\207\320\270\321\201\320\273\320\276."
	.section	.text.unlikely,"ax",@progbits
.LCOLDB14:
	.section	.text.startup,"ax",@progbits
.LHOTB14:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2709:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2709
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
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	cmpl	$2, %edi
	je	.L48
	leaq	_ZSt4cerr(%rip), %rbx
	movl	$26, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rbx, %rdi
.LEHB0:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	0(%rbp), %rsi
	movq	%rbx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$4, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE0:
.L49:
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L47:
	movq	104(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L99
	addq	$120, %rsp
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
.L48:
	.cfi_restore_state
	movq	8(%rsi), %r12
	leaq	80(%rsp), %r14
	leaq	64(%rsp), %r15
	movq	%r14, 64(%rsp)
	testq	%r12, %r12
	je	.L102
	movq	%r12, %rdi
	call	strlen@PLT
	movq	%rax, 32(%rsp)
	movq	%rax, %rbx
	cmpq	$15, %rax
	ja	.L103
	cmpq	$1, %rax
	jne	.L54
	movzbl	(%r12), %eax
	leaq	32(%rsp), %r13
	movb	%al, 80(%rsp)
.L55:
	movq	32(%rsp), %rax
	movq	64(%rsp), %rdx
	movq	%rax, 72(%rsp)
	movb	$0, (%rdx,%rax)
	movq	64(%rsp), %r14
	call	__errno_location@PLT
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%r14, %rdi
	movq	%rax, %r12
	movl	(%rax), %eax
	movl	%edx, (%r12)
	movl	$10, %edx
	movl	%eax, 12(%rsp)
	call	__isoc23_strtol@PLT
	movq	%rax, %rbx
	cmpq	32(%rsp), %r14
	je	.L104
	movl	(%r12), %eax
	cmpl	$34, %eax
	je	.L105
	testl	%eax, %eax
	jne	.L60
	movl	12(%rsp), %eax
	movl	%eax, (%r12)
.L60:
	movq	%r15, %rdi
	movl	$2, %ebp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)
	vmovdqa	%xmm0, 32(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	$2, 24(%rsp)
	movq	%rax, %r12
	cmpq	$1, %rbx
	jle	.L62
	.p2align 4,,10
	.p2align 3
.L61:
	movq	%rbp, %rsi
	sarq	%rsi
	cmpq	$1, %rsi
	je	.L67
	testb	$1, %bpl
	je	.L68
	addq	$1, %rsi
	movl	$2, %ecx
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L71:
	movq	%rbp, %rax
	cqto
	idivq	%rcx
	testq	%rdx, %rdx
	je	.L68
.L70:
	addq	$1, %rcx
	cmpq	%rsi, %rcx
	jne	.L71
.L67:
	movq	40(%rsp), %rsi
	cmpq	48(%rsp), %rsi
	je	.L72
	movq	%rbp, (%rsi)
	addq	$8, %rsi
	movq	%rsi, 40(%rsp)
.L68:
	addq	$1, %rbp
	movq	%rbp, 24(%rsp)
	cmpq	%rbx, %rbp
	jle	.L61
.L62:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorps	%xmm0, %xmm0, %xmm0
	movl	$17, %edx
	leaq	.LC6(%rip), %rsi
	subq	%r12, %rax
	leaq	_ZSt4cout(%rip), %r12
	movq	%r12, %rdi
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vdivsd	.LC5(%rip), %xmm0, %xmm1
	vmovq	%xmm1, %rbp
.LEHB1:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	40(%rsp), %rsi
	subq	32(%rsp), %rsi
	movq	%r12, %rdi
	sarq	$3, %rsi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$32, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movl	$29, %edx
	leaq	.LC9(%rip), %rsi
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovq	%rbp, %xmm0
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$14, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	%r13, %rdi
	call	_ZNSt6vectorIlSaIlEED1Ev
	xorl	%eax, %eax
	jmp	.L47
.L72:
	leaq	24(%rsp), %rdx
	movq	%r13, %rdi
	call	_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_
.LEHE1:
	jmp	.L68
.L54:
	leaq	32(%rsp), %r13
	testq	%rax, %rax
	je	.L55
	movq	%r14, %rdi
	jmp	.L53
.L103:
	leaq	32(%rsp), %r13
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, 64(%rsp)
	movq	%rax, %rdi
	movq	32(%rsp), %rax
	movq	%rax, 80(%rsp)
.L53:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	jmp	.L55
.L102:
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L99
	leaq	.LC3(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
.LEHE2:
.L104:
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L99
	leaq	.LC4(%rip), %rdi
.LEHB3:
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L105:
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L99
	leaq	.LC4(%rip), %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE3:
.L99:
	call	__stack_chk_fail@PLT
.L82:
	endbr64
	movq	%rax, %rdi
	movq	%rdx, %rbx
	vzeroupper
	jmp	.L65
.L84:
	endbr64
	movq	%rax, %rbx
	jmp	.L78
.L85:
	endbr64
	movq	%rax, %r13
	movq	%rdx, %rbx
	jmp	.L63
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA2709:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2709-.LLSDATTD2709
.LLSDATTD2709:
	.byte	0x1
	.uleb128 .LLSDACSE2709-.LLSDACSB2709
.LLSDACSB2709:
	.uleb128 .LEHB0-.LFB2709
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2709
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L84-.LFB2709
	.uleb128 0
	.uleb128 .LEHB2-.LFB2709
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L82-.LFB2709
	.uleb128 0x1
	.uleb128 .LEHB3-.LFB2709
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L85-.LFB2709
	.uleb128 0x3
.LLSDACSE2709:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	DW.ref._ZTISt9exception-.
.LLSDATT2709:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2709
	.type	main.cold, @function
main.cold:
.LFSB2709:
.L63:
	.cfi_def_cfa_offset 176
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	cmpl	$0, (%r12)
	je	.L106
.L64:
	movq	%r15, %rdi
	vzeroupper
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	%r13, %rdi
.L65:
	subq	$1, %rbx
	jne	.L107
	call	__cxa_begin_catch@PLT
	leaq	_ZSt4cerr(%rip), %rbx
	movl	$44, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rbx, %rdi
.LEHB4:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rbp), %rsi
	movq	%rbx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$18, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE4:
	call	__cxa_end_catch@PLT
	jmp	.L49
.L78:
	movq	%r13, %rdi
	vzeroupper
	call	_ZNSt6vectorIlSaIlEED1Ev
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L100
.L79:
	movq	%rbx, %rdi
.L101:
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L107:
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	je	.L101
.L100:
	call	__stack_chk_fail@PLT
.L106:
	movl	12(%rsp), %eax
	movl	%eax, (%r12)
	jmp	.L64
.L83:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	call	__cxa_end_catch@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	je	.L79
	jmp	.L100
	.cfi_endproc
.LFE2709:
	.section	.gcc_except_table
	.align 4
.LLSDAC2709:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC2709-.LLSDATTDC2709
.LLSDATTDC2709:
	.byte	0x1
	.uleb128 .LLSDACSEC2709-.LLSDACSBC2709
.LLSDACSBC2709:
	.uleb128 .LEHB4-.LCOLDB14
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L83-.LCOLDB14
	.uleb128 0
	.uleb128 .LEHB5-.LCOLDB14
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC2709:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	DW.ref._ZTISt9exception-.
.LLSDATTC2709:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE14:
	.section	.text.startup
.LHOTE14:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC5:
	.long	0
	.long	1104006501
	.hidden	DW.ref._ZTISt9exception
	.weak	DW.ref._ZTISt9exception
	.section	.data.rel.local.DW.ref._ZTISt9exception,"awG",@progbits,DW.ref._ZTISt9exception,comdat
	.align 8
	.type	DW.ref._ZTISt9exception, @object
	.size	DW.ref._ZTISt9exception, 8
DW.ref._ZTISt9exception:
	.quad	_ZTISt9exception
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
