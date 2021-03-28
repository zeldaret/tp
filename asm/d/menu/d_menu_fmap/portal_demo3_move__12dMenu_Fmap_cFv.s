lbl_801C9DB4:
/* 801C9DB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C9DB8  7C 08 02 A6 */	mflr r0
/* 801C9DBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C9DC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C9DC4  7C 7F 1B 78 */	mr r31, r3
/* 801C9DC8  48 00 18 9D */	bl talkButton__12dMenu_Fmap_cFv
/* 801C9DCC  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 801C9DD0  38 80 00 00 */	li r4, 0
/* 801C9DD4  38 A0 00 00 */	li r5, 0
/* 801C9DD8  38 C0 00 00 */	li r6, 0
/* 801C9DDC  48 08 04 FD */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 801C9DE0  48 06 E5 F1 */	bl getMessageID__12dMsgObject_cFv
/* 801C9DE4  28 03 07 DA */	cmplwi r3, 0x7da
/* 801C9DE8  40 80 00 10 */	bge lbl_801C9DF8
/* 801C9DEC  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C9DF0  2C 00 00 00 */	cmpwi r0, 0
/* 801C9DF4  40 81 00 B0 */	ble lbl_801C9EA4
lbl_801C9DF8:
/* 801C9DF8  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C9DFC  2C 00 00 00 */	cmpwi r0, 0
/* 801C9E00  40 82 00 50 */	bne lbl_801C9E50
/* 801C9E04  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9E08  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801C9E0C  7F E3 FB 78 */	mr r3, r31
/* 801C9E10  38 04 00 01 */	addi r0, r4, 1
/* 801C9E14  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801C9E18  48 00 19 59 */	bl readWorldData__12dMenu_Fmap_cFUc
/* 801C9E1C  38 00 00 BC */	li r0, 0xbc
/* 801C9E20  90 01 00 08 */	stw r0, 8(r1)
/* 801C9E24  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C9E28  38 81 00 08 */	addi r4, r1, 8
/* 801C9E2C  38 A0 00 00 */	li r5, 0
/* 801C9E30  38 C0 00 00 */	li r6, 0
/* 801C9E34  38 E0 00 00 */	li r7, 0
/* 801C9E38  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C9E3C  FC 40 08 90 */	fmr f2, f1
/* 801C9E40  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C9E44  FC 80 18 90 */	fmr f4, f3
/* 801C9E48  39 00 00 00 */	li r8, 0
/* 801C9E4C  48 0E 1B 39 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801C9E50:
/* 801C9E50  A8 7F 02 14 */	lha r3, 0x214(r31)
/* 801C9E54  38 03 00 01 */	addi r0, r3, 1
/* 801C9E58  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801C9E5C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9E60  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C9E64  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801C9E68  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C9E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C9E70  3C 00 43 30 */	lis r0, 0x4330
/* 801C9E74  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C9E78  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C9E7C  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C9E80  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801C9E84  EC 21 00 24 */	fdivs f1, f1, f0
/* 801C9E88  48 00 72 C1 */	bl zoomMapCalc__18dMenu_Fmap2DBack_cFf
/* 801C9E8C  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C9E90  2C 00 00 0A */	cmpwi r0, 0xa
/* 801C9E94  41 80 00 10 */	blt lbl_801C9EA4
/* 801C9E98  7F E3 FB 78 */	mr r3, r31
/* 801C9E9C  38 80 00 0F */	li r4, 0xf
/* 801C9EA0  48 00 18 31 */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801C9EA4:
/* 801C9EA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C9EA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C9EAC  7C 08 03 A6 */	mtlr r0
/* 801C9EB0  38 21 00 20 */	addi r1, r1, 0x20
/* 801C9EB4  4E 80 00 20 */	blr 
