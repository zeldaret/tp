lbl_801ED31C:
/* 801ED31C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801ED320  7C 08 02 A6 */	mflr r0
/* 801ED324  90 01 00 24 */	stw r0, 0x24(r1)
/* 801ED328  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801ED32C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801ED330  7C 7F 1B 78 */	mr r31, r3
/* 801ED334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801ED338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801ED33C  38 63 00 9C */	addi r3, r3, 0x9c
/* 801ED340  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801ED344  7C 9F 02 14 */	add r4, r31, r0
/* 801ED348  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801ED34C  38 A0 00 00 */	li r5, 0
/* 801ED350  4B E4 5C E1 */	bl getItem__17dSv_player_item_cCFib
/* 801ED354  7C 7E 1B 78 */	mr r30, r3
/* 801ED358  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801ED35C  28 00 00 FF */	cmplwi r0, 0xff
/* 801ED360  41 82 00 14 */	beq lbl_801ED374
/* 801ED364  7F E3 FB 78 */	mr r3, r31
/* 801ED368  38 80 00 24 */	li r4, 0x24
/* 801ED36C  48 00 17 79 */	bl setDoStatus__12dMenu_Ring_cFUc
/* 801ED370  48 00 00 10 */	b lbl_801ED380
lbl_801ED374:
/* 801ED374  7F E3 FB 78 */	mr r3, r31
/* 801ED378  38 80 00 00 */	li r4, 0
/* 801ED37C  48 00 17 69 */	bl setDoStatus__12dMenu_Ring_cFUc
lbl_801ED380:
/* 801ED380  48 00 CC BD */	bl dMw_A_TRIGGER__Fv
/* 801ED384  2C 03 00 00 */	cmpwi r3, 0
/* 801ED388  41 82 00 60 */	beq lbl_801ED3E8
/* 801ED38C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801ED390  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801ED394  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801ED398  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 801ED39C  40 82 00 4C */	bne lbl_801ED3E8
/* 801ED3A0  7F E3 FB 78 */	mr r3, r31
/* 801ED3A4  7F C4 F3 78 */	mr r4, r30
/* 801ED3A8  48 00 20 E5 */	bl openExplain__12dMenu_Ring_cFUc
/* 801ED3AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801ED3B0  41 82 00 38 */	beq lbl_801ED3E8
/* 801ED3B4  38 00 00 01 */	li r0, 1
/* 801ED3B8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801ED3BC  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801ED3C0  98 03 00 E8 */	stb r0, 0xe8(r3)
/* 801ED3C4  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801ED3C8  98 1F 06 C4 */	stb r0, 0x6c4(r31)
/* 801ED3CC  38 00 00 02 */	li r0, 2
/* 801ED3D0  98 1F 06 B0 */	stb r0, 0x6b0(r31)
/* 801ED3D4  48 03 15 FD */	bl dMeter2Info_set2DVibration__Fv
/* 801ED3D8  7F E3 FB 78 */	mr r3, r31
/* 801ED3DC  38 80 00 00 */	li r4, 0
/* 801ED3E0  48 00 17 05 */	bl setDoStatus__12dMenu_Ring_cFUc
/* 801ED3E4  48 00 00 94 */	b lbl_801ED478
lbl_801ED3E8:
/* 801ED3E8  48 00 CC 55 */	bl dMw_A_TRIGGER__Fv
/* 801ED3EC  2C 03 00 00 */	cmpwi r3, 0
/* 801ED3F0  41 82 00 4C */	beq lbl_801ED43C
/* 801ED3F4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801ED3F8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801ED3FC  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801ED400  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 801ED404  40 82 00 38 */	bne lbl_801ED43C
/* 801ED408  38 00 00 4A */	li r0, 0x4a
/* 801ED40C  90 01 00 08 */	stw r0, 8(r1)
/* 801ED410  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801ED414  38 81 00 08 */	addi r4, r1, 8
/* 801ED418  38 A0 00 00 */	li r5, 0
/* 801ED41C  38 C0 00 00 */	li r6, 0
/* 801ED420  38 E0 00 00 */	li r7, 0
/* 801ED424  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801ED428  FC 40 08 90 */	fmr f2, f1
/* 801ED42C  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801ED430  FC 80 18 90 */	fmr f4, f3
/* 801ED434  39 00 00 00 */	li r8, 0
/* 801ED438  48 0B E5 4D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801ED43C:
/* 801ED43C  A8 7F 06 72 */	lha r3, 0x672(r31)
/* 801ED440  2C 03 00 00 */	cmpwi r3, 0
/* 801ED444  40 81 00 10 */	ble lbl_801ED454
/* 801ED448  38 03 FF FF */	addi r0, r3, -1
/* 801ED44C  B0 1F 06 72 */	sth r0, 0x672(r31)
/* 801ED450  48 00 00 28 */	b lbl_801ED478
lbl_801ED454:
/* 801ED454  7F E3 FB 78 */	mr r3, r31
/* 801ED458  80 9F 00 08 */	lwz r4, 8(r31)
/* 801ED45C  4B FF E1 C9 */	bl getStickInfo__12dMenu_Ring_cFP9STControl
/* 801ED460  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801ED464  41 82 00 14 */	beq lbl_801ED478
/* 801ED468  38 00 00 01 */	li r0, 1
/* 801ED46C  98 1F 06 B0 */	stb r0, 0x6b0(r31)
/* 801ED470  38 00 00 00 */	li r0, 0
/* 801ED474  98 1F 06 B2 */	stb r0, 0x6b2(r31)
lbl_801ED478:
/* 801ED478  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801ED47C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801ED480  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801ED484  7C 08 03 A6 */	mtlr r0
/* 801ED488  38 21 00 20 */	addi r1, r1, 0x20
/* 801ED48C  4E 80 00 20 */	blr 
