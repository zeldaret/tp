lbl_808497F8:
/* 808497F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 808497FC  7C 08 02 A6 */	mflr r0
/* 80849800  90 01 00 34 */	stw r0, 0x34(r1)
/* 80849804  39 61 00 30 */	addi r11, r1, 0x30
/* 80849808  4B B1 89 D0 */	b _savegpr_28
/* 8084980C  7C 7E 1B 78 */	mr r30, r3
/* 80849810  3C 60 80 85 */	lis r3, lit_3929@ha
/* 80849814  3B E3 4B 04 */	addi r31, r3, lit_3929@l
/* 80849818  88 1E 06 DE */	lbz r0, 0x6de(r30)
/* 8084981C  28 00 00 00 */	cmplwi r0, 0
/* 80849820  40 82 00 0C */	bne lbl_8084982C
/* 80849824  38 60 00 01 */	li r3, 1
/* 80849828  48 00 00 E4 */	b lbl_8084990C
lbl_8084982C:
/* 8084982C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80849830  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80849834  38 80 00 02 */	li r4, 2
/* 80849838  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8084983C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80849840  4B 95 9F 84 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80849844  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80849848  83 83 00 04 */	lwz r28, 4(r3)
/* 8084984C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80849850  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80849854  80 9C 00 04 */	lwz r4, 4(r28)
/* 80849858  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8084985C  4B 95 B5 44 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80849860  7F C3 F3 78 */	mr r3, r30
/* 80849864  80 9C 00 04 */	lwz r4, 4(r28)
/* 80849868  4B 7D 3B C4 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 8084986C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80849870  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80849874  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 80849878  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8084987C  3B A3 4A C8 */	addi r29, r3, j3dSys@l
/* 80849880  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80849884  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 80849888  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 8084988C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80849890  4B 7C 79 30 */	b entryDL__16mDoExt_McaMorfSOFv
/* 80849894  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80849898  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084989C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 808498A0  90 1D 00 48 */	stw r0, 0x48(r29)
/* 808498A4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 808498A8  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 808498AC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 808498B0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 808498B4  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 808498B8  EC 20 18 2A */	fadds f1, f0, f3
/* 808498BC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 808498C0  D0 01 00 08 */	stfs f0, 8(r1)
/* 808498C4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 808498C8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 808498CC  80 7E 07 64 */	lwz r3, 0x764(r30)
/* 808498D0  38 80 00 00 */	li r4, 0
/* 808498D4  7F 85 E3 78 */	mr r5, r28
/* 808498D8  38 C1 00 08 */	addi r6, r1, 8
/* 808498DC  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 808498E0  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 808498E4  C0 9E 08 50 */	lfs f4, 0x850(r30)
/* 808498E8  38 FE 08 A8 */	addi r7, r30, 0x8a8
/* 808498EC  39 1E 01 0C */	addi r8, r30, 0x10c
/* 808498F0  39 20 00 00 */	li r9, 0
/* 808498F4  C0 BF 00 0C */	lfs f5, 0xc(r31)
/* 808498F8  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 808498FC  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80849900  4B 7E 50 10 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80849904  90 7E 07 64 */	stw r3, 0x764(r30)
/* 80849908  38 60 00 01 */	li r3, 1
lbl_8084990C:
/* 8084990C  39 61 00 30 */	addi r11, r1, 0x30
/* 80849910  4B B1 89 14 */	b _restgpr_28
/* 80849914  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80849918  7C 08 03 A6 */	mtlr r0
/* 8084991C  38 21 00 30 */	addi r1, r1, 0x30
/* 80849920  4E 80 00 20 */	blr 
