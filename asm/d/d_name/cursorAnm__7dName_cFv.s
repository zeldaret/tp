lbl_8024EC84:
/* 8024EC84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024EC88  7C 08 02 A6 */	mflr r0
/* 8024EC8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024EC90  80 83 00 28 */	lwz r4, 0x28(r3)
/* 8024EC94  38 04 00 02 */	addi r0, r4, 2
/* 8024EC98  90 03 00 28 */	stw r0, 0x28(r3)
/* 8024EC9C  80 83 00 24 */	lwz r4, 0x24(r3)
/* 8024ECA0  A8 04 00 06 */	lha r0, 6(r4)
/* 8024ECA4  80 83 00 28 */	lwz r4, 0x28(r3)
/* 8024ECA8  7C 04 00 00 */	cmpw r4, r0
/* 8024ECAC  41 80 00 0C */	blt lbl_8024ECB8
/* 8024ECB0  7C 00 20 50 */	subf r0, r0, r4
/* 8024ECB4  90 03 00 28 */	stw r0, 0x28(r3)
lbl_8024ECB8:
/* 8024ECB8  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8024ECBC  C8 22 B3 C8 */	lfd f1, lit_3936(r2)
/* 8024ECC0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8024ECC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8024ECC8  3C 00 43 30 */	lis r0, 0x4330
/* 8024ECCC  90 01 00 08 */	stw r0, 8(r1)
/* 8024ECD0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8024ECD4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8024ECD8  80 83 00 24 */	lwz r4, 0x24(r3)
/* 8024ECDC  D0 04 00 08 */	stfs f0, 8(r4)
/* 8024ECE0  80 83 00 30 */	lwz r4, 0x30(r3)
/* 8024ECE4  38 04 00 02 */	addi r0, r4, 2
/* 8024ECE8  90 03 00 30 */	stw r0, 0x30(r3)
/* 8024ECEC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8024ECF0  A8 04 00 06 */	lha r0, 6(r4)
/* 8024ECF4  80 83 00 30 */	lwz r4, 0x30(r3)
/* 8024ECF8  7C 04 00 00 */	cmpw r4, r0
/* 8024ECFC  41 80 00 0C */	blt lbl_8024ED08
/* 8024ED00  7C 00 20 50 */	subf r0, r0, r4
/* 8024ED04  90 03 00 30 */	stw r0, 0x30(r3)
lbl_8024ED08:
/* 8024ED08  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8024ED0C  C8 22 B3 C8 */	lfd f1, lit_3936(r2)
/* 8024ED10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8024ED14  90 01 00 0C */	stw r0, 0xc(r1)
/* 8024ED18  3C 00 43 30 */	lis r0, 0x4330
/* 8024ED1C  90 01 00 08 */	stw r0, 8(r1)
/* 8024ED20  C8 01 00 08 */	lfd f0, 8(r1)
/* 8024ED24  EC 00 08 28 */	fsubs f0, f0, f1
/* 8024ED28  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8024ED2C  D0 04 00 08 */	stfs f0, 8(r4)
/* 8024ED30  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8024ED34  48 0A A9 5D */	bl animation__9J2DScreenFv
/* 8024ED38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024ED3C  7C 08 03 A6 */	mtlr r0
/* 8024ED40  38 21 00 10 */	addi r1, r1, 0x10
/* 8024ED44  4E 80 00 20 */	blr 
