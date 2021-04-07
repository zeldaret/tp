lbl_806B80A4:
/* 806B80A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B80A8  7C 08 02 A6 */	mflr r0
/* 806B80AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B80B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B80B4  7C 7F 1B 78 */	mr r31, r3
/* 806B80B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B80BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B80C0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806B80C4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 806B80C8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 806B80CC  4B C8 E8 1D */	bl PSMTXTrans
/* 806B80D0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 806B80D4  4B 95 4E 71 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806B80D8  C0 3F 06 84 */	lfs f1, 0x684(r31)
/* 806B80DC  FC 40 08 90 */	fmr f2, f1
/* 806B80E0  FC 60 08 90 */	fmr f3, f1
/* 806B80E4  4B 95 4D 55 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806B80E8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806B80EC  80 83 00 04 */	lwz r4, 4(r3)
/* 806B80F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B80F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B80F8  38 84 00 24 */	addi r4, r4, 0x24
/* 806B80FC  4B C8 E3 B5 */	bl PSMTXCopy
/* 806B8100  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806B8104  4B 95 90 E9 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806B8108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B810C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B8110  7C 08 03 A6 */	mtlr r0
/* 806B8114  38 21 00 10 */	addi r1, r1, 0x10
/* 806B8118  4E 80 00 20 */	blr 
