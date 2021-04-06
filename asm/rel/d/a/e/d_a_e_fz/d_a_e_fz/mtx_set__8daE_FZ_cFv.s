lbl_806C06DC:
/* 806C06DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C06E0  7C 08 02 A6 */	mflr r0
/* 806C06E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C06E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C06EC  7C 7F 1B 78 */	mr r31, r3
/* 806C06F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C06F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C06F8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806C06FC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 806C0700  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 806C0704  4B C8 61 E5 */	bl PSMTXTrans
/* 806C0708  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 806C070C  4B 94 C8 39 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806C0710  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806C1BB0@ha */
/* 806C0714  38 63 1B B0 */	addi r3, r3, l_HIO@l /* 0x806C1BB0@l */
/* 806C0718  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 806C071C  FC 40 08 90 */	fmr f2, f1
/* 806C0720  FC 60 08 90 */	fmr f3, f1
/* 806C0724  4B 94 C7 15 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806C0728  C0 3F 07 00 */	lfs f1, 0x700(r31)
/* 806C072C  FC 40 08 90 */	fmr f2, f1
/* 806C0730  FC 60 08 90 */	fmr f3, f1
/* 806C0734  4B 94 C7 05 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806C0738  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C073C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C0740  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 806C0744  38 84 00 24 */	addi r4, r4, 0x24
/* 806C0748  4B C8 5D 69 */	bl PSMTXCopy
/* 806C074C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C0750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C0754  7C 08 03 A6 */	mtlr r0
/* 806C0758  38 21 00 10 */	addi r1, r1, 0x10
/* 806C075C  4E 80 00 20 */	blr 
