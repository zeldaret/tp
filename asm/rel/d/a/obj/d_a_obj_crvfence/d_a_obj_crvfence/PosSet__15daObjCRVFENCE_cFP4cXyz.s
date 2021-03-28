lbl_80BCEED0:
/* 80BCEED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCEED4  7C 08 02 A6 */	mflr r0
/* 80BCEED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCEEDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCEEE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BCEEE4  7C 7E 1B 78 */	mr r30, r3
/* 80BCEEE8  7C 9F 23 78 */	mr r31, r4
/* 80BCEEEC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BCEEF0  4B 43 DE 74 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BCEEF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BCEEF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BCEEFC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80BCEF00  4B 43 D5 34 */	b mDoMtx_YrotM__FPA4_fs
/* 80BCEF04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BCEF08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BCEF0C  7F E4 FB 78 */	mr r4, r31
/* 80BCEF10  7F E5 FB 78 */	mr r5, r31
/* 80BCEF14  4B 77 7E 58 */	b PSMTXMultVec
/* 80BCEF18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCEF1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BCEF20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCEF24  7C 08 03 A6 */	mtlr r0
/* 80BCEF28  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCEF2C  4E 80 00 20 */	blr 
