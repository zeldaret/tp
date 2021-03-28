lbl_801CA9B4:
/* 801CA9B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CA9B8  7C 08 02 A6 */	mflr r0
/* 801CA9BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CA9C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CA9C4  7C 7F 1B 78 */	mr r31, r3
/* 801CA9C8  A8 63 02 14 */	lha r3, 0x214(r3)
/* 801CA9CC  38 03 00 01 */	addi r0, r3, 1
/* 801CA9D0  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801CA9D4  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801CA9D8  2C 00 00 01 */	cmpwi r0, 1
/* 801CA9DC  40 82 00 38 */	bne lbl_801CAA14
/* 801CA9E0  38 00 00 BC */	li r0, 0xbc
/* 801CA9E4  90 01 00 08 */	stw r0, 8(r1)
/* 801CA9E8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801CA9EC  38 81 00 08 */	addi r4, r1, 8
/* 801CA9F0  38 A0 00 00 */	li r5, 0
/* 801CA9F4  38 C0 00 00 */	li r6, 0
/* 801CA9F8  38 E0 00 00 */	li r7, 0
/* 801CA9FC  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801CAA00  FC 40 08 90 */	fmr f2, f1
/* 801CAA04  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801CAA08  FC 80 18 90 */	fmr f4, f3
/* 801CAA0C  39 00 00 00 */	li r8, 0
/* 801CAA10  48 0E 0F 75 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801CAA14:
/* 801CAA14  A8 9F 02 14 */	lha r4, 0x214(r31)
/* 801CAA18  7C 80 07 35 */	extsh. r0, r4
/* 801CAA1C  40 81 00 48 */	ble lbl_801CAA64
/* 801CAA20  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CAA24  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801CAA28  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801CAA2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CAA30  3C 00 43 30 */	lis r0, 0x4330
/* 801CAA34  90 01 00 10 */	stw r0, 0x10(r1)
/* 801CAA38  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801CAA3C  EC 20 08 28 */	fsubs f1, f0, f1
/* 801CAA40  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801CAA44  EC 21 00 24 */	fdivs f1, f1, f0
/* 801CAA48  48 00 67 01 */	bl zoomMapCalc__18dMenu_Fmap2DBack_cFf
/* 801CAA4C  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801CAA50  2C 00 00 0A */	cmpwi r0, 0xa
/* 801CAA54  41 80 00 10 */	blt lbl_801CAA64
/* 801CAA58  7F E3 FB 78 */	mr r3, r31
/* 801CAA5C  38 80 00 19 */	li r4, 0x19
/* 801CAA60  48 00 0C 71 */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801CAA64:
/* 801CAA64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CAA68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CAA6C  7C 08 03 A6 */	mtlr r0
/* 801CAA70  38 21 00 20 */	addi r1, r1, 0x20
/* 801CAA74  4E 80 00 20 */	blr 
