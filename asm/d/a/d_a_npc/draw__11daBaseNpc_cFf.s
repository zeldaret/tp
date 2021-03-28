lbl_8014EC50:
/* 8014EC50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014EC54  7C 08 02 A6 */	mflr r0
/* 8014EC58  90 01 00 34 */	stw r0, 0x34(r1)
/* 8014EC5C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8014EC60  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8014EC64  39 61 00 20 */	addi r11, r1, 0x20
/* 8014EC68  48 21 35 71 */	bl _savegpr_28
/* 8014EC6C  7C 7D 1B 78 */	mr r29, r3
/* 8014EC70  FF E0 08 90 */	fmr f31, f1
/* 8014EC74  80 63 07 54 */	lwz r3, 0x754(r3)
/* 8014EC78  83 E3 00 04 */	lwz r31, 4(r3)
/* 8014EC7C  83 DF 00 04 */	lwz r30, 4(r31)
/* 8014EC80  48 05 D8 FD */	bl dKy_darkworld_check__Fv
/* 8014EC84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014EC88  41 82 00 20 */	beq lbl_8014ECA8
/* 8014EC8C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8014EC90  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8014EC94  38 80 00 04 */	li r4, 4
/* 8014EC98  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8014EC9C  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8014ECA0  48 05 4B 25 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8014ECA4  48 00 00 1C */	b lbl_8014ECC0
lbl_8014ECA8:
/* 8014ECA8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8014ECAC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8014ECB0  38 80 00 00 */	li r4, 0
/* 8014ECB4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8014ECB8  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8014ECBC  48 05 4B 09 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_8014ECC0:
/* 8014ECC0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8014ECC4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8014ECC8  80 9F 00 04 */	lwz r4, 4(r31)
/* 8014ECCC  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8014ECD0  48 05 60 D1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8014ECD4  7F A3 EB 78 */	mr r3, r29
/* 8014ECD8  81 9D 05 68 */	lwz r12, 0x568(r29)
/* 8014ECDC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8014ECE0  7D 89 03 A6 */	mtctr r12
/* 8014ECE4  4E 80 04 21 */	bctrl 
/* 8014ECE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014ECEC  40 82 00 0C */	bne lbl_8014ECF8
/* 8014ECF0  38 60 00 01 */	li r3, 1
/* 8014ECF4  48 00 01 28 */	b lbl_8014EE1C
lbl_8014ECF8:
/* 8014ECF8  A0 1D 08 40 */	lhz r0, 0x840(r29)
/* 8014ECFC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8014ED00  41 82 00 20 */	beq lbl_8014ED20
/* 8014ED04  38 7D 08 08 */	addi r3, r29, 0x808
/* 8014ED08  38 9E 00 58 */	addi r4, r30, 0x58
/* 8014ED0C  C0 1D 08 18 */	lfs f0, 0x818(r29)
/* 8014ED10  FC 00 00 1E */	fctiwz f0, f0
/* 8014ED14  D8 01 00 08 */	stfd f0, 8(r1)
/* 8014ED18  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8014ED1C  4B EB E8 CD */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
lbl_8014ED20:
/* 8014ED20  A0 1D 08 40 */	lhz r0, 0x840(r29)
/* 8014ED24  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8014ED28  41 82 00 14 */	beq lbl_8014ED3C
/* 8014ED2C  C0 3D 08 30 */	lfs f1, 0x830(r29)
/* 8014ED30  38 7D 08 20 */	addi r3, r29, 0x820
/* 8014ED34  38 9E 00 58 */	addi r4, r30, 0x58
/* 8014ED38  4B EB E9 A1 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_8014ED3C:
/* 8014ED3C  48 05 D8 41 */	bl dKy_darkworld_check__Fv
/* 8014ED40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014ED44  41 82 00 48 */	beq lbl_8014ED8C
/* 8014ED48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8014ED4C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8014ED50  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 8014ED54  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8014ED58  3B 83 4A C8 */	addi r28, r3, j3dSys@l
/* 8014ED5C  90 1C 00 48 */	stw r0, 0x48(r28)
/* 8014ED60  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 8014ED64  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 8014ED68  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 8014ED6C  4B EC 24 55 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 8014ED70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8014ED74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8014ED78  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8014ED7C  90 1C 00 48 */	stw r0, 0x48(r28)
/* 8014ED80  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8014ED84  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 8014ED88  48 00 00 0C */	b lbl_8014ED94
lbl_8014ED8C:
/* 8014ED8C  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 8014ED90  4B EC 24 31 */	bl entryDL__16mDoExt_McaMorfSOFv
lbl_8014ED94:
/* 8014ED94  A0 1D 08 40 */	lhz r0, 0x840(r29)
/* 8014ED98  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8014ED9C  41 82 00 10 */	beq lbl_8014EDAC
/* 8014EDA0  38 7E 00 58 */	addi r3, r30, 0x58
/* 8014EDA4  80 9D 08 1C */	lwz r4, 0x81c(r29)
/* 8014EDA8  48 1E 09 51 */	bl removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
lbl_8014EDAC:
/* 8014EDAC  A0 1D 08 40 */	lhz r0, 0x840(r29)
/* 8014EDB0  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8014EDB4  41 82 00 10 */	beq lbl_8014EDC4
/* 8014EDB8  38 7E 00 58 */	addi r3, r30, 0x58
/* 8014EDBC  80 9D 08 34 */	lwz r4, 0x834(r29)
/* 8014EDC0  48 1E 09 F5 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_8014EDC4:
/* 8014EDC4  80 7D 07 E8 */	lwz r3, 0x7e8(r29)
/* 8014EDC8  38 80 00 01 */	li r4, 1
/* 8014EDCC  7F E5 FB 78 */	mr r5, r31
/* 8014EDD0  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 8014EDD4  FC 20 F8 90 */	fmr f1, f31
/* 8014EDD8  C0 42 9A 44 */	lfs f2, lit_5794(r2)
/* 8014EDDC  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8014EDE0  C0 9D 0A 10 */	lfs f4, 0xa10(r29)
/* 8014EDE4  38 FD 09 E8 */	addi r7, r29, 0x9e8
/* 8014EDE8  39 1D 01 0C */	addi r8, r29, 0x10c
/* 8014EDEC  39 20 00 00 */	li r9, 0
/* 8014EDF0  C0 A2 99 DC */	lfs f5, lit_4140(r2)
/* 8014EDF4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8014EDF8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8014EDFC  4B ED FB 15 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8014EE00  90 7D 07 E8 */	stw r3, 0x7e8(r29)
/* 8014EE04  7F A3 EB 78 */	mr r3, r29
/* 8014EE08  81 9D 05 68 */	lwz r12, 0x568(r29)
/* 8014EE0C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8014EE10  7D 89 03 A6 */	mtctr r12
/* 8014EE14  4E 80 04 21 */	bctrl 
/* 8014EE18  38 60 00 01 */	li r3, 1
lbl_8014EE1C:
/* 8014EE1C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8014EE20  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8014EE24  39 61 00 20 */	addi r11, r1, 0x20
/* 8014EE28  48 21 33 FD */	bl _restgpr_28
/* 8014EE2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014EE30  7C 08 03 A6 */	mtlr r0
/* 8014EE34  38 21 00 30 */	addi r1, r1, 0x30
/* 8014EE38  4E 80 00 20 */	blr 
