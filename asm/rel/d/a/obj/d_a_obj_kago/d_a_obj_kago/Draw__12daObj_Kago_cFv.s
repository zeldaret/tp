lbl_80C332D0:
/* 80C332D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C332D4  7C 08 02 A6 */	mflr r0
/* 80C332D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C332DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C332E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C332E4  7C 7F 1B 78 */	mr r31, r3
/* 80C332E8  3C 60 80 C3 */	lis r3, m__18daObj_Kago_Param_c@ha
/* 80C332EC  3B C3 3C 80 */	addi r30, r3, m__18daObj_Kago_Param_c@l
/* 80C332F0  88 1F 0B 9F */	lbz r0, 0xb9f(r31)
/* 80C332F4  28 00 00 00 */	cmplwi r0, 0
/* 80C332F8  40 82 00 DC */	bne lbl_80C333D4
/* 80C332FC  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 80C33300  2C 00 00 03 */	cmpwi r0, 3
/* 80C33304  41 82 00 D0 */	beq lbl_80C333D4
/* 80C33308  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C3330C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C33310  38 80 00 00 */	li r4, 0
/* 80C33314  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C33318  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C3331C  4B 57 04 A8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C33320  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C33324  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C33328  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C3332C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C33330  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C33334  4B 57 1A 6C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C33338  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C3333C  4B 3D A9 88 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C33340  38 00 00 00 */	li r0, 0
/* 80C33344  90 01 00 08 */	stw r0, 8(r1)
/* 80C33348  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3334C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C33350  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C33354  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80C33358  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80C3335C  7D 89 03 A6 */	mtctr r12
/* 80C33360  4E 80 04 21 */	bctrl 
/* 80C33364  38 81 00 08 */	addi r4, r1, 8
/* 80C33368  4B 3E 66 54 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80C3336C  80 01 00 08 */	lwz r0, 8(r1)
/* 80C33370  7C 1F 00 40 */	cmplw r31, r0
/* 80C33374  40 82 00 10 */	bne lbl_80C33384
/* 80C33378  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80C3337C  90 1F 05 24 */	stw r0, 0x524(r31)
/* 80C33380  48 00 00 54 */	b lbl_80C333D4
lbl_80C33384:
/* 80C33384  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80C33388  C0 9F 0B 54 */	lfs f4, 0xb54(r31)
/* 80C3338C  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 80C33390  41 82 00 44 */	beq lbl_80C333D4
/* 80C33394  80 7F 0B 78 */	lwz r3, 0xb78(r31)
/* 80C33398  38 80 00 01 */	li r4, 1
/* 80C3339C  80 BF 05 74 */	lwz r5, 0x574(r31)
/* 80C333A0  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80C333A4  38 FE 00 00 */	addi r7, r30, 0
/* 80C333A8  C0 27 00 0C */	lfs f1, 0xc(r7)
/* 80C333AC  C0 5E 00 F8 */	lfs f2, 0xf8(r30)
/* 80C333B0  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 80C333B4  38 FF 07 E0 */	addi r7, r31, 0x7e0
/* 80C333B8  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80C333BC  39 20 00 00 */	li r9, 0
/* 80C333C0  C0 BE 00 A0 */	lfs f5, 0xa0(r30)
/* 80C333C4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80C333C8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80C333CC  4B 3F B5 44 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80C333D0  90 7F 0B 78 */	stw r3, 0xb78(r31)
lbl_80C333D4:
/* 80C333D4  38 60 00 01 */	li r3, 1
/* 80C333D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C333DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C333E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C333E4  7C 08 03 A6 */	mtlr r0
/* 80C333E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C333EC  4E 80 00 20 */	blr 
