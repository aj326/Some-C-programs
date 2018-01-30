	.file	"BST.c"
	.intel_syntax noprefix
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"talloc failed."
	.text
	.p2align 4,,15
	.globl	talloc
	.type	talloc, @function
talloc:
.LFB38:
	.file 1 "BST.c"
	.loc 1 4 0
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 6 0
	mov	esi, 24
	mov	edi, 1
	call	calloc
.LVL0:
	.loc 1 7 0
	test	rax, rax
	.loc 1 6 0
	mov	rbx, rax
.LVL1:
	.loc 1 7 0
	je	.L5
.LVL2:
.L2:
	.loc 1 13 0
	mov	rax, rbx
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL3:
	ret
.L5:
	.cfi_restore_state
.LVL4:
.LBB32:
.LBB33:
.LBB34:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	mov	esi, OFFSET FLAT:.LC0
	mov	edi, 1
	xor	eax, eax
.LVL5:
	call	__printf_chk
.LVL6:
	jmp	.L2
.LBE34:
.LBE33:
.LBE32:
	.cfi_endproc
.LFE38:
	.size	talloc, .-talloc
	.section	.rodata.str1.1
.LC1:
	.string	"ROOT VAL: %d\t length %d\n"
.LC2:
	.string	"%d"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"making left child with parent of %d with %d\n"
	.section	.rodata.str1.1
.LC4:
	.string	"recursing root l"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"making right child with parent of %d with %d\n"
	.section	.rodata.str1.1
.LC6:
	.string	"recursing root r"
.LC7:
	.string	"before return, ROOT:%d"
	.text
	.p2align 4,,15
	.globl	construct
	.type	construct, @function
construct:
.LFB39:
	.loc 1 16 0
	.cfi_startproc
.LVL7:
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	mov	r12, rdi
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	mov	ebp, esi
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, rdi
	sub	rsp, 16
	.cfi_def_cfa_offset 48
	.loc 1 17 0
	test	esi, esi
	jle	.L7
.LVL8:
.LBB35:
.LBB36:
	.loc 2 104 0
	mov	edx, DWORD PTR [rdi]
	mov	ecx, esi
	mov	edi, 1
.LVL9:
	mov	esi, OFFSET FLAT:.LC1
.LVL10:
	xor	eax, eax
	call	__printf_chk
.LVL11:
.LBE36:
.LBE35:
	.loc 1 20 0
	mov	rdi, QWORD PTR fp[rip]
	lea	rdx, [rsp+12]
	mov	esi, OFFSET FLAT:.LC2
	xor	eax, eax
	call	__isoc99_fscanf
.LVL12:
	.loc 1 21 0
	xor	eax, eax
	call	talloc
.LVL13:
	.loc 1 22 0
	mov	ecx, DWORD PTR [rsp+12]
	mov	DWORD PTR [rax], ecx
	.loc 1 24 0
	mov	edx, DWORD PTR [rbx]
	cmp	ecx, edx
	jl	.L15
	.loc 1 41 0
	cmp	QWORD PTR [rbx+16], 0
	je	.L16
.LVL14:
.LBB37:
.LBB38:
	.loc 2 104 0
	mov	edi, OFFSET FLAT:.LC6
	call	puts
.LVL15:
.LBE38:
.LBE37:
	.loc 1 50 0
	mov	rdi, QWORD PTR [rbx+16]
	lea	esi, [rbp-1]
	call	construct
.LVL16:
.L10:
.LBB39:
.LBB40:
	.loc 2 104 0
	mov	edx, DWORD PTR [rbx]
	mov	esi, OFFSET FLAT:.LC7
	mov	edi, 1
	xor	eax, eax
.LBE40:
.LBE39:
	.loc 1 54 0
	mov	r12, rbx
.LBB42:
.LBB41:
	.loc 2 104 0
	call	__printf_chk
