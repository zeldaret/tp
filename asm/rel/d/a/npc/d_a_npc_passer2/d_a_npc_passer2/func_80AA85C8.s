lbl_80AA85C8:
/* 80AA85C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AA85CC  7C 08 02 A6 */	mflr r0
/* 80AA85D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AA85D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80AA85D8  7C 7F 1B 78 */	mr r31, r3
/* 80AA85DC  3C 60 80 AB */	lis r3, lit_4481@ha /* 0x80AA8A60@ha */
/* 80AA85E0  C8 23 8A 60 */	lfd f1, lit_4481@l(r3)  /* 0x80AA8A60@l */
/* 80AA85E4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80AA85E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AA85EC  3C 00 43 30 */	lis r0, 0x4330
/* 80AA85F0  90 01 00 08 */	stw r0, 8(r1)
/* 80AA85F4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80AA85F8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80AA85FC  4B 7B F3 59 */	bl cM_rndF__Ff
/* 80AA8600  3C 60 80 AB */	lis r3, lit_4481@ha /* 0x80AA8A60@ha */
/* 80AA8604  C8 43 8A 60 */	lfd f2, lit_4481@l(r3)  /* 0x80AA8A60@l */
/* 80AA8608  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80AA860C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA8610  3C 00 43 30 */	lis r0, 0x4330
/* 80AA8614  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AA8618  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80AA861C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AA8620  EC 00 08 2A */	fadds f0, f0, f1
/* 80AA8624  FC 00 00 1E */	fctiwz f0, f0
/* 80AA8628  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80AA862C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80AA8630  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80AA8634  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AA8638  7C 08 03 A6 */	mtlr r0
/* 80AA863C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AA8640  4E 80 00 20 */	blr 
