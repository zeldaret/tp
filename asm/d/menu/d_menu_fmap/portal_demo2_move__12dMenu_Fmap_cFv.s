lbl_801C9CC8:
/* 801C9CC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C9CCC  7C 08 02 A6 */	mflr r0
/* 801C9CD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C9CD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C9CD8  7C 7F 1B 78 */	mr r31, r3
/* 801C9CDC  48 00 19 89 */	bl talkButton__12dMenu_Fmap_cFv
/* 801C9CE0  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 801C9CE4  38 80 00 00 */	li r4, 0
/* 801C9CE8  38 A0 00 00 */	li r5, 0
/* 801C9CEC  38 C0 00 00 */	li r6, 0
/* 801C9CF0  48 08 05 E9 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 801C9CF4  48 06 E6 DD */	bl getMessageID__12dMsgObject_cFv
/* 801C9CF8  28 03 07 D9 */	cmplwi r3, 0x7d9
/* 801C9CFC  41 80 00 50 */	blt lbl_801C9D4C
/* 801C9D00  38 00 00 01 */	li r0, 1
/* 801C9D04  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9D08  98 03 12 27 */	stb r0, 0x1227(r3)
/* 801C9D0C  7F E3 FB 78 */	mr r3, r31
/* 801C9D10  38 80 00 02 */	li r4, 2
/* 801C9D14  48 00 19 BD */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C9D18  38 00 00 C1 */	li r0, 0xc1
/* 801C9D1C  90 01 00 08 */	stw r0, 8(r1)
/* 801C9D20  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C9D24  38 81 00 08 */	addi r4, r1, 8
/* 801C9D28  38 A0 00 00 */	li r5, 0
/* 801C9D2C  38 C0 00 00 */	li r6, 0
/* 801C9D30  38 E0 00 00 */	li r7, 0
/* 801C9D34  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C9D38  FC 40 08 90 */	fmr f2, f1
/* 801C9D3C  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C9D40  FC 80 18 90 */	fmr f4, f3
/* 801C9D44  39 00 00 00 */	li r8, 0
/* 801C9D48  48 0E 1C 3D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801C9D4C:
/* 801C9D4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C9D50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C9D54  7C 08 03 A6 */	mtlr r0
/* 801C9D58  38 21 00 20 */	addi r1, r1, 0x20
/* 801C9D5C  4E 80 00 20 */	blr 
