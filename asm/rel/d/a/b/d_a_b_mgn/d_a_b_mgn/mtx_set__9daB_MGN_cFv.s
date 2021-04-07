lbl_8060E158:
/* 8060E158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060E15C  7C 08 02 A6 */	mflr r0
/* 8060E160  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060E164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060E168  93 C1 00 08 */	stw r30, 8(r1)
/* 8060E16C  7C 7E 1B 78 */	mr r30, r3
/* 8060E170  80 63 05 BC */	lwz r3, 0x5bc(r3)
/* 8060E174  83 E3 00 04 */	lwz r31, 4(r3)
/* 8060E178  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8060E17C  4B 9F EB E9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8060E180  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8060E184  4B 9F ED C1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8060E188  3C 60 80 61 */	lis r3, l_HIO@ha /* 0x80610450@ha */
/* 8060E18C  38 63 04 50 */	addi r3, r3, l_HIO@l /* 0x80610450@l */
/* 8060E190  C0 23 00 08 */	lfs f1, 8(r3)
/* 8060E194  FC 40 08 90 */	fmr f2, f1
/* 8060E198  FC 60 08 90 */	fmr f3, f1
/* 8060E19C  4B 9F EC 9D */	bl scaleM__14mDoMtx_stack_cFfff
/* 8060E1A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060E1A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060E1A8  38 9F 00 24 */	addi r4, r31, 0x24
/* 8060E1AC  4B D3 83 05 */	bl PSMTXCopy
/* 8060E1B0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060E1B4  4B A0 30 39 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 8060E1B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060E1BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8060E1C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060E1C4  7C 08 03 A6 */	mtlr r0
/* 8060E1C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8060E1CC  4E 80 00 20 */	blr 
