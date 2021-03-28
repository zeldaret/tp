lbl_80AE6454:
/* 80AE6454  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AE6458  7C 08 02 A6 */	mflr r0
/* 80AE645C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AE6460  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80AE6464  7C 7F 1B 78 */	mr r31, r3
/* 80AE6468  3C 60 80 AE */	lis r3, lit_4716@ha
/* 80AE646C  C8 23 6C A0 */	lfd f1, lit_4716@l(r3)
/* 80AE6470  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80AE6474  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AE6478  3C 00 43 30 */	lis r0, 0x4330
/* 80AE647C  90 01 00 08 */	stw r0, 8(r1)
/* 80AE6480  C8 01 00 08 */	lfd f0, 8(r1)
/* 80AE6484  EC 20 08 28 */	fsubs f1, f0, f1
/* 80AE6488  4B 78 14 CC */	b cM_rndF__Ff
/* 80AE648C  3C 60 80 AE */	lis r3, lit_4716@ha
/* 80AE6490  C8 43 6C A0 */	lfd f2, lit_4716@l(r3)
/* 80AE6494  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80AE6498  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE649C  3C 00 43 30 */	lis r0, 0x4330
/* 80AE64A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AE64A4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80AE64A8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AE64AC  EC 00 08 2A */	fadds f0, f0, f1
/* 80AE64B0  FC 00 00 1E */	fctiwz f0, f0
/* 80AE64B4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80AE64B8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80AE64BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80AE64C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AE64C4  7C 08 03 A6 */	mtlr r0
/* 80AE64C8  38 21 00 30 */	addi r1, r1, 0x30
/* 80AE64CC  4E 80 00 20 */	blr 
