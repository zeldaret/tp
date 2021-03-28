lbl_80189904:
/* 80189904  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80189908  7C 08 02 A6 */	mflr r0
/* 8018990C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80189910  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80189914  7C 7F 1B 78 */	mr r31, r3
/* 80189918  38 00 00 6E */	li r0, 0x6e
/* 8018991C  90 01 00 08 */	stw r0, 8(r1)
/* 80189920  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80189924  38 81 00 08 */	addi r4, r1, 8
/* 80189928  38 A0 00 00 */	li r5, 0
/* 8018992C  38 C0 00 00 */	li r6, 0
/* 80189930  38 E0 00 00 */	li r7, 0
/* 80189934  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80189938  FC 40 08 90 */	fmr f2, f1
/* 8018993C  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 80189940  FC 80 18 90 */	fmr f4, f3
/* 80189944  39 00 00 00 */	li r8, 0
/* 80189948  48 12 20 3D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8018994C  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80189950  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 80189954  48 00 B9 4D */	bl setAlphaRate__16dSelect_cursor_cFf
/* 80189958  88 1F 02 6E */	lbz r0, 0x26e(r31)
/* 8018995C  2C 00 00 01 */	cmpwi r0, 1
/* 80189960  41 82 00 20 */	beq lbl_80189980
/* 80189964  40 80 00 10 */	bge lbl_80189974
/* 80189968  2C 00 00 00 */	cmpwi r0, 0
/* 8018996C  40 80 00 78 */	bge lbl_801899E4
/* 80189970  48 00 00 88 */	b lbl_801899F8
lbl_80189974:
/* 80189974  2C 00 00 03 */	cmpwi r0, 3
/* 80189978  40 80 00 80 */	bge lbl_801899F8
/* 8018997C  48 00 00 28 */	b lbl_801899A4
lbl_80189980:
/* 80189980  7F E3 FB 78 */	mr r3, r31
/* 80189984  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 80189988  54 00 08 3C */	slwi r0, r0, 1
/* 8018998C  38 8D 81 40 */	la r4, msgTbl(r13) /* 804506C0-_SDA_BASE_ */
/* 80189990  7C 84 02 2E */	lhzx r4, r4, r0
/* 80189994  38 A0 00 01 */	li r5, 1
/* 80189998  38 C0 00 00 */	li r6, 0
/* 8018999C  48 00 37 49 */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 801899A0  48 00 00 58 */	b lbl_801899F8
lbl_801899A4:
/* 801899A4  7F E3 FB 78 */	mr r3, r31
/* 801899A8  38 80 00 43 */	li r4, 0x43
/* 801899AC  38 A0 00 01 */	li r5, 1
/* 801899B0  38 C0 00 00 */	li r6, 0
/* 801899B4  48 00 37 31 */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 801899B8  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 801899BC  54 00 10 3A */	slwi r0, r0, 2
/* 801899C0  7F E3 FB 78 */	mr r3, r31
/* 801899C4  3C 80 80 3C */	lis r4, SelOpenEndFrameTbl@ha
/* 801899C8  38 84 A8 78 */	addi r4, r4, SelOpenEndFrameTbl@l
/* 801899CC  7C 84 00 2E */	lwzx r4, r4, r0
/* 801899D0  3C A0 80 3C */	lis r5, SelOpenStartFrameTbl@ha
/* 801899D4  38 A5 A8 6C */	addi r5, r5, SelOpenStartFrameTbl@l
/* 801899D8  7C A5 00 2E */	lwzx r5, r5, r0
/* 801899DC  4B FF BF B9 */	bl selectDataMoveAnmInitSet__14dFile_select_cFii
/* 801899E0  48 00 00 18 */	b lbl_801899F8
lbl_801899E4:
/* 801899E4  7F E3 FB 78 */	mr r3, r31
/* 801899E8  38 80 00 44 */	li r4, 0x44
/* 801899EC  38 A0 00 00 */	li r5, 0
/* 801899F0  38 C0 00 00 */	li r6, 0
/* 801899F4  48 00 36 F1 */	bl headerTxtSet__14dFile_select_cFUsUcUc
lbl_801899F8:
/* 801899F8  7F E3 FB 78 */	mr r3, r31
/* 801899FC  38 80 04 7D */	li r4, 0x47d
/* 80189A00  38 A0 04 73 */	li r5, 0x473
/* 80189A04  4B FF F1 B9 */	bl yesnoMenuMoveAnmInitSet__14dFile_select_cFii
/* 80189A08  38 00 00 1B */	li r0, 0x1b
/* 80189A0C  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 80189A10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80189A14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80189A18  7C 08 03 A6 */	mtlr r0
/* 80189A1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80189A20  4E 80 00 20 */	blr 
