lbl_8073EDA0:
/* 8073EDA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073EDA4  7C 08 02 A6 */	mflr r0
/* 8073EDA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073EDAC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8073EDB0  7C 7F 1B 78 */	mr r31, r3
/* 8073EDB4  A8 63 06 66 */	lha r3, 0x666(r3)
/* 8073EDB8  A8 1F 06 12 */	lha r0, 0x612(r31)
/* 8073EDBC  7C 03 02 14 */	add r0, r3, r0
/* 8073EDC0  B0 1F 06 66 */	sth r0, 0x666(r31)
/* 8073EDC4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070462@ha */
/* 8073EDC8  38 03 04 62 */	addi r0, r3, 0x0462 /* 0x00070462@l */
/* 8073EDCC  90 01 00 08 */	stw r0, 8(r1)
/* 8073EDD0  38 7F 06 74 */	addi r3, r31, 0x674
/* 8073EDD4  38 81 00 08 */	addi r4, r1, 8
/* 8073EDD8  A8 BF 06 12 */	lha r5, 0x612(r31)
/* 8073EDDC  38 C0 FF FF */	li r6, -1
/* 8073EDE0  81 9F 06 74 */	lwz r12, 0x674(r31)
/* 8073EDE4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8073EDE8  7D 89 03 A6 */	mtctr r12
/* 8073EDEC  4E 80 04 21 */	bctrl 
/* 8073EDF0  38 7F 06 24 */	addi r3, r31, 0x624
/* 8073EDF4  C0 3F 06 20 */	lfs f1, 0x620(r31)
/* 8073EDF8  3C 80 80 74 */	lis r4, lit_4548@ha
/* 8073EDFC  C0 44 1C AC */	lfs f2, lit_4548@l(r4)
/* 8073EE00  4B B3 19 40 */	b cLib_chaseF__FPfff
/* 8073EE04  38 7F 06 12 */	addi r3, r31, 0x612
/* 8073EE08  A8 1F 06 10 */	lha r0, 0x610(r31)
/* 8073EE0C  3C 80 80 74 */	lis r4, lit_4215@ha
/* 8073EE10  C8 24 1C 74 */	lfd f1, lit_4215@l(r4)
/* 8073EE14  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073EE18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073EE1C  3C 00 43 30 */	lis r0, 0x4330
/* 8073EE20  90 01 00 10 */	stw r0, 0x10(r1)
/* 8073EE24  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8073EE28  EC 20 08 28 */	fsubs f1, f0, f1
/* 8073EE2C  C0 1F 06 20 */	lfs f0, 0x620(r31)
/* 8073EE30  EC 01 00 32 */	fmuls f0, f1, f0
/* 8073EE34  FC 00 00 1E */	fctiwz f0, f0
/* 8073EE38  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8073EE3C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8073EE40  38 A0 00 10 */	li r5, 0x10
/* 8073EE44  4B B3 1D 4C */	b cLib_chaseAngleS__FPsss
/* 8073EE48  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 8073EE4C  80 7F 07 1C */	lwz r3, 0x71c(r31)
/* 8073EE50  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8073EE54  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8073EE58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073EE5C  7C 08 03 A6 */	mtlr r0
/* 8073EE60  38 21 00 30 */	addi r1, r1, 0x30
/* 8073EE64  4E 80 00 20 */	blr 
