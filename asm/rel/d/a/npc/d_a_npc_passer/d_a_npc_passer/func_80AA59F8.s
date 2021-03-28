lbl_80AA59F8:
/* 80AA59F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AA59FC  7C 08 02 A6 */	mflr r0
/* 80AA5A00  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AA5A04  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80AA5A08  7C 7F 1B 78 */	mr r31, r3
/* 80AA5A0C  3C 60 80 AA */	lis r3, lit_4975@ha
/* 80AA5A10  C8 23 69 FC */	lfd f1, lit_4975@l(r3)
/* 80AA5A14  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80AA5A18  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AA5A1C  3C 00 43 30 */	lis r0, 0x4330
/* 80AA5A20  90 01 00 08 */	stw r0, 8(r1)
/* 80AA5A24  C8 01 00 08 */	lfd f0, 8(r1)
/* 80AA5A28  EC 20 08 28 */	fsubs f1, f0, f1
/* 80AA5A2C  4B 7C 1F 28 */	b cM_rndF__Ff
/* 80AA5A30  3C 60 80 AA */	lis r3, lit_4975@ha
/* 80AA5A34  C8 43 69 FC */	lfd f2, lit_4975@l(r3)
/* 80AA5A38  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80AA5A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA5A40  3C 00 43 30 */	lis r0, 0x4330
/* 80AA5A44  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AA5A48  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80AA5A4C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AA5A50  EC 00 08 2A */	fadds f0, f0, f1
/* 80AA5A54  FC 00 00 1E */	fctiwz f0, f0
/* 80AA5A58  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80AA5A5C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80AA5A60  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80AA5A64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AA5A68  7C 08 03 A6 */	mtlr r0
/* 80AA5A6C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AA5A70  4E 80 00 20 */	blr 
