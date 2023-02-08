lbl_80A20F04:
/* 80A20F04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A20F08  7C 08 02 A6 */	mflr r0
/* 80A20F0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A20F10  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A20F14  7C 7F 1B 78 */	mr r31, r3
/* 80A20F18  3C 60 80 A2 */	lis r3, lit_6323@ha /* 0x80A21350@ha */
/* 80A20F1C  C8 23 13 50 */	lfd f1, lit_6323@l(r3)  /* 0x80A21350@l */
/* 80A20F20  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80A20F24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A20F28  3C 00 43 30 */	lis r0, 0x4330
/* 80A20F2C  90 01 00 08 */	stw r0, 8(r1)
/* 80A20F30  C8 01 00 08 */	lfd f0, 8(r1)
/* 80A20F34  EC 20 08 28 */	fsubs f1, f0, f1
/* 80A20F38  4B 84 6A 1D */	bl cM_rndF__Ff
/* 80A20F3C  3C 60 80 A2 */	lis r3, lit_6323@ha /* 0x80A21350@ha */
/* 80A20F40  C8 43 13 50 */	lfd f2, lit_6323@l(r3)  /* 0x80A21350@l */
/* 80A20F44  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80A20F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A20F4C  3C 00 43 30 */	lis r0, 0x4330
/* 80A20F50  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A20F54  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80A20F58  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A20F5C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A20F60  FC 00 00 1E */	fctiwz f0, f0
/* 80A20F64  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A20F68  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80A20F6C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A20F70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A20F74  7C 08 03 A6 */	mtlr r0
/* 80A20F78  38 21 00 30 */	addi r1, r1, 0x30
/* 80A20F7C  4E 80 00 20 */	blr 
