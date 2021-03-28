lbl_8051EDF0:
/* 8051EDF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051EDF4  7C 08 02 A6 */	mflr r0
/* 8051EDF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051EDFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8051EE00  7C 7F 1B 78 */	mr r31, r3
/* 8051EE04  48 00 00 68 */	b lbl_8051EE6C
lbl_8051EE08:
/* 8051EE08  38 A0 00 00 */	li r5, 0
/* 8051EE0C  98 A3 00 00 */	stb r5, 0(r3)
/* 8051EE10  80 7F 00 00 */	lwz r3, 0(r31)
/* 8051EE14  88 03 00 02 */	lbz r0, 2(r3)
/* 8051EE18  7C 00 07 74 */	extsb r0, r0
/* 8051EE1C  2C 00 00 10 */	cmpwi r0, 0x10
/* 8051EE20  41 80 00 40 */	blt lbl_8051EE60
/* 8051EE24  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha
/* 8051EE28  80 83 0D B0 */	lwz r4, m_grass__9daGrass_c@l(r3)
/* 8051EE2C  1C 60 00 38 */	mulli r3, r0, 0x38
/* 8051EE30  3C 63 00 02 */	addis r3, r3, 2
/* 8051EE34  38 63 BD 64 */	addi r3, r3, -17052
/* 8051EE38  7C A4 19 AE */	stbx r5, r4, r3
/* 8051EE3C  4B D4 8A 30 */	b cM_rnd__Fv
/* 8051EE40  3C 60 80 52 */	lis r3, lit_4600@ha
/* 8051EE44  C0 03 30 98 */	lfs f0, lit_4600@l(r3)
/* 8051EE48  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051EE4C  FC 00 00 1E */	fctiwz f0, f0
/* 8051EE50  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051EE54  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8051EE58  80 7F 00 00 */	lwz r3, 0(r31)
/* 8051EE5C  98 03 00 02 */	stb r0, 2(r3)
lbl_8051EE60:
/* 8051EE60  80 7F 00 00 */	lwz r3, 0(r31)
/* 8051EE64  80 03 00 48 */	lwz r0, 0x48(r3)
/* 8051EE68  90 1F 00 00 */	stw r0, 0(r31)
lbl_8051EE6C:
/* 8051EE6C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8051EE70  28 03 00 00 */	cmplwi r3, 0
/* 8051EE74  40 82 FF 94 */	bne lbl_8051EE08
/* 8051EE78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8051EE7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051EE80  7C 08 03 A6 */	mtlr r0
/* 8051EE84  38 21 00 20 */	addi r1, r1, 0x20
/* 8051EE88  4E 80 00 20 */	blr 
