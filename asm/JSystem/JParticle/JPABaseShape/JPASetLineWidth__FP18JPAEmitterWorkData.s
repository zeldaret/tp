lbl_80276ACC:
/* 80276ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80276AD0  7C 08 02 A6 */	mflr r0
/* 80276AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80276AD8  C0 22 B8 A8 */	lfs f1, lit_2262(r2)
/* 80276ADC  C0 03 01 44 */	lfs f0, 0x144(r3)
/* 80276AE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80276AE4  FC 00 00 1E */	fctiwz f0, f0
/* 80276AE8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80276AEC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80276AF0  38 80 00 05 */	li r4, 5
/* 80276AF4  48 0E 5D C9 */	bl GXSetLineWidth
/* 80276AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80276AFC  7C 08 03 A6 */	mtlr r0
/* 80276B00  38 21 00 10 */	addi r1, r1, 0x10
/* 80276B04  4E 80 00 20 */	blr 
