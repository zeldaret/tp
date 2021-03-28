lbl_801BFA88:
/* 801BFA88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801BFA8C  7C 08 02 A6 */	mflr r0
/* 801BFA90  90 01 00 24 */	stw r0, 0x24(r1)
/* 801BFA94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801BFA98  7C 7F 1B 78 */	mr r31, r3
/* 801BFA9C  88 03 01 6D */	lbz r0, 0x16d(r3)
/* 801BFAA0  7C 04 07 74 */	extsb r4, r0
/* 801BFAA4  88 03 01 6C */	lbz r0, 0x16c(r3)
/* 801BFAA8  7C 00 07 74 */	extsb r0, r0
/* 801BFAAC  7C 04 00 00 */	cmpw r4, r0
/* 801BFAB0  41 82 00 0C */	beq lbl_801BFABC
/* 801BFAB4  4B FF DC 11 */	bl floorChangeMode__12dMenu_Dmap_cFv
/* 801BFAB8  48 00 01 AC */	b lbl_801BFC64
lbl_801BFABC:
/* 801BFABC  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BFAC0  4B E7 2A 65 */	bl checkUpTrigger__9STControlFv
/* 801BFAC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801BFAC8  41 82 00 94 */	beq lbl_801BFB5C
/* 801BFACC  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 801BFAD0  7C 03 07 74 */	extsb r3, r0
/* 801BFAD4  88 1F 01 70 */	lbz r0, 0x170(r31)
/* 801BFAD8  7C 00 07 74 */	extsb r0, r0
/* 801BFADC  7C 03 00 00 */	cmpw r3, r0
/* 801BFAE0  41 82 01 84 */	beq lbl_801BFC64
/* 801BFAE4  38 00 00 4E */	li r0, 0x4e
/* 801BFAE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 801BFAEC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801BFAF0  38 81 00 10 */	addi r4, r1, 0x10
/* 801BFAF4  38 A0 00 00 */	li r5, 0
/* 801BFAF8  38 C0 00 00 */	li r6, 0
/* 801BFAFC  38 E0 00 00 */	li r7, 0
/* 801BFB00  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BFB04  FC 40 08 90 */	fmr f2, f1
/* 801BFB08  C0 62 A6 5C */	lfs f3, lit_6181(r2)
/* 801BFB0C  FC 80 18 90 */	fmr f4, f3
/* 801BFB10  39 00 00 00 */	li r8, 0
/* 801BFB14  48 0E BE 71 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801BFB18  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 801BFB1C  98 1F 01 6E */	stb r0, 0x16e(r31)
/* 801BFB20  88 7F 01 6C */	lbz r3, 0x16c(r31)
/* 801BFB24  38 03 00 01 */	addi r0, r3, 1
/* 801BFB28  98 1F 01 6C */	stb r0, 0x16c(r31)
/* 801BFB2C  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 801BFB30  98 1F 01 6D */	stb r0, 0x16d(r31)
/* 801BFB34  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BFB38  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 801BFB3C  98 1F 01 79 */	stb r0, 0x179(r31)
/* 801BFB40  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BFB44  38 80 00 01 */	li r4, 1
/* 801BFB48  88 BF 01 79 */	lbz r5, 0x179(r31)
/* 801BFB4C  48 00 17 5D */	bl setPlusNowStayFloorNo__20dMenu_StageMapCtrl_cFScUc
/* 801BFB50  38 00 00 01 */	li r0, 1
/* 801BFB54  98 1F 01 7D */	stb r0, 0x17d(r31)
/* 801BFB58  48 00 01 0C */	b lbl_801BFC64
lbl_801BFB5C:
/* 801BFB5C  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BFB60  4B E7 2A 41 */	bl checkDownTrigger__9STControlFv
/* 801BFB64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801BFB68  41 82 00 94 */	beq lbl_801BFBFC
/* 801BFB6C  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 801BFB70  7C 03 07 74 */	extsb r3, r0
/* 801BFB74  88 1F 01 71 */	lbz r0, 0x171(r31)
/* 801BFB78  7C 00 07 74 */	extsb r0, r0
/* 801BFB7C  7C 03 00 00 */	cmpw r3, r0
/* 801BFB80  41 82 00 E4 */	beq lbl_801BFC64
/* 801BFB84  38 00 00 4E */	li r0, 0x4e
/* 801BFB88  90 01 00 0C */	stw r0, 0xc(r1)
/* 801BFB8C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801BFB90  38 81 00 0C */	addi r4, r1, 0xc
/* 801BFB94  38 A0 00 00 */	li r5, 0
/* 801BFB98  38 C0 00 00 */	li r6, 0
/* 801BFB9C  38 E0 00 00 */	li r7, 0
/* 801BFBA0  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BFBA4  FC 40 08 90 */	fmr f2, f1
/* 801BFBA8  C0 62 A6 5C */	lfs f3, lit_6181(r2)
/* 801BFBAC  FC 80 18 90 */	fmr f4, f3
/* 801BFBB0  39 00 00 00 */	li r8, 0
/* 801BFBB4  48 0E BD D1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801BFBB8  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 801BFBBC  98 1F 01 6E */	stb r0, 0x16e(r31)
/* 801BFBC0  88 7F 01 6C */	lbz r3, 0x16c(r31)
/* 801BFBC4  38 03 FF FF */	addi r0, r3, -1
/* 801BFBC8  98 1F 01 6C */	stb r0, 0x16c(r31)
/* 801BFBCC  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 801BFBD0  98 1F 01 6D */	stb r0, 0x16d(r31)
/* 801BFBD4  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BFBD8  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 801BFBDC  98 1F 01 79 */	stb r0, 0x179(r31)
/* 801BFBE0  38 00 00 01 */	li r0, 1
/* 801BFBE4  98 1F 01 7D */	stb r0, 0x17d(r31)
/* 801BFBE8  80 7F 00 04 */	lwz r3, 4(r31)
/* 801BFBEC  38 80 FF FF */	li r4, -1
/* 801BFBF0  88 BF 01 79 */	lbz r5, 0x179(r31)
/* 801BFBF4  48 00 16 B5 */	bl setPlusNowStayFloorNo__20dMenu_StageMapCtrl_cFScUc
/* 801BFBF8  48 00 00 6C */	b lbl_801BFC64
lbl_801BFBFC:
/* 801BFBFC  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BFC00  4B E7 28 2D */	bl checkLeftTrigger__9STControlFv
/* 801BFC04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801BFC08  41 82 00 5C */	beq lbl_801BFC64
/* 801BFC0C  7F E3 FB 78 */	mr r3, r31
/* 801BFC10  48 00 00 69 */	bl itemCarryCheck__12dMenu_Dmap_cFv
/* 801BFC14  2C 03 00 00 */	cmpwi r3, 0
/* 801BFC18  41 82 00 4C */	beq lbl_801BFC64
/* 801BFC1C  38 00 00 4D */	li r0, 0x4d
/* 801BFC20  90 01 00 08 */	stw r0, 8(r1)
/* 801BFC24  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801BFC28  38 81 00 08 */	addi r4, r1, 8
/* 801BFC2C  38 A0 00 00 */	li r5, 0
/* 801BFC30  38 C0 00 00 */	li r6, 0
/* 801BFC34  38 E0 00 00 */	li r7, 0
/* 801BFC38  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BFC3C  FC 40 08 90 */	fmr f2, f1
/* 801BFC40  C0 62 A6 5C */	lfs f3, lit_6181(r2)
/* 801BFC44  FC 80 18 90 */	fmr f4, f3
/* 801BFC48  39 00 00 00 */	li r8, 0
/* 801BFC4C  48 0E BD 39 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801BFC50  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BFC54  A8 03 00 18 */	lha r0, 0x18(r3)
/* 801BFC58  98 1F 01 79 */	stb r0, 0x179(r31)
/* 801BFC5C  38 00 00 02 */	li r0, 2
/* 801BFC60  98 1F 01 7B */	stb r0, 0x17b(r31)
lbl_801BFC64:
/* 801BFC64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801BFC68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801BFC6C  7C 08 03 A6 */	mtlr r0
/* 801BFC70  38 21 00 20 */	addi r1, r1, 0x20
/* 801BFC74  4E 80 00 20 */	blr 
