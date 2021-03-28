lbl_80D1F294:
/* 80D1F294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1F298  7C 08 02 A6 */	mflr r0
/* 80D1F29C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F2A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1F2A4  7C 7F 1B 78 */	mr r31, r3
/* 80D1F2A8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D1F2AC  4B 2E DA B8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D1F2B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1F2B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1F2B8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D1F2BC  4B 2E D1 78 */	b mDoMtx_YrotM__FPA4_fs
/* 80D1F2C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1F2C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1F2C8  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D1F2CC  38 84 00 24 */	addi r4, r4, 0x24
/* 80D1F2D0  4B 62 71 E0 */	b PSMTXCopy
/* 80D1F2D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1F2D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F2DC  7C 08 03 A6 */	mtlr r0
/* 80D1F2E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F2E4  4E 80 00 20 */	blr 
