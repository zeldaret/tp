lbl_801CAC7C:
/* 801CAC7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CAC80  7C 08 02 A6 */	mflr r0
/* 801CAC84  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CAC88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CAC8C  7C 7F 1B 78 */	mr r31, r3
/* 801CAC90  A8 63 02 14 */	lha r3, 0x214(r3)
/* 801CAC94  38 03 00 01 */	addi r0, r3, 1
/* 801CAC98  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801CAC9C  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801CACA0  2C 00 00 01 */	cmpwi r0, 1
/* 801CACA4  40 82 00 38 */	bne lbl_801CACDC
/* 801CACA8  38 00 00 BC */	li r0, 0xbc
/* 801CACAC  90 01 00 08 */	stw r0, 8(r1)
/* 801CACB0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801CACB4  38 81 00 08 */	addi r4, r1, 8
/* 801CACB8  38 A0 00 00 */	li r5, 0
/* 801CACBC  38 C0 00 00 */	li r6, 0
/* 801CACC0  38 E0 00 00 */	li r7, 0
/* 801CACC4  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801CACC8  FC 40 08 90 */	fmr f2, f1
/* 801CACCC  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801CACD0  FC 80 18 90 */	fmr f4, f3
/* 801CACD4  39 00 00 00 */	li r8, 0
/* 801CACD8  48 0E 0C AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801CACDC:
/* 801CACDC  A8 7F 02 14 */	lha r3, 0x214(r31)
/* 801CACE0  7C 60 07 35 */	extsh. r0, r3
/* 801CACE4  40 81 00 50 */	ble lbl_801CAD34
/* 801CACE8  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801CACEC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801CACF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CACF4  3C 00 43 30 */	lis r0, 0x4330
/* 801CACF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 801CACFC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801CAD00  EC 20 08 28 */	fsubs f1, f0, f1
/* 801CAD04  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801CAD08  EC 01 00 24 */	fdivs f0, f1, f0
/* 801CAD0C  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 801CAD10  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CAD14  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 801CAD18  48 00 67 61 */	bl zoomMapCalc2__18dMenu_Fmap2DBack_cFf
/* 801CAD1C  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801CAD20  2C 00 00 0A */	cmpwi r0, 0xa
/* 801CAD24  41 80 00 10 */	blt lbl_801CAD34
/* 801CAD28  7F E3 FB 78 */	mr r3, r31
/* 801CAD2C  38 80 00 1C */	li r4, 0x1c
/* 801CAD30  48 00 09 A1 */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801CAD34:
/* 801CAD34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CAD38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CAD3C  7C 08 03 A6 */	mtlr r0
/* 801CAD40  38 21 00 20 */	addi r1, r1, 0x20
/* 801CAD44  4E 80 00 20 */	blr 
