lbl_8066FB00:
/* 8066FB00  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8066FB04  7C 08 02 A6 */	mflr r0
/* 8066FB08  90 01 00 54 */	stw r0, 0x54(r1)
/* 8066FB0C  39 61 00 50 */	addi r11, r1, 0x50
/* 8066FB10  4B CF 26 C0 */	b _savegpr_26
/* 8066FB14  7C 7F 1B 78 */	mr r31, r3
/* 8066FB18  3C 80 80 67 */	lis r4, lit_3726@ha
/* 8066FB1C  3B C4 09 14 */	addi r30, r4, lit_3726@l
/* 8066FB20  4B FF FF 99 */	bl getDemoAction__9daBdoor_cFv
/* 8066FB24  7C 7C 1B 78 */	mr r28, r3
/* 8066FB28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066FB2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066FB30  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 8066FB34  3B BB 40 C0 */	addi r29, r27, 0x40c0
/* 8066FB38  7F A3 EB 78 */	mr r3, r29
/* 8066FB3C  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 8066FB40  4B 9D 82 0C */	b getIsAddvance__16dEvent_manager_cFi
/* 8066FB44  2C 03 00 00 */	cmpwi r3, 0
/* 8066FB48  41 82 01 6C */	beq lbl_8066FCB4
/* 8066FB4C  28 1C 00 0A */	cmplwi r28, 0xa
/* 8066FB50  41 81 01 64 */	bgt lbl_8066FCB4
/* 8066FB54  3C 60 80 67 */	lis r3, lit_3938@ha
/* 8066FB58  38 63 0A 98 */	addi r3, r3, lit_3938@l
/* 8066FB5C  57 80 10 3A */	slwi r0, r28, 2
/* 8066FB60  7C 03 00 2E */	lwzx r0, r3, r0
/* 8066FB64  7C 09 03 A6 */	mtctr r0
/* 8066FB68  4E 80 04 20 */	bctr 
lbl_8066FB6C:
/* 8066FB6C  88 1F 05 94 */	lbz r0, 0x594(r31)
/* 8066FB70  28 00 00 00 */	cmplwi r0, 0
/* 8066FB74  41 82 01 40 */	beq lbl_8066FCB4
/* 8066FB78  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8066FB7C  7C 1A 07 74 */	extsb r26, r0
/* 8066FB80  7F E3 FB 78 */	mr r3, r31
/* 8066FB84  4B 9C A6 4C */	b getSwbit__13door_param2_cFP10fopAc_ac_c
/* 8066FB88  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8066FB8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066FB90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066FB94  7F 45 D3 78 */	mr r5, r26
/* 8066FB98  4B 9C 56 68 */	b onSwitch__10dSv_info_cFii
/* 8066FB9C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8066FBA0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 8066FBA4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8066FBA8  48 00 01 0C */	b lbl_8066FCB4
lbl_8066FBAC:
/* 8066FBAC  38 00 00 00 */	li r0, 0
/* 8066FBB0  98 1F 05 94 */	stb r0, 0x594(r31)
/* 8066FBB4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8066FBB8  7C 03 07 74 */	extsb r3, r0
/* 8066FBBC  4B 9B D4 B0 */	b dComIfGp_getReverb__Fi
/* 8066FBC0  7C 67 1B 78 */	mr r7, r3
/* 8066FBC4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008001B@ha */
/* 8066FBC8  38 03 00 1B */	addi r0, r3, 0x001B /* 0x0008001B@l */
/* 8066FBCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066FBD0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8066FBD4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8066FBD8  80 63 00 00 */	lwz r3, 0(r3)
/* 8066FBDC  38 81 00 14 */	addi r4, r1, 0x14
/* 8066FBE0  38 BF 05 38 */	addi r5, r31, 0x538
/* 8066FBE4  38 C0 00 00 */	li r6, 0
/* 8066FBE8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8066FBEC  FC 40 08 90 */	fmr f2, f1
/* 8066FBF0  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 8066FBF4  FC 80 18 90 */	fmr f4, f3
/* 8066FBF8  39 00 00 00 */	li r8, 0
/* 8066FBFC  4B C3 BD 88 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8066FC00  7F 63 DB 78 */	mr r3, r27
/* 8066FC04  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 8066FC08  4B A0 46 48 */	b Release__4cBgSFP9dBgW_Base
/* 8066FC0C  48 00 00 A8 */	b lbl_8066FCB4
lbl_8066FC10:
/* 8066FC10  7F E3 FB 78 */	mr r3, r31
/* 8066FC14  38 81 00 24 */	addi r4, r1, 0x24
/* 8066FC18  38 A0 00 00 */	li r5, 0
/* 8066FC1C  48 00 02 E9 */	bl calcGoal__9daBdoor_cFP4cXyzi
/* 8066FC20  7F A3 EB 78 */	mr r3, r29
/* 8066FC24  38 81 00 24 */	addi r4, r1, 0x24
/* 8066FC28  4B 9D 87 9C */	b setGoal__16dEvent_manager_cFP4cXyz
/* 8066FC2C  48 00 00 88 */	b lbl_8066FCB4
lbl_8066FC30:
/* 8066FC30  7F E3 FB 78 */	mr r3, r31
/* 8066FC34  38 81 00 24 */	addi r4, r1, 0x24
/* 8066FC38  38 A0 00 01 */	li r5, 1
/* 8066FC3C  48 00 02 C9 */	bl calcGoal__9daBdoor_cFP4cXyzi
/* 8066FC40  7F A3 EB 78 */	mr r3, r29
/* 8066FC44  38 81 00 24 */	addi r4, r1, 0x24
/* 8066FC48  4B 9D 87 7C */	b setGoal__16dEvent_manager_cFP4cXyz
/* 8066FC4C  48 00 00 68 */	b lbl_8066FCB4
lbl_8066FC50:
/* 8066FC50  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8066FC54  7C 03 07 74 */	extsb r3, r0
/* 8066FC58  4B 9B D4 14 */	b dComIfGp_getReverb__Fi
/* 8066FC5C  7C 67 1B 78 */	mr r7, r3
/* 8066FC60  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008001C@ha */
/* 8066FC64  38 03 00 1C */	addi r0, r3, 0x001C /* 0x0008001C@l */
/* 8066FC68  90 01 00 10 */	stw r0, 0x10(r1)
/* 8066FC6C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8066FC70  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8066FC74  80 63 00 00 */	lwz r3, 0(r3)
/* 8066FC78  38 81 00 10 */	addi r4, r1, 0x10
/* 8066FC7C  38 BF 05 38 */	addi r5, r31, 0x538
/* 8066FC80  38 C0 00 00 */	li r6, 0
/* 8066FC84  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8066FC88  FC 40 08 90 */	fmr f2, f1
/* 8066FC8C  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 8066FC90  FC 80 18 90 */	fmr f4, f3
/* 8066FC94  39 00 00 00 */	li r8, 0
/* 8066FC98  4B C3 BC EC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8066FC9C  48 00 00 18 */	b lbl_8066FCB4
lbl_8066FCA0:
/* 8066FCA0  7F E3 FB 78 */	mr r3, r31
/* 8066FCA4  48 00 03 89 */	bl smokeInit__9daBdoor_cFv
/* 8066FCA8  48 00 00 0C */	b lbl_8066FCB4
lbl_8066FCAC:
/* 8066FCAC  38 00 00 00 */	li r0, 0
/* 8066FCB0  B0 1F 05 8C */	sth r0, 0x58c(r31)
lbl_8066FCB4:
/* 8066FCB4  28 1C 00 0A */	cmplwi r28, 0xa
/* 8066FCB8  41 81 02 28 */	bgt lbl_8066FEE0
/* 8066FCBC  3C 60 80 67 */	lis r3, lit_3939@ha
/* 8066FCC0  38 63 0A 6C */	addi r3, r3, lit_3939@l
/* 8066FCC4  57 80 10 3A */	slwi r0, r28, 2
/* 8066FCC8  7C 03 00 2E */	lwzx r0, r3, r0
/* 8066FCCC  7C 09 03 A6 */	mtctr r0
/* 8066FCD0  4E 80 04 20 */	bctr 
lbl_8066FCD4:
/* 8066FCD4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 8066FCD8  4B 99 D7 50 */	b play__14mDoExt_baseAnmFv
/* 8066FCDC  88 1F 05 94 */	lbz r0, 0x594(r31)
/* 8066FCE0  28 00 00 00 */	cmplwi r0, 0
/* 8066FCE4  41 82 00 34 */	beq lbl_8066FD18
/* 8066FCE8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 8066FCEC  38 80 00 01 */	li r4, 1
/* 8066FCF0  88 03 00 05 */	lbz r0, 5(r3)
/* 8066FCF4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8066FCF8  40 82 00 18 */	bne lbl_8066FD10
/* 8066FCFC  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8066FD00  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8066FD04  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8066FD08  41 82 00 08 */	beq lbl_8066FD10
/* 8066FD0C  38 80 00 00 */	li r4, 0
lbl_8066FD10:
/* 8066FD10  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8066FD14  41 82 01 D8 */	beq lbl_8066FEEC
lbl_8066FD18:
/* 8066FD18  38 00 00 00 */	li r0, 0
/* 8066FD1C  98 1F 05 94 */	stb r0, 0x594(r31)
/* 8066FD20  7F A3 EB 78 */	mr r3, r29
/* 8066FD24  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 8066FD28  4B 9D 84 54 */	b cutEnd__16dEvent_manager_cFi
/* 8066FD2C  48 00 01 C0 */	b lbl_8066FEEC
lbl_8066FD30:
/* 8066FD30  38 7F 05 2C */	addi r3, r31, 0x52c
/* 8066FD34  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8066FD38  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 8066FD3C  4B C0 0A 04 */	b cLib_chaseF__FPfff
/* 8066FD40  38 7F 05 90 */	addi r3, r31, 0x590
/* 8066FD44  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8066FD48  C0 5F 05 2C */	lfs f2, 0x52c(r31)
/* 8066FD4C  4B C0 09 F4 */	b cLib_chaseF__FPfff
/* 8066FD50  7C 7B 1B 78 */	mr r27, r3
/* 8066FD54  7F E3 FB 78 */	mr r3, r31
/* 8066FD58  4B FF F9 E1 */	bl calcMtx__9daBdoor_cFv
/* 8066FD5C  2C 1B 00 00 */	cmpwi r27, 0
/* 8066FD60  41 82 01 8C */	beq lbl_8066FEEC
/* 8066FD64  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8066FD68  7C 03 07 74 */	extsb r3, r0
/* 8066FD6C  4B 9B D3 00 */	b dComIfGp_getReverb__Fi
/* 8066FD70  7C 67 1B 78 */	mr r7, r3
/* 8066FD74  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008001D@ha */
/* 8066FD78  38 03 00 1D */	addi r0, r3, 0x001D /* 0x0008001D@l */
/* 8066FD7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8066FD80  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8066FD84  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8066FD88  80 63 00 00 */	lwz r3, 0(r3)
/* 8066FD8C  38 81 00 0C */	addi r4, r1, 0xc
/* 8066FD90  38 BF 05 38 */	addi r5, r31, 0x538
/* 8066FD94  38 C0 00 00 */	li r6, 0
/* 8066FD98  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8066FD9C  FC 40 08 90 */	fmr f2, f1
/* 8066FDA0  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 8066FDA4  FC 80 18 90 */	fmr f4, f3
/* 8066FDA8  39 00 00 00 */	li r8, 0
/* 8066FDAC  4B C3 BB D8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8066FDB0  7F A3 EB 78 */	mr r3, r29
/* 8066FDB4  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 8066FDB8  4B 9D 83 C4 */	b cutEnd__16dEvent_manager_cFi
/* 8066FDBC  48 00 01 30 */	b lbl_8066FEEC
lbl_8066FDC0:
/* 8066FDC0  38 7F 05 2C */	addi r3, r31, 0x52c
/* 8066FDC4  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8066FDC8  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 8066FDCC  4B C0 09 74 */	b cLib_chaseF__FPfff
/* 8066FDD0  38 7F 05 90 */	addi r3, r31, 0x590
/* 8066FDD4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8066FDD8  C0 5F 05 2C */	lfs f2, 0x52c(r31)
/* 8066FDDC  4B C0 09 64 */	b cLib_chaseF__FPfff
/* 8066FDE0  7C 7C 1B 78 */	mr r28, r3
/* 8066FDE4  7F E3 FB 78 */	mr r3, r31
/* 8066FDE8  4B FF F9 51 */	bl calcMtx__9daBdoor_cFv
/* 8066FDEC  2C 1C 00 00 */	cmpwi r28, 0
/* 8066FDF0  41 82 00 FC */	beq lbl_8066FEEC
/* 8066FDF4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8066FDF8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8066FDFC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8066FE00  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8066FE04  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8066FE08  38 7B 4C 9C */	addi r3, r27, 0x4c9c
/* 8066FE0C  38 80 00 04 */	li r4, 4
/* 8066FE10  38 A0 00 1F */	li r5, 0x1f
/* 8066FE14  38 C1 00 18 */	addi r6, r1, 0x18
/* 8066FE18  4B 9F FC 0C */	b StartShock__12dVibration_cFii4cXyz
/* 8066FE1C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8066FE20  7C 03 07 74 */	extsb r3, r0
/* 8066FE24  4B 9B D2 48 */	b dComIfGp_getReverb__Fi
/* 8066FE28  7C 67 1B 78 */	mr r7, r3
/* 8066FE2C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008001E@ha */
/* 8066FE30  38 03 00 1E */	addi r0, r3, 0x001E /* 0x0008001E@l */
/* 8066FE34  90 01 00 08 */	stw r0, 8(r1)
/* 8066FE38  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8066FE3C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8066FE40  80 63 00 00 */	lwz r3, 0(r3)
/* 8066FE44  38 81 00 08 */	addi r4, r1, 8
/* 8066FE48  38 BF 05 38 */	addi r5, r31, 0x538
/* 8066FE4C  38 C0 00 00 */	li r6, 0
/* 8066FE50  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8066FE54  FC 40 08 90 */	fmr f2, f1
/* 8066FE58  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 8066FE5C  FC 80 18 90 */	fmr f4, f3
/* 8066FE60  39 00 00 00 */	li r8, 0
/* 8066FE64  4B C3 BB 20 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8066FE68  7F A3 EB 78 */	mr r3, r29
/* 8066FE6C  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 8066FE70  4B 9D 83 0C */	b cutEnd__16dEvent_manager_cFi
/* 8066FE74  48 00 00 78 */	b lbl_8066FEEC
lbl_8066FE78:
/* 8066FE78  A8 1F 05 8C */	lha r0, 0x58c(r31)
/* 8066FE7C  2C 00 00 00 */	cmpwi r0, 0
/* 8066FE80  40 82 00 38 */	bne lbl_8066FEB8
/* 8066FE84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066FE88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066FE8C  83 43 5D AC */	lwz r26, 0x5dac(r3)
/* 8066FE90  7F E3 FB 78 */	mr r3, r31
/* 8066FE94  4B 9C A3 90 */	b getExitNo__13door_param2_cFP10fopAc_ac_c
/* 8066FE98  7C 64 1B 78 */	mr r4, r3
/* 8066FE9C  7F 43 D3 78 */	mr r3, r26
/* 8066FEA0  38 A0 00 FF */	li r5, 0xff
/* 8066FEA4  38 C0 00 00 */	li r6, 0
/* 8066FEA8  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 8066FEAC  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 8066FEB0  7D 89 03 A6 */	mtctr r12
/* 8066FEB4  4E 80 04 21 */	bctrl 
lbl_8066FEB8:
/* 8066FEB8  A8 7F 05 8C */	lha r3, 0x58c(r31)
/* 8066FEBC  38 03 FF FF */	addi r0, r3, -1
/* 8066FEC0  B0 1F 05 8C */	sth r0, 0x58c(r31)
/* 8066FEC4  48 00 00 28 */	b lbl_8066FEEC
lbl_8066FEC8:
/* 8066FEC8  38 00 00 03 */	li r0, 3
/* 8066FECC  98 1F 05 81 */	stb r0, 0x581(r31)
/* 8066FED0  7F A3 EB 78 */	mr r3, r29
/* 8066FED4  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 8066FED8  4B 9D 82 A4 */	b cutEnd__16dEvent_manager_cFi
/* 8066FEDC  48 00 00 10 */	b lbl_8066FEEC
lbl_8066FEE0:
/* 8066FEE0  7F A3 EB 78 */	mr r3, r29
/* 8066FEE4  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 8066FEE8  4B 9D 82 94 */	b cutEnd__16dEvent_manager_cFi
lbl_8066FEEC:
/* 8066FEEC  39 61 00 50 */	addi r11, r1, 0x50
/* 8066FEF0  4B CF 23 2C */	b _restgpr_26
/* 8066FEF4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8066FEF8  7C 08 03 A6 */	mtlr r0
/* 8066FEFC  38 21 00 50 */	addi r1, r1, 0x50
/* 8066FF00  4E 80 00 20 */	blr 
