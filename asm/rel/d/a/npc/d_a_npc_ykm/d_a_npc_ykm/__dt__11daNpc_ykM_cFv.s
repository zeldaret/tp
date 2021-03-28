lbl_80B534EC:
/* 80B534EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B534F0  7C 08 02 A6 */	mflr r0
/* 80B534F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B534F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B534FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B53500  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B53504  7C 9F 23 78 */	mr r31, r4
/* 80B53508  41 82 01 74 */	beq lbl_80B5367C
/* 80B5350C  3C 60 80 B6 */	lis r3, __vt__11daNpc_ykM_c@ha
/* 80B53510  38 03 EC 50 */	addi r0, r3, __vt__11daNpc_ykM_c@l
/* 80B53514  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B53518  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B5351C  28 03 00 00 */	cmplwi r3, 0
/* 80B53520  41 82 00 08 */	beq lbl_80B53528
/* 80B53524  4B 4B DD EC */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B53528:
/* 80B53528  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80B5352C  28 03 00 00 */	cmplwi r3, 0
/* 80B53530  41 82 00 08 */	beq lbl_80B53538
/* 80B53534  4B 4B DD DC */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B53538:
/* 80B53538  80 7E 0E 44 */	lwz r3, 0xe44(r30)
/* 80B5353C  28 03 00 00 */	cmplwi r3, 0
/* 80B53540  41 82 00 08 */	beq lbl_80B53548
/* 80B53544  4B 4B DD CC */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B53548:
/* 80B53548  7F C3 F3 78 */	mr r3, r30
/* 80B5354C  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 80B53550  54 00 10 3A */	slwi r0, r0, 2
/* 80B53554  3C 80 80 B6 */	lis r4, l_loadResPtrnList@ha
/* 80B53558  38 84 DB B4 */	addi r4, r4, l_loadResPtrnList@l
/* 80B5355C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B53560  3C A0 80 B6 */	lis r5, l_resNameList@ha
/* 80B53564  38 A5 DB 88 */	addi r5, r5, l_resNameList@l
/* 80B53568  4B 5F 4F 44 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80B5356C  88 1E 15 7B */	lbz r0, 0x157b(r30)
/* 80B53570  28 00 00 00 */	cmplwi r0, 0
/* 80B53574  41 82 00 18 */	beq lbl_80B5358C
/* 80B53578  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B5357C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B53580  80 63 00 00 */	lwz r3, 0(r3)
/* 80B53584  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B53588  4B 75 C2 FC */	b subBgmStop__8Z2SeqMgrFv
lbl_80B5358C:
/* 80B5358C  38 60 00 54 */	li r3, 0x54
/* 80B53590  4B 5F 95 9C */	b daNpcT_offTmpBit__FUl
/* 80B53594  34 1E 14 B8 */	addic. r0, r30, 0x14b8
/* 80B53598  41 82 00 10 */	beq lbl_80B535A8
/* 80B5359C  3C 60 80 B6 */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80B535A0  38 03 EC 44 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80B535A4  90 1E 14 DC */	stw r0, 0x14dc(r30)
lbl_80B535A8:
/* 80B535A8  38 7E 14 78 */	addi r3, r30, 0x1478
/* 80B535AC  3C 80 80 B6 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80B535B0  38 84 C6 90 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 80B535B4  38 A0 00 08 */	li r5, 8
/* 80B535B8  38 C0 00 08 */	li r6, 8
/* 80B535BC  4B 80 E7 2C */	b __destroy_arr
/* 80B535C0  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80B535C4  3C 80 80 B6 */	lis r4, __dt__8dCcD_SphFv@ha
/* 80B535C8  38 84 C5 C4 */	addi r4, r4, __dt__8dCcD_SphFv@l
/* 80B535CC  38 A0 01 38 */	li r5, 0x138
/* 80B535D0  38 C0 00 04 */	li r6, 4
/* 80B535D4  4B 80 E7 14 */	b __destroy_arr
/* 80B535D8  34 1E 0E 58 */	addic. r0, r30, 0xe58
/* 80B535DC  41 82 00 84 */	beq lbl_80B53660
/* 80B535E0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B535E4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B535E8  90 7E 0E 94 */	stw r3, 0xe94(r30)
/* 80B535EC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B535F0  90 1E 0F 78 */	stw r0, 0xf78(r30)
/* 80B535F4  38 03 00 84 */	addi r0, r3, 0x84
/* 80B535F8  90 1E 0F 90 */	stw r0, 0xf90(r30)
/* 80B535FC  34 1E 0F 5C */	addic. r0, r30, 0xf5c
/* 80B53600  41 82 00 54 */	beq lbl_80B53654
/* 80B53604  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B53608  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B5360C  90 7E 0F 78 */	stw r3, 0xf78(r30)
/* 80B53610  38 03 00 58 */	addi r0, r3, 0x58
/* 80B53614  90 1E 0F 90 */	stw r0, 0xf90(r30)
/* 80B53618  34 1E 0F 7C */	addic. r0, r30, 0xf7c
/* 80B5361C  41 82 00 10 */	beq lbl_80B5362C
/* 80B53620  3C 60 80 B6 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B53624  38 03 EC 38 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B53628  90 1E 0F 90 */	stw r0, 0xf90(r30)
lbl_80B5362C:
/* 80B5362C  34 1E 0F 5C */	addic. r0, r30, 0xf5c
/* 80B53630  41 82 00 24 */	beq lbl_80B53654
/* 80B53634  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B53638  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B5363C  90 1E 0F 78 */	stw r0, 0xf78(r30)
/* 80B53640  34 1E 0F 5C */	addic. r0, r30, 0xf5c
/* 80B53644  41 82 00 10 */	beq lbl_80B53654
/* 80B53648  3C 60 80 B6 */	lis r3, __vt__8cM3dGAab@ha
/* 80B5364C  38 03 EC 2C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B53650  90 1E 0F 74 */	stw r0, 0xf74(r30)
lbl_80B53654:
/* 80B53654  38 7E 0E 58 */	addi r3, r30, 0xe58
/* 80B53658  38 80 00 00 */	li r4, 0
/* 80B5365C  4B 53 0A 88 */	b __dt__12dCcD_GObjInfFv
lbl_80B53660:
/* 80B53660  7F C3 F3 78 */	mr r3, r30
/* 80B53664  38 80 00 00 */	li r4, 0
/* 80B53668  48 00 8B 5D */	bl __dt__8daNpcT_cFv
/* 80B5366C  7F E0 07 35 */	extsh. r0, r31
/* 80B53670  40 81 00 0C */	ble lbl_80B5367C
/* 80B53674  7F C3 F3 78 */	mr r3, r30
/* 80B53678  4B 77 B6 C4 */	b __dl__FPv
lbl_80B5367C:
/* 80B5367C  7F C3 F3 78 */	mr r3, r30
/* 80B53680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B53684  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B53688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5368C  7C 08 03 A6 */	mtlr r0
/* 80B53690  38 21 00 10 */	addi r1, r1, 0x10
/* 80B53694  4E 80 00 20 */	blr 