.LVL17:
.L7:
.LBE41:
.LBE42:
	.loc 1 55 0
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	mov	rax, r12
	pop	rbx
	.cfi_def_cfa_offset 24
.LVL18:
	pop	rbp
	.cfi_def_cfa_offset 16
.LVL19:
	pop	r12
	.cfi_def_cfa_offset 8
.LVL20:
	ret
.LVL21:
	.p2align 4,,10
	.p2align 3
.L15:
	.cfi_restore_state
	.loc 1 26 0
	cmp	QWORD PTR [rbx+8], 0
	je	.L17
.LVL22:
.LBB43:
.LBB44:
	.loc 2 104 0
	mov	edi, OFFSET FLAT:.LC4
	call	puts
.LVL23:
.LBE44:
.LBE43:
	.loc 1 36 0
	mov	rdi, QWORD PTR [rbx+8]
	lea	esi, [rbp-1]
	call	construct
.LVL24:
	.loc 1 55 0
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	.loc 1 36 0
	mov	r12, rax
	.loc 1 55 0
	pop	rbx
	.cfi_def_cfa_offset 24
.LVL25:
	pop	rbp
	.cfi_def_cfa_offset 16
.LVL26:
	mov	rax, r12
	pop	r12
	.cfi_def_cfa_offset 8
	ret
.LVL27:
	.p2align 4,,10
	.p2align 3
.L17:
	.cfi_restore_state
	.loc 1 28 0
	mov	QWORD PTR [rbx+8], rax
.LVL28:
.LBB45:
.LBB46:
	.loc 2 104 0
	mov	esi, OFFSET FLAT:.LC3
.LVL29:
.L14:
.LBE46:
.LBE45:
.LBB47:
.LBB48:
	mov	edi, 1
	xor	eax, eax
.LVL30:
	call	__printf_chk
.LVL31:
.LBE48:
.LBE47:
	.loc 1 45 0
	lea	esi, [rbp-1]
	mov	rdi, rbx
	call	construct
.LVL32:
	jmp	.L10
.LVL33:
	.p2align 4,,10
	.p2align 3
.L16:
	.loc 1 43 0
	mov	QWORD PTR [rbx+16], rax
.LVL34:
.LBB50:
.LBB49:
	.loc 2 104 0
	mov	esi, OFFSET FLAT:.LC5
	jmp	.L14
.LBE49:
.LBE50:
	.cfi_endproc
.LFE39:
	.size	construct, .-construct
	.section	.rodata.str1.1
.LC8:
	.string	"%d\n"
	.text
	.p2align 4,,15
	.globl	printLTR
	.type	printLTR, @function
printLTR:
.LFB40:
	.loc 1 57 0
	.cfi_startproc
.LVL35:
	.loc 1 58 0
	test	rdi, rdi
	.loc 1 57 0
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 57 0
	mov	rbx, rdi
	.loc 1 58 0
	je	.L20
.LVL36:
.LBB51:
.LBB52:
	.loc 2 104 0
	mov	edx, DWORD PTR [rdi]
	xor	eax, eax
	mov	esi, OFFSET FLAT:.LC8
	mov	edi, 1
.LVL37:
	call	__printf_chk
.LVL38:
.LBE52:
.LBE51:
	.loc 1 61 0
	mov	rax, QWORD PTR [rbx+8]
	test	rax, rax
	je	.L21
.LVL39:
.LBB53:
.LBB54:
	.loc 2 104 0 discriminator 1
	mov	edx, DWORD PTR [rax]
	mov	esi, OFFSET FLAT:.LC8
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk
.LVL40:
.L21:
.LBE54:
.LBE53:
	.loc 1 62 0
	mov	rax, QWORD PTR [rbx+16]
	test	rax, rax
	je	.L20
