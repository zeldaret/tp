lbl_80C95140:
/* 80C95140  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C95144  7C 08 02 A6 */	mflr r0
/* 80C95148  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C9514C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C95150  4B 6C D0 8C */	b _savegpr_29
/* 80C95154  7C 7E 1B 78 */	mr r30, r3
/* 80C95158  3C 60 80 C9 */	lis r3, m__17daObj_Mie_Param_c@ha
/* 80C9515C  3B E3 5A AC */	addi r31, r3, m__17daObj_Mie_Param_c@l
/* 80C95160  88 1E 0A 45 */	lbz r0, 0xa45(r30)
/* 80C95164  28 00 00 00 */	cmplwi r0, 0
/* 80C95168  40 82 01 0C */	bne lbl_80C95274
/* 80C9516C  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C95170  83 A3 00 04 */	lwz r29, 4(r3)
/* 80C95174  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C95178  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C9517C  38 80 00 00 */	li r4, 0
/* 80C95180  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C95184  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C95188  4B 50 E6 3C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C9518C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C95190  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C95194  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80C95198  80 84 00 04 */	lwz r4, 4(r4)
/* 80C9519C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C951A0  4B 50 FC 00 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C951A4  7F C3 F3 78 */	mr r3, r30
/* 80C951A8  7F A4 EB 78 */	mr r4, r29
/* 80C951AC  4B 38 82 80 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80C951B0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C951B4  4B 37 8B 10 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C951B8  38 00 00 00 */	li r0, 0
/* 80C951BC  90 01 00 08 */	stw r0, 8(r1)
/* 80C951C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C951C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C951C8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C951CC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80C951D0  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80C951D4  7D 89 03 A6 */	mtctr r12
/* 80C951D8  4E 80 04 21 */	bctrl 
/* 80C951DC  38 81 00 08 */	addi r4, r1, 8
/* 80C951E0  4B 38 47 DC */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80C951E4  80 01 00 08 */	lwz r0, 8(r1)
/* 80C951E8  7C 00 F0 40 */	cmplw r0, r30
/* 80C951EC  40 82 00 10 */	bne lbl_80C951FC
/* 80C951F0  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80C951F4  90 1E 05 24 */	stw r0, 0x524(r30)
/* 80C951F8  48 00 00 7C */	b lbl_80C95274
lbl_80C951FC:
/* 80C951FC  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80C95200  C0 1E 0A 00 */	lfs f0, 0xa00(r30)
/* 80C95204  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C95208  41 82 00 6C */	beq lbl_80C95274
/* 80C9520C  3C 60 80 C9 */	lis r3, __vt__8cM3dGPla@ha
/* 80C95210  38 03 5C 34 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C95214  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C95218  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9521C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C95220  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C95224  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80C95228  38 A1 00 0C */	addi r5, r1, 0xc
/* 80C9522C  4B 3D F5 18 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C95230  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C95234  41 82 00 34 */	beq lbl_80C95268
/* 80C95238  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9523C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C95240  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80C95244  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C95248  C0 3E 0A 00 */	lfs f1, 0xa00(r30)
/* 80C9524C  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 80C95250  38 A1 00 0C */	addi r5, r1, 0xc
/* 80C95254  38 C0 00 00 */	li r6, 0
/* 80C95258  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 80C9525C  3C E0 80 42 */	lis r7, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80C95260  38 E7 48 D0 */	addi r7, r7, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80C95264  4B 3C 0D 20 */	b setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj
lbl_80C95268:
/* 80C95268  3C 60 80 C9 */	lis r3, __vt__8cM3dGPla@ha
/* 80C9526C  38 03 5C 34 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C95270  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_80C95274:
/* 80C95274  38 60 00 01 */	li r3, 1
/* 80C95278  39 61 00 30 */	addi r11, r1, 0x30
/* 80C9527C  4B 6C CF AC */	b _restgpr_29
/* 80C95280  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C95284  7C 08 03 A6 */	mtlr r0
/* 80C95288  38 21 00 30 */	addi r1, r1, 0x30
/* 80C9528C  4E 80 00 20 */	blr 
