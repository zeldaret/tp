lbl_801C8230:
/* 801C8230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C8234  7C 08 02 A6 */	mflr r0
/* 801C8238  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C823C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C8240  7C 7F 1B 78 */	mr r31, r3
/* 801C8244  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801C8248  88 84 12 27 */	lbz r4, 0x1227(r4)
/* 801C824C  38 04 00 01 */	addi r0, r4, 1
/* 801C8250  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801C8254  48 00 35 1D */	bl readWorldData__12dMenu_Fmap_cFUc
/* 801C8258  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C825C  40 82 00 5C */	bne lbl_801C82B8
/* 801C8260  7F E3 FB 78 */	mr r3, r31
/* 801C8264  38 80 00 00 */	li r4, 0
/* 801C8268  48 00 34 69 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C826C  88 1F 03 09 */	lbz r0, 0x309(r31)
/* 801C8270  28 00 00 00 */	cmplwi r0, 0
/* 801C8274  40 82 00 80 */	bne lbl_801C82F4
/* 801C8278  38 00 00 4A */	li r0, 0x4a
/* 801C827C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C8280  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C8284  38 81 00 0C */	addi r4, r1, 0xc
/* 801C8288  38 A0 00 00 */	li r5, 0
/* 801C828C  38 C0 00 00 */	li r6, 0
/* 801C8290  38 E0 00 00 */	li r7, 0
/* 801C8294  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C8298  FC 40 08 90 */	fmr f2, f1
/* 801C829C  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C82A0  FC 80 18 90 */	fmr f4, f3
/* 801C82A4  39 00 00 00 */	li r8, 0
/* 801C82A8  48 0E 36 DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C82AC  38 00 00 01 */	li r0, 1
/* 801C82B0  98 1F 03 09 */	stb r0, 0x309(r31)
/* 801C82B4  48 00 00 40 */	b lbl_801C82F4
lbl_801C82B8:
/* 801C82B8  38 00 00 00 */	li r0, 0
/* 801C82BC  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801C82C0  38 00 00 BC */	li r0, 0xbc
/* 801C82C4  90 01 00 08 */	stw r0, 8(r1)
/* 801C82C8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C82CC  38 81 00 08 */	addi r4, r1, 8
/* 801C82D0  38 A0 00 00 */	li r5, 0
/* 801C82D4  38 C0 00 00 */	li r6, 0
/* 801C82D8  38 E0 00 00 */	li r7, 0
/* 801C82DC  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C82E0  FC 40 08 90 */	fmr f2, f1
/* 801C82E4  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C82E8  FC 80 18 90 */	fmr f4, f3
/* 801C82EC  39 00 00 00 */	li r8, 0
/* 801C82F0  48 0E 36 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801C82F4:
/* 801C82F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C82F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C82FC  7C 08 03 A6 */	mtlr r0
/* 801C8300  38 21 00 20 */	addi r1, r1, 0x20
/* 801C8304  4E 80 00 20 */	blr 
