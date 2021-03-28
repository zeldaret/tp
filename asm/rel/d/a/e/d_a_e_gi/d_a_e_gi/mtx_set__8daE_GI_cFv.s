lbl_806CFB60:
/* 806CFB60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CFB64  7C 08 02 A6 */	mflr r0
/* 806CFB68  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CFB6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806CFB70  93 C1 00 08 */	stw r30, 8(r1)
/* 806CFB74  7C 7E 1B 78 */	mr r30, r3
/* 806CFB78  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806CFB7C  4B 93 D1 E8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 806CFB80  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806CFB84  4B 93 D3 C0 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806CFB88  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CFB8C  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806CFB90  C0 23 00 08 */	lfs f1, 8(r3)
/* 806CFB94  FC 40 08 90 */	fmr f2, f1
/* 806CFB98  FC 60 08 90 */	fmr f3, f1
/* 806CFB9C  4B 93 D2 9C */	b scaleM__14mDoMtx_stack_cFfff
/* 806CFBA0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CFBA4  83 E3 00 04 */	lwz r31, 4(r3)
/* 806CFBA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806CFBAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806CFBB0  38 9F 00 24 */	addi r4, r31, 0x24
/* 806CFBB4  4B C7 68 FC */	b PSMTXCopy
/* 806CFBB8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CFBBC  4B 94 16 30 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 806CFBC0  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 806CFBC4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806CFBC8  38 63 03 00 */	addi r3, r3, 0x300
/* 806CFBCC  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 806CFBD0  38 84 00 24 */	addi r4, r4, 0x24
/* 806CFBD4  4B C7 68 DC */	b PSMTXCopy
/* 806CFBD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806CFBDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 806CFBE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CFBE4  7C 08 03 A6 */	mtlr r0
/* 806CFBE8  38 21 00 10 */	addi r1, r1, 0x10
/* 806CFBEC  4E 80 00 20 */	blr 
