lbl_807EDA78:
/* 807EDA78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EDA7C  7C 08 02 A6 */	mflr r0
/* 807EDA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EDA84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807EDA88  7C 7F 1B 78 */	mr r31, r3
/* 807EDA8C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807EDA90  4B 81 F2 D5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 807EDA94  38 7F 06 74 */	addi r3, r31, 0x674
/* 807EDA98  4B 81 F4 AD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 807EDA9C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 807EDAA0  4B 81 F4 A5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 807EDAA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807EDAA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807EDAAC  A8 9F 06 CE */	lha r4, 0x6ce(r31)
/* 807EDAB0  4B 81 E8 ED */	bl mDoMtx_XrotM__FPA4_fs
/* 807EDAB4  3C 60 80 7F */	lis r3, l_HIO@ha /* 0x807EFBCC@ha */
/* 807EDAB8  38 63 FB CC */	addi r3, r3, l_HIO@l /* 0x807EFBCC@l */
/* 807EDABC  C0 23 00 08 */	lfs f1, 8(r3)
/* 807EDAC0  FC 40 08 90 */	fmr f2, f1
/* 807EDAC4  FC 60 08 90 */	fmr f3, f1
/* 807EDAC8  4B 81 F3 71 */	bl scaleM__14mDoMtx_stack_cFfff
/* 807EDACC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807EDAD0  80 83 00 04 */	lwz r4, 4(r3)
/* 807EDAD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807EDAD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807EDADC  38 84 00 24 */	addi r4, r4, 0x24
/* 807EDAE0  4B B5 89 D1 */	bl PSMTXCopy
/* 807EDAE4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807EDAE8  4B 82 37 05 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 807EDAEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807EDAF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EDAF4  7C 08 03 A6 */	mtlr r0
/* 807EDAF8  38 21 00 10 */	addi r1, r1, 0x10
/* 807EDAFC  4E 80 00 20 */	blr 
