lbl_80CE6084:
/* 80CE6084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE6088  7C 08 02 A6 */	mflr r0
/* 80CE608C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE6090  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE6094  7C 7F 1B 78 */	mr r31, r3
/* 80CE6098  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CE609C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CE60A0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CE60A4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CE60A8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CE60AC  4B 66 08 3C */	b PSMTXTrans
/* 80CE60B0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80CE60B4  4B 32 6E 90 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CE60B8  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80CE60BC  4B 32 6D B4 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80CE60C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CE60C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CE60C8  80 9F 05 8C */	lwz r4, 0x58c(r31)
/* 80CE60CC  38 84 00 24 */	addi r4, r4, 0x24
/* 80CE60D0  4B 66 03 E0 */	b PSMTXCopy
/* 80CE60D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE60D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE60DC  7C 08 03 A6 */	mtlr r0
/* 80CE60E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE60E4  4E 80 00 20 */	blr 
