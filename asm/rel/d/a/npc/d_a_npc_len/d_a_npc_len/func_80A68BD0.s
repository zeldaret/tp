lbl_80A68BD0:
/* 80A68BD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A68BD4  7C 08 02 A6 */	mflr r0
/* 80A68BD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A68BDC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A68BE0  7C 7F 1B 78 */	mr r31, r3
/* 80A68BE4  3C 60 80 A7 */	lis r3, lit_4587@ha /* 0x80A68F8C@ha */
/* 80A68BE8  C8 23 8F 8C */	lfd f1, lit_4587@l(r3)  /* 0x80A68F8C@l */
/* 80A68BEC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80A68BF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A68BF4  3C 00 43 30 */	lis r0, 0x4330
/* 80A68BF8  90 01 00 08 */	stw r0, 8(r1)
/* 80A68BFC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80A68C00  EC 20 08 28 */	fsubs f1, f0, f1
/* 80A68C04  4B 7F ED 51 */	bl cM_rndF__Ff
/* 80A68C08  3C 60 80 A7 */	lis r3, lit_4587@ha /* 0x80A68F8C@ha */
/* 80A68C0C  C8 43 8F 8C */	lfd f2, lit_4587@l(r3)  /* 0x80A68F8C@l */
/* 80A68C10  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80A68C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A68C18  3C 00 43 30 */	lis r0, 0x4330
/* 80A68C1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A68C20  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80A68C24  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A68C28  EC 00 08 2A */	fadds f0, f0, f1
/* 80A68C2C  FC 00 00 1E */	fctiwz f0, f0
/* 80A68C30  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A68C34  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80A68C38  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A68C3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A68C40  7C 08 03 A6 */	mtlr r0
/* 80A68C44  38 21 00 30 */	addi r1, r1, 0x30
/* 80A68C48  4E 80 00 20 */	blr 
