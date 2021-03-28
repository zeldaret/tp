lbl_805AB230:
/* 805AB230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AB234  7C 08 02 A6 */	mflr r0
/* 805AB238  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AB23C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AB240  93 C1 00 08 */	stw r30, 8(r1)
/* 805AB244  7C 7E 1B 78 */	mr r30, r3
/* 805AB248  80 63 07 88 */	lwz r3, 0x788(r3)
/* 805AB24C  83 E3 00 04 */	lwz r31, 4(r3)
/* 805AB250  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 805AB254  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805AB258  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 805AB25C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805AB260  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805AB264  4B D9 B2 4C */	b PSMTXCopy
/* 805AB268  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805AB26C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805AB270  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805AB274  D0 1E 08 30 */	stfs f0, 0x830(r30)
/* 805AB278  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805AB27C  D0 1E 08 34 */	stfs f0, 0x834(r30)
/* 805AB280  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805AB284  D0 1E 08 38 */	stfs f0, 0x838(r30)
/* 805AB288  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805AB28C  4B A6 1A D8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 805AB290  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 805AB294  4B A6 1C B0 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805AB298  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 805AB29C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 805AB2A0  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 805AB2A4  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 805AB2A8  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 805AB2AC  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 805AB2B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805AB2B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805AB2B8  38 9F 00 24 */	addi r4, r31, 0x24
/* 805AB2BC  4B D9 B1 F4 */	b PSMTXCopy
/* 805AB2C0  80 7E 07 88 */	lwz r3, 0x788(r30)
/* 805AB2C4  4B A6 5F 28 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 805AB2C8  38 1F 00 24 */	addi r0, r31, 0x24
/* 805AB2CC  90 1E 05 04 */	stw r0, 0x504(r30)
/* 805AB2D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AB2D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805AB2D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AB2DC  7C 08 03 A6 */	mtlr r0
/* 805AB2E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805AB2E4  4E 80 00 20 */	blr 
