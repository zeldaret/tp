lbl_80C34ACC:
/* 80C34ACC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C34AD0  7C 08 02 A6 */	mflr r0
/* 80C34AD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C34AD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C34ADC  7C 7F 1B 78 */	mr r31, r3
/* 80C34AE0  3C 60 80 C3 */	lis r3, lit_4022@ha
/* 80C34AE4  C0 03 4F 84 */	lfs f0, lit_4022@l(r3)
/* 80C34AE8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C34AEC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C34AF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C34AF4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C34AF8  4B 3D 82 6C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C34AFC  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C34B00  4B 3D 84 44 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C34B04  38 61 00 08 */	addi r3, r1, 8
/* 80C34B08  4B 3D 83 68 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80C34B0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C34B10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C34B14  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80C34B18  38 84 00 24 */	addi r4, r4, 0x24
/* 80C34B1C  4B 71 19 94 */	b PSMTXCopy
/* 80C34B20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C34B24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C34B28  7C 08 03 A6 */	mtlr r0
/* 80C34B2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C34B30  4E 80 00 20 */	blr 
