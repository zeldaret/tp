lbl_80CBA468:
/* 80CBA468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBA46C  7C 08 02 A6 */	mflr r0
/* 80CBA470  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBA474  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBA478  7C 7F 1B 78 */	mr r31, r3
/* 80CBA47C  3C 60 80 CC */	lis r3, struct_80CBC5CC+0x0@ha /* 0x80CBC5CC@ha */
/* 80CBA480  38 83 C5 CC */	addi r4, r3, struct_80CBC5CC+0x0@l /* 0x80CBC5CC@l */
/* 80CBA484  88 04 00 00 */	lbz r0, 0(r4)
/* 80CBA488  7C 00 07 75 */	extsb. r0, r0
/* 80CBA48C  40 82 00 20 */	bne lbl_80CBA4AC
/* 80CBA490  3C 60 80 CC */	lis r3, d_a_obj_rgate__stringBase0@ha /* 0x80CBC458@ha */
/* 80CBA494  38 63 C4 58 */	addi r3, r3, d_a_obj_rgate__stringBase0@l /* 0x80CBC458@l */
/* 80CBA498  38 03 00 0A */	addi r0, r3, 0xa
/* 80CBA49C  3C 60 80 CC */	lis r3, l_evName@ha /* 0x80CBC5C8@ha */
/* 80CBA4A0  90 03 C5 C8 */	stw r0, l_evName@l(r3)  /* 0x80CBC5C8@l */
/* 80CBA4A4  38 00 00 01 */	li r0, 1
/* 80CBA4A8  98 04 00 00 */	stb r0, 0(r4)
lbl_80CBA4AC:
/* 80CBA4AC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CBA4B0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CBA4B4  28 04 00 FF */	cmplwi r4, 0xff
/* 80CBA4B8  41 82 00 90 */	beq lbl_80CBA548
/* 80CBA4BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBA4C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBA4C4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CBA4C8  7C 05 07 74 */	extsb r5, r0
/* 80CBA4CC  4B 37 AE 95 */	bl isSwitch__10dSv_info_cCFii
/* 80CBA4D0  2C 03 00 00 */	cmpwi r3, 0
/* 80CBA4D4  40 82 00 74 */	bne lbl_80CBA548
/* 80CBA4D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBA4DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBA4E0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80CBA4E4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80CBA4E8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80CBA4EC  A0 84 00 88 */	lhz r4, 0x88(r4)
/* 80CBA4F0  4B 37 A4 CD */	bl isEventBit__11dSv_event_cCFUs
/* 80CBA4F4  2C 03 00 00 */	cmpwi r3, 0
/* 80CBA4F8  40 82 00 50 */	bne lbl_80CBA548
/* 80CBA4FC  3C 60 80 CC */	lis r3, l_arcName@ha /* 0x80CBC4C0@ha */
/* 80CBA500  80 03 C4 C0 */	lwz r0, l_arcName@l(r3)  /* 0x80CBC4C0@l */
/* 80CBA504  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80CBA508  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBA50C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBA510  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CBA514  7F E4 FB 78 */	mr r4, r31
/* 80CBA518  3C A0 80 CC */	lis r5, l_evName@ha /* 0x80CBC5C8@ha */
/* 80CBA51C  38 A5 C5 C8 */	addi r5, r5, l_evName@l /* 0x80CBC5C8@l */
/* 80CBA520  80 A5 00 00 */	lwz r5, 0(r5)
/* 80CBA524  38 C0 00 FF */	li r6, 0xff
/* 80CBA528  4B 38 D2 31 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80CBA52C  B0 7F 0B A2 */	sth r3, 0xba2(r31)
/* 80CBA530  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CBA534  54 00 66 3E */	rlwinm r0, r0, 0xc, 0x18, 0x1f
/* 80CBA538  98 1F 0B A1 */	stb r0, 0xba1(r31)
/* 80CBA53C  38 00 00 00 */	li r0, 0
/* 80CBA540  98 1F 0B A0 */	stb r0, 0xba0(r31)
/* 80CBA544  48 00 00 1C */	b lbl_80CBA560
lbl_80CBA548:
/* 80CBA548  38 00 FF FF */	li r0, -1
/* 80CBA54C  B0 1F 0B A2 */	sth r0, 0xba2(r31)
/* 80CBA550  38 00 00 FF */	li r0, 0xff
/* 80CBA554  98 1F 0B A1 */	stb r0, 0xba1(r31)
/* 80CBA558  38 00 00 02 */	li r0, 2
/* 80CBA55C  98 1F 0B A0 */	stb r0, 0xba0(r31)
lbl_80CBA560:
/* 80CBA560  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80CBA564  3C 60 80 CC */	lis r3, lit_4114@ha /* 0x80CBC400@ha */
/* 80CBA568  C0 23 C4 00 */	lfs f1, lit_4114@l(r3)  /* 0x80CBC400@l */
/* 80CBA56C  EC 00 08 2A */	fadds f0, f0, f1
/* 80CBA570  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80CBA574  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80CBA578  EC 00 08 2A */	fadds f0, f0, f1
/* 80CBA57C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80CBA580  38 00 00 20 */	li r0, 0x20
/* 80CBA584  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CBA588  7F E3 FB 78 */	mr r3, r31
/* 80CBA58C  4B FF F8 6D */	bl initBaseMtx__12daObjRgate_cFv
/* 80CBA590  38 1F 0B 14 */	addi r0, r31, 0xb14
/* 80CBA594  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CBA598  7F E3 FB 78 */	mr r3, r31
/* 80CBA59C  3C 80 80 CC */	lis r4, l_cull_box@ha /* 0x80CBC368@ha */
/* 80CBA5A0  C4 24 C3 68 */	lfsu f1, l_cull_box@l(r4)  /* 0x80CBC368@l */
/* 80CBA5A4  C0 44 00 04 */	lfs f2, 4(r4)
/* 80CBA5A8  C0 64 00 08 */	lfs f3, 8(r4)
/* 80CBA5AC  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80CBA5B0  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80CBA5B4  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80CBA5B8  4B 35 FF 91 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CBA5BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBA5C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBA5C4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CBA5C8  80 9F 0A E0 */	lwz r4, 0xae0(r31)
/* 80CBA5CC  7F E5 FB 78 */	mr r5, r31
/* 80CBA5D0  4B 3B A4 39 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CBA5D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CBA5D8  41 82 00 0C */	beq lbl_80CBA5E4
/* 80CBA5DC  38 60 00 00 */	li r3, 0
/* 80CBA5E0  48 00 00 60 */	b lbl_80CBA640
lbl_80CBA5E4:
/* 80CBA5E4  38 C0 00 00 */	li r6, 0
/* 80CBA5E8  3C 60 80 CC */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x80CB9CE8@ha */
/* 80CBA5EC  38 83 9C E8 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x80CB9CE8@l */
/* 80CBA5F0  48 00 00 34 */	b lbl_80CBA624
lbl_80CBA5F4:
/* 80CBA5F4  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80CBA5F8  2C 00 00 01 */	cmpwi r0, 1
/* 80CBA5FC  41 82 00 0C */	beq lbl_80CBA608
/* 80CBA600  2C 00 00 02 */	cmpwi r0, 2
/* 80CBA604  40 82 00 1C */	bne lbl_80CBA620
lbl_80CBA608:
/* 80CBA608  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80CBA60C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80CBA610  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CBA614  90 83 00 04 */	stw r4, 4(r3)
/* 80CBA618  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CBA61C  93 E3 00 14 */	stw r31, 0x14(r3)
lbl_80CBA620:
/* 80CBA620  38 C6 00 01 */	addi r6, r6, 1
lbl_80CBA624:
/* 80CBA624  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CBA628  80 A3 00 04 */	lwz r5, 4(r3)
/* 80CBA62C  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 80CBA630  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80CBA634  7C 00 18 40 */	cmplw r0, r3
/* 80CBA638  41 80 FF BC */	blt lbl_80CBA5F4
/* 80CBA63C  38 60 00 01 */	li r3, 1
lbl_80CBA640:
/* 80CBA640  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBA644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBA648  7C 08 03 A6 */	mtlr r0
/* 80CBA64C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBA650  4E 80 00 20 */	blr 
