lbl_80ACFA44:
/* 80ACFA44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80ACFA48  7C 08 02 A6 */	mflr r0
/* 80ACFA4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ACFA50  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80ACFA54  7C 7F 1B 78 */	mr r31, r3
/* 80ACFA58  3C 60 80 AD */	lis r3, lit_4926@ha /* 0x80ACFEC8@ha */
/* 80ACFA5C  C8 23 FE C8 */	lfd f1, lit_4926@l(r3)  /* 0x80ACFEC8@l */
/* 80ACFA60  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80ACFA64  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ACFA68  3C 00 43 30 */	lis r0, 0x4330
/* 80ACFA6C  90 01 00 08 */	stw r0, 8(r1)
/* 80ACFA70  C8 01 00 08 */	lfd f0, 8(r1)
/* 80ACFA74  EC 20 08 28 */	fsubs f1, f0, f1
/* 80ACFA78  4B 79 7E DD */	bl cM_rndF__Ff
/* 80ACFA7C  3C 60 80 AD */	lis r3, lit_4926@ha /* 0x80ACFEC8@ha */
/* 80ACFA80  C8 43 FE C8 */	lfd f2, lit_4926@l(r3)  /* 0x80ACFEC8@l */
/* 80ACFA84  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80ACFA88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACFA8C  3C 00 43 30 */	lis r0, 0x4330
/* 80ACFA90  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ACFA94  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80ACFA98  EC 00 10 28 */	fsubs f0, f0, f2
/* 80ACFA9C  EC 00 08 2A */	fadds f0, f0, f1
/* 80ACFAA0  FC 00 00 1E */	fctiwz f0, f0
/* 80ACFAA4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80ACFAA8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80ACFAAC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80ACFAB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ACFAB4  7C 08 03 A6 */	mtlr r0
/* 80ACFAB8  38 21 00 30 */	addi r1, r1, 0x30
/* 80ACFABC  4E 80 00 20 */	blr 
