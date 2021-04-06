lbl_801CD5CC:
/* 801CD5CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801CD5D0  7C 08 02 A6 */	mflr r0
/* 801CD5D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801CD5D8  39 61 00 30 */	addi r11, r1, 0x30
/* 801CD5DC  48 19 4B FD */	bl _savegpr_28
/* 801CD5E0  7C 7E 1B 78 */	mr r30, r3
/* 801CD5E4  7C 9F 23 78 */	mr r31, r4
/* 801CD5E8  3B 80 FF FF */	li r28, -1
/* 801CD5EC  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801CD5F0  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801CD5F4  88 03 00 E1 */	lbz r0, 0xe1(r3)
/* 801CD5F8  2C 00 00 02 */	cmpwi r0, 2
/* 801CD5FC  41 82 00 9C */	beq lbl_801CD698
/* 801CD600  40 80 00 10 */	bge lbl_801CD610
/* 801CD604  2C 00 00 01 */	cmpwi r0, 1
/* 801CD608  40 80 00 9C */	bge lbl_801CD6A4
/* 801CD60C  48 00 00 A0 */	b lbl_801CD6AC
lbl_801CD610:
/* 801CD610  2C 00 00 04 */	cmpwi r0, 4
/* 801CD614  40 80 00 98 */	bge lbl_801CD6AC
/* 801CD618  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801CD61C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801CD620  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 801CD624  7F A3 EB 78 */	mr r3, r29
/* 801CD628  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801CD62C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801CD630  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 801CD634  4B E6 73 89 */	bl isEventBit__11dSv_event_cCFUs
/* 801CD638  2C 03 00 00 */	cmpwi r3, 0
/* 801CD63C  41 82 00 20 */	beq lbl_801CD65C
/* 801CD640  7F A3 EB 78 */	mr r3, r29
/* 801CD644  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801CD648  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801CD64C  A0 84 00 CE */	lhz r4, 0xce(r4)
/* 801CD650  4B E6 73 6D */	bl isEventBit__11dSv_event_cCFUs
/* 801CD654  2C 03 00 00 */	cmpwi r3, 0
/* 801CD658  40 82 00 34 */	bne lbl_801CD68C
lbl_801CD65C:
/* 801CD65C  3B 80 00 00 */	li r28, 0
/* 801CD660  7F A3 EB 78 */	mr r3, r29
/* 801CD664  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801CD668  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801CD66C  A0 84 02 10 */	lhz r4, 0x210(r4)
/* 801CD670  4B E6 73 4D */	bl isEventBit__11dSv_event_cCFUs
/* 801CD674  2C 03 00 00 */	cmpwi r3, 0
/* 801CD678  40 82 00 0C */	bne lbl_801CD684
/* 801CD67C  3B A0 00 4F */	li r29, 0x4f
/* 801CD680  48 00 00 2C */	b lbl_801CD6AC
lbl_801CD684:
/* 801CD684  3B A0 00 33 */	li r29, 0x33
/* 801CD688  48 00 00 24 */	b lbl_801CD6AC
lbl_801CD68C:
/* 801CD68C  3B 80 00 01 */	li r28, 1
/* 801CD690  3B A0 00 2A */	li r29, 0x2a
/* 801CD694  48 00 00 18 */	b lbl_801CD6AC
lbl_801CD698:
/* 801CD698  3B 80 00 02 */	li r28, 2
/* 801CD69C  3B A0 00 55 */	li r29, 0x55
/* 801CD6A0  48 00 00 0C */	b lbl_801CD6AC
lbl_801CD6A4:
/* 801CD6A4  3B 80 00 03 */	li r28, 3
/* 801CD6A8  3B A0 00 5F */	li r29, 0x5f
lbl_801CD6AC:
/* 801CD6AC  38 7E 02 50 */	addi r3, r30, 0x250
/* 801CD6B0  57 80 10 3A */	slwi r0, r28, 2
/* 801CD6B4  3C 80 80 3C */	lis r4, stage_name_7304@ha /* 0x803BD63C@ha */
/* 801CD6B8  38 84 D6 3C */	addi r4, r4, stage_name_7304@l /* 0x803BD63C@l */
/* 801CD6BC  7C 84 00 2E */	lwzx r4, r4, r0
/* 801CD6C0  48 19 B4 6D */	bl strcpy
/* 801CD6C4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801CD6C8  41 82 00 70 */	beq lbl_801CD738
/* 801CD6CC  7F C3 F3 78 */	mr r3, r30
/* 801CD6D0  38 80 00 05 */	li r4, 5
/* 801CD6D4  7F A5 EB 78 */	mr r5, r29
/* 801CD6D8  38 C1 00 0C */	addi r6, r1, 0xc
/* 801CD6DC  38 E1 00 08 */	addi r7, r1, 8
/* 801CD6E0  4B FF F9 21 */	bl searchIcon__12dMenu_Fmap_cFUciPfPf
/* 801CD6E4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801CD6E8  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801CD6EC  FC 40 08 90 */	fmr f2, f1
/* 801CD6F0  38 81 00 18 */	addi r4, r1, 0x18
/* 801CD6F4  38 A1 00 10 */	addi r5, r1, 0x10
/* 801CD6F8  48 00 38 85 */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801CD6FC  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801CD700  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801CD704  C0 42 A7 6C */	lfs f2, lit_7348(r2)
/* 801CD708  38 81 00 1C */	addi r4, r1, 0x1c
/* 801CD70C  38 A1 00 14 */	addi r5, r1, 0x14
/* 801CD710  48 00 38 6D */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801CD714  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801CD718  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801CD71C  C0 61 00 08 */	lfs f3, 8(r1)
/* 801CD720  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801CD724  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801CD728  EC 02 00 28 */	fsubs f0, f2, f0
/* 801CD72C  EC 43 00 2A */	fadds f2, f3, f0
/* 801CD730  48 00 84 89 */	bl setArrowPosAxis__18dMenu_Fmap2DBack_cFff
/* 801CD734  48 00 00 24 */	b lbl_801CD758
lbl_801CD738:
/* 801CD738  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801CD73C  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801CD740  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 801CD744  7C A3 02 14 */	add r5, r3, r0
/* 801CD748  C0 45 10 24 */	lfs f2, 0x1024(r5)
/* 801CD74C  C0 25 10 04 */	lfs f1, 0x1004(r5)
/* 801CD750  38 BE 02 50 */	addi r5, r30, 0x250
/* 801CD754  48 00 81 A5 */	bl setArrowPos3D__18dMenu_Fmap2DBack_cFUcPCcff
lbl_801CD758:
/* 801CD758  39 61 00 30 */	addi r11, r1, 0x30
/* 801CD75C  48 19 4A C9 */	bl _restgpr_28
/* 801CD760  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801CD764  7C 08 03 A6 */	mtlr r0
/* 801CD768  38 21 00 30 */	addi r1, r1, 0x30
/* 801CD76C  4E 80 00 20 */	blr 
