lbl_8020BB84:
/* 8020BB84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020BB88  7C 08 02 A6 */	mflr r0
/* 8020BB8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020BB90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020BB94  7C 7F 1B 78 */	mr r31, r3
/* 8020BB98  80 63 00 08 */	lwz r3, 8(r3)
/* 8020BB9C  80 63 00 04 */	lwz r3, 4(r3)
/* 8020BBA0  D0 23 00 D4 */	stfs f1, 0xd4(r3)
/* 8020BBA4  D0 43 00 D8 */	stfs f2, 0xd8(r3)
/* 8020BBA8  81 83 00 00 */	lwz r12, 0(r3)
/* 8020BBAC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020BBB0  7D 89 03 A6 */	mtctr r12
/* 8020BBB4  4E 80 04 21 */	bctrl 
/* 8020BBB8  80 7F 00 08 */	lwz r3, 8(r31)
/* 8020BBBC  80 63 00 04 */	lwz r3, 4(r3)
/* 8020BBC0  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8020BBC4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8020BBC8  EC 41 00 28 */	fsubs f2, f1, f0
/* 8020BBCC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020BBD0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020BBD4  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020BBD8  C0 02 AD C8 */	lfs f0, lit_3895(r2)
/* 8020BBDC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8020BBE0  EC 42 00 32 */	fmuls f2, f2, f0
/* 8020BBE4  38 80 00 7A */	li r4, 0x7a
/* 8020BBE8  C0 62 AD B0 */	lfs f3, lit_3742(r2)
/* 8020BBEC  48 0E B5 F1 */	bl rotate__7J2DPaneFff13J2DRotateAxisf
/* 8020BBF0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8020BBF4  C0 22 AD B0 */	lfs f1, lit_3742(r2)
/* 8020BBF8  FC 40 08 90 */	fmr f2, f1
/* 8020BBFC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8020BC00  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8020BC04  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 8020BC08  48 0E D2 CD */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8020BC0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020BC10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020BC14  7C 08 03 A6 */	mtlr r0
/* 8020BC18  38 21 00 10 */	addi r1, r1, 0x10
/* 8020BC1C  4E 80 00 20 */	blr 
