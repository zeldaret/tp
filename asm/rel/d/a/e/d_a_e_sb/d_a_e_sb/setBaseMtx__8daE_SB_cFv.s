lbl_80784640:
/* 80784640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80784644  7C 08 02 A6 */	mflr r0
/* 80784648  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078464C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80784650  7C 7F 1B 78 */	mr r31, r3
/* 80784654  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80784658  4B 88 87 0C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8078465C  38 7F 06 14 */	addi r3, r31, 0x614
/* 80784660  4B 88 88 E4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80784664  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80784668  4B 88 88 DC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8078466C  3C 60 80 78 */	lis r3, l_HIO@ha
/* 80784670  38 63 4F 84 */	addi r3, r3, l_HIO@l
/* 80784674  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 80784678  FC 40 08 90 */	fmr f2, f1
/* 8078467C  FC 60 08 90 */	fmr f3, f1
/* 80784680  4B 88 87 B8 */	b scaleM__14mDoMtx_stack_cFfff
/* 80784684  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80784688  80 83 00 04 */	lwz r4, 4(r3)
/* 8078468C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80784690  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80784694  38 84 00 24 */	addi r4, r4, 0x24
/* 80784698  4B BC 1E 18 */	b PSMTXCopy
/* 8078469C  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 807846A0  4B 88 CB 4C */	b modelCalc__16mDoExt_McaMorfSOFv
/* 807846A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807846A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807846AC  7C 08 03 A6 */	mtlr r0
/* 807846B0  38 21 00 10 */	addi r1, r1, 0x10
/* 807846B4  4E 80 00 20 */	blr 
