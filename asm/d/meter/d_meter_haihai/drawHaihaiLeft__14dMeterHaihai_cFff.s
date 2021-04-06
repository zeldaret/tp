lbl_8020B9B0:
/* 8020B9B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020B9B4  7C 08 02 A6 */	mflr r0
/* 8020B9B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020B9BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020B9C0  7C 7F 1B 78 */	mr r31, r3
/* 8020B9C4  80 63 00 08 */	lwz r3, 8(r3)
/* 8020B9C8  80 63 00 04 */	lwz r3, 4(r3)
/* 8020B9CC  D0 23 00 D4 */	stfs f1, 0xd4(r3)
/* 8020B9D0  D0 43 00 D8 */	stfs f2, 0xd8(r3)
/* 8020B9D4  81 83 00 00 */	lwz r12, 0(r3)
/* 8020B9D8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020B9DC  7D 89 03 A6 */	mtctr r12
/* 8020B9E0  4E 80 04 21 */	bctrl 
/* 8020B9E4  80 7F 00 08 */	lwz r3, 8(r31)
/* 8020B9E8  80 63 00 04 */	lwz r3, 4(r3)
/* 8020B9EC  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8020B9F0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8020B9F4  EC 41 00 28 */	fsubs f2, f1, f0
/* 8020B9F8  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020B9FC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020BA00  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020BA04  C0 02 AD C8 */	lfs f0, lit_3895(r2)
/* 8020BA08  EC 21 00 32 */	fmuls f1, f1, f0
/* 8020BA0C  EC 42 00 32 */	fmuls f2, f2, f0
/* 8020BA10  38 80 00 7A */	li r4, 0x7a
/* 8020BA14  C0 62 AD D4 */	lfs f3, lit_3898(r2)
/* 8020BA18  48 0E B7 C5 */	bl rotate__7J2DPaneFff13J2DRotateAxisf
/* 8020BA1C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8020BA20  C0 22 AD B0 */	lfs f1, lit_3742(r2)
/* 8020BA24  FC 40 08 90 */	fmr f2, f1
/* 8020BA28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020BA2C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020BA30  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 8020BA34  48 0E D4 A1 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8020BA38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020BA3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020BA40  7C 08 03 A6 */	mtlr r0
/* 8020BA44  38 21 00 10 */	addi r1, r1, 0x10
/* 8020BA48  4E 80 00 20 */	blr 
