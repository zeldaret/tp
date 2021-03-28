lbl_80599A78:
/* 80599A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599A7C  7C 08 02 A6 */	mflr r0
/* 80599A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80599A88  93 C1 00 08 */	stw r30, 8(r1)
/* 80599A8C  7C 7E 1B 78 */	mr r30, r3
/* 80599A90  3C 60 80 5A */	lis r3, m__19daObj_Stick_Param_c@ha
/* 80599A94  3B E3 9E 3C */	addi r31, r3, m__19daObj_Stick_Param_c@l
/* 80599A98  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80599A9C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80599AA0  38 80 00 00 */	li r4, 0
/* 80599AA4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80599AA8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80599AAC  4B C0 9D 18 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80599AB0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80599AB4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80599AB8  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80599ABC  80 84 00 04 */	lwz r4, 4(r4)
/* 80599AC0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80599AC4  4B C0 B2 DC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80599AC8  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80599ACC  4B A7 41 F8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80599AD0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80599AD4  C0 9E 09 40 */	lfs f4, 0x940(r30)
/* 80599AD8  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 80599ADC  41 82 00 44 */	beq lbl_80599B20
/* 80599AE0  80 7E 09 44 */	lwz r3, 0x944(r30)
/* 80599AE4  38 80 00 01 */	li r4, 1
/* 80599AE8  80 BE 05 74 */	lwz r5, 0x574(r30)
/* 80599AEC  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80599AF0  38 FF 00 00 */	addi r7, r31, 0
/* 80599AF4  C0 27 00 0C */	lfs f1, 0xc(r7)
/* 80599AF8  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80599AFC  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80599B00  38 FE 07 E0 */	addi r7, r30, 0x7e0
/* 80599B04  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80599B08  39 20 00 00 */	li r9, 0
/* 80599B0C  C0 BF 00 28 */	lfs f5, 0x28(r31)
/* 80599B10  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80599B14  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80599B18  4B A9 4D F8 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80599B1C  90 7E 09 44 */	stw r3, 0x944(r30)
lbl_80599B20:
/* 80599B20  38 60 00 01 */	li r3, 1
/* 80599B24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80599B28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80599B2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599B30  7C 08 03 A6 */	mtlr r0
/* 80599B34  38 21 00 10 */	addi r1, r1, 0x10
/* 80599B38  4E 80 00 20 */	blr 