.LVL41:
.LBB55:
.LBB56:
	.loc 2 104 0 discriminator 1
	mov	edx, DWORD PTR [rax]
	mov	esi, OFFSET FLAT:.LC8
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk
.LVL42:
.L20:
.LBE56:
.LBE55:
	.loc 1 65 0
	mov	rax, rbx
	pop	rbx
	.cfi_def_cfa_offset 8
.LVL43:
	ret
	.cfi_endproc
.LFE40:
	.size	printLTR, .-printLTR
	.section	.rodata.str1.1
.LC9:
	.string	"before root"
.LC10:
	.string	"r"
.LC11:
	.string	"BST.in"
.LC12:
	.string	"after root"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB41:
	.loc 1 69 0
	.cfi_startproc
.LVL44:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LBB57:
.LBB58:
	.loc 2 104 0
	mov	edi, OFFSET FLAT:.LC9
.LVL45:
.LBE58:
.LBE57:
	.loc 1 69 0
	sub	rsp, 16
	.cfi_def_cfa_offset 32
.LBB60:
.LBB59:
	.loc 2 104 0
	call	puts
.LVL46:
.LBE59:
.LBE60:
	.loc 1 72 0
	mov	esi, OFFSET FLAT:.LC10
	mov	edi, OFFSET FLAT:.LC11
	call	fopen
.LVL47:
	.loc 1 73 0
	lea	rdx, [rsp+12]
	mov	rdi, rax
	mov	esi, OFFSET FLAT:.LC2
	.loc 1 72 0
	mov	QWORD PTR fp[rip], rax
	.loc 1 73 0
	xor	eax, eax
	call	__isoc99_fscanf
.LVL48:
	.loc 1 75 0
	xor	eax, eax
	call	talloc
.LVL49:
	.loc 1 76 0
	mov	rdi, QWORD PTR fp[rip]
	mov	rdx, rax
	.loc 1 75 0
	mov	rbx, rax
.LVL50:
	.loc 1 76 0
	mov	esi, OFFSET FLAT:.LC2
	xor	eax, eax
.LVL51:
	call	__isoc99_fscanf
.LVL52:
	.loc 1 77 0
	mov	esi, DWORD PTR [rsp+12]
	mov	rdi, rbx
	call	construct
.LVL53:
.LBB61:
.LBB62:
	.loc 2 104 0
	mov	edi, OFFSET FLAT:.LC12
	call	puts
.LVL54:
.LBE62:
.LBE61:
	.loc 1 79 0
	mov	rdi, rbx
	call	printLTR
.LVL55:
	.loc 1 81 0
	add	rsp, 16
	.cfi_def_cfa_offset 16
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 8
.LVL56:
	ret
	.cfi_endproc
