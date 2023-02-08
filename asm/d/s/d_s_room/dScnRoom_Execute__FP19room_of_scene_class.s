lbl_8025B564:
/* 8025B564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025B568  7C 08 02 A6 */	mflr r0
/* 8025B56C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025B570  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025B574  93 C1 00 08 */	stw r30, 8(r1)
/* 8025B578  7C 7F 1B 78 */	mr r31, r3
/* 8025B57C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8025B580  3C 80 80 3F */	lis r4, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8025B584  38 84 60 94 */	addi r4, r4, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8025B588  1C 00 04 04 */	mulli r0, r0, 0x404
/* 8025B58C  7F C4 02 14 */	add r30, r4, r0
/* 8025B590  8C 9E 03 F4 */	lbzu r4, 0x3f4(r30)
/* 8025B594  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 8025B598  41 82 00 1C */	beq lbl_8025B5B4
/* 8025B59C  54 80 07 FA */	rlwinm r0, r4, 0, 0x1f, 0x1d
/* 8025B5A0  98 1E 00 00 */	stb r0, 0(r30)
/* 8025B5A4  88 1E 00 00 */	lbz r0, 0(r30)
/* 8025B5A8  60 00 00 01 */	ori r0, r0, 1
/* 8025B5AC  98 1E 00 00 */	stb r0, 0(r30)
/* 8025B5B0  48 00 00 A8 */	b lbl_8025B658
lbl_8025B5B4:
/* 8025B5B4  4B FF FD 39 */	bl objectSetCheck__FP19room_of_scene_class
/* 8025B5B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025B5BC  41 82 00 9C */	beq lbl_8025B658
/* 8025B5C0  88 1E 00 00 */	lbz r0, 0(r30)
/* 8025B5C4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8025B5C8  41 82 00 10 */	beq lbl_8025B5D8
/* 8025B5CC  7F E3 FB 78 */	mr r3, r31
/* 8025B5D0  4B DC 37 6D */	bl fopScnM_DeleteReq__FP11scene_class
/* 8025B5D4  48 00 00 84 */	b lbl_8025B658
lbl_8025B5D8:
/* 8025B5D8  88 1F 01 D4 */	lbz r0, 0x1d4(r31)
/* 8025B5DC  7C 00 07 75 */	extsb. r0, r0
/* 8025B5E0  40 80 00 78 */	bge lbl_8025B658
/* 8025B5E4  88 1F 01 D5 */	lbz r0, 0x1d5(r31)
/* 8025B5E8  28 00 00 00 */	cmplwi r0, 0
/* 8025B5EC  41 82 00 6C */	beq lbl_8025B658
/* 8025B5F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025B5F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025B5F8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8025B5FC  28 00 00 00 */	cmplwi r0, 0
/* 8025B600  40 82 00 58 */	bne lbl_8025B658
/* 8025B604  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 8025B608  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8025B60C  7C 00 07 74 */	extsb r0, r0
/* 8025B610  7C 03 00 00 */	cmpw r3, r0
/* 8025B614  40 82 00 44 */	bne lbl_8025B658
/* 8025B618  80 6D 87 C0 */	lwz r3, g_fpcNd_type(r13)
/* 8025B61C  80 9F 00 B4 */	lwz r4, 0xb4(r31)
/* 8025B620  4B DC 50 2D */	bl fpcBs_Is_JustOfType__Fii
/* 8025B624  2C 03 00 00 */	cmpwi r3, 0
/* 8025B628  41 82 00 0C */	beq lbl_8025B634
/* 8025B62C  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 8025B630  48 00 00 08 */	b lbl_8025B638
lbl_8025B634:
/* 8025B634  38 60 FF FF */	li r3, -1
lbl_8025B638:
/* 8025B638  4B FF FB 5D */	bl isCreating__FUi
/* 8025B63C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025B640  41 82 00 10 */	beq lbl_8025B650
/* 8025B644  38 00 00 02 */	li r0, 2
/* 8025B648  98 0D 8B A5 */	stb r0, pauseTimer__9dScnPly_c+0x1(r13)
/* 8025B64C  48 00 00 0C */	b lbl_8025B658
lbl_8025B650:
/* 8025B650  38 00 00 00 */	li r0, 0
/* 8025B654  98 1F 01 D5 */	stb r0, 0x1d5(r31)
lbl_8025B658:
/* 8025B658  38 60 00 01 */	li r3, 1
/* 8025B65C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025B660  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025B664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025B668  7C 08 03 A6 */	mtlr r0
/* 8025B66C  38 21 00 10 */	addi r1, r1, 0x10
/* 8025B670  4E 80 00 20 */	blr 
