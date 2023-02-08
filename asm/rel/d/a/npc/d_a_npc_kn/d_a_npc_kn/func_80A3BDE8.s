lbl_80A3BDE8:
/* 80A3BDE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A3BDEC  7C 08 02 A6 */	mflr r0
/* 80A3BDF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A3BDF4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A3BDF8  7C 7F 1B 78 */	mr r31, r3
/* 80A3BDFC  3C 60 80 A4 */	lis r3, lit_4095@ha /* 0x80A408F8@ha */
/* 80A3BE00  C8 23 08 F8 */	lfd f1, lit_4095@l(r3)  /* 0x80A408F8@l */
/* 80A3BE04  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80A3BE08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A3BE0C  3C 00 43 30 */	lis r0, 0x4330
/* 80A3BE10  90 01 00 08 */	stw r0, 8(r1)
/* 80A3BE14  C8 01 00 08 */	lfd f0, 8(r1)
/* 80A3BE18  EC 20 08 28 */	fsubs f1, f0, f1
/* 80A3BE1C  4B 82 BB 39 */	bl cM_rndF__Ff
/* 80A3BE20  3C 60 80 A4 */	lis r3, lit_4095@ha /* 0x80A408F8@ha */
/* 80A3BE24  C8 43 08 F8 */	lfd f2, lit_4095@l(r3)  /* 0x80A408F8@l */
/* 80A3BE28  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80A3BE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3BE30  3C 00 43 30 */	lis r0, 0x4330
/* 80A3BE34  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A3BE38  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80A3BE3C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A3BE40  EC 00 08 2A */	fadds f0, f0, f1
/* 80A3BE44  FC 00 00 1E */	fctiwz f0, f0
/* 80A3BE48  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A3BE4C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80A3BE50  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A3BE54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A3BE58  7C 08 03 A6 */	mtlr r0
/* 80A3BE5C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A3BE60  4E 80 00 20 */	blr 
