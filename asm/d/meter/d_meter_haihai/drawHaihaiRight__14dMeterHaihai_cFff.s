lbl_8020BA4C:
/* 8020BA4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020BA50  7C 08 02 A6 */	mflr r0
/* 8020BA54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020BA58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020BA5C  7C 7F 1B 78 */	mr r31, r3
/* 8020BA60  80 63 00 08 */	lwz r3, 8(r3)
/* 8020BA64  80 63 00 04 */	lwz r3, 4(r3)
/* 8020BA68  D0 23 00 D4 */	stfs f1, 0xd4(r3)
/* 8020BA6C  D0 43 00 D8 */	stfs f2, 0xd8(r3)
/* 8020BA70  81 83 00 00 */	lwz r12, 0(r3)
/* 8020BA74  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020BA78  7D 89 03 A6 */	mtctr r12
/* 8020BA7C  4E 80 04 21 */	bctrl 
/* 8020BA80  80 7F 00 08 */	lwz r3, 8(r31)
/* 8020BA84  80 63 00 04 */	lwz r3, 4(r3)
/* 8020BA88  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8020BA8C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8020BA90  EC 41 00 28 */	fsubs f2, f1, f0
/* 8020BA94  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020BA98  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020BA9C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020BAA0  C0 02 AD C8 */	lfs f0, lit_3895(r2)
/* 8020BAA4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8020BAA8  EC 42 00 32 */	fmuls f2, f2, f0
/* 8020BAAC  38 80 00 7A */	li r4, 0x7a
/* 8020BAB0  C0 62 AD CC */	lfs f3, lit_3896(r2)
/* 8020BAB4  48 0E B7 29 */	bl rotate__7J2DPaneFff13J2DRotateAxisf
/* 8020BAB8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8020BABC  C0 22 AD B0 */	lfs f1, lit_3742(r2)
/* 8020BAC0  FC 40 08 90 */	fmr f2, f1
/* 8020BAC4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8020BAC8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8020BACC  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 8020BAD0  48 0E D4 05 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8020BAD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020BAD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020BADC  7C 08 03 A6 */	mtlr r0
/* 8020BAE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8020BAE4  4E 80 00 20 */	blr 
