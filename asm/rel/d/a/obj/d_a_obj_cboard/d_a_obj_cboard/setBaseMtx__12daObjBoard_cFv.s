lbl_8057B978:
/* 8057B978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B97C  7C 08 02 A6 */	mflr r0
/* 8057B980  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057B988  7C 7F 1B 78 */	mr r31, r3
/* 8057B98C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8057B990  4B A9 13 D5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8057B994  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8057B998  4B A9 15 AD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8057B99C  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 8057B9A0  4B A9 14 D1 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 8057B9A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8057B9A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8057B9AC  38 9F 05 6C */	addi r4, r31, 0x56c
/* 8057B9B0  4B DC AB 01 */	bl PSMTXCopy
/* 8057B9B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057B9B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B9BC  7C 08 03 A6 */	mtlr r0
/* 8057B9C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B9C4  4E 80 00 20 */	blr 
