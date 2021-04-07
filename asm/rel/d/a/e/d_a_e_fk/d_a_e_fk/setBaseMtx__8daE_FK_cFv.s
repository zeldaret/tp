lbl_806BAE1C:
/* 806BAE1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806BAE20  7C 08 02 A6 */	mflr r0
/* 806BAE24  90 01 00 24 */	stw r0, 0x24(r1)
/* 806BAE28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806BAE2C  7C 7F 1B 78 */	mr r31, r3
/* 806BAE30  3C 60 80 6C */	lis r3, lit_3827@ha /* 0x806BB6D4@ha */
/* 806BAE34  C0 23 B6 D4 */	lfs f1, lit_3827@l(r3)  /* 0x806BB6D4@l */
/* 806BAE38  D0 21 00 08 */	stfs f1, 8(r1)
/* 806BAE3C  3C 60 80 6C */	lis r3, lit_4556@ha /* 0x806BB7F4@ha */
/* 806BAE40  C0 03 B7 F4 */	lfs f0, lit_4556@l(r3)  /* 0x806BB7F4@l */
/* 806BAE44  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806BAE48  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806BAE4C  C0 1F 05 E4 */	lfs f0, 0x5e4(r31)
/* 806BAE50  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 806BAE54  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 806BAE58  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 806BAE5C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806BAE60  4B 95 1F 05 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 806BAE64  38 61 00 08 */	addi r3, r1, 8
/* 806BAE68  4B 95 1F 6D */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 806BAE6C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 806BAE70  4B 95 20 D5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806BAE74  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 806BAE78  4B 95 1F F9 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 806BAE7C  80 7F 0C 30 */	lwz r3, 0xc30(r31)
/* 806BAE80  80 83 00 04 */	lwz r4, 4(r3)
/* 806BAE84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806BAE88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806BAE8C  38 84 00 24 */	addi r4, r4, 0x24
/* 806BAE90  4B C8 B6 21 */	bl PSMTXCopy
/* 806BAE94  80 7F 0C 30 */	lwz r3, 0xc30(r31)
/* 806BAE98  4B 95 63 55 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806BAE9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806BAEA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806BAEA4  7C 08 03 A6 */	mtlr r0
/* 806BAEA8  38 21 00 20 */	addi r1, r1, 0x20
/* 806BAEAC  4E 80 00 20 */	blr 
