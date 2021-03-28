lbl_80A88278:
/* 80A88278  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A8827C  7C 08 02 A6 */	mflr r0
/* 80A88280  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A88284  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A88288  7C 7F 1B 78 */	mr r31, r3
/* 80A8828C  3C 60 80 A9 */	lis r3, lit_5872@ha
/* 80A88290  C8 23 86 4C */	lfd f1, lit_5872@l(r3)
/* 80A88294  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80A88298  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A8829C  3C 00 43 30 */	lis r0, 0x4330
/* 80A882A0  90 01 00 08 */	stw r0, 8(r1)
/* 80A882A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80A882A8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80A882AC  4B 7D F6 A8 */	b cM_rndF__Ff
/* 80A882B0  3C 60 80 A9 */	lis r3, lit_5872@ha
/* 80A882B4  C8 43 86 4C */	lfd f2, lit_5872@l(r3)
/* 80A882B8  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80A882BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A882C0  3C 00 43 30 */	lis r0, 0x4330
/* 80A882C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A882C8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80A882CC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A882D0  EC 00 08 2A */	fadds f0, f0, f1
/* 80A882D4  FC 00 00 1E */	fctiwz f0, f0
/* 80A882D8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A882DC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80A882E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A882E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A882E8  7C 08 03 A6 */	mtlr r0
/* 80A882EC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A882F0  4E 80 00 20 */	blr 
