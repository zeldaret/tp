lbl_80519AB8:
/* 80519AB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80519ABC  7C 08 02 A6 */	mflr r0
/* 80519AC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80519AC4  7C 65 1B 78 */	mr r5, r3
/* 80519AC8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80519ACC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80519AD0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80519AD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80519AD8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80519ADC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80519AE0  C0 03 05 F0 */	lfs f0, 0x5f0(r3)
/* 80519AE4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80519AE8  38 61 00 08 */	addi r3, r1, 8
/* 80519AEC  3C 80 80 52 */	lis r4, lit_3700@ha
/* 80519AF0  C0 24 B9 F0 */	lfs f1, lit_3700@l(r4)
/* 80519AF4  C0 05 04 EC */	lfs f0, 0x4ec(r5)
/* 80519AF8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80519AFC  38 80 00 00 */	li r4, 0
/* 80519B00  4B B0 5D 7C */	b fopKyM_createWpillar__FPC4cXyzfi
/* 80519B04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80519B08  7C 08 03 A6 */	mtlr r0
/* 80519B0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80519B10  4E 80 00 20 */	blr 
