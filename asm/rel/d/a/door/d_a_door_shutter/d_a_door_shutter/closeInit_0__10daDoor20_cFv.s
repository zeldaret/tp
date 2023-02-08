lbl_80462398:
/* 80462398  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8046239C  7C 08 02 A6 */	mflr r0
/* 804623A0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804623A4  39 61 00 50 */	addi r11, r1, 0x50
/* 804623A8  4B EF FE 35 */	bl _savegpr_29
/* 804623AC  7C 7F 1B 78 */	mr r31, r3
/* 804623B0  3C 80 80 46 */	lis r4, lit_4018@ha /* 0x80466820@ha */
/* 804623B4  3B C4 68 20 */	addi r30, r4, lit_4018@l /* 0x80466820@l */
/* 804623B8  4B BD 7D D1 */	bl getKind__13door_param2_cFP10fopAc_ac_c
/* 804623BC  2C 03 00 0A */	cmpwi r3, 0xa
/* 804623C0  40 82 00 38 */	bne lbl_804623F8
/* 804623C4  7F E3 FB 78 */	mr r3, r31
/* 804623C8  4B FF E7 DD */	bl getArcName__10daDoor20_cFv
/* 804623CC  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 804623D0  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 804623D4  38 84 01 1C */	addi r4, r4, 0x11c
/* 804623D8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804623DC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804623E0  3C A5 00 02 */	addis r5, r5, 2
/* 804623E4  38 C0 00 80 */	li r6, 0x80
/* 804623E8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804623EC  4B BD 9F 91 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804623F0  7C 64 1B 78 */	mr r4, r3
/* 804623F4  48 00 00 34 */	b lbl_80462428
lbl_804623F8:
/* 804623F8  7F E3 FB 78 */	mr r3, r31
/* 804623FC  4B FF E7 A9 */	bl getArcName__10daDoor20_cFv
/* 80462400  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80462404  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80462408  38 84 01 2E */	addi r4, r4, 0x12e
/* 8046240C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80462410  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80462414  3C A5 00 02 */	addis r5, r5, 2
/* 80462418  38 C0 00 80 */	li r6, 0x80
/* 8046241C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80462420  4B BD 9F 5D */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80462424  7C 64 1B 78 */	mr r4, r3
lbl_80462428:
/* 80462428  38 7F 05 84 */	addi r3, r31, 0x584
/* 8046242C  38 A0 00 01 */	li r5, 1
/* 80462430  38 C0 00 00 */	li r6, 0
/* 80462434  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80462438  38 E0 00 00 */	li r7, 0
/* 8046243C  39 00 FF FF */	li r8, -1
/* 80462440  39 20 00 01 */	li r9, 1
/* 80462444  4B BA B3 99 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80462448  C0 5F 04 B0 */	lfs f2, 0x4b0(r31)
/* 8046244C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80462450  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80462454  EC 21 00 2A */	fadds f1, f1, f0
/* 80462458  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 8046245C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80462460  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80462464  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80462468  38 61 00 28 */	addi r3, r1, 0x28
/* 8046246C  4B BB B9 19 */	bl waterCheck__11fopAcM_wt_cFPC4cXyz
/* 80462470  7C 7D 1B 78 */	mr r29, r3
/* 80462474  38 61 00 28 */	addi r3, r1, 0x28
/* 80462478  4B BB B8 45 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8046247C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80462480  41 82 00 6C */	beq lbl_804624EC
/* 80462484  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha /* 0x80450CD8@ha */
/* 80462488  C0 23 0C D8 */	lfs f1, mWaterY__11fopAcM_wt_c@l(r3)  /* 0x80450CD8@l */
/* 8046248C  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80462490  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80462494  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80462498  40 81 00 54 */	ble lbl_804624EC
/* 8046249C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804624A0  7C 03 07 74 */	extsb r3, r0
/* 804624A4  4B BC AB C9 */	bl dComIfGp_getReverb__Fi
/* 804624A8  7C 67 1B 78 */	mr r7, r3
/* 804624AC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080196@ha */
/* 804624B0  38 03 01 96 */	addi r0, r3, 0x0196 /* 0x00080196@l */
/* 804624B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804624B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804624BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804624C0  80 63 00 00 */	lwz r3, 0(r3)
/* 804624C4  38 81 00 24 */	addi r4, r1, 0x24
/* 804624C8  38 BF 05 38 */	addi r5, r31, 0x538
/* 804624CC  38 C0 00 00 */	li r6, 0
/* 804624D0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 804624D4  FC 40 08 90 */	fmr f2, f1
/* 804624D8  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 804624DC  FC 80 18 90 */	fmr f4, f3
/* 804624E0  39 00 00 00 */	li r8, 0
/* 804624E4  4B E4 94 A1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804624E8  48 00 01 10 */	b lbl_804625F8
lbl_804624EC:
/* 804624EC  7F E3 FB 78 */	mr r3, r31
/* 804624F0  4B BD 7C 99 */	bl getKind__13door_param2_cFP10fopAc_ac_c
/* 804624F4  2C 03 00 02 */	cmpwi r3, 2
/* 804624F8  40 82 00 54 */	bne lbl_8046254C
/* 804624FC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80462500  7C 03 07 74 */	extsb r3, r0
/* 80462504  4B BC AB 69 */	bl dComIfGp_getReverb__Fi
/* 80462508  7C 67 1B 78 */	mr r7, r3
/* 8046250C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021A@ha */
/* 80462510  38 03 02 1A */	addi r0, r3, 0x021A /* 0x0008021A@l */
/* 80462514  90 01 00 20 */	stw r0, 0x20(r1)
/* 80462518  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8046251C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80462520  80 63 00 00 */	lwz r3, 0(r3)
/* 80462524  38 81 00 20 */	addi r4, r1, 0x20
/* 80462528  38 BF 05 38 */	addi r5, r31, 0x538
/* 8046252C  38 C0 00 00 */	li r6, 0
/* 80462530  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80462534  FC 40 08 90 */	fmr f2, f1
/* 80462538  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8046253C  FC 80 18 90 */	fmr f4, f3
/* 80462540  39 00 00 00 */	li r8, 0
/* 80462544  4B E4 94 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80462548  48 00 00 B0 */	b lbl_804625F8
lbl_8046254C:
/* 8046254C  7F E3 FB 78 */	mr r3, r31
/* 80462550  4B BD 7C 39 */	bl getKind__13door_param2_cFP10fopAc_ac_c
/* 80462554  2C 03 00 0A */	cmpwi r3, 0xa
/* 80462558  40 82 00 54 */	bne lbl_804625AC
/* 8046255C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80462560  7C 03 07 74 */	extsb r3, r0
/* 80462564  4B BC AB 09 */	bl dComIfGp_getReverb__Fi
/* 80462568  7C 67 1B 78 */	mr r7, r3
/* 8046256C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802B7@ha */
/* 80462570  38 03 02 B7 */	addi r0, r3, 0x02B7 /* 0x000802B7@l */
/* 80462574  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80462578  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8046257C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80462580  80 63 00 00 */	lwz r3, 0(r3)
/* 80462584  38 81 00 1C */	addi r4, r1, 0x1c
/* 80462588  38 BF 05 38 */	addi r5, r31, 0x538
/* 8046258C  38 C0 00 00 */	li r6, 0
/* 80462590  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80462594  FC 40 08 90 */	fmr f2, f1
/* 80462598  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8046259C  FC 80 18 90 */	fmr f4, f3
/* 804625A0  39 00 00 00 */	li r8, 0
/* 804625A4  4B E4 93 E1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804625A8  48 00 00 50 */	b lbl_804625F8
lbl_804625AC:
/* 804625AC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804625B0  7C 03 07 74 */	extsb r3, r0
/* 804625B4  4B BC AA B9 */	bl dComIfGp_getReverb__Fi
/* 804625B8  7C 67 1B 78 */	mr r7, r3
/* 804625BC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080192@ha */
/* 804625C0  38 03 01 92 */	addi r0, r3, 0x0192 /* 0x00080192@l */
/* 804625C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804625C8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804625CC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804625D0  80 63 00 00 */	lwz r3, 0(r3)
/* 804625D4  38 81 00 18 */	addi r4, r1, 0x18
/* 804625D8  38 BF 05 38 */	addi r5, r31, 0x538
/* 804625DC  38 C0 00 00 */	li r6, 0
/* 804625E0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 804625E4  FC 40 08 90 */	fmr f2, f1
/* 804625E8  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 804625EC  FC 80 18 90 */	fmr f4, f3
/* 804625F0  39 00 00 00 */	li r8, 0
/* 804625F4  4B E4 93 91 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804625F8:
/* 804625F8  7F E3 FB 78 */	mr r3, r31
/* 804625FC  4B BD 7B 8D */	bl getKind__13door_param2_cFP10fopAc_ac_c
/* 80462600  2C 03 00 0A */	cmpwi r3, 0xa
/* 80462604  41 82 00 50 */	beq lbl_80462654
/* 80462608  38 80 00 00 */	li r4, 0
/* 8046260C  90 81 00 08 */	stw r4, 8(r1)
/* 80462610  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80462614  88 03 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 80462618  7C 00 07 74 */	extsb r0, r0
/* 8046261C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80462620  90 81 00 10 */	stw r4, 0x10(r1)
/* 80462624  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80462628  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046262C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80462630  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008C50@ha */
/* 80462634  38 84 8C 50 */	addi r4, r4, 0x8C50 /* 0x00008C50@l */
/* 80462638  38 BF 07 D0 */	addi r5, r31, 0x7d0
/* 8046263C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80462640  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80462644  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80462648  39 20 00 00 */	li r9, 0
/* 8046264C  39 40 00 00 */	li r10, 0
/* 80462650  4B BE AA 19 */	bl setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
lbl_80462654:
/* 80462654  39 61 00 50 */	addi r11, r1, 0x50
/* 80462658  4B EF FB D1 */	bl _restgpr_29
/* 8046265C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80462660  7C 08 03 A6 */	mtlr r0
/* 80462664  38 21 00 50 */	addi r1, r1, 0x50
/* 80462668  4E 80 00 20 */	blr 
