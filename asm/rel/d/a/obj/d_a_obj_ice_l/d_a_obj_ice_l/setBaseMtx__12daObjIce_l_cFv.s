lbl_80C1FCF8:
/* 80C1FCF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1FCFC  7C 08 02 A6 */	mflr r0
/* 80C1FD00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1FD04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1FD08  7C 7F 1B 78 */	mr r31, r3
/* 80C1FD0C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C1FD10  4B 3E D0 54 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C1FD14  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C1FD18  4B 3E D2 2C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C1FD1C  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80C1FD20  4B 3E D1 50 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80C1FD24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1FD28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1FD2C  80 9F 06 34 */	lwz r4, 0x634(r31)
/* 80C1FD30  38 84 00 24 */	addi r4, r4, 0x24
/* 80C1FD34  4B 72 67 7C */	b PSMTXCopy
/* 80C1FD38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1FD3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1FD40  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C1FD44  4B 72 67 6C */	b PSMTXCopy
/* 80C1FD48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1FD4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1FD50  7C 08 03 A6 */	mtlr r0
/* 80C1FD54  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1FD58  4E 80 00 20 */	blr 
