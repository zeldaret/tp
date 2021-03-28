lbl_80188234:
/* 80188234  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80188238  7C 08 02 A6 */	mflr r0
/* 8018823C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80188240  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80188244  7C 7F 1B 78 */	mr r31, r3
/* 80188248  38 00 00 6E */	li r0, 0x6e
/* 8018824C  90 01 00 08 */	stw r0, 8(r1)
/* 80188250  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80188254  38 81 00 08 */	addi r4, r1, 8
/* 80188258  38 A0 00 00 */	li r5, 0
/* 8018825C  38 C0 00 00 */	li r6, 0
/* 80188260  38 E0 00 00 */	li r7, 0
/* 80188264  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80188268  FC 40 08 90 */	fmr f2, f1
/* 8018826C  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 80188270  FC 80 18 90 */	fmr f4, f3
/* 80188274  39 00 00 00 */	li r8, 0
/* 80188278  48 12 37 0D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8018827C  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 80188280  54 00 10 3A */	slwi r0, r0, 2
/* 80188284  7F E3 FB 78 */	mr r3, r31
/* 80188288  3C 80 80 3C */	lis r4, SelOpenStartFrameTbl@ha
/* 8018828C  38 84 A8 6C */	addi r4, r4, SelOpenStartFrameTbl@l
/* 80188290  7C 84 00 2E */	lwzx r4, r4, r0
/* 80188294  3C A0 80 3C */	lis r5, SelOpenEndFrameTbl@ha
/* 80188298  38 A5 A8 78 */	addi r5, r5, SelOpenEndFrameTbl@l
/* 8018829C  7C A5 00 2E */	lwzx r5, r5, r0
/* 801882A0  4B FF D6 F5 */	bl selectDataMoveAnmInitSet__14dFile_select_cFii
/* 801882A4  7F E3 FB 78 */	mr r3, r31
/* 801882A8  38 80 03 1F */	li r4, 0x31f
/* 801882AC  38 A0 03 29 */	li r5, 0x329
/* 801882B0  4B FF E8 99 */	bl menuMoveAnmInitSet__14dFile_select_cFii
/* 801882B4  7F E3 FB 78 */	mr r3, r31
/* 801882B8  38 80 0D 29 */	li r4, 0xd29
/* 801882BC  38 A0 0D 1F */	li r5, 0xd1f
/* 801882C0  4B FF F9 29 */	bl copySelMoveAnmInitSet__14dFile_select_cFii
/* 801882C4  7F E3 FB 78 */	mr r3, r31
/* 801882C8  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 801882CC  54 00 08 3C */	slwi r0, r0, 1
/* 801882D0  38 8D 81 40 */	la r4, msgTbl(r13) /* 804506C0-_SDA_BASE_ */
/* 801882D4  7C 84 02 2E */	lhzx r4, r4, r0
/* 801882D8  38 A0 00 01 */	li r5, 1
/* 801882DC  38 C0 00 00 */	li r6, 0
/* 801882E0  48 00 4E 05 */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 801882E4  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801882E8  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 801882EC  48 00 CF B5 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801882F0  7F E3 FB 78 */	mr r3, r31
/* 801882F4  88 9F 02 65 */	lbz r4, 0x265(r31)
/* 801882F8  38 A0 00 FF */	li r5, 0xff
/* 801882FC  38 C0 00 00 */	li r6, 0
/* 80188300  3C E0 80 43 */	lis r7, g_fsHIO@ha
/* 80188304  38 E7 C9 EC */	addi r7, r7, g_fsHIO@l
/* 80188308  88 E7 00 08 */	lbz r7, 8(r7)
/* 8018830C  48 00 53 45 */	bl selectWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc
/* 80188310  38 00 00 18 */	li r0, 0x18
/* 80188314  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 80188318  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018831C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80188320  7C 08 03 A6 */	mtlr r0
/* 80188324  38 21 00 20 */	addi r1, r1, 0x20
/* 80188328  4E 80 00 20 */	blr 
