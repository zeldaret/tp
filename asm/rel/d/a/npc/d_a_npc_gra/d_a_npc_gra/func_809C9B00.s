lbl_809C9B00:
/* 809C9B00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809C9B04  7C 08 02 A6 */	mflr r0
/* 809C9B08  90 01 00 34 */	stw r0, 0x34(r1)
/* 809C9B0C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 809C9B10  7C 7F 1B 78 */	mr r31, r3
/* 809C9B14  3C 60 80 9D */	lis r3, lit_8542@ha
/* 809C9B18  C8 23 A4 B0 */	lfd f1, lit_8542@l(r3)
/* 809C9B1C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 809C9B20  90 01 00 0C */	stw r0, 0xc(r1)
/* 809C9B24  3C 00 43 30 */	lis r0, 0x4330
/* 809C9B28  90 01 00 08 */	stw r0, 8(r1)
/* 809C9B2C  C8 01 00 08 */	lfd f0, 8(r1)
/* 809C9B30  EC 20 08 28 */	fsubs f1, f0, f1
/* 809C9B34  4B 89 DE 20 */	b cM_rndF__Ff
/* 809C9B38  3C 60 80 9D */	lis r3, lit_8542@ha
/* 809C9B3C  C8 43 A4 B0 */	lfd f2, lit_8542@l(r3)
/* 809C9B40  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 809C9B44  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C9B48  3C 00 43 30 */	lis r0, 0x4330
/* 809C9B4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 809C9B50  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 809C9B54  EC 00 10 28 */	fsubs f0, f0, f2
/* 809C9B58  EC 00 08 2A */	fadds f0, f0, f1
/* 809C9B5C  FC 00 00 1E */	fctiwz f0, f0
/* 809C9B60  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 809C9B64  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 809C9B68  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 809C9B6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809C9B70  7C 08 03 A6 */	mtlr r0
/* 809C9B74  38 21 00 30 */	addi r1, r1, 0x30
/* 809C9B78  4E 80 00 20 */	blr 
