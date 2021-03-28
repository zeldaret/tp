lbl_80BF3FAC:
/* 80BF3FAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BF3FB0  7C 08 02 A6 */	mflr r0
/* 80BF3FB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BF3FB8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BF3FBC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BF3FC0  7C 7E 1B 78 */	mr r30, r3
/* 80BF3FC4  3C 60 80 BF */	lis r3, m__20daObj_Gadget_Param_c@ha
/* 80BF3FC8  3B E3 49 44 */	addi r31, r3, m__20daObj_Gadget_Param_c@l
/* 80BF3FCC  88 1E 0A 44 */	lbz r0, 0xa44(r30)
/* 80BF3FD0  28 00 00 00 */	cmplwi r0, 0
/* 80BF3FD4  40 82 00 F8 */	bne lbl_80BF40CC
/* 80BF3FD8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BF3FDC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BF3FE0  38 80 00 00 */	li r4, 0
/* 80BF3FE4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BF3FE8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BF3FEC  4B 5A F7 D8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BF3FF0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BF3FF4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BF3FF8  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80BF3FFC  80 84 00 04 */	lwz r4, 4(r4)
/* 80BF4000  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BF4004  4B 5B 0D 9C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BF4008  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80BF400C  4B 41 9C B8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BF4010  38 00 00 00 */	li r0, 0
/* 80BF4014  90 01 00 08 */	stw r0, 8(r1)
/* 80BF4018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF401C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF4020  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80BF4024  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BF4028  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80BF402C  7D 89 03 A6 */	mtctr r12
/* 80BF4030  4E 80 04 21 */	bctrl 
/* 80BF4034  38 81 00 08 */	addi r4, r1, 8
/* 80BF4038  4B 42 59 84 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80BF403C  80 01 00 08 */	lwz r0, 8(r1)
/* 80BF4040  7C 00 F0 40 */	cmplw r0, r30
/* 80BF4044  40 82 00 10 */	bne lbl_80BF4054
/* 80BF4048  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80BF404C  90 1E 05 24 */	stw r0, 0x524(r30)
/* 80BF4050  48 00 00 7C */	b lbl_80BF40CC
lbl_80BF4054:
/* 80BF4054  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BF4058  C0 1E 0A 00 */	lfs f0, 0xa00(r30)
/* 80BF405C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BF4060  41 82 00 6C */	beq lbl_80BF40CC
/* 80BF4064  3C 60 80 BF */	lis r3, __vt__8cM3dGPla@ha
/* 80BF4068  38 03 4B 00 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80BF406C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BF4070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF4074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF4078  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BF407C  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80BF4080  38 A1 00 0C */	addi r5, r1, 0xc
/* 80BF4084  4B 48 06 C0 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80BF4088  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF408C  41 82 00 34 */	beq lbl_80BF40C0
/* 80BF4090  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF4094  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF4098  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80BF409C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BF40A0  C0 3E 0A 00 */	lfs f1, 0xa00(r30)
/* 80BF40A4  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80BF40A8  38 A1 00 0C */	addi r5, r1, 0xc
/* 80BF40AC  38 C0 00 00 */	li r6, 0
/* 80BF40B0  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 80BF40B4  3C E0 80 42 */	lis r7, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80BF40B8  38 E7 48 D0 */	addi r7, r7, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80BF40BC  4B 46 1E C8 */	b setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj
lbl_80BF40C0:
/* 80BF40C0  3C 60 80 BF */	lis r3, __vt__8cM3dGPla@ha
/* 80BF40C4  38 03 4B 00 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80BF40C8  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_80BF40CC:
/* 80BF40CC  38 60 00 01 */	li r3, 1
/* 80BF40D0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BF40D4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BF40D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BF40DC  7C 08 03 A6 */	mtlr r0
/* 80BF40E0  38 21 00 30 */	addi r1, r1, 0x30
/* 80BF40E4  4E 80 00 20 */	blr 
