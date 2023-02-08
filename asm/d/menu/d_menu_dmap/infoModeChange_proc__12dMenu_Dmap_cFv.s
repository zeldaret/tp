lbl_801BF528:
/* 801BF528  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801BF52C  7C 08 02 A6 */	mflr r0
/* 801BF530  90 01 00 34 */	stw r0, 0x34(r1)
/* 801BF534  39 61 00 30 */	addi r11, r1, 0x30
/* 801BF538  48 1A 2C A5 */	bl _savegpr_29
/* 801BF53C  7C 7F 1B 78 */	mr r31, r3
/* 801BF540  4B FF DC 95 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BF544  7C 60 07 74 */	extsb r0, r3
/* 801BF548  54 00 10 3A */	slwi r0, r0, 2
/* 801BF54C  7C 7F 02 14 */	add r3, r31, r0
/* 801BF550  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BF554  88 9F 01 79 */	lbz r4, 0x179(r31)
/* 801BF558  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BF55C  C0 42 A6 14 */	lfs f2, lit_4313(r2)
/* 801BF560  38 A0 00 00 */	li r5, 0
/* 801BF564  48 09 52 69 */	bl scaleAnime__8CPaneMgrFsffUc
/* 801BF568  7C 7D 1B 78 */	mr r29, r3
/* 801BF56C  7F E3 FB 78 */	mr r3, r31
/* 801BF570  4B FF DC 65 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BF574  7C 60 07 74 */	extsb r0, r3
/* 801BF578  54 00 10 3A */	slwi r0, r0, 2
/* 801BF57C  7C 7F 02 14 */	add r3, r31, r0
/* 801BF580  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BF584  88 9F 01 79 */	lbz r4, 0x179(r31)
/* 801BF588  38 A0 00 FF */	li r5, 0xff
/* 801BF58C  38 C0 00 80 */	li r6, 0x80
/* 801BF590  38 E0 00 00 */	li r7, 0
/* 801BF594  48 09 62 E5 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801BF598  7C 7E 1B 78 */	mr r30, r3
/* 801BF59C  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BF5A0  54 00 10 3A */	slwi r0, r0, 2
/* 801BF5A4  7C 7F 02 14 */	add r3, r31, r0
/* 801BF5A8  80 63 00 88 */	lwz r3, 0x88(r3)
/* 801BF5AC  88 9F 01 79 */	lbz r4, 0x179(r31)
/* 801BF5B0  C0 22 A6 14 */	lfs f1, lit_4313(r2)
/* 801BF5B4  C0 42 A5 EC */	lfs f2, lit_3963(r2)
/* 801BF5B8  38 A0 00 00 */	li r5, 0
/* 801BF5BC  48 09 52 11 */	bl scaleAnime__8CPaneMgrFsffUc
/* 801BF5C0  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801BF5C4  28 00 00 01 */	cmplwi r0, 1
/* 801BF5C8  40 82 00 A0 */	bne lbl_801BF668
/* 801BF5CC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801BF5D0  28 00 00 01 */	cmplwi r0, 1
/* 801BF5D4  40 82 00 94 */	bne lbl_801BF668
/* 801BF5D8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801BF5DC  28 00 00 01 */	cmplwi r0, 1
/* 801BF5E0  40 82 00 88 */	bne lbl_801BF668
/* 801BF5E4  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 801BF5E8  48 09 5F E1 */	bl show__13CPaneMgrAlphaFv
/* 801BF5EC  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BF5F0  54 00 10 3A */	slwi r0, r0, 2
/* 801BF5F4  7C 7F 02 14 */	add r3, r31, r0
/* 801BF5F8  80 83 00 7C */	lwz r4, 0x7c(r3)
/* 801BF5FC  38 61 00 08 */	addi r3, r1, 8
/* 801BF600  80 A4 00 04 */	lwz r5, 4(r4)
/* 801BF604  38 C0 00 00 */	li r6, 0
/* 801BF608  38 E0 00 00 */	li r7, 0
/* 801BF60C  48 09 58 B1 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801BF610  80 61 00 08 */	lwz r3, 8(r1)
/* 801BF614  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801BF618  90 61 00 14 */	stw r3, 0x14(r1)
/* 801BF61C  90 01 00 18 */	stw r0, 0x18(r1)
/* 801BF620  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801BF624  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801BF628  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BF62C  54 00 10 3A */	slwi r0, r0, 2
/* 801BF630  7C 7F 02 14 */	add r3, r31, r0
/* 801BF634  80 63 00 7C */	lwz r3, 0x7c(r3)
/* 801BF638  80 83 00 04 */	lwz r4, 4(r3)
/* 801BF63C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BF640  80 63 0C C0 */	lwz r3, 0xcc0(r3)
/* 801BF644  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801BF648  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 801BF64C  EC 21 00 2A */	fadds f1, f1, f0
/* 801BF650  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801BF654  38 A0 00 00 */	li r5, 0
/* 801BF658  4B FD 5A 9D */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801BF65C  38 00 00 00 */	li r0, 0
/* 801BF660  98 1F 01 7B */	stb r0, 0x17b(r31)
/* 801BF664  98 1F 01 7C */	stb r0, 0x17c(r31)
lbl_801BF668:
/* 801BF668  7F E3 FB 78 */	mr r3, r31
/* 801BF66C  4B FF DB 9D */	bl iconMoveCalc__12dMenu_Dmap_cFv
/* 801BF670  39 61 00 30 */	addi r11, r1, 0x30
/* 801BF674  48 1A 2B B5 */	bl _restgpr_29
/* 801BF678  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801BF67C  7C 08 03 A6 */	mtlr r0
/* 801BF680  38 21 00 30 */	addi r1, r1, 0x30
/* 801BF684  4E 80 00 20 */	blr 
