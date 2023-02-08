lbl_809B53D4:
/* 809B53D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B53D8  7C 08 02 A6 */	mflr r0
/* 809B53DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B53E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B53E4  93 C1 00 08 */	stw r30, 8(r1)
/* 809B53E8  7C 7E 1B 78 */	mr r30, r3
/* 809B53EC  80 04 00 00 */	lwz r0, 0(r4)
/* 809B53F0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B53F4  41 82 00 BC */	beq lbl_809B54B0
/* 809B53F8  40 80 00 1C */	bge lbl_809B5414
/* 809B53FC  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B5400  41 82 00 80 */	beq lbl_809B5480
/* 809B5404  40 80 00 D4 */	bge lbl_809B54D8
/* 809B5408  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B540C  41 82 00 14 */	beq lbl_809B5420
/* 809B5410  48 00 00 C8 */	b lbl_809B54D8
lbl_809B5414:
/* 809B5414  2C 00 00 32 */	cmpwi r0, 0x32
/* 809B5418  41 82 00 A8 */	beq lbl_809B54C0
/* 809B541C  48 00 00 BC */	b lbl_809B54D8
lbl_809B5420:
/* 809B5420  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B5424  2C 00 00 03 */	cmpwi r0, 3
/* 809B5428  41 82 00 28 */	beq lbl_809B5450
/* 809B542C  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 809B5430  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B5434  4B 79 04 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B5438  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 809B543C  38 00 00 03 */	li r0, 3
/* 809B5440  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B5444  3C 60 80 9C */	lis r3, lit_3945@ha /* 0x809B93CC@ha */
/* 809B5448  C0 03 93 CC */	lfs f0, lit_3945@l(r3)  /* 0x809B93CC@l */
/* 809B544C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B5450:
/* 809B5450  38 00 00 3D */	li r0, 0x3d
/* 809B5454  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B5458  38 60 00 0A */	li r3, 0xa
/* 809B545C  4B 7F 33 89 */	bl dKy_change_colpat__FUc
/* 809B5460  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B5464  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B5468  80 63 00 00 */	lwz r3, 0(r3)
/* 809B546C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B5470  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200003F@ha */
/* 809B5474  38 84 00 3F */	addi r4, r4, 0x003F /* 0x0200003F@l */
/* 809B5478  4B 8F A7 1D */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 809B547C  48 00 00 5C */	b lbl_809B54D8
lbl_809B5480:
/* 809B5480  38 00 00 00 */	li r0, 0
/* 809B5484  98 1E 0F F6 */	stb r0, 0xff6(r30)
/* 809B5488  38 00 00 64 */	li r0, 0x64
/* 809B548C  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B5490  38 60 00 0C */	li r3, 0xc
/* 809B5494  4B 7F 33 51 */	bl dKy_change_colpat__FUc
/* 809B5498  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B549C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B54A0  80 63 00 00 */	lwz r3, 0(r3)
/* 809B54A4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B54A8  4B 8F A9 71 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 809B54AC  48 00 00 2C */	b lbl_809B54D8
lbl_809B54B0:
/* 809B54B0  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809B54B4  38 A0 00 00 */	li r5, 0
/* 809B54B8  4B 79 67 39 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B54BC  48 00 00 1C */	b lbl_809B54D8
lbl_809B54C0:
/* 809B54C0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B54C4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B54C8  80 63 00 00 */	lwz r3, 0(r3)
/* 809B54CC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B54D0  38 80 00 2D */	li r4, 0x2d
/* 809B54D4  4B 8F AA 09 */	bl bgmStreamStop__8Z2SeqMgrFUl
lbl_809B54D8:
/* 809B54D8  38 60 00 00 */	li r3, 0
/* 809B54DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B54E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B54E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B54E8  7C 08 03 A6 */	mtlr r0
/* 809B54EC  38 21 00 10 */	addi r1, r1, 0x10
/* 809B54F0  4E 80 00 20 */	blr 
