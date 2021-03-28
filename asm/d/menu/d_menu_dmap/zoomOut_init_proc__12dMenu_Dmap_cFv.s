lbl_801C023C:
/* 801C023C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C0240  7C 08 02 A6 */	mflr r0
/* 801C0244  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C0248  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C024C  7C 7F 1B 78 */	mr r31, r3
/* 801C0250  38 00 00 BD */	li r0, 0xbd
/* 801C0254  90 01 00 08 */	stw r0, 8(r1)
/* 801C0258  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C025C  38 81 00 08 */	addi r4, r1, 8
/* 801C0260  38 A0 00 00 */	li r5, 0
/* 801C0264  38 C0 00 00 */	li r6, 0
/* 801C0268  38 E0 00 00 */	li r7, 0
/* 801C026C  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801C0270  FC 40 08 90 */	fmr f2, f1
/* 801C0274  C0 62 A6 5C */	lfs f3, lit_6181(r2)
/* 801C0278  FC 80 18 90 */	fmr f4, f3
/* 801C027C  39 00 00 00 */	li r8, 0
/* 801C0280  48 0E B7 05 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C0284  80 7F 00 04 */	lwz r3, 4(r31)
/* 801C0288  38 80 00 0A */	li r4, 0xa
/* 801C028C  48 00 1C A1 */	bl initZoomOut__20dMenu_StageMapCtrl_cFUc
/* 801C0290  80 7F 00 08 */	lwz r3, 8(r31)
/* 801C0294  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801C0298  C0 42 A5 E8 */	lfs f2, lit_3962(r2)
/* 801C029C  38 80 00 0A */	li r4, 0xa
/* 801C02A0  4B FF 86 9D */	bl iconScaleAnmInit__14dMenu_DmapBg_cFffUc
/* 801C02A4  38 00 00 01 */	li r0, 1
/* 801C02A8  98 1F 01 84 */	stb r0, 0x184(r31)
/* 801C02AC  80 7F 00 04 */	lwz r3, 4(r31)
/* 801C02B0  88 03 00 F8 */	lbz r0, 0xf8(r3)
/* 801C02B4  28 00 00 01 */	cmplwi r0, 1
/* 801C02B8  40 82 00 18 */	bne lbl_801C02D0
/* 801C02BC  88 03 00 F9 */	lbz r0, 0xf9(r3)
/* 801C02C0  28 00 00 01 */	cmplwi r0, 1
/* 801C02C4  40 82 00 0C */	bne lbl_801C02D0
/* 801C02C8  38 00 00 00 */	li r0, 0
/* 801C02CC  98 1F 01 84 */	stb r0, 0x184(r31)
lbl_801C02D0:
/* 801C02D0  38 00 00 00 */	li r0, 0
/* 801C02D4  B0 1F 01 66 */	sth r0, 0x166(r31)
/* 801C02D8  B0 1F 01 68 */	sth r0, 0x168(r31)
/* 801C02DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C02E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C02E4  7C 08 03 A6 */	mtlr r0
/* 801C02E8  38 21 00 20 */	addi r1, r1, 0x20
/* 801C02EC  4E 80 00 20 */	blr 
