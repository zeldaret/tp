lbl_806B49F0:
/* 806B49F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806B49F4  7C 08 02 A6 */	mflr r0
/* 806B49F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B49FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806B4A00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806B4A04  7C 7F 1B 78 */	mr r31, r3
/* 806B4A08  3C 60 80 6B */	lis r3, lit_3792@ha
/* 806B4A0C  3B C3 5C D4 */	addi r30, r3, lit_3792@l
/* 806B4A10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B4A14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B4A18  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806B4A1C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 806B4A20  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 806B4A24  4B C9 1E C4 */	b PSMTXTrans
/* 806B4A28  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 806B4A2C  4B 95 85 18 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806B4A30  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B4A34  FC 40 08 90 */	fmr f2, f1
/* 806B4A38  C0 7E 01 58 */	lfs f3, 0x158(r30)
/* 806B4A3C  4B 95 83 60 */	b transM__14mDoMtx_stack_cFfff
/* 806B4A40  C0 3F 06 EC */	lfs f1, 0x6ec(r31)
/* 806B4A44  FC 40 08 90 */	fmr f2, f1
/* 806B4A48  FC 60 08 90 */	fmr f3, f1
/* 806B4A4C  4B 95 83 EC */	b scaleM__14mDoMtx_stack_cFfff
/* 806B4A50  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B4A54  80 83 00 04 */	lwz r4, 4(r3)
/* 806B4A58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B4A5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B4A60  38 84 00 24 */	addi r4, r4, 0x24
/* 806B4A64  4B C9 1A 4C */	b PSMTXCopy
/* 806B4A68  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B4A6C  4B 95 C7 80 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 806B4A70  38 7F 06 AC */	addi r3, r31, 0x6ac
/* 806B4A74  4B 95 82 F0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 806B4A78  38 7F 06 C4 */	addi r3, r31, 0x6c4
/* 806B4A7C  4B 95 84 C8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806B4A80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B4A84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B4A88  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 806B4A8C  38 84 00 24 */	addi r4, r4, 0x24
/* 806B4A90  4B C9 1A 20 */	b PSMTXCopy
/* 806B4A94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B4A98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B4A9C  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 806B4AA0  38 84 00 24 */	addi r4, r4, 0x24
/* 806B4AA4  4B C9 1A 0C */	b PSMTXCopy
/* 806B4AA8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B4AAC  C0 5F 07 00 */	lfs f2, 0x700(r31)
/* 806B4AB0  FC 60 08 90 */	fmr f3, f1
/* 806B4AB4  4B 95 82 E8 */	b transM__14mDoMtx_stack_cFfff
/* 806B4AB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B4ABC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B4AC0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806B4AC4  D0 01 00 08 */	stfs f0, 8(r1)
/* 806B4AC8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806B4ACC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B4AD0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806B4AD4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B4AD8  38 61 00 08 */	addi r3, r1, 8
/* 806B4ADC  4B 95 82 88 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 806B4AE0  38 7F 06 CA */	addi r3, r31, 0x6ca
/* 806B4AE4  4B 95 84 60 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806B4AE8  C0 3F 06 F0 */	lfs f1, 0x6f0(r31)
/* 806B4AEC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B4AF0  FC 60 08 90 */	fmr f3, f1
/* 806B4AF4  4B 95 83 44 */	b scaleM__14mDoMtx_stack_cFfff
/* 806B4AF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B4AFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B4B00  80 9F 05 C8 */	lwz r4, 0x5c8(r31)
/* 806B4B04  38 84 00 24 */	addi r4, r4, 0x24
/* 806B4B08  4B C9 19 A8 */	b PSMTXCopy
/* 806B4B0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806B4B10  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806B4B14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B4B18  7C 08 03 A6 */	mtlr r0
/* 806B4B1C  38 21 00 20 */	addi r1, r1, 0x20
/* 806B4B20  4E 80 00 20 */	blr 
