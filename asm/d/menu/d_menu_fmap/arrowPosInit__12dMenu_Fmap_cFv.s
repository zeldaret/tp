lbl_801CD460:
/* 801CD460  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801CD464  7C 08 02 A6 */	mflr r0
/* 801CD468  90 01 00 44 */	stw r0, 0x44(r1)
/* 801CD46C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801CD470  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801CD474  7C 7E 1B 78 */	mr r30, r3
/* 801CD478  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801CD47C  28 00 00 03 */	cmplwi r0, 3
/* 801CD480  40 82 00 10 */	bne lbl_801CD490
/* 801CD484  38 80 00 00 */	li r4, 0
/* 801CD488  48 00 01 45 */	bl tableArrowPosInit__12dMenu_Fmap_cFb
/* 801CD48C  48 00 01 28 */	b lbl_801CD5B4
lbl_801CD490:
/* 801CD490  28 00 00 1B */	cmplwi r0, 0x1b
/* 801CD494  40 82 00 0C */	bne lbl_801CD4A0
/* 801CD498  48 00 03 7D */	bl howlArrowPosInit__12dMenu_Fmap_cFv
/* 801CD49C  48 00 01 18 */	b lbl_801CD5B4
lbl_801CD4A0:
/* 801CD4A0  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801CD4A4  8B E3 12 27 */	lbz r31, 0x1227(r3)
/* 801CD4A8  4B E6 19 B9 */	bl dComIfGp_getNowLevel__Fv
/* 801CD4AC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801CD4B0  38 1F 00 01 */	addi r0, r31, 1
/* 801CD4B4  7C 00 18 00 */	cmpw r0, r3
/* 801CD4B8  40 82 00 DC */	bne lbl_801CD594
/* 801CD4BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801CD4C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801CD4C4  88 03 00 7C */	lbz r0, 0x7c(r3)
/* 801CD4C8  28 00 00 00 */	cmplwi r0, 0
/* 801CD4CC  41 82 00 3C */	beq lbl_801CD508
/* 801CD4D0  38 61 00 20 */	addi r3, r1, 0x20
/* 801CD4D4  4B E7 19 89 */	bl getMapPlayerPos__10dMapInfo_nFv
/* 801CD4D8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801CD4DC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801CD4E0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801CD4E4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801CD4E8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801CD4EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801CD4F0  80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 801CD4F4  4B FF 91 39 */	bl dMenuFmap_getStartStageName__FPv
/* 801CD4F8  7C 64 1B 78 */	mr r4, r3
/* 801CD4FC  38 61 00 18 */	addi r3, r1, 0x18
/* 801CD500  48 19 B6 2D */	bl strcpy
/* 801CD504  48 00 00 28 */	b lbl_801CD52C
lbl_801CD508:
/* 801CD508  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 801CD50C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801CD510  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 801CD514  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801CD518  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 801CD51C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801CD520  38 83 00 72 */	addi r4, r3, 0x72
/* 801CD524  38 61 00 18 */	addi r3, r1, 0x18
/* 801CD528  48 19 B6 05 */	bl strcpy
lbl_801CD52C:
/* 801CD52C  C0 42 A7 28 */	lfs f2, lit_4158(r2)
/* 801CD530  88 1E 03 00 */	lbz r0, 0x300(r30)
/* 801CD534  28 00 00 17 */	cmplwi r0, 0x17
/* 801CD538  40 82 00 3C */	bne lbl_801CD574
/* 801CD53C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801CD540  FC 20 10 90 */	fmr f1, f2
/* 801CD544  38 81 00 10 */	addi r4, r1, 0x10
/* 801CD548  38 A1 00 08 */	addi r5, r1, 8
/* 801CD54C  48 00 3A 31 */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801CD550  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801CD554  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801CD558  C0 42 A7 68 */	lfs f2, lit_7300(r2)
/* 801CD55C  38 81 00 14 */	addi r4, r1, 0x14
/* 801CD560  38 A1 00 0C */	addi r5, r1, 0xc
/* 801CD564  48 00 3A 19 */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801CD568  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801CD56C  C0 01 00 08 */	lfs f0, 8(r1)
/* 801CD570  EC 41 00 28 */	fsubs f2, f1, f0
lbl_801CD574:
/* 801CD574  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801CD578  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801CD57C  38 A1 00 18 */	addi r5, r1, 0x18
/* 801CD580  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 801CD584  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 801CD588  EC 40 10 2A */	fadds f2, f0, f2
/* 801CD58C  48 00 83 6D */	bl setArrowPos3D__18dMenu_Fmap2DBack_cFUcPCcff
/* 801CD590  48 00 00 24 */	b lbl_801CD5B4
lbl_801CD594:
/* 801CD594  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801CD598  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801CD59C  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 801CD5A0  7C A3 02 14 */	add r5, r3, r0
/* 801CD5A4  C0 45 10 24 */	lfs f2, 0x1024(r5)
/* 801CD5A8  C0 25 10 04 */	lfs f1, 0x1004(r5)
/* 801CD5AC  38 A0 00 00 */	li r5, 0
/* 801CD5B0  48 00 83 49 */	bl setArrowPos3D__18dMenu_Fmap2DBack_cFUcPCcff
lbl_801CD5B4:
/* 801CD5B4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801CD5B8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801CD5BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801CD5C0  7C 08 03 A6 */	mtlr r0
/* 801CD5C4  38 21 00 40 */	addi r1, r1, 0x40
/* 801CD5C8  4E 80 00 20 */	blr 
