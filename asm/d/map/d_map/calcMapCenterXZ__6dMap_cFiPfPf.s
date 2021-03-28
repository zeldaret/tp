lbl_80029D78:
/* 80029D78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80029D7C  7C 08 02 A6 */	mflr r0
/* 80029D80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80029D84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80029D88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80029D8C  7C BE 2B 78 */	mr r30, r5
/* 80029D90  7C DF 33 78 */	mr r31, r6
/* 80029D94  C0 62 82 E4 */	lfs f3, lit_4321(r2)
/* 80029D98  FC 00 18 90 */	fmr f0, f3
/* 80029D9C  2C 04 00 00 */	cmpwi r4, 0
/* 80029DA0  41 80 00 4C */	blt lbl_80029DEC
/* 80029DA4  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80029DA8  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80029DAC  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80029DB0  D0 61 00 08 */	stfs f3, 8(r1)
/* 80029DB4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80029DB8  38 C1 00 10 */	addi r6, r1, 0x10
/* 80029DBC  38 E1 00 0C */	addi r7, r1, 0xc
/* 80029DC0  39 01 00 08 */	addi r8, r1, 8
/* 80029DC4  4B FF FC C9 */	bl getMapMinMaxXZ__6dMap_cFiPfPfPfPf
/* 80029DC8  C0 42 82 A0 */	lfs f2, lit_3745(r2)
/* 80029DCC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80029DD0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80029DD4  EC 01 00 2A */	fadds f0, f1, f0
/* 80029DD8  EC 62 00 32 */	fmuls f3, f2, f0
/* 80029DDC  C0 21 00 08 */	lfs f1, 8(r1)
/* 80029DE0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80029DE4  EC 01 00 2A */	fadds f0, f1, f0
/* 80029DE8  EC 02 00 32 */	fmuls f0, f2, f0
lbl_80029DEC:
/* 80029DEC  28 1E 00 00 */	cmplwi r30, 0
/* 80029DF0  41 82 00 08 */	beq lbl_80029DF8
/* 80029DF4  D0 7E 00 00 */	stfs f3, 0(r30)
lbl_80029DF8:
/* 80029DF8  28 1F 00 00 */	cmplwi r31, 0
/* 80029DFC  41 82 00 08 */	beq lbl_80029E04
/* 80029E00  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_80029E04:
/* 80029E04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80029E08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80029E0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80029E10  7C 08 03 A6 */	mtlr r0
/* 80029E14  38 21 00 20 */	addi r1, r1, 0x20
/* 80029E18  4E 80 00 20 */	blr 
