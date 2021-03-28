lbl_802F7100:
/* 802F7100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F7104  7C 08 02 A6 */	mflr r0
/* 802F7108  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F710C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F7110  3C 80 80 43 */	lis r4, static_mBounds__7J2DPane@ha
/* 802F7114  3B E4 49 B0 */	addi r31, r4, static_mBounds__7J2DPane@l
/* 802F7118  80 83 00 20 */	lwz r4, 0x20(r3)
/* 802F711C  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802F7120  90 9F 00 00 */	stw r4, 0(r31)
/* 802F7124  90 1F 00 04 */	stw r0, 4(r31)
/* 802F7128  80 83 00 28 */	lwz r4, 0x28(r3)
/* 802F712C  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 802F7130  90 9F 00 08 */	stw r4, 8(r31)
/* 802F7134  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802F7138  C0 23 00 D4 */	lfs f1, 0xd4(r3)
/* 802F713C  C0 43 00 D8 */	lfs f2, 0xd8(r3)
/* 802F7140  C0 1F 00 00 */	lfs f0, 0(r31)
/* 802F7144  EC 00 08 2A */	fadds f0, f0, f1
/* 802F7148  D0 1F 00 00 */	stfs f0, 0(r31)
/* 802F714C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802F7150  EC 00 10 2A */	fadds f0, f0, f2
/* 802F7154  D0 1F 00 04 */	stfs f0, 4(r31)
/* 802F7158  C0 1F 00 08 */	lfs f0, 8(r31)
/* 802F715C  EC 00 08 2A */	fadds f0, f0, f1
/* 802F7160  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802F7164  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 802F7168  EC 00 10 2A */	fadds f0, f0, f2
/* 802F716C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 802F7170  48 00 09 8D */	bl getParentPane__7J2DPaneFv
/* 802F7174  28 03 00 00 */	cmplwi r3, 0
/* 802F7178  41 82 00 48 */	beq lbl_802F71C0
/* 802F717C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802F7180  FC 20 00 50 */	fneg f1, f0
/* 802F7184  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802F7188  FC 40 00 50 */	fneg f2, f0
/* 802F718C  3C 60 80 43 */	lis r3, static_mBounds__7J2DPane@ha
/* 802F7190  C4 03 49 B0 */	lfsu f0, static_mBounds__7J2DPane@l(r3)
/* 802F7194  EC 00 08 2A */	fadds f0, f0, f1
/* 802F7198  D0 03 00 00 */	stfs f0, 0(r3)
/* 802F719C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802F71A0  EC 00 10 2A */	fadds f0, f0, f2
/* 802F71A4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 802F71A8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 802F71AC  EC 00 08 2A */	fadds f0, f0, f1
/* 802F71B0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802F71B4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 802F71B8  EC 00 10 2A */	fadds f0, f0, f2
/* 802F71BC  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_802F71C0:
/* 802F71C0  3C 60 80 43 */	lis r3, static_mBounds__7J2DPane@ha
/* 802F71C4  38 63 49 B0 */	addi r3, r3, static_mBounds__7J2DPane@l
/* 802F71C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F71CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F71D0  7C 08 03 A6 */	mtlr r0
/* 802F71D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802F71D8  4E 80 00 20 */	blr 
