lbl_801EC504:
/* 801EC504  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801EC508  7C 08 02 A6 */	mflr r0
/* 801EC50C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EC510  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801EC514  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801EC518  7C 7F 1B 78 */	mr r31, r3
/* 801EC51C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801EC520  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801EC524  38 63 00 9C */	addi r3, r3, 0x9c
/* 801EC528  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801EC52C  7C 9F 02 14 */	add r4, r31, r0
/* 801EC530  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EC534  38 A0 00 00 */	li r5, 0
/* 801EC538  4B E4 6A F9 */	bl getItem__17dSv_player_item_cCFib
/* 801EC53C  88 1F 06 B0 */	lbz r0, 0x6b0(r31)
/* 801EC540  28 00 00 00 */	cmplwi r0, 0
/* 801EC544  40 82 01 F8 */	bne lbl_801EC73C
/* 801EC548  88 1F 06 B1 */	lbz r0, 0x6b1(r31)
/* 801EC54C  28 00 00 03 */	cmplwi r0, 3
/* 801EC550  41 82 01 EC */	beq lbl_801EC73C
/* 801EC554  28 00 00 02 */	cmplwi r0, 2
/* 801EC558  41 82 01 E4 */	beq lbl_801EC73C
/* 801EC55C  80 9F 03 70 */	lwz r4, 0x370(r31)
/* 801EC560  88 04 00 E0 */	lbz r0, 0xe0(r4)
/* 801EC564  28 00 00 00 */	cmplwi r0, 0
/* 801EC568  40 82 01 D4 */	bne lbl_801EC73C
/* 801EC56C  3C 80 80 3E */	lis r4, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801EC570  38 84 D2 E8 */	addi r4, r4, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801EC574  80 84 00 34 */	lwz r4, 0x34(r4)
/* 801EC578  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 801EC57C  41 82 00 44 */	beq lbl_801EC5C0
/* 801EC580  80 1F 06 2C */	lwz r0, 0x62c(r31)
/* 801EC584  28 00 00 00 */	cmplwi r0, 0
/* 801EC588  40 82 00 38 */	bne lbl_801EC5C0
/* 801EC58C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EC590  28 00 00 FF */	cmplwi r0, 0xff
/* 801EC594  41 82 00 2C */	beq lbl_801EC5C0
/* 801EC598  3B C0 00 00 */	li r30, 0
lbl_801EC59C:
/* 801EC59C  7F E3 FB 78 */	mr r3, r31
/* 801EC5A0  7F C4 F3 78 */	mr r4, r30
/* 801EC5A4  48 00 19 89 */	bl setSelectItemForce__12dMenu_Ring_cFi
/* 801EC5A8  3B DE 00 01 */	addi r30, r30, 1
/* 801EC5AC  2C 1E 00 04 */	cmpwi r30, 4
/* 801EC5B0  41 80 FF EC */	blt lbl_801EC59C
/* 801EC5B4  7F E3 FB 78 */	mr r3, r31
/* 801EC5B8  48 00 01 9D */	bl setMixItem__12dMenu_Ring_cFv
/* 801EC5BC  48 00 01 80 */	b lbl_801EC73C
lbl_801EC5C0:
/* 801EC5C0  54 85 05 6B */	rlwinm. r5, r4, 0, 0x15, 0x15
/* 801EC5C4  41 82 00 98 */	beq lbl_801EC65C
/* 801EC5C8  80 1F 06 2C */	lwz r0, 0x62c(r31)
/* 801EC5CC  28 00 00 00 */	cmplwi r0, 0
/* 801EC5D0  40 82 00 8C */	bne lbl_801EC65C
/* 801EC5D4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EC5D8  28 00 00 FF */	cmplwi r0, 0xff
/* 801EC5DC  41 82 00 80 */	beq lbl_801EC65C
/* 801EC5E0  3B C0 00 00 */	li r30, 0
lbl_801EC5E4:
/* 801EC5E4  7F E3 FB 78 */	mr r3, r31
/* 801EC5E8  7F C4 F3 78 */	mr r4, r30
/* 801EC5EC  48 00 19 41 */	bl setSelectItemForce__12dMenu_Ring_cFi
/* 801EC5F0  3B DE 00 01 */	addi r30, r30, 1
/* 801EC5F4  2C 1E 00 04 */	cmpwi r30, 4
/* 801EC5F8  41 80 FF EC */	blt lbl_801EC5E4
/* 801EC5FC  38 00 00 00 */	li r0, 0
/* 801EC600  98 1F 06 B3 */	stb r0, 0x6b3(r31)
/* 801EC604  7F E3 FB 78 */	mr r3, r31
/* 801EC608  88 9F 06 B3 */	lbz r4, 0x6b3(r31)
/* 801EC60C  48 00 20 31 */	bl checkCombineBomb__12dMenu_Ring_cFi
/* 801EC610  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801EC614  40 82 01 28 */	bne lbl_801EC73C
/* 801EC618  7F E3 FB 78 */	mr r3, r31
/* 801EC61C  4B FF F4 F5 */	bl setItem__12dMenu_Ring_cFv
/* 801EC620  80 7F 03 70 */	lwz r3, 0x370(r31)
/* 801EC624  88 03 00 E0 */	lbz r0, 0xe0(r3)
/* 801EC628  28 00 00 00 */	cmplwi r0, 0
/* 801EC62C  40 82 01 10 */	bne lbl_801EC73C
/* 801EC630  38 00 00 00 */	li r0, 0
/* 801EC634  98 1F 06 B0 */	stb r0, 0x6b0(r31)
/* 801EC638  7F E3 FB 78 */	mr r3, r31
/* 801EC63C  88 1F 06 B0 */	lbz r0, 0x6b0(r31)
/* 801EC640  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801EC644  3C 80 80 3C */	lis r4, stick_init@ha /* 0x803BDEAC@ha */
/* 801EC648  38 04 DE AC */	addi r0, r4, stick_init@l /* 0x803BDEAC@l */
/* 801EC64C  7D 80 2A 14 */	add r12, r0, r5
/* 801EC650  48 17 5A 35 */	bl __ptmf_scall
/* 801EC654  60 00 00 00 */	nop 
/* 801EC658  48 00 00 E4 */	b lbl_801EC73C
lbl_801EC65C:
/* 801EC65C  54 84 05 29 */	rlwinm. r4, r4, 0, 0x14, 0x14
/* 801EC660  41 82 00 98 */	beq lbl_801EC6F8
/* 801EC664  80 1F 06 2C */	lwz r0, 0x62c(r31)
/* 801EC668  28 00 00 00 */	cmplwi r0, 0
/* 801EC66C  40 82 00 8C */	bne lbl_801EC6F8
/* 801EC670  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EC674  28 00 00 FF */	cmplwi r0, 0xff
/* 801EC678  41 82 00 80 */	beq lbl_801EC6F8
/* 801EC67C  3B C0 00 00 */	li r30, 0
lbl_801EC680:
/* 801EC680  7F E3 FB 78 */	mr r3, r31
/* 801EC684  7F C4 F3 78 */	mr r4, r30
/* 801EC688  48 00 18 A5 */	bl setSelectItemForce__12dMenu_Ring_cFi
/* 801EC68C  3B DE 00 01 */	addi r30, r30, 1
/* 801EC690  2C 1E 00 04 */	cmpwi r30, 4
/* 801EC694  41 80 FF EC */	blt lbl_801EC680
/* 801EC698  38 00 00 01 */	li r0, 1
/* 801EC69C  98 1F 06 B3 */	stb r0, 0x6b3(r31)
/* 801EC6A0  7F E3 FB 78 */	mr r3, r31
/* 801EC6A4  88 9F 06 B3 */	lbz r4, 0x6b3(r31)
/* 801EC6A8  48 00 1F 95 */	bl checkCombineBomb__12dMenu_Ring_cFi
/* 801EC6AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801EC6B0  40 82 00 8C */	bne lbl_801EC73C
/* 801EC6B4  7F E3 FB 78 */	mr r3, r31
/* 801EC6B8  4B FF F4 59 */	bl setItem__12dMenu_Ring_cFv
/* 801EC6BC  80 7F 03 70 */	lwz r3, 0x370(r31)
/* 801EC6C0  88 03 00 E0 */	lbz r0, 0xe0(r3)
/* 801EC6C4  28 00 00 00 */	cmplwi r0, 0
/* 801EC6C8  40 82 00 74 */	bne lbl_801EC73C
/* 801EC6CC  38 00 00 00 */	li r0, 0
/* 801EC6D0  98 1F 06 B0 */	stb r0, 0x6b0(r31)
/* 801EC6D4  7F E3 FB 78 */	mr r3, r31
/* 801EC6D8  88 1F 06 B0 */	lbz r0, 0x6b0(r31)
/* 801EC6DC  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801EC6E0  3C 80 80 3C */	lis r4, stick_init@ha /* 0x803BDEAC@ha */
/* 801EC6E4  38 04 DE AC */	addi r0, r4, stick_init@l /* 0x803BDEAC@l */
/* 801EC6E8  7D 80 2A 14 */	add r12, r0, r5
/* 801EC6EC  48 17 59 99 */	bl __ptmf_scall
/* 801EC6F0  60 00 00 00 */	nop 
/* 801EC6F4  48 00 00 48 */	b lbl_801EC73C
lbl_801EC6F8:
/* 801EC6F8  28 05 00 00 */	cmplwi r5, 0
/* 801EC6FC  40 82 00 0C */	bne lbl_801EC708
/* 801EC700  28 04 00 00 */	cmplwi r4, 0
/* 801EC704  41 82 00 38 */	beq lbl_801EC73C
lbl_801EC708:
/* 801EC708  38 00 00 4A */	li r0, 0x4a
/* 801EC70C  90 01 00 08 */	stw r0, 8(r1)
/* 801EC710  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801EC714  38 81 00 08 */	addi r4, r1, 8
/* 801EC718  38 A0 00 00 */	li r5, 0
/* 801EC71C  38 C0 00 00 */	li r6, 0
/* 801EC720  38 E0 00 00 */	li r7, 0
/* 801EC724  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EC728  FC 40 08 90 */	fmr f2, f1
/* 801EC72C  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801EC730  FC 80 18 90 */	fmr f4, f3
/* 801EC734  39 00 00 00 */	li r8, 0
/* 801EC738  48 0B F2 4D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801EC73C:
/* 801EC73C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801EC740  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801EC744  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801EC748  7C 08 03 A6 */	mtlr r0
/* 801EC74C  38 21 00 20 */	addi r1, r1, 0x20
/* 801EC750  4E 80 00 20 */	blr 