.LFE41:
	.size	main, .-main
	.local	fp
	.comm	fp,8,8
	.globl	i
	.bss
	.align 4
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.comm	nums,4096,32
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "BST.h"
	.file 8 "/usr/include/stdlib.h"
	.file 9 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x96d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF72
	.byte	0x1
	.long	.LASF73
	.long	.LASF74
	.long	.Ldebug_ranges0+0x90
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x8c
	.long	0x65
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x8d
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x5
	.byte	0x30
	.long	0xa3
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x6
	.byte	0xf6
	.long	0x224
	.uleb128 0x8
	.long	.LASF13
	.byte	0x6
	.byte	0xf7
	.long	0x5e
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x6
	.byte	0xfc
	.long	0x8b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.byte	0xfd
	.long	0x8b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.byte	0xfe
	.long	0x8b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.byte	0xff
	.long	0x8b
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x6
	.value	0x100
	.long	0x8b
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.value	0x101
	.long	0x8b
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.value	0x102
	.long	0x8b
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.value	0x103
	.long	0x8b
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.value	0x105
	.long	0x8b
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.value	0x106
	.long	0x8b
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.value	0x107
	.long	0x8b
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.value	0x109
	.long	0x25c
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.value	0x10b
	.long	0x262
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.value	0x10d
	.long	0x5e
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.value	0x111
	.long	0x5e
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.value	0x113
	.long	0x6c
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.value	0x117
	.long	0x42
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.value	0x118
	.long	0x50
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x6
	.value	0x119
	.long	0x268
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x6
	.value	0x11d
	.long	0x278
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x6
	.value	0x126
	.long	0x77
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x6
	.value	0x12f
	.long	0x89
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x6
	.value	0x130
	.long	0x89
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6
	.value	0x131
	.long	0x89
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.value	0x132
	.long	0x89
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x6
	.value	0x133
	.long	0x29
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x6
	.value	0x135
	.long	0x5e
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x6
	.value	0x137
	.long	0x27e
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF75
	.byte	0x6
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x6
	.byte	0xa1
	.long	0x25c
	.uleb128 0x8
	.long	.LASF44
	.byte	0x6
	.byte	0xa2
	.long	0x25c
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x6
	.byte	0xa3
	.long	0x262
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x6
	.byte	0xa7
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22b
	.uleb128 0x6
	.byte	0x8
	.long	0xa3
	.uleb128 0xb
	.long	0x91
	.long	0x278
	.uleb128 0xc
	.long	0x82
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x224
	.uleb128 0xb
	.long	0x91
	.long	0x28e
	.uleb128 0xc
	.long	0x82
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x294
	.uleb128 0xd
	.long	0x91
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x7
	.long	.LASF49
	.byte	0x18
	.byte	0x7
	.byte	0x4
	.long	0x2d8
	.uleb128 0xe
	.string	"val"
	.byte	0x7
	.byte	0x6
	.long	0x5e
	.byte	0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x7
	.byte	0x7
	.long	0x2d8
	.byte	0x8
	.uleb128 0x8
	.long	.LASF51
	.byte	0x7
	.byte	0x8
	.long	0x2d8
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a7
	.uleb128 0x2
	.long	.LASF52
	.byte	0x7
	.byte	0x9
	.long	0x2d8
	.uleb128 0xf
	.long	.LASF67
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0x306
	.uleb128 0x10
	.long	.LASF76
	.byte	0x2
	.byte	0x66
	.long	0x28e
	.uleb128 0x11
	.byte	0
	.uleb128 0x12
	.long	.LASF70
	.byte	0x1
	.byte	0x3
	.long	0x2de
	.byte	0x1
	.long	0x322
	.uleb128 0x13
	.long	.LASF77
	.byte	0x1
	.byte	0x5
	.long	0x2de
	.byte	0
	.uleb128 0x14
	.long	0x306
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c2
	.uleb128 0x15
	.long	0x316
	.long	.LLST0
	.uleb128 0x16
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x3a9
	.uleb128 0x17
	.long	0x316
	.uleb128 0x18
	.long	0x2e9
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.byte	0x1
	.byte	0xa
	.uleb128 0x19
	.long	0x2f9
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x1a
	.quad	.LVL6
	.long	0x8ea
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.quad	.LVL0
	.long	0x905
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF57
	.byte	0x1
	.byte	0xf
	.long	0x2de
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ff
	.uleb128 0x1d
	.long	.LASF53
	.byte	0x1
	.byte	0xf
	.long	0x2de
	.long	.LLST1
	.uleb128 0x1d
	.long	.LASF54
	.byte	0x1
	.byte	0xf
	.long	0x5e
	.long	.LLST2
	.uleb128 0x1e
	.long	.LASF55
	.byte	0x1
	.byte	0x12
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF56
	.byte	0x1
	.byte	0x15
	.long	0x2de
	.long	.LLST3
	.uleb128 0x20
	.long	0x2e9
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.byte	0x1
	.byte	0x13
	.long	0x469
	.uleb128 0x21
	.long	0x2f9
	.long	.LLST4
	.uleb128 0x1a
	.quad	.LVL11
	.long	0x8ea
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2e9
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.byte	0x1
	.byte	0x31
	.long	0x4a5
	.uleb128 0x22
	.long	0x2f9
	.uleb128 0x1a
	.quad	.LVL15
	.long	0x920
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x2e9
	.quad	.LBB39
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x35
	.long	0x4e6
	.uleb128 0x21
	.long	0x2f9
	.long	.LLST6
	.uleb128 0x1a
	.quad	.LVL17
	.long	0x8ea
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2e9
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.byte	0x1
	.byte	0x23
	.long	0x522
	.uleb128 0x22
	.long	0x2f9
	.uleb128 0x1a
	.quad	.LVL23
	.long	0x920
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2e9
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.byte	0x1
	.byte	0x1d
	.long	0x547
	.uleb128 0x21
	.long	0x2f9
	.long	.LLST8
	.byte	0
	.uleb128 0x23
	.long	0x2e9
	.quad	.LBB47
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x2c
	.long	0x582
	.uleb128 0x19
	.long	0x2f9
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.uleb128 0x1a
	.quad	.LVL31
	.long	0x8ea
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL12
	.long	0x939
	.long	0x5a7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.quad	.LVL13
	.long	0x306
	.uleb128 0x24
	.quad	.LVL16
	.long	0x3c2
	.long	0x5cc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 -1
	.byte	0
	.uleb128 0x24
	.quad	.LVL24
	.long	0x3c2
	.long	0x5e4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 -1
	.byte	0
	.uleb128 0x1a
	.quad	.LVL32
	.long	0x3c2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF58
	.byte	0x1
	.byte	0x38
	.long	0x2de
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x6fb
	.uleb128 0x1d
	.long	.LASF53
	.byte	0x1
	.byte	0x38
	.long	0x2de
	.long	.LLST9
	.uleb128 0x20
	.long	0x2e9
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.byte	0x1
	.byte	0x3c
	.long	0x674
	.uleb128 0x21
	.long	0x2f9
	.long	.LLST10
	.uleb128 0x1a
	.quad	.LVL38
	.long	0x8ea
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2e9
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.byte	0x1
	.byte	0x3d
	.long	0x6b9
	.uleb128 0x21
	.long	0x2f9
	.long	.LLST11
	.uleb128 0x1a
	.quad	.LVL40
	.long	0x8ea
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x2e9
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.byte	0x1
	.byte	0x3e
	.uleb128 0x21
	.long	0x2f9
	.long	.LLST12
	.uleb128 0x1a
	.quad	.LVL42
	.long	0x8ea
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF59
	.byte	0x1
	.byte	0x44
	.long	0x5e
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x87b
	.uleb128 0x1d
	.long	.LASF60
	.byte	0x1
	.byte	0x44
	.long	0x5e
	.long	.LLST13
	.uleb128 0x1d
	.long	.LASF61
	.byte	0x1
	.byte	0x44
	.long	0x87b
	.long	.LLST14
	.uleb128 0x1e
	.long	.LASF54
	.byte	0x1
	.byte	0x46
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.long	.LASF53
	.byte	0x1
	.byte	0x4b
	.long	0x2de
	.long	.LLST15
	.uleb128 0x23
	.long	0x2e9
	.quad	.LBB57
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x47
	.long	0x78f
	.uleb128 0x22
	.long	0x2f9
	.uleb128 0x1a
	.quad	.LVL46
	.long	0x920
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2e9
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.byte	0x1
	.byte	0x4e
	.long	0x7cb
	.uleb128 0x22
	.long	0x2f9
	.uleb128 0x1a
	.quad	.LVL54
	.long	0x920
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL47
	.long	0x959
	.long	0x7f7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.uleb128 0x24
	.quad	.LVL48
	.long	0x939
	.long	0x81c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.quad	.LVL49
	.long	0x306
	.uleb128 0x24
	.quad	.LVL52
	.long	0x939
	.long	0x84e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL53
	.long	0x3c2
	.long	0x866
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.quad	.LVL55
	.long	0x5ff
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x28e
	.uleb128 0x26
	.string	"fp"
	.byte	0x7
	.byte	0xf
	.long	0x895
	.uleb128 0x9
	.byte	0x3
	.quad	fp
	.uleb128 0x6
	.byte	0x8
	.long	0x98
	.uleb128 0x27
	.long	.LASF62
	.byte	0x5
	.byte	0xa8
	.long	0x262
	.uleb128 0x27
	.long	.LASF63
	.byte	0x5
	.byte	0xa9
	.long	0x262
	.uleb128 0xb
	.long	0x5e
	.long	0x8c2
	.uleb128 0x28
	.long	0x82
	.value	0x3ff
	.byte	0
	.uleb128 0x29
	.long	.LASF64
	.byte	0x7
	.byte	0xa
	.long	0x8b1
	.uleb128 0x9
	.byte	0x3
	.quad	nums
	.uleb128 0x2a
	.string	"i"
	.byte	0x7
	.byte	0xb
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	i
	.uleb128 0x2b
	.long	.LASF65
	.byte	0x2
	.byte	0x57
	.long	0x5e
	.long	0x905
	.uleb128 0x2c
	.long	0x5e
	.uleb128 0x2c
	.long	0x28e
	.uleb128 0x11
	.byte	0
	.uleb128 0x2d
	.long	.LASF66
	.byte	0x8
	.value	0x1d3
	.long	0x89
	.long	0x920
	.uleb128 0x2c
	.long	0x29
	.uleb128 0x2c
	.long	0x29
	.byte	0
	.uleb128 0x2e
	.long	.LASF68
	.byte	0x9
	.byte	0
	.long	.LASF78
	.long	0x5e
	.long	0x939
	.uleb128 0x2c
	.long	0x28e
	.byte	0
	.uleb128 0x2f
	.long	.LASF69
	.byte	0x5
	.value	0x1bb
	.long	.LASF79
	.long	0x5e
	.long	0x959
	.uleb128 0x2c
	.long	0x895
	.uleb128 0x2c
	.long	0x28e
	.uleb128 0x11
	.byte	0
	.uleb128 0x30
	.long	.LASF71
	.byte	0x5
	.value	0x110
	.long	0x895
	.uleb128 0x2c
	.long	0x28e
	.uleb128 0x2c
	.long	0x28e
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL1
	.quad	.LVL2
	.value	0x1
	.byte	0x50
	.quad	.LVL2
	.quad	.LVL3
	.value	0x1
	.byte	0x53
	.quad	.LVL3
	.quad	.LVL5
	.value	0x1
	.byte	0x50
	.quad	.LVL5
	.quad	.LFE38
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL7
	.quad	.LVL9
	.value	0x1
	.byte	0x55
	.quad	.LVL9
	.quad	.LVL18
	.value	0x1
	.byte	0x53
	.quad	.LVL18
	.quad	.LVL20
	.value	0x1
	.byte	0x5c
	.quad	.LVL20
	.quad	.LVL21
	.value	0x1
	.byte	0x50
	.quad	.LVL21
	.quad	.LVL25
	.value	0x1
	.byte	0x53
	.quad	.LVL25
	.quad	.LVL27
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL27
	.quad	.LFE39
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL7
	.quad	.LVL10
	.value	0x1
	.byte	0x54
	.quad	.LVL10
	.quad	.LVL11-1
	.value	0x1
	.byte	0x52
	.quad	.LVL11-1
	.quad	.LVL19
	.value	0x1
	.byte	0x56
	.quad	.LVL19
	.quad	.LVL21
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL21
	.quad	.LVL26
	.value	0x1
	.byte	0x56
	.quad	.LVL26
	.quad	.LVL27
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL27
	.quad	.LFE39
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL13
	.quad	.LVL15-1
	.value	0x1
	.byte	0x50
	.quad	.LVL21
	.quad	.LVL23-1
	.value	0x1
	.byte	0x50
	.quad	.LVL27
	.quad	.LVL30
	.value	0x1
	.byte	0x50
	.quad	.LVL33
	.quad	.LFE39
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL8
	.quad	.LVL17
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	.LVL21
	.quad	.LFE39
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL16
	.quad	.LVL17
	.value	0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL28
	.quad	.LVL29
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL35
	.quad	.LVL37
	.value	0x1
	.byte	0x55
	.quad	.LVL37
	.quad	.LVL43
	.value	0x1
	.byte	0x53
	.quad	.LVL43
	.quad	.LFE40
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL36
	.quad	.LVL42
	.value	0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL39
	.quad	.LVL40
	.value	0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL41
	.quad	.LVL42
	.value	0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL44
	.quad	.LVL45
	.value	0x1
	.byte	0x55
	.quad	.LVL45
	.quad	.LFE41
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL44
	.quad	.LVL46-1
	.value	0x1
	.byte	0x54
	.quad	.LVL46-1
	.quad	.LFE41
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL50
	.quad	.LVL51
	.value	0x1
	.byte	0x50
	.quad	.LVL51
	.quad	.LVL52-1
	.value	0x1
	.byte	0x51
	.quad	.LVL52-1
	.quad	.LVL56
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB39
	.quad	.LBE39
	.quad	.LBB42
	.quad	.LBE42
	.quad	0
	.quad	0
	.quad	.LBB47
	.quad	.LBE47
	.quad	.LBB50
	.quad	.LBE50
	.quad	0
	.quad	0
	.quad	.LBB57
	.quad	.LBE57
	.quad	.LBB60
	.quad	.LBE60
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB41
	.quad	.LFE41
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF67:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF55:
	.string	"culprit"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF20:
	.string	"_IO_buf_base"
