lbl_8020BAE8:
/* 8020BAE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020BAEC  7C 08 02 A6 */	mflr r0
/* 8020BAF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020BAF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020BAF8  7C 7F 1B 78 */	mr r31, r3
/* 8020BAFC  80 63 00 08 */	lwz r3, 8(r3)
/* 8020BB00  80 63 00 04 */	lwz r3, 4(r3)
/* 8020BB04  D0 23 00 D4 */	stfs f1, 0xd4(r3)
/* 8020BB08  D0 43 00 D8 */	stfs f2, 0xd8(r3)
/* 8020BB0C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020BB10  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020BB14  7D 89 03 A6 */	mtctr r12
/* 8020BB18  4E 80 04 21 */	bctrl 
/* 8020BB1C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8020BB20  80 63 00 04 */	lwz r3, 4(r3)
/* 8020BB24  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8020BB28  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8020BB2C  EC 41 00 28 */	fsubs f2, f1, f0
/* 8020BB30  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020BB34  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020BB38  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020BB3C  C0 02 AD C8 */	lfs f0, lit_3895(r2)
/* 8020BB40  EC 21 00 32 */	fmuls f1, f1, f0
/* 8020BB44  EC 42 00 32 */	fmuls f2, f2, f0
/* 8020BB48  38 80 00 7A */	li r4, 0x7a
/* 8020BB4C  C0 62 AD D0 */	lfs f3, lit_3897(r2)
/* 8020BB50  48 0E B6 8D */	bl rotate__7J2DPaneFff13J2DRotateAxisf
/* 8020BB54  80 7F 00 04 */	lwz r3, 4(r31)
/* 8020BB58  C0 22 AD B0 */	lfs f1, lit_3742(r2)
/* 8020BB5C  FC 40 08 90 */	fmr f2, f1
/* 8020BB60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020BB64  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020BB68  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 8020BB6C  48 0E D3 69 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8020BB70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020BB74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020BB78  7C 08 03 A6 */	mtlr r0
/* 8020BB7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8020BB80  4E 80 00 20 */	blr 
