lbl_8078545C:
/* 8078545C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80785460  7C 08 02 A6 */	mflr r0
/* 80785464  90 01 00 44 */	stw r0, 0x44(r1)
/* 80785468  39 61 00 40 */	addi r11, r1, 0x40
/* 8078546C  4B BD CD 60 */	b _savegpr_25
/* 80785470  7C 7D 1B 78 */	mr r29, r3
/* 80785474  3C 60 80 79 */	lis r3, lit_3908@ha
/* 80785478  3B E3 9C 38 */	addi r31, r3, lit_3908@l
/* 8078547C  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80785480  83 C3 00 04 */	lwz r30, 4(r3)
/* 80785484  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80785488  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8078548C  38 80 00 00 */	li r4, 0
/* 80785490  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80785494  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80785498  4B A1 E3 2C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8078549C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807854A0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807854A4  80 9E 00 04 */	lwz r4, 4(r30)
/* 807854A8  38 BD 01 0C */	addi r5, r29, 0x10c
/* 807854AC  4B A1 F8 F4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807854B0  83 9E 00 04 */	lwz r28, 4(r30)
/* 807854B4  AB 5D 06 A6 */	lha r26, 0x6a6(r29)
/* 807854B8  3B 20 00 00 */	li r25, 0
/* 807854BC  48 00 00 70 */	b lbl_8078552C
lbl_807854C0:
/* 807854C0  80 9C 00 60 */	lwz r4, 0x60(r28)
/* 807854C4  57 23 04 3F */	clrlwi. r3, r25, 0x10
/* 807854C8  57 20 13 BA */	rlwinm r0, r25, 2, 0xe, 0x1d
/* 807854CC  7F 64 00 2E */	lwzx r27, r4, r0
/* 807854D0  40 82 00 58 */	bne lbl_80785528
/* 807854D4  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807854D8  38 80 00 02 */	li r4, 2
/* 807854DC  81 83 00 00 */	lwz r12, 0(r3)
/* 807854E0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807854E4  7D 89 03 A6 */	mtctr r12
/* 807854E8  4E 80 04 21 */	bctrl 
/* 807854EC  B3 43 00 00 */	sth r26, 0(r3)
/* 807854F0  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807854F4  38 80 00 02 */	li r4, 2
/* 807854F8  81 83 00 00 */	lwz r12, 0(r3)
/* 807854FC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80785500  7D 89 03 A6 */	mtctr r12
/* 80785504  4E 80 04 21 */	bctrl 
/* 80785508  B3 43 00 02 */	sth r26, 2(r3)
/* 8078550C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 80785510  38 80 00 02 */	li r4, 2
/* 80785514  81 83 00 00 */	lwz r12, 0(r3)
/* 80785518  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8078551C  7D 89 03 A6 */	mtctr r12
/* 80785520  4E 80 04 21 */	bctrl 
/* 80785524  B3 43 00 04 */	sth r26, 4(r3)
lbl_80785528:
/* 80785528  3B 39 00 01 */	addi r25, r25, 1
lbl_8078552C:
/* 8078552C  57 23 04 3E */	clrlwi r3, r25, 0x10
/* 80785530  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 80785534  7C 03 00 40 */	cmplw r3, r0
/* 80785538  41 80 FF 88 */	blt lbl_807854C0
/* 8078553C  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80785540  4B 88 BC 80 */	b entryDL__16mDoExt_McaMorfSOFv
/* 80785544  80 9D 05 DC */	lwz r4, 0x5dc(r29)
/* 80785548  28 04 00 00 */	cmplwi r4, 0
/* 8078554C  41 82 00 20 */	beq lbl_8078556C
/* 80785550  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80785554  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80785558  80 84 00 04 */	lwz r4, 4(r4)
/* 8078555C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80785560  4B A1 F8 40 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80785564  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 80785568  4B 88 87 5C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_8078556C:
/* 8078556C  88 1D 05 B9 */	lbz r0, 0x5b9(r29)
/* 80785570  28 00 00 FF */	cmplwi r0, 0xff
/* 80785574  41 82 00 24 */	beq lbl_80785598
/* 80785578  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8078557C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80785580  80 9D 05 E0 */	lwz r4, 0x5e0(r29)
/* 80785584  80 84 00 04 */	lwz r4, 4(r4)
/* 80785588  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8078558C  4B A1 F8 14 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80785590  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 80785594  4B 88 87 30 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80785598:
/* 80785598  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8078559C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807855A0  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 807855A4  EC 20 18 2A */	fadds f1, f0, f3
/* 807855A8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807855AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 807855B0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807855B4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807855B8  80 7D 06 98 */	lwz r3, 0x698(r29)
/* 807855BC  38 80 00 01 */	li r4, 1
/* 807855C0  7F C5 F3 78 */	mr r5, r30
/* 807855C4  38 C1 00 08 */	addi r6, r1, 8
/* 807855C8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807855CC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807855D0  C0 9D 07 F4 */	lfs f4, 0x7f4(r29)
/* 807855D4  38 FD 08 4C */	addi r7, r29, 0x84c
/* 807855D8  39 1D 01 0C */	addi r8, r29, 0x10c
/* 807855DC  39 20 00 00 */	li r9, 0
/* 807855E0  C0 BF 00 08 */	lfs f5, 8(r31)
/* 807855E4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 807855E8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 807855EC  4B 8A 93 24 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807855F0  90 7D 06 98 */	stw r3, 0x698(r29)
/* 807855F4  80 BD 05 DC */	lwz r5, 0x5dc(r29)
/* 807855F8  28 05 00 00 */	cmplwi r5, 0
/* 807855FC  41 82 00 18 */	beq lbl_80785614
/* 80785600  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80785604  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80785608  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 8078560C  80 9D 06 98 */	lwz r4, 0x698(r29)
/* 80785610  4B 8D 09 0C */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80785614:
/* 80785614  88 1D 05 B9 */	lbz r0, 0x5b9(r29)
/* 80785618  28 00 00 FF */	cmplwi r0, 0xff
/* 8078561C  41 82 00 1C */	beq lbl_80785638
/* 80785620  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80785624  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80785628  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 8078562C  80 9D 06 98 */	lwz r4, 0x698(r29)
/* 80785630  80 BD 05 E0 */	lwz r5, 0x5e0(r29)
/* 80785634  4B 8D 08 E8 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80785638:
/* 80785638  38 60 00 01 */	li r3, 1
/* 8078563C  39 61 00 40 */	addi r11, r1, 0x40
/* 80785640  4B BD CB D8 */	b _restgpr_25
/* 80785644  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80785648  7C 08 03 A6 */	mtlr r0
/* 8078564C  38 21 00 40 */	addi r1, r1, 0x40
/* 80785650  4E 80 00 20 */	blr 
