lbl_80C26C7C:
/* 80C26C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C26C80  7C 08 02 A6 */	mflr r0
/* 80C26C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C26C88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C26C8C  7C 7F 1B 78 */	mr r31, r3
/* 80C26C90  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C26C94  4B 3E 60 D0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C26C98  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C26C9C  4B 3E 62 A8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C26CA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C26CA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C26CA8  80 9F 06 20 */	lwz r4, 0x620(r31)
/* 80C26CAC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C26CB0  4B 71 F8 00 */	b PSMTXCopy
/* 80C26CB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C26CB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C26CBC  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C26CC0  4B 71 F7 F0 */	b PSMTXCopy
/* 80C26CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C26CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C26CCC  7C 08 03 A6 */	mtlr r0
/* 80C26CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C26CD4  4E 80 00 20 */	blr 
