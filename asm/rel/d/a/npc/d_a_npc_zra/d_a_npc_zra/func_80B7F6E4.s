lbl_80B7F6E4:
/* 80B7F6E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B7F6E8  7C 08 02 A6 */	mflr r0
/* 80B7F6EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B7F6F0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B7F6F4  7C 7F 1B 78 */	mr r31, r3
/* 80B7F6F8  3C 60 80 B9 */	lis r3, lit_8289@ha /* 0x80B8CC28@ha */
/* 80B7F6FC  C8 23 CC 28 */	lfd f1, lit_8289@l(r3)  /* 0x80B8CC28@l */
/* 80B7F700  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80B7F704  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B7F708  3C 00 43 30 */	lis r0, 0x4330
/* 80B7F70C  90 01 00 08 */	stw r0, 8(r1)
/* 80B7F710  C8 01 00 08 */	lfd f0, 8(r1)
/* 80B7F714  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B7F718  4B 6E 82 3D */	bl cM_rndF__Ff
/* 80B7F71C  3C 60 80 B9 */	lis r3, lit_8289@ha /* 0x80B8CC28@ha */
/* 80B7F720  C8 43 CC 28 */	lfd f2, lit_8289@l(r3)  /* 0x80B8CC28@l */
/* 80B7F724  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80B7F728  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7F72C  3C 00 43 30 */	lis r0, 0x4330
/* 80B7F730  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B7F734  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80B7F738  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B7F73C  EC 00 08 2A */	fadds f0, f0, f1
/* 80B7F740  FC 00 00 1E */	fctiwz f0, f0
/* 80B7F744  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B7F748  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80B7F74C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B7F750  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B7F754  7C 08 03 A6 */	mtlr r0
/* 80B7F758  38 21 00 30 */	addi r1, r1, 0x30
/* 80B7F75C  4E 80 00 20 */	blr 
