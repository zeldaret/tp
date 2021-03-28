lbl_801DB820:
/* 801DB820  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DB824  7C 08 02 A6 */	mflr r0
/* 801DB828  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DB82C  39 61 00 30 */	addi r11, r1, 0x30
/* 801DB830  48 18 69 A9 */	bl _savegpr_28
/* 801DB834  7C 7F 1B 78 */	mr r31, r3
/* 801DB838  80 03 00 C8 */	lwz r0, 0xc8(r3)
/* 801DB83C  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 801DB840  38 00 00 00 */	li r0, 0
/* 801DB844  98 03 00 E3 */	stb r0, 0xe3(r3)
/* 801DB848  98 03 00 E4 */	stb r0, 0xe4(r3)
/* 801DB84C  88 03 00 E1 */	lbz r0, 0xe1(r3)
/* 801DB850  28 00 00 FF */	cmplwi r0, 0xff
/* 801DB854  41 82 01 9C */	beq lbl_801DB9F0
/* 801DB858  7C 1D 03 78 */	mr r29, r0
/* 801DB85C  3B 80 FF FF */	li r28, -1
/* 801DB860  28 00 00 26 */	cmplwi r0, 0x26
/* 801DB864  40 82 00 B4 */	bne lbl_801DB918
/* 801DB868  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801DB86C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801DB870  3B C3 4E 20 */	addi r30, r3, 0x4e20
/* 801DB874  7F C3 F3 78 */	mr r3, r30
/* 801DB878  81 9E 00 00 */	lwz r12, 0(r30)
/* 801DB87C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801DB880  7D 89 03 A6 */	mtctr r12
/* 801DB884  4E 80 04 21 */	bctrl 
/* 801DB888  88 03 00 09 */	lbz r0, 9(r3)
/* 801DB88C  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 801DB890  2C 00 00 11 */	cmpwi r0, 0x11
/* 801DB894  40 82 00 5C */	bne lbl_801DB8F0
/* 801DB898  3B A0 00 00 */	li r29, 0
/* 801DB89C  3B C0 00 00 */	li r30, 0
lbl_801DB8A0:
/* 801DB8A0  38 1E 00 F9 */	addi r0, r30, 0xf9
/* 801DB8A4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 801DB8A8  38 80 00 01 */	li r4, 1
/* 801DB8AC  4B EB C6 35 */	bl checkItemGet__FUci
/* 801DB8B0  2C 03 00 00 */	cmpwi r3, 0
/* 801DB8B4  41 82 00 08 */	beq lbl_801DB8BC
/* 801DB8B8  3B BD 00 01 */	addi r29, r29, 1
lbl_801DB8BC:
/* 801DB8BC  3B DE 00 01 */	addi r30, r30, 1
/* 801DB8C0  2C 1E 00 03 */	cmpwi r30, 3
/* 801DB8C4  41 80 FF DC */	blt lbl_801DB8A0
/* 801DB8C8  2C 1D 00 01 */	cmpwi r29, 1
/* 801DB8CC  40 82 00 08 */	bne lbl_801DB8D4
/* 801DB8D0  3B 80 00 43 */	li r28, 0x43
lbl_801DB8D4:
/* 801DB8D4  2C 1D 00 02 */	cmpwi r29, 2
/* 801DB8D8  40 82 00 10 */	bne lbl_801DB8E8
/* 801DB8DC  3B A0 00 FA */	li r29, 0xfa
/* 801DB8E0  3B 80 00 44 */	li r28, 0x44
/* 801DB8E4  48 00 00 34 */	b lbl_801DB918
lbl_801DB8E8:
/* 801DB8E8  3B A0 00 FD */	li r29, 0xfd
/* 801DB8EC  48 00 00 2C */	b lbl_801DB918
lbl_801DB8F0:
/* 801DB8F0  7F C3 F3 78 */	mr r3, r30
/* 801DB8F4  81 9E 00 00 */	lwz r12, 0(r30)
/* 801DB8F8  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801DB8FC  7D 89 03 A6 */	mtctr r12
/* 801DB900  4E 80 04 21 */	bctrl 
/* 801DB904  88 03 00 09 */	lbz r0, 9(r3)
/* 801DB908  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 801DB90C  2C 00 00 14 */	cmpwi r0, 0x14
/* 801DB910  40 82 00 08 */	bne lbl_801DB918
/* 801DB914  3B A0 00 F6 */	li r29, 0xf6
lbl_801DB918:
/* 801DB918  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DB91C  80 C3 00 04 */	lwz r6, 4(r3)
/* 801DB920  80 BF 00 88 */	lwz r5, 0x88(r31)
/* 801DB924  80 1F 00 94 */	lwz r0, 0x94(r31)
/* 801DB928  90 01 00 08 */	stw r0, 8(r1)
/* 801DB92C  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 801DB930  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DB934  93 81 00 10 */	stw r28, 0x10(r1)
/* 801DB938  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801DB93C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801DB940  7F A4 EB 78 */	mr r4, r29
/* 801DB944  80 FF 00 8C */	lwz r7, 0x8c(r31)
/* 801DB948  81 1F 00 7C */	lwz r8, 0x7c(r31)
/* 801DB94C  81 3F 00 90 */	lwz r9, 0x90(r31)
/* 801DB950  81 5F 00 80 */	lwz r10, 0x80(r31)
/* 801DB954  48 04 15 B5 */	bl readItemTexture__13dMeter2Info_cFUcPvP10J2DPicturePvP10J2DPicturePvP10J2DPicturePvP10J2DPicturei
/* 801DB958  7C 7E 1B 78 */	mr r30, r3
/* 801DB95C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DB960  48 07 9C 69 */	bl show__13CPaneMgrAlphaFv
/* 801DB964  39 00 00 00 */	li r8, 0
/* 801DB968  38 60 00 00 */	li r3, 0
/* 801DB96C  38 FE FF FF */	addi r7, r30, -1
/* 801DB970  38 C0 00 01 */	li r6, 1
/* 801DB974  7C 65 1B 78 */	mr r5, r3
/* 801DB978  38 00 00 03 */	li r0, 3
/* 801DB97C  7C 09 03 A6 */	mtctr r0
lbl_801DB980:
/* 801DB980  7C 08 38 00 */	cmpw r8, r7
/* 801DB984  40 80 00 14 */	bge lbl_801DB998
/* 801DB988  38 03 00 7C */	addi r0, r3, 0x7c
/* 801DB98C  7C 9F 00 2E */	lwzx r4, r31, r0
/* 801DB990  98 C4 00 B0 */	stb r6, 0xb0(r4)
/* 801DB994  48 00 00 10 */	b lbl_801DB9A4
lbl_801DB998:
/* 801DB998  38 03 00 7C */	addi r0, r3, 0x7c
/* 801DB99C  7C 9F 00 2E */	lwzx r4, r31, r0
/* 801DB9A0  98 A4 00 B0 */	stb r5, 0xb0(r4)
lbl_801DB9A4:
/* 801DB9A4  39 08 00 01 */	addi r8, r8, 1
/* 801DB9A8  38 63 00 04 */	addi r3, r3, 4
/* 801DB9AC  42 00 FF D4 */	bdnz lbl_801DB980
/* 801DB9B0  7F E3 FB 78 */	mr r3, r31
/* 801DB9B4  48 00 0E 49 */	bl setNumber__19dMenu_ItemExplain_cFv
/* 801DB9B8  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 801DB9BC  3C 80 62 61 */	lis r4, 0x6261 /* 0x6261636B@ha */
/* 801DB9C0  38 C4 63 6B */	addi r6, r4, 0x636B /* 0x6261636B@l */
/* 801DB9C4  3C 80 69 5F */	lis r4, 0x695F /* 0x695F695F@ha */
/* 801DB9C8  38 A4 69 5F */	addi r5, r4, 0x695F /* 0x695F695F@l */
/* 801DB9CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB9D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DB9D4  7D 89 03 A6 */	mtctr r12
/* 801DB9D8  4E 80 04 21 */	bctrl 
/* 801DB9DC  38 00 00 01 */	li r0, 1
/* 801DB9E0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DB9E4  38 00 00 00 */	li r0, 0
/* 801DB9E8  98 1F 00 E6 */	stb r0, 0xe6(r31)
/* 801DB9EC  48 00 00 6C */	b lbl_801DBA58
lbl_801DB9F0:
/* 801DB9F0  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DB9F4  48 07 9C 15 */	bl hide__13CPaneMgrAlphaFv
/* 801DB9F8  38 60 00 00 */	li r3, 0
/* 801DB9FC  38 A0 00 00 */	li r5, 0
/* 801DBA00  38 00 00 03 */	li r0, 3
/* 801DBA04  7C 09 03 A6 */	mtctr r0
lbl_801DBA08:
/* 801DBA08  38 03 00 7C */	addi r0, r3, 0x7c
/* 801DBA0C  7C 9F 00 2E */	lwzx r4, r31, r0
/* 801DBA10  98 A4 00 B0 */	stb r5, 0xb0(r4)
/* 801DBA14  38 63 00 04 */	addi r3, r3, 4
/* 801DBA18  42 00 FF F0 */	bdnz lbl_801DBA08
/* 801DBA1C  7F E3 FB 78 */	mr r3, r31
/* 801DBA20  48 00 0D DD */	bl setNumber__19dMenu_ItemExplain_cFv
/* 801DBA24  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 801DBA28  3C 80 62 61 */	lis r4, 0x6261 /* 0x6261636B@ha */
/* 801DBA2C  38 C4 63 6B */	addi r6, r4, 0x636B /* 0x6261636B@l */
/* 801DBA30  3C 80 69 5F */	lis r4, 0x695F /* 0x695F695F@ha */
/* 801DBA34  38 A4 69 5F */	addi r5, r4, 0x695F /* 0x695F695F@l */
/* 801DBA38  81 83 00 00 */	lwz r12, 0(r3)
/* 801DBA3C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DBA40  7D 89 03 A6 */	mtctr r12
/* 801DBA44  4E 80 04 21 */	bctrl 
/* 801DBA48  38 00 00 00 */	li r0, 0
/* 801DBA4C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DBA50  38 00 00 01 */	li r0, 1
/* 801DBA54  98 1F 00 E6 */	stb r0, 0xe6(r31)
lbl_801DBA58:
/* 801DBA58  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 801DBA5C  28 03 00 00 */	cmplwi r3, 0
/* 801DBA60  41 82 00 08 */	beq lbl_801DBA68
/* 801DBA64  48 06 03 D1 */	bl arwAnimeInit__15dMsgScrnArrow_cFv
lbl_801DBA68:
/* 801DBA68  38 00 00 51 */	li r0, 0x51
/* 801DBA6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 801DBA70  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DBA74  38 81 00 18 */	addi r4, r1, 0x18
/* 801DBA78  38 A0 00 00 */	li r5, 0
/* 801DBA7C  38 C0 00 00 */	li r6, 0
/* 801DBA80  38 E0 00 00 */	li r7, 0
/* 801DBA84  C0 22 A8 C4 */	lfs f1, lit_4348(r2)
/* 801DBA88  FC 40 08 90 */	fmr f2, f1
/* 801DBA8C  C0 62 A8 B0 */	lfs f3, lit_4304(r2)
/* 801DBA90  FC 80 18 90 */	fmr f4, f3
/* 801DBA94  39 00 00 00 */	li r8, 0
/* 801DBA98  48 0C FE ED */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DBA9C  39 61 00 30 */	addi r11, r1, 0x30
/* 801DBAA0  48 18 67 85 */	bl _restgpr_28
/* 801DBAA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DBAA8  7C 08 03 A6 */	mtlr r0
/* 801DBAAC  38 21 00 30 */	addi r1, r1, 0x30
/* 801DBAB0  4E 80 00 20 */	blr 
