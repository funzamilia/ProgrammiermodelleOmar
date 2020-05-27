	.file	"ProgrammiermodelleAB4.c"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	gRekursiv
	.type	gRekursiv, @function
gRekursiv:
.LFB23:
	.cfi_startproc
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 168
	.cfi_def_cfa_offset 224
	cmp	edi, 1
	mov	DWORD PTR 124[rsp], edi
	jle	.L20
	mov	eax, edi
	mov	DWORD PTR 108[rsp], 1
	mov	DWORD PTR 112[rsp], 0
	sub	eax, 2
	mov	DWORD PTR 132[rsp], eax
	and	eax, 1
	mov	DWORD PTR 148[rsp], eax
.L19:
	mov	ecx, DWORD PTR 124[rsp]
	mov	eax, 2
	lea	edx, -1[rcx]
	cmp	edx, 1
	jle	.L3
	mov	edx, ecx
	lea	ecx, -4[rcx]
	mov	eax, DWORD PTR 132[rsp]
	sub	edx, 3
	mov	DWORD PTR 136[rsp], 0
	mov	DWORD PTR 116[rsp], 1
	and	edx, -2
	sub	ecx, edx
	mov	DWORD PTR 152[rsp], ecx
.L18:
	lea	ecx, 1[rax]
	cmp	eax, 1
	mov	DWORD PTR 96[rsp], eax
	mov	DWORD PTR 156[rsp], ecx
	je	.L22
	sub	eax, 2
	mov	DWORD PTR 120[rsp], 0
	mov	DWORD PTR 104[rsp], 1
	mov	DWORD PTR 144[rsp], eax
	and	eax, 1
	mov	DWORD PTR 140[rsp], eax
.L17:
	mov	esi, DWORD PTR 96[rsp]
	lea	eax, -1[rsi]
	cmp	eax, 1
	jle	.L23
	lea	edx, -3[rsi]
	lea	ecx, -4[rsi]
	lea	eax, -2[rsi]
	mov	DWORD PTR 92[rsp], 0
	mov	DWORD PTR 80[rsp], 1
	and	edx, -2
	mov	DWORD PTR 128[rsp], eax
	sub	ecx, edx
	mov	DWORD PTR 100[rsp], ecx
.L16:
	lea	esi, 1[rax]
	cmp	eax, 1
	mov	DWORD PTR 56[rsp], eax
	mov	DWORD PTR 84[rsp], esi
	je	.L24
	sub	eax, 2
	mov	DWORD PTR 72[rsp], 0
	mov	DWORD PTR 64[rsp], 1
	mov	DWORD PTR 88[rsp], eax
	and	eax, 1
	mov	DWORD PTR 76[rsp], eax
.L15:
	mov	ecx, DWORD PTR 56[rsp]
	lea	eax, -1[rcx]
	cmp	eax, 1
	jle	.L25
	mov	eax, ecx
	lea	ecx, -2[rcx]
	mov	DWORD PTR 52[rsp], 0
	lea	edx, -4[rax]
	sub	eax, 3
	mov	DWORD PTR 40[rsp], 1
	and	eax, -2
	mov	DWORD PTR 68[rsp], ecx
	mov	r14d, ecx
	sub	edx, eax
	mov	DWORD PTR 60[rsp], edx
.L14:
	lea	eax, 1[r14]
	cmp	r14d, 1
	mov	r15d, r14d
	mov	DWORD PTR 44[rsp], eax
	je	.L26
	lea	eax, -2[r14]
	mov	DWORD PTR 28[rsp], 0
	mov	DWORD PTR 20[rsp], 1
	mov	DWORD PTR 48[rsp], eax
	and	eax, 1
	mov	DWORD PTR 36[rsp], eax
.L13:
	lea	eax, -1[r15]
	cmp	eax, 1
	jle	.L27
	lea	eax, -2[r15]
	lea	edx, -4[r15]
	mov	DWORD PTR 12[rsp], 0
	mov	r12d, 1
	mov	DWORD PTR 32[rsp], r15d
	mov	DWORD PTR 24[rsp], eax
	mov	ebx, eax
	lea	eax, -3[r15]
	and	eax, -2
	sub	edx, eax
	mov	DWORD PTR 16[rsp], edx
