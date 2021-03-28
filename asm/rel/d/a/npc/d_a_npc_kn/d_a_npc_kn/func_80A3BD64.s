lbl_80A3BD64:
/* 80A3BD64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A3BD68  7C 08 02 A6 */	mflr r0
/* 80A3BD6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A3BD70  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A3BD74  7C 7F 1B 78 */	mr r31, r3
/* 80A3BD78  7C 80 07 34 */	extsh r0, r4
/* 80A3BD7C  3C 60 80 A4 */	lis r3, lit_4095@ha
/* 80A3BD80  C8 23 08 F8 */	lfd f1, lit_4095@l(r3)
/* 80A3BD84  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A3BD88  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A3BD8C  3C 00 43 30 */	lis r0, 0x4330
/* 80A3BD90  90 01 00 08 */	stw r0, 8(r1)
/* 80A3BD94  C8 01 00 08 */	lfd f0, 8(r1)
/* 80A3BD98  EC 20 08 28 */	fsubs f1, f0, f1
/* 80A3BD9C  4B 82 BB B8 */	b cM_rndF__Ff
/* 80A3BDA0  7F E0 07 34 */	extsh r0, r31
/* 80A3BDA4  3C 60 80 A4 */	lis r3, lit_4095@ha
/* 80A3BDA8  C8 43 08 F8 */	lfd f2, lit_4095@l(r3)
/* 80A3BDAC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A3BDB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3BDB4  3C 00 43 30 */	lis r0, 0x4330
/* 80A3BDB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A3BDBC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80A3BDC0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A3BDC4  EC 00 08 2A */	fadds f0, f0, f1
/* 80A3BDC8  FC 00 00 1E */	fctiwz f0, f0
/* 80A3BDCC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A3BDD0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80A3BDD4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A3BDD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A3BDDC  7C 08 03 A6 */	mtlr r0
/* 80A3BDE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80A3BDE4  4E 80 00 20 */	blr 
