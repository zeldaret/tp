lbl_80CFBA60:
/* 80CFBA60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFBA64  7C 08 02 A6 */	mflr r0
/* 80CFBA68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFBA6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFBA70  7C 7F 1B 78 */	mr r31, r3
/* 80CFBA74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFBA78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFBA7C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CFBA80  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CFBA84  C0 1F 07 6C */	lfs f0, 0x76c(r31)
/* 80CFBA88  EC 42 00 28 */	fsubs f2, f2, f0
/* 80CFBA8C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CFBA90  4B 64 AE 58 */	b PSMTXTrans
/* 80CFBA94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFBA98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFBA9C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CFBAA0  4B 31 09 94 */	b mDoMtx_YrotM__FPA4_fs
/* 80CFBAA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFBAA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFBAAC  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80CFBAB0  4B 64 AA 00 */	b PSMTXCopy
/* 80CFBAB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFBAB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFBABC  7C 08 03 A6 */	mtlr r0
/* 80CFBAC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFBAC4  4E 80 00 20 */	blr 
