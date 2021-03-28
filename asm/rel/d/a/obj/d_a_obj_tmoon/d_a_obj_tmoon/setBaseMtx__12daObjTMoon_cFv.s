lbl_80D12BF4:
/* 80D12BF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D12BF8  7C 08 02 A6 */	mflr r0
/* 80D12BFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12C00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D12C04  7C 7F 1B 78 */	mr r31, r3
/* 80D12C08  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D12C0C  4B 2F A1 58 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D12C10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D12C14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D12C18  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D12C1C  4B 2F 98 18 */	b mDoMtx_YrotM__FPA4_fs
/* 80D12C20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D12C24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D12C28  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D12C2C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D12C30  4B 63 38 80 */	b PSMTXCopy
/* 80D12C34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D12C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D12C3C  7C 08 03 A6 */	mtlr r0
/* 80D12C40  38 21 00 10 */	addi r1, r1, 0x10
/* 80D12C44  4E 80 00 20 */	blr 
