lbl_80C5ADA4:
/* 80C5ADA4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C5ADA8  7C 08 02 A6 */	mflr r0
/* 80C5ADAC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C5ADB0  39 61 00 50 */	addi r11, r1, 0x50
/* 80C5ADB4  4B 70 74 20 */	b _savegpr_27
/* 80C5ADB8  7C 7E 1B 78 */	mr r30, r3
/* 80C5ADBC  3C 60 80 C6 */	lis r3, l_bmdIdx@ha
/* 80C5ADC0  3B E3 B3 64 */	addi r31, r3, l_bmdIdx@l
/* 80C5ADC4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C5ADC8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C5ADCC  38 80 00 10 */	li r4, 0x10
/* 80C5ADD0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C5ADD4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C5ADD8  4B 54 89 EC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C5ADDC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C5ADE0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C5ADE4  80 9E 05 C0 */	lwz r4, 0x5c0(r30)
/* 80C5ADE8  80 84 00 04 */	lwz r4, 4(r4)
/* 80C5ADEC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C5ADF0  4B 54 9F B0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C5ADF4  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80C5ADF8  83 63 00 04 */	lwz r27, 4(r3)
/* 80C5ADFC  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 80C5AE00  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80C5AE04  38 9B 00 58 */	addi r4, r27, 0x58
/* 80C5AE08  4B 3B 28 D0 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C5AE0C  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 80C5AE10  83 83 00 00 */	lwz r28, 0(r3)
/* 80C5AE14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5AE18  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C5AE1C  80 04 5F A0 */	lwz r0, 0x5fa0(r4)
/* 80C5AE20  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C5AE24  3B A3 4A C8 */	addi r29, r3, j3dSys@l
/* 80C5AE28  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80C5AE2C  80 04 5F A4 */	lwz r0, 0x5fa4(r4)
/* 80C5AE30  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80C5AE34  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80C5AE38  38 80 00 00 */	li r4, 0
/* 80C5AE3C  81 83 00 00 */	lwz r12, 0(r3)
/* 80C5AE40  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80C5AE44  7D 89 03 A6 */	mtctr r12
/* 80C5AE48  4E 80 04 21 */	bctrl 
/* 80C5AE4C  28 03 00 00 */	cmplwi r3, 0
/* 80C5AE50  41 82 00 70 */	beq lbl_80C5AEC0
/* 80C5AE54  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80C5AE58  38 80 00 00 */	li r4, 0
/* 80C5AE5C  81 83 00 00 */	lwz r12, 0(r3)
/* 80C5AE60  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80C5AE64  7D 89 03 A6 */	mtctr r12
/* 80C5AE68  4E 80 04 21 */	bctrl 
/* 80C5AE6C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C5AE70  41 82 00 50 */	beq lbl_80C5AEC0
/* 80C5AE74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5AE78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5AE7C  80 83 61 B0 */	lwz r4, 0x61b0(r3)
/* 80C5AE80  38 61 00 08 */	addi r3, r1, 8
/* 80C5AE84  C0 24 00 D0 */	lfs f1, 0xd0(r4)
/* 80C5AE88  C0 44 00 D4 */	lfs f2, 0xd4(r4)
/* 80C5AE8C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80C5AE90  FC 80 18 90 */	fmr f4, f3
/* 80C5AE94  C0 BF 00 28 */	lfs f5, 0x28(r31)
/* 80C5AE98  C0 DF 00 2C */	lfs f6, 0x2c(r31)
/* 80C5AE9C  4B 6E BD 7C */	b C_MTXLightPerspective
/* 80C5AEA0  7F 83 E3 78 */	mr r3, r28
/* 80C5AEA4  38 81 00 08 */	addi r4, r1, 8
/* 80C5AEA8  4B 6C A8 EC */	b setEffectMtx__13J3DTexMtxInfoFPA4_f
/* 80C5AEAC  7F 63 DB 78 */	mr r3, r27
/* 80C5AEB0  38 80 00 00 */	li r4, 0
/* 80C5AEB4  3C A0 80 3A */	lis r5, j3dDefaultMtx@ha
/* 80C5AEB8  38 A5 1E 5C */	addi r5, r5, j3dDefaultMtx@l
/* 80C5AEBC  4B 6C B1 50 */	b simpleCalcMaterial__12J3DModelDataFUsPA4_f
lbl_80C5AEC0:
/* 80C5AEC0  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80C5AEC4  4B 3B 2E 00 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C5AEC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5AECC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5AED0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C5AED4  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80C5AED8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C5AEDC  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80C5AEE0  38 60 00 01 */	li r3, 1
/* 80C5AEE4  39 61 00 50 */	addi r11, r1, 0x50
/* 80C5AEE8  4B 70 73 38 */	b _restgpr_27
/* 80C5AEEC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C5AEF0  7C 08 03 A6 */	mtlr r0
/* 80C5AEF4  38 21 00 50 */	addi r1, r1, 0x50
/* 80C5AEF8  4E 80 00 20 */	blr 
