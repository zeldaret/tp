lbl_801F3A94:
/* 801F3A94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F3A98  7C 08 02 A6 */	mflr r0
/* 801F3A9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F3AA0  39 61 00 20 */	addi r11, r1, 0x20
/* 801F3AA4  48 16 E7 39 */	bl _savegpr_29
/* 801F3AA8  7C 7D 1B 78 */	mr r29, r3
/* 801F3AAC  38 00 00 6D */	li r0, 0x6d
/* 801F3AB0  90 01 00 08 */	stw r0, 8(r1)
/* 801F3AB4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F3AB8  38 81 00 08 */	addi r4, r1, 8
/* 801F3ABC  38 A0 00 00 */	li r5, 0
/* 801F3AC0  38 C0 00 00 */	li r6, 0
/* 801F3AC4  38 E0 00 00 */	li r7, 0
/* 801F3AC8  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F3ACC  FC 40 08 90 */	fmr f2, f1
/* 801F3AD0  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F3AD4  FC 80 18 90 */	fmr f4, f3
/* 801F3AD8  39 00 00 00 */	li r8, 0
/* 801F3ADC  48 0B 7E A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F3AE0  88 1D 00 54 */	lbz r0, 0x54(r29)
/* 801F3AE4  54 00 10 3A */	slwi r0, r0, 2
/* 801F3AE8  7F A3 EB 78 */	mr r3, r29
/* 801F3AEC  3C 80 80 3C */	lis r4, SelOpenStartFrameTbl@ha
/* 801F3AF0  38 84 DF 9C */	addi r4, r4, SelOpenStartFrameTbl@l
/* 801F3AF4  7C 84 00 2E */	lwzx r4, r4, r0
/* 801F3AF8  3C A0 80 3C */	lis r5, SelOpenEndFrameTbl@ha
/* 801F3AFC  38 A5 DF A8 */	addi r5, r5, SelOpenEndFrameTbl@l
/* 801F3B00  7C A5 00 2E */	lwzx r5, r5, r0
/* 801F3B04  48 00 1A 05 */	bl selectDataMoveAnmInitSet__12dMenu_save_cFii
/* 801F3B08  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 801F3B0C  C0 22 AA 48 */	lfs f1, lit_4175(r2)
/* 801F3B10  4B FA 17 91 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801F3B14  7F A3 EB 78 */	mr r3, r29
/* 801F3B18  88 9D 00 54 */	lbz r4, 0x54(r29)
/* 801F3B1C  38 A0 00 FF */	li r5, 0xff
/* 801F3B20  38 C0 00 00 */	li r6, 0
/* 801F3B24  3C E0 80 43 */	lis r7, g_msHIO@ha
/* 801F3B28  38 E7 E8 4C */	addi r7, r7, g_msHIO@l
/* 801F3B2C  88 E7 00 0A */	lbz r7, 0xa(r7)
/* 801F3B30  48 00 28 25 */	bl selectWakuAlpahAnmInit__12dMenu_save_cFUcUcUcUc
/* 801F3B34  88 1D 00 54 */	lbz r0, 0x54(r29)
/* 801F3B38  7C 7D 02 14 */	add r3, r29, r0
/* 801F3B3C  88 03 01 AA */	lbz r0, 0x1aa(r3)
/* 801F3B40  28 00 00 00 */	cmplwi r0, 0
/* 801F3B44  41 82 00 5C */	beq lbl_801F3BA0
/* 801F3B48  3B FD 01 D0 */	addi r31, r29, 0x1d0
/* 801F3B4C  3B C0 00 00 */	li r30, 0
lbl_801F3B50:
/* 801F3B50  7F E3 FB 78 */	mr r3, r31
/* 801F3B54  4B E2 41 99 */	bl mDoMemCdRWm_TestCheckSumGameData__FPv
/* 801F3B58  3B DE 00 01 */	addi r30, r30, 1
/* 801F3B5C  2C 1E 00 03 */	cmpwi r30, 3
/* 801F3B60  3B FF 0A 94 */	addi r31, r31, 0xa94
/* 801F3B64  41 80 FF EC */	blt lbl_801F3B50
/* 801F3B68  7F A3 EB 78 */	mr r3, r29
/* 801F3B6C  38 80 00 3A */	li r4, 0x3a
/* 801F3B70  48 00 0C ED */	bl headerTxtSet__12dMenu_save_cFUs
/* 801F3B74  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 801F3B78  4B F9 E5 41 */	bl openInit__15dFile_warning_cFv
/* 801F3B7C  7F A3 EB 78 */	mr r3, r29
/* 801F3B80  38 80 00 00 */	li r4, 0
/* 801F3B84  48 00 26 79 */	bl ketteiTxtDispAnmInit__12dMenu_save_cFUc
/* 801F3B88  7F A3 EB 78 */	mr r3, r29
/* 801F3B8C  38 80 00 00 */	li r4, 0
/* 801F3B90  48 00 25 15 */	bl modoruTxtDispAnmInit__12dMenu_save_cFUc
/* 801F3B94  38 00 00 38 */	li r0, 0x38
/* 801F3B98  98 1D 01 B2 */	stb r0, 0x1b2(r29)
/* 801F3B9C  48 00 00 2C */	b lbl_801F3BC8
lbl_801F3BA0:
/* 801F3BA0  7F A3 EB 78 */	mr r3, r29
/* 801F3BA4  38 80 08 29 */	li r4, 0x829
/* 801F3BA8  38 A0 08 33 */	li r5, 0x833
/* 801F3BAC  38 C0 00 00 */	li r6, 0
/* 801F3BB0  48 00 1B 95 */	bl yesnoMenuMoveAnmInitSet__12dMenu_save_cFiiUc
/* 801F3BB4  7F A3 EB 78 */	mr r3, r29
/* 801F3BB8  38 80 04 CB */	li r4, 0x4cb
/* 801F3BBC  48 00 0C A1 */	bl headerTxtSet__12dMenu_save_cFUs
/* 801F3BC0  38 00 00 33 */	li r0, 0x33
/* 801F3BC4  98 1D 01 B2 */	stb r0, 0x1b2(r29)
lbl_801F3BC8:
/* 801F3BC8  39 61 00 20 */	addi r11, r1, 0x20
/* 801F3BCC  48 16 E6 5D */	bl _restgpr_29
/* 801F3BD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F3BD4  7C 08 03 A6 */	mtlr r0
/* 801F3BD8  38 21 00 20 */	addi r1, r1, 0x20
/* 801F3BDC  4E 80 00 20 */	blr 
