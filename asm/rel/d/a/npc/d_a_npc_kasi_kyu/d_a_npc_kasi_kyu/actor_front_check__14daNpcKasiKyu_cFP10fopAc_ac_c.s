lbl_80A24D6C:
/* 80A24D6C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A24D70  7C 08 02 A6 */	mflr r0
/* 80A24D74  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A24D78  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80A24D7C  7C 7F 1B 78 */	mr r31, r3
/* 80A24D80  28 04 00 00 */	cmplwi r4, 0
/* 80A24D84  40 82 00 0C */	bne lbl_80A24D90
/* 80A24D88  38 60 00 01 */	li r3, 1
/* 80A24D8C  48 00 00 A4 */	b lbl_80A24E30
lbl_80A24D90:
/* 80A24D90  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80A24D94  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A24D98  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80A24D9C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A24DA0  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80A24DA4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A24DA8  38 61 00 08 */	addi r3, r1, 8
/* 80A24DAC  38 81 00 38 */	addi r4, r1, 0x38
/* 80A24DB0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A24DB4  4B 84 1D 80 */	b __mi__4cXyzCFRC3Vec
/* 80A24DB8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A24DBC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A24DC0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A24DC4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A24DC8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A24DCC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A24DD0  3C 60 80 A2 */	lis r3, lit_4449@ha
/* 80A24DD4  C0 03 59 5C */	lfs f0, lit_4449@l(r3)
/* 80A24DD8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A24DDC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A24DE0  3C 60 80 A2 */	lis r3, lit_4247@ha
/* 80A24DE4  C0 03 59 3C */	lfs f0, lit_4247@l(r3)
/* 80A24DE8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A24DEC  7F E3 FB 78 */	mr r3, r31
/* 80A24DF0  38 81 00 20 */	addi r4, r1, 0x20
/* 80A24DF4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A24DF8  48 00 00 4D */	bl _getOffset__14daNpcKasiKyu_cFRC4cXyzR4cXyz
/* 80A24DFC  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80A24E00  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A24E04  EC 41 00 32 */	fmuls f2, f1, f0
/* 80A24E08  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80A24E0C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A24E10  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A24E14  EC 22 00 2A */	fadds f1, f2, f0
/* 80A24E18  3C 60 80 A2 */	lis r3, lit_4449@ha
/* 80A24E1C  C0 03 59 5C */	lfs f0, lit_4449@l(r3)
/* 80A24E20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A24E24  4C 41 13 82 */	cror 2, 1, 2
/* 80A24E28  7C 00 00 26 */	mfcr r0
/* 80A24E2C  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
lbl_80A24E30:
/* 80A24E30  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80A24E34  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A24E38  7C 08 03 A6 */	mtlr r0
/* 80A24E3C  38 21 00 50 */	addi r1, r1, 0x50
/* 80A24E40  4E 80 00 20 */	blr 
