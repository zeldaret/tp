lbl_80186A80:
/* 80186A80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80186A84  7C 08 02 A6 */	mflr r0
/* 80186A88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80186A8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80186A90  7C 7F 1B 78 */	mr r31, r3
/* 80186A94  38 00 00 6E */	li r0, 0x6e
/* 80186A98  90 01 00 08 */	stw r0, 8(r1)
/* 80186A9C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80186AA0  38 81 00 08 */	addi r4, r1, 8
/* 80186AA4  38 A0 00 00 */	li r5, 0
/* 80186AA8  38 C0 00 00 */	li r6, 0
/* 80186AAC  38 E0 00 00 */	li r7, 0
/* 80186AB0  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80186AB4  FC 40 08 90 */	fmr f2, f1
/* 80186AB8  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 80186ABC  FC 80 18 90 */	fmr f4, f3
/* 80186AC0  39 00 00 00 */	li r8, 0
/* 80186AC4  48 12 4E C1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80186AC8  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 80186ACC  54 00 10 3A */	slwi r0, r0, 2
/* 80186AD0  7F E3 FB 78 */	mr r3, r31
/* 80186AD4  3C 80 80 3C */	lis r4, SelOpenEndFrameTbl@ha
/* 80186AD8  38 84 A8 78 */	addi r4, r4, SelOpenEndFrameTbl@l
/* 80186ADC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80186AE0  3C A0 80 3C */	lis r5, SelOpenStartFrameTbl@ha
/* 80186AE4  38 A5 A8 6C */	addi r5, r5, SelOpenStartFrameTbl@l
/* 80186AE8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80186AEC  4B FF EE A9 */	bl selectDataMoveAnmInitSet__14dFile_select_cFii
/* 80186AF0  7F E3 FB 78 */	mr r3, r31
/* 80186AF4  38 80 03 29 */	li r4, 0x329
/* 80186AF8  38 A0 03 1F */	li r5, 0x31f
/* 80186AFC  48 00 00 4D */	bl menuMoveAnmInitSet__14dFile_select_cFii
/* 80186B00  7F E3 FB 78 */	mr r3, r31
/* 80186B04  38 80 00 00 */	li r4, 0
/* 80186B08  48 00 68 99 */	bl modoruTxtDispAnmInit__14dFile_select_cFUc
/* 80186B0C  7F E3 FB 78 */	mr r3, r31
/* 80186B10  38 80 00 43 */	li r4, 0x43
/* 80186B14  38 A0 00 01 */	li r5, 1
/* 80186B18  38 C0 00 00 */	li r6, 0
/* 80186B1C  48 00 65 C9 */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 80186B20  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80186B24  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 80186B28  48 00 E7 79 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 80186B2C  38 00 00 0D */	li r0, 0xd
/* 80186B30  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 80186B34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80186B38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80186B3C  7C 08 03 A6 */	mtlr r0
/* 80186B40  38 21 00 20 */	addi r1, r1, 0x20
/* 80186B44  4E 80 00 20 */	blr 