.L12:
	lea	eax, 1[rbx]
	cmp	ebx, 1
	mov	r14d, ebx
	mov	DWORD PTR 8[rsp], eax
	je	.L28
	lea	ebx, -2[rbx]
	xor	ebp, ebp
	mov	r15d, 1
	mov	r13d, ebx
	and	r13d, 1
.L11:
	lea	edi, -1[r14]
	call	gRekursiv
	add	eax, eax
	imul	eax, r15d
	imul	r15d, r14d
	sub	r14d, 2
	add	ebp, eax
	cmp	r14d, r13d
	jne	.L11
	add	ebp, r15d
	add	ebp, ebp
.L10:
	imul	ebp, r12d
	add	DWORD PTR 12[rsp], ebp
	imul	r12d, DWORD PTR 8[rsp]
	cmp	DWORD PTR 16[rsp], ebx
	jne	.L12
	add	r12d, DWORD PTR 12[rsp]
	mov	r15d, DWORD PTR 32[rsp]
	add	r12d, r12d
.L9:
	mov	eax, DWORD PTR 20[rsp]
	imul	r15d, eax
	imul	r12d, eax
	add	DWORD PTR 28[rsp], r12d
	mov	DWORD PTR 20[rsp], r15d
	mov	r15d, DWORD PTR 24[rsp]
	cmp	r15d, DWORD PTR 36[rsp]
	jne	.L13
	mov	eax, DWORD PTR 20[rsp]
	add	eax, DWORD PTR 28[rsp]
	add	eax, eax
.L8:
	mov	esi, DWORD PTR 40[rsp]
	mov	r14d, DWORD PTR 48[rsp]
	imul	eax, esi
	add	DWORD PTR 52[rsp], eax
	imul	esi, DWORD PTR 44[rsp]
	cmp	DWORD PTR 60[rsp], r14d
	mov	DWORD PTR 40[rsp], esi
	jne	.L14
	mov	eax, DWORD PTR 52[rsp]
	add	eax, esi
	add	eax, eax
.L7:
	mov	ecx, DWORD PTR 64[rsp]
	imul	eax, ecx
	add	DWORD PTR 72[rsp], eax
	mov	eax, DWORD PTR 68[rsp]
	imul	ecx, DWORD PTR 56[rsp]
	cmp	eax, DWORD PTR 76[rsp]
	mov	DWORD PTR 56[rsp], eax
	mov	DWORD PTR 64[rsp], ecx
	jne	.L15
	mov	eax, DWORD PTR 72[rsp]
	add	eax, ecx
	add	eax, eax
.L6:
	mov	ecx, DWORD PTR 80[rsp]
	imul	eax, ecx
	add	DWORD PTR 92[rsp], eax
	mov	eax, DWORD PTR 88[rsp]
	imul	ecx, DWORD PTR 84[rsp]
	cmp	DWORD PTR 100[rsp], eax
	mov	DWORD PTR 80[rsp], ecx
	jne	.L16
	mov	eax, DWORD PTR 92[rsp]
	add	eax, ecx
	add	eax, eax
.L5:
	mov	edx, DWORD PTR 104[rsp]
	imul	eax, edx
	add	DWORD PTR 120[rsp], eax
	mov	eax, DWORD PTR 128[rsp]
	imul	edx, DWORD PTR 96[rsp]
	cmp	eax, DWORD PTR 140[rsp]
	mov	DWORD PTR 96[rsp], eax
	mov	DWORD PTR 104[rsp], edx
	jne	.L17
	mov	eax, DWORD PTR 120[rsp]
	add	eax, edx
	add	eax, eax
.L4:
	mov	esi, DWORD PTR 116[rsp]
	imul	eax, esi
	add	DWORD PTR 136[rsp], eax
	mov	eax, DWORD PTR 144[rsp]
	imul	esi, DWORD PTR 156[rsp]
	cmp	DWORD PTR 152[rsp], eax
	mov	DWORD PTR 116[rsp], esi
	jne	.L18
	mov	eax, DWORD PTR 136[rsp]
	add	eax, esi
	add	eax, eax
.L3:
	mov	edx, DWORD PTR 108[rsp]
	imul	eax, edx
	add	DWORD PTR 112[rsp], eax
	mov	eax, DWORD PTR 132[rsp]
	imul	edx, DWORD PTR 124[rsp]
	cmp	eax, DWORD PTR 148[rsp]
	mov	DWORD PTR 124[rsp], eax
	mov	DWORD PTR 108[rsp], edx
	je	.L2
	sub	eax, 2
	mov	DWORD PTR 132[rsp], eax
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L28:
	mov	ebp, 2
	mov	ebx, -1
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L27:
	lea	eax, -2[r15]
	mov	r12d, 2
	mov	DWORD PTR 24[rsp], eax
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L26:
	mov	eax, 2
	mov	DWORD PTR 48[rsp], -1
	jmp	.L8
