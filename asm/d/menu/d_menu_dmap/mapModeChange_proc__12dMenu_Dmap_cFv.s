lbl_801BF70C:
/* 801BF70C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801BF710  7C 08 02 A6 */	mflr r0
/* 801BF714  90 01 00 34 */	stw r0, 0x34(r1)
/* 801BF718  39 61 00 30 */	addi r11, r1, 0x30
/* 801BF71C  48 1A 2A C1 */	bl _savegpr_29
/* 801BF720  7C 7F 1B 78 */	mr r31, r3
/* 801BF724  4B FF DA B1 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BF728  7C 60 07 74 */	extsb r0, r3
/* 801BF72C  54 00 10 3A */	slwi r0, r0, 2
/* 801BF730  7C 7F 02 14 */	add r3, r31, r0
/* 801BF734  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BF738  88 9F 01 79 */	lbz r4, 0x179(r31)
/* 801BF73C  C0 22 A6 14 */	lfs f1, lit_4313(r2)
/* 801BF740  C0 42 A5 EC */	lfs f2, lit_3963(r2)
/* 801BF744  38 A0 00 00 */	li r5, 0
/* 801BF748  48 09 50 85 */	bl scaleAnime__8CPaneMgrFsffUc
/* 801BF74C  7C 7D 1B 78 */	mr r29, r3
/* 801BF750  7F E3 FB 78 */	mr r3, r31
/* 801BF754  4B FF DA 81 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BF758  7C 60 07 74 */	extsb r0, r3
/* 801BF75C  54 00 10 3A */	slwi r0, r0, 2
/* 801BF760  7C 7F 02 14 */	add r3, r31, r0
/* 801BF764  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BF768  88 9F 01 79 */	lbz r4, 0x179(r31)
/* 801BF76C  38 A0 00 80 */	li r5, 0x80
/* 801BF770  38 C0 00 FF */	li r6, 0xff
/* 801BF774  38 E0 00 00 */	li r7, 0
/* 801BF778  48 09 61 01 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801BF77C  7C 7E 1B 78 */	mr r30, r3
/* 801BF780  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BF784  54 00 10 3A */	slwi r0, r0, 2
/* 801BF788  7C 7F 02 14 */	add r3, r31, r0
/* 801BF78C  80 63 00 88 */	lwz r3, 0x88(r3)
/* 801BF790  88 9F 01 79 */	lbz r4, 0x179(r31)
/* 801BF794  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BF798  C0 42 A6 14 */	lfs f2, lit_4313(r2)
/* 801BF79C  38 A0 00 00 */	li r5, 0
/* 801BF7A0  48 09 50 2D */	bl scaleAnime__8CPaneMgrFsffUc
/* 801BF7A4  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801BF7A8  28 00 00 01 */	cmplwi r0, 1
/* 801BF7AC  40 82 00 D4 */	bne lbl_801BF880
/* 801BF7B0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801BF7B4  28 00 00 01 */	cmplwi r0, 1
/* 801BF7B8  40 82 00 C8 */	bne lbl_801BF880
/* 801BF7BC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801BF7C0  28 00 00 01 */	cmplwi r0, 1
/* 801BF7C4  40 82 00 BC */	bne lbl_801BF880
/* 801BF7C8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801BF7CC  48 09 5D FD */	bl show__13CPaneMgrAlphaFv
/* 801BF7D0  7F E3 FB 78 */	mr r3, r31
/* 801BF7D4  4B FF DA 15 */	bl getDefaultCurFloorPos__12dMenu_Dmap_cFv
/* 801BF7D8  7C 60 07 74 */	extsb r0, r3
/* 801BF7DC  54 00 10 3A */	slwi r0, r0, 2
/* 801BF7E0  7C 7F 02 14 */	add r3, r31, r0
/* 801BF7E4  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801BF7E8  38 61 00 08 */	addi r3, r1, 8
/* 801BF7EC  80 A4 00 04 */	lwz r5, 4(r4)
/* 801BF7F0  38 C0 00 00 */	li r6, 0
/* 801BF7F4  38 E0 00 00 */	li r7, 0
/* 801BF7F8  48 09 56 C5 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801BF7FC  80 61 00 08 */	lwz r3, 8(r1)
/* 801BF800  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801BF804  90 61 00 14 */	stw r3, 0x14(r1)
/* 801BF808  90 01 00 18 */	stw r0, 0x18(r1)
/* 801BF80C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801BF810  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801BF814  7F E3 FB 78 */	mr r3, r31
/* 801BF818  4B FF D9 D1 */	bl getDefaultCurFloorPos__12dMenu_Dmap_cFv
/* 801BF81C  7C 60 07 74 */	extsb r0, r3
/* 801BF820  54 00 10 3A */	slwi r0, r0, 2
/* 801BF824  7C 7F 02 14 */	add r3, r31, r0
/* 801BF828  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BF82C  80 83 00 04 */	lwz r4, 4(r3)
/* 801BF830  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BF834  80 63 0C C0 */	lwz r3, 0xcc0(r3)
/* 801BF838  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801BF83C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 801BF840  EC 21 00 2A */	fadds f1, f1, f0
/* 801BF844  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801BF848  38 A0 00 01 */	li r5, 1
/* 801BF84C  4B FD 58 A9 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801BF850  38 00 00 01 */	li r0, 1
/* 801BF854  98 1F 01 7B */	stb r0, 0x17b(r31)
/* 801BF858  38 00 00 00 */	li r0, 0
/* 801BF85C  98 1F 01 7D */	stb r0, 0x17d(r31)
/* 801BF860  7F E3 FB 78 */	mr r3, r31
/* 801BF864  88 1F 01 7D */	lbz r0, 0x17d(r31)
/* 801BF868  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801BF86C  3C 80 80 3C */	lis r4, map_init_process@ha
/* 801BF870  38 04 C9 D8 */	addi r0, r4, map_init_process@l
/* 801BF874  7D 80 2A 14 */	add r12, r0, r5
/* 801BF878  48 1A 28 0D */	bl __ptmf_scall
/* 801BF87C  60 00 00 00 */	nop 
lbl_801BF880:
/* 801BF880  7F E3 FB 78 */	mr r3, r31
/* 801BF884  4B FF D9 85 */	bl iconMoveCalc__12dMenu_Dmap_cFv
/* 801BF888  39 61 00 30 */	addi r11, r1, 0x30
/* 801BF88C  48 1A 29 9D */	bl _restgpr_29
/* 801BF890  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801BF894  7C 08 03 A6 */	mtlr r0
/* 801BF898  38 21 00 30 */	addi r1, r1, 0x30
/* 801BF89C  4E 80 00 20 */	blr 
