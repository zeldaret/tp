lbl_808083CC:
/* 808083CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 808083D0  7C 08 02 A6 */	mflr r0
/* 808083D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 808083D8  39 61 00 40 */	addi r11, r1, 0x40
/* 808083DC  4B B5 9D F4 */	b _savegpr_26
/* 808083E0  7C 7C 1B 78 */	mr r28, r3
/* 808083E4  3C 60 80 81 */	lis r3, lit_3925@ha
/* 808083E8  3B E3 59 94 */	addi r31, r3, lit_3925@l
/* 808083EC  88 1C 07 1D */	lbz r0, 0x71d(r28)
/* 808083F0  28 00 00 00 */	cmplwi r0, 0
/* 808083F4  41 82 00 0C */	beq lbl_80808400
/* 808083F8  38 60 00 01 */	li r3, 1
/* 808083FC  48 00 02 64 */	b lbl_80808660
lbl_80808400:
/* 80808400  4B 95 70 24 */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 80808404  2C 03 00 00 */	cmpwi r3, 0
/* 80808408  41 82 00 1C */	beq lbl_80808424
/* 8080840C  38 7C 06 D4 */	addi r3, r28, 0x6d4
/* 80808410  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80808414  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80808418  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 8080841C  4B A6 76 20 */	b cLib_addCalc2__FPffff
/* 80808420  48 00 00 3C */	b lbl_8080845C
lbl_80808424:
/* 80808424  80 1C 06 90 */	lwz r0, 0x690(r28)
/* 80808428  2C 00 00 03 */	cmpwi r0, 3
/* 8080842C  40 82 00 1C */	bne lbl_80808448
/* 80808430  38 7C 06 D4 */	addi r3, r28, 0x6d4
/* 80808434  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80808438  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080843C  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80808440  4B A6 75 FC */	b cLib_addCalc2__FPffff
/* 80808444  48 00 00 18 */	b lbl_8080845C
lbl_80808448:
/* 80808448  38 7C 06 D4 */	addi r3, r28, 0x6d4
/* 8080844C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80808450  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80808454  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80808458  4B A6 75 E4 */	b cLib_addCalc2__FPffff
lbl_8080845C:
/* 8080845C  3B A0 00 01 */	li r29, 1
/* 80808460  A8 1C 07 10 */	lha r0, 0x710(r28)
/* 80808464  2C 00 00 00 */	cmpwi r0, 0
/* 80808468  41 82 00 44 */	beq lbl_808084AC
/* 8080846C  C0 3C 06 D4 */	lfs f1, 0x6d4(r28)
/* 80808470  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80808474  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80808478  40 82 00 0C */	bne lbl_80808484
/* 8080847C  38 60 00 01 */	li r3, 1
/* 80808480  48 00 01 E0 */	b lbl_80808660
lbl_80808484:
/* 80808484  88 1C 06 A4 */	lbz r0, 0x6a4(r28)
/* 80808488  28 00 00 00 */	cmplwi r0, 0
/* 8080848C  41 82 00 28 */	beq lbl_808084B4
/* 80808490  80 1C 06 90 */	lwz r0, 0x690(r28)
/* 80808494  2C 00 00 0D */	cmpwi r0, 0xd
/* 80808498  41 82 00 1C */	beq lbl_808084B4
/* 8080849C  2C 00 00 0E */	cmpwi r0, 0xe
/* 808084A0  41 82 00 14 */	beq lbl_808084B4
/* 808084A4  3B A0 00 00 */	li r29, 0
/* 808084A8  48 00 00 0C */	b lbl_808084B4
lbl_808084AC:
/* 808084AC  38 00 00 01 */	li r0, 1
/* 808084B0  B0 1C 07 10 */	sth r0, 0x710(r28)
lbl_808084B4:
/* 808084B4  88 1C 06 CA */	lbz r0, 0x6ca(r28)
/* 808084B8  28 00 00 01 */	cmplwi r0, 1
/* 808084BC  40 82 00 4C */	bne lbl_80808508
/* 808084C0  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 808084C4  80 63 00 04 */	lwz r3, 4(r3)
/* 808084C8  80 63 00 04 */	lwz r3, 4(r3)
/* 808084CC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 808084D0  80 63 00 04 */	lwz r3, 4(r3)
/* 808084D4  80 63 00 08 */	lwz r3, 8(r3)
/* 808084D8  28 03 00 00 */	cmplwi r3, 0
/* 808084DC  41 82 00 2C */	beq lbl_80808508
/* 808084E0  88 1C 06 CC */	lbz r0, 0x6cc(r28)
/* 808084E4  28 00 00 00 */	cmplwi r0, 0
/* 808084E8  41 82 00 14 */	beq lbl_808084FC
/* 808084EC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 808084F0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 808084F4  90 03 00 0C */	stw r0, 0xc(r3)
/* 808084F8  48 00 00 10 */	b lbl_80808508
lbl_808084FC:
/* 808084FC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80808500  60 00 00 01 */	ori r0, r0, 1
/* 80808504  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80808508:
/* 80808508  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8080850C  83 C3 00 04 */	lwz r30, 4(r3)
/* 80808510  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80808514  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80808518  38 80 00 06 */	li r4, 6
/* 8080851C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80808520  38 DC 01 0C */	addi r6, r28, 0x10c
/* 80808524  4B 99 B2 A0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80808528  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8080852C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80808530  80 9E 00 04 */	lwz r4, 4(r30)
/* 80808534  38 BC 01 0C */	addi r5, r28, 0x10c
/* 80808538  4B 99 C8 68 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8080853C  83 7E 00 04 */	lwz r27, 4(r30)
/* 80808540  3B 40 00 00 */	li r26, 0
/* 80808544  48 00 00 40 */	b lbl_80808584
lbl_80808548:
/* 80808548  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 8080854C  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 80808550  7C 63 00 2E */	lwzx r3, r3, r0
/* 80808554  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80808558  38 80 00 03 */	li r4, 3
/* 8080855C  81 83 00 00 */	lwz r12, 0(r3)
/* 80808560  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80808564  7D 89 03 A6 */	mtctr r12
/* 80808568  4E 80 04 21 */	bctrl 
/* 8080856C  C0 1C 06 D4 */	lfs f0, 0x6d4(r28)
/* 80808570  FC 00 00 1E */	fctiwz f0, f0
/* 80808574  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80808578  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8080857C  98 03 00 03 */	stb r0, 3(r3)
/* 80808580  3B 5A 00 01 */	addi r26, r26, 1
lbl_80808584:
/* 80808584  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 80808588  A0 1B 00 5C */	lhz r0, 0x5c(r27)
/* 8080858C  7C 03 00 40 */	cmplw r3, r0
/* 80808590  41 80 FF B8 */	blt lbl_80808548
/* 80808594  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80808598  41 82 00 C4 */	beq lbl_8080865C
/* 8080859C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 808085A0  C0 1C 06 DC */	lfs f0, 0x6dc(r28)
/* 808085A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 808085A8  41 82 00 58 */	beq lbl_80808600
/* 808085AC  80 9E 00 04 */	lwz r4, 4(r30)
/* 808085B0  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 808085B4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 808085B8  38 84 00 58 */	addi r4, r4, 0x58
/* 808085BC  4B 80 51 EC */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 808085C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808085C4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 808085C8  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 808085CC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 808085D0  3B A3 4A C8 */	addi r29, r3, j3dSys@l
/* 808085D4  90 1D 00 48 */	stw r0, 0x48(r29)
/* 808085D8  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 808085DC  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 808085E0  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 808085E4  4B 80 8B DC */	b entryDL__16mDoExt_McaMorfSOFv
/* 808085E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808085EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808085F0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 808085F4  90 1D 00 48 */	stw r0, 0x48(r29)
/* 808085F8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 808085FC  90 1D 00 4C */	stw r0, 0x4c(r29)
lbl_80808600:
/* 80808600  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 80808604  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80808608  C0 7C 04 D4 */	lfs f3, 0x4d4(r28)
/* 8080860C  EC 20 18 2A */	fadds f1, f0, f3
/* 80808610  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80808614  D0 01 00 08 */	stfs f0, 8(r1)
/* 80808618  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8080861C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80808620  80 7C 06 9C */	lwz r3, 0x69c(r28)
/* 80808624  38 80 00 01 */	li r4, 1
/* 80808628  7F C5 F3 78 */	mr r5, r30
/* 8080862C  38 C1 00 08 */	addi r6, r1, 8
/* 80808630  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80808634  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80808638  C0 9C 07 F8 */	lfs f4, 0x7f8(r28)
/* 8080863C  38 FC 08 50 */	addi r7, r28, 0x850
/* 80808640  39 1C 01 0C */	addi r8, r28, 0x10c
/* 80808644  39 20 00 00 */	li r9, 0
/* 80808648  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8080864C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80808650  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80808654  4B 82 62 BC */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80808658  90 7C 06 9C */	stw r3, 0x69c(r28)
lbl_8080865C:
/* 8080865C  38 60 00 01 */	li r3, 1
lbl_80808660:
/* 80808660  39 61 00 40 */	addi r11, r1, 0x40
/* 80808664  4B B5 9B B8 */	b _restgpr_26
/* 80808668  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8080866C  7C 08 03 A6 */	mtlr r0
/* 80808670  38 21 00 40 */	addi r1, r1, 0x40
/* 80808674  4E 80 00 20 */	blr 