.L25:
	lea	ecx, -2[rcx]
	mov	eax, 2
	mov	DWORD PTR 68[rsp], ecx
	jmp	.L7
.L24:
	mov	eax, 2
	mov	DWORD PTR 88[rsp], -1
	jmp	.L6
.L23:
	lea	ecx, -2[rsi]
	mov	eax, 2
	mov	DWORD PTR 128[rsp], ecx
	jmp	.L5
.L22:
	mov	eax, 2
	mov	DWORD PTR 144[rsp], -1
	jmp	.L4
.L20:
	mov	DWORD PTR 108[rsp], 1
	mov	DWORD PTR 112[rsp], 0
.L2:
	mov	eax, DWORD PTR 108[rsp]
	add	eax, DWORD PTR 112[rsp]
	add	rsp, 168
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	gRekursiv, .-gRekursiv
	.p2align 4,,15
	.globl	gIterativ
	.type	gIterativ, @function
gIterativ:
.LFB24:
	.cfi_startproc
	cmp	edi, 1
	mov	eax, 1
	jle	.L40
	cmp	edi, 2
	je	.L44
	mov	ecx, 3
	mov	edx, 1
	mov	esi, 4
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L45:
	mov	esi, eax
.L42:
	imul	edx, ecx
	add	ecx, 1
	cmp	edi, ecx
	lea	eax, [rdx+rsi*2]
	mov	edx, esi
	jge	.L45
	rep ret
	.p2align 4,,10
	.p2align 3
.L44:
	mov	eax, 4
.L40:
	rep ret
	.cfi_endproc
.LFE24:
	.size	gIterativ, .-gIterativ
	.p2align 4,,15
	.globl	gEndrekursiv
	.type	gEndrekursiv, @function
gEndrekursiv:
.LFB25:
	.cfi_startproc
	cmp	edi, 1
	mov	eax, 1
	jle	.L46
	cmp	edi, 2
	je	.L50
	add	edi, 1
	mov	ecx, 1
	mov	edx, 3
	mov	esi, 4
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L51:
	mov	esi, eax
.L48:
	imul	ecx, edx
	add	edx, 1
	cmp	edi, edx
	lea	eax, [rcx+rsi*2]
	mov	ecx, esi
	jne	.L51
	rep ret
	.p2align 4,,10
	.p2align 3
.L50:
	mov	eax, 4
.L46:
	rep ret
	.cfi_endproc
.LFE25:
	.size	gEndrekursiv, .-gEndrekursiv
	.p2align 4,,15
	.globl	g_help
	.type	g_help, @function
g_help:
.LFB26:
	.cfi_startproc
	cmp	edi, 1
	jle	.L55
	lea	edi, -1[rdi+rsi]
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L56:
	mov	edx, eax
.L54:
	imul	ecx, esi
	add	esi, 1
	cmp	esi, edi
	lea	eax, [rcx+rdx*2]
	mov	ecx, edx
	jne	.L56
	rep ret
	.p2align 4,,10
	.p2align 3
.L55:
	mov	eax, edx
	ret
	.cfi_endproc
.LFE26:
	.size	g_help, .-g_help
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d;"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB27:
	.cfi_startproc
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	mov	edi, 30
	call	gRekursiv
	lea	rsi, .LC0[rip]
	mov	edx, eax
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
	mov	ecx, 3
	mov	eax, 1
	mov	esi, 4
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L60:
	mov	esi, edx
.L58:
	imul	eax, ecx
	add	ecx, 1
	cmp	ecx, 31
	lea	edx, [rax+rsi*2]
	mov	eax, esi
	jne	.L60
	lea	rsi, .LC0[rip]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
	mov	ecx, 1
	mov	eax, 3
	mov	esi, 4
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L61:
	mov	esi, edx
.L59:
	imul	ecx, eax
	add	eax, 1
	cmp	eax, 31
	lea	edx, [rcx+rsi*2]
	mov	ecx, esi
	jne	.L61
	lea	rsi, .LC0[rip]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
	xor	eax, eax
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE27:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
