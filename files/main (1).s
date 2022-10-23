	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	ARRAY_A
	.bss
	.align 32
	.type	ARRAY_A, @object
	.size	ARRAY_A, 4194304
ARRAY_A:
	.zero	4194304
	.globl	ARRAY_B
	.align 32
	.type	ARRAY_B, @object
	.size	ARRAY_B, 4194304
ARRAY_B:
	.zero	4194304
	.globl	size_B
	.align 4
	.type	size_B, @object
	.size	size_B, 4
size_B:
	.zero	4
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"input.txt"
.LC2:
	.string	"%d"
	.text
	.globl	createFromFile
	.type	createFromFile, @function
createFromFile:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -20[rbp]
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, .LC2[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	lea	rdx, -24[rbp]
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, .LC2[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	mov	eax, DWORD PTR -24[rbp]
	mov	edx, DWORD PTR -4[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, ARRAY_A[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	nop
	nop
	leave
	ret
	.size	createFromFile, .-createFromFile
	.globl	getResult
	.type	getResult, @function
getResult:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -8[rbp], 0
	jmp	.L5
.L6:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, ARRAY_A[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -4[rbp], eax
	add	DWORD PTR -8[rbp], 1
.L5:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L6
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR ARRAY_A[rip]
	mov	DWORD PTR -12[rbp], eax
	mov	DWORD PTR size_B[rip], 1
	mov	DWORD PTR -8[rbp], 0
	jmp	.L7
.L9:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, ARRAY_B[rip]
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -8[rbp]
	add	eax, 1
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, ARRAY_A[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR size_B[rip]
	add	eax, 1
	mov	DWORD PTR size_B[rip], eax
	add	DWORD PTR -8[rbp], 1
.L7:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, ARRAY_A[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L9
.L8:
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, ARRAY_B[rip]
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	nop
	pop	rbp
	ret
	.size	getResult, .-getResult
	.section	.rodata
	.align 8
.LC3:
	.string	"for file input type f, for random : r"
.LC4:
	.string	"%c"
.LC5:
	.string	"incorrect command"
.LC6:
	.string	"w"
.LC7:
	.string	"output.txt"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	edi, 10
	call	putchar@PLT
	lea	rax, -37[rbp]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movzx	eax, BYTE PTR -37[rbp]
	cmp	al, 102
	jne	.L11
	lea	rax, .LC0[rip]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -16[rbp], rax
	lea	rdx, -36[rbp]
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, .LC2[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L12
.L13:
	lea	rdx, -44[rbp]
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, .LC2[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	mov	eax, DWORD PTR -44[rbp]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, ARRAY_A[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -8[rbp], 1
.L12:
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L13
	jmp	.L14
.L11:
	movzx	eax, BYTE PTR -37[rbp]
	cmp	al, 114
	jne	.L15
	call	rand@PLT
	mov	edx, eax
	movsx	rax, edx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 3
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	mov	ecx, eax
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	sal	eax, 2
	mov	ecx, edx
	sub	ecx, eax
	lea	eax, 5[rcx]
	mov	DWORD PTR -36[rbp], eax
	mov	eax, DWORD PTR -36[rbp]
	mov	edi, eax
	call	createRandomArray@PLT
	jmp	.L14
.L15:
	lea	rax, .LC5[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 1
	jmp	.L19
.L14:
	mov	esi, 10
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -36[rbp]
	mov	edi, eax
	call	getResult
	lea	rax, .LC6[rip]
	mov	rsi, rax
	lea	rax, .LC7[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -4[rbp], 0
	jmp	.L17
.L18:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, ARRAY_B[rip]
	mov	edx, DWORD PTR [rdx+rax]
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, .LC2[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	fprintf@PLT
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rax
	mov	edi, 32
	call	fputc@PLT
	add	DWORD PTR -4[rbp], 1
.L17:
	mov	eax, DWORD PTR size_B[rip]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L18
	mov	eax, 0
.L19:
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
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