.LASF48:
	.string	"long long unsigned int"
.LASF51:
	.string	"right"
.LASF47:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF65:
	.string	"__printf_chk"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF37:
	.string	"__pad3"
.LASF43:
	.string	"_IO_marker"
.LASF62:
	.string	"stdin"
.LASF3:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF45:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF22:
	.string	"_IO_save_base"
.LASF79:
	.string	"__isoc99_fscanf"
.LASF57:
	.string	"construct"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF68:
	.string	"__builtin_puts"
.LASF63:
	.string	"stdout"
.LASF72:
	.string	"GNU C 4.8.1 -fpreprocessed -masm=intel -mtune=generic -march=x86-64 -g -O2 -fstack-protector"
.LASF70:
	.string	"talloc"
.LASF78:
	.string	"puts"
.LASF10:
	.string	"sizetype"
.LASF58:
	.string	"printLTR"
.LASF19:
	.string	"_IO_write_end"
.LASF75:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF71:
	.string	"fopen"
.LASF46:
	.string	"_pos"
.LASF25:
	.string	"_markers"
.LASF52:
	.string	"TREE"
.LASF1:
	.string	"unsigned char"
.LASF56:
	.string	"child"
.LASF49:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF74:
	.string	"/home/ahmed/Dropbox/Code/C/BST"
.LASF31:
	.string	"_vtable_offset"
.LASF12:
	.string	"FILE"
.LASF66:
	.string	"calloc"
.LASF69:
	.string	"fscanf"
.LASF54:
	.string	"length"
.LASF11:
	.string	"char"
.LASF64:
	.string	"nums"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF76:
	.string	"__fmt"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF73:
	.string	"BST.c"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF41:
	.string	"_unused2"
.LASF61:
	.string	"argv"
.LASF77:
	.string	"tree"
.LASF23:
	.string	"_IO_backup_base"
.LASF60:
	.string	"argc"
.LASF59:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF50:
	.string	"left"
.LASF53:
	.string	"root"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
