lbl_80C95EFC:
/* 80C95EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C95F00  7C 08 02 A6 */	mflr r0
/* 80C95F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C95F08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C95F0C  7C 7F 1B 78 */	mr r31, r3
/* 80C95F10  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C95F14  4B 37 6E 50 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C95F18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C95F1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C95F20  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C95F24  4B 37 65 10 */	b mDoMtx_YrotM__FPA4_fs
/* 80C95F28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C95F2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C95F30  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C95F34  38 84 00 24 */	addi r4, r4, 0x24
/* 80C95F38  4B 6B 05 78 */	b PSMTXCopy
/* 80C95F3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C95F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C95F44  7C 08 03 A6 */	mtlr r0
/* 80C95F48  38 21 00 10 */	addi r1, r1, 0x10
/* 80C95F4C  4E 80 00 20 */	blr 
