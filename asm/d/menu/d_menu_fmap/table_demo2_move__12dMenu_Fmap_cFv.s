lbl_801CAABC:
/* 801CAABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CAAC0  7C 08 02 A6 */	mflr r0
/* 801CAAC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CAAC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CAACC  7C 7F 1B 78 */	mr r31, r3
/* 801CAAD0  A8 63 02 14 */	lha r3, 0x214(r3)
/* 801CAAD4  38 03 00 01 */	addi r0, r3, 1
/* 801CAAD8  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801CAADC  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801CAAE0  2C 00 00 01 */	cmpwi r0, 1
/* 801CAAE4  40 82 00 38 */	bne lbl_801CAB1C
/* 801CAAE8  38 00 00 BC */	li r0, 0xbc
/* 801CAAEC  90 01 00 08 */	stw r0, 8(r1)
/* 801CAAF0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801CAAF4  38 81 00 08 */	addi r4, r1, 8
/* 801CAAF8  38 A0 00 00 */	li r5, 0
/* 801CAAFC  38 C0 00 00 */	li r6, 0
/* 801CAB00  38 E0 00 00 */	li r7, 0
/* 801CAB04  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801CAB08  FC 40 08 90 */	fmr f2, f1
/* 801CAB0C  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801CAB10  FC 80 18 90 */	fmr f4, f3
/* 801CAB14  39 00 00 00 */	li r8, 0
/* 801CAB18  48 0E 0E 6D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801CAB1C:
/* 801CAB1C  A8 7F 02 14 */	lha r3, 0x214(r31)
/* 801CAB20  7C 60 07 35 */	extsh. r0, r3
/* 801CAB24  40 81 00 50 */	ble lbl_801CAB74
/* 801CAB28  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801CAB2C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801CAB30  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CAB34  3C 00 43 30 */	lis r0, 0x4330
/* 801CAB38  90 01 00 10 */	stw r0, 0x10(r1)
/* 801CAB3C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801CAB40  EC 20 08 28 */	fsubs f1, f0, f1
/* 801CAB44  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801CAB48  EC 01 00 24 */	fdivs f0, f1, f0
/* 801CAB4C  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 801CAB50  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CAB54  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 801CAB58  48 00 69 21 */	bl zoomMapCalc2__18dMenu_Fmap2DBack_cFf
/* 801CAB5C  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801CAB60  2C 00 00 0A */	cmpwi r0, 0xa
/* 801CAB64  41 80 00 10 */	blt lbl_801CAB74
/* 801CAB68  7F E3 FB 78 */	mr r3, r31
/* 801CAB6C  38 80 00 1A */	li r4, 0x1a
/* 801CAB70  48 00 0B 61 */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801CAB74:
/* 801CAB74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CAB78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CAB7C  7C 08 03 A6 */	mtlr r0
/* 801CAB80  38 21 00 20 */	addi r1, r1, 0x20
/* 801CAB84  4E 80 00 20 */	blr 
