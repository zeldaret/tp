lbl_80CDE92C:
/* 80CDE92C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CDE930  7C 08 02 A6 */	mflr r0
/* 80CDE934  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CDE938  39 61 00 30 */	addi r11, r1, 0x30
/* 80CDE93C  4B 68 38 A0 */	b _savegpr_29
/* 80CDE940  7C 7F 1B 78 */	mr r31, r3
/* 80CDE944  3C 60 80 CE */	lis r3, lit_3776@ha
/* 80CDE948  3B A3 EE F4 */	addi r29, r3, lit_3776@l
/* 80CDE94C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CDE950  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CDE954  38 80 00 08 */	li r4, 8
/* 80CDE958  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CDE95C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CDE960  4B 4C 4E 64 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CDE964  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CDE968  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CDE96C  80 9F 05 84 */	lwz r4, 0x584(r31)
/* 80CDE970  80 84 00 04 */	lwz r4, 4(r4)
/* 80CDE974  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CDE978  4B 4C 64 28 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CDE97C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDE980  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CDE984  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CDE988  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80CDE98C  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 80CDE990  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80CDE994  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CDE998  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CDE99C  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80CDE9A0  4B 32 F3 24 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CDE9A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDE9A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDE9AC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CDE9B0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80CDE9B4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CDE9B8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CDE9BC  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80CDE9C0  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 80CDE9C4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CDE9C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CDE9CC  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80CDE9D0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CDE9D4  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80CDE9D8  38 80 00 01 */	li r4, 1
/* 80CDE9DC  80 BF 05 84 */	lwz r5, 0x584(r31)
/* 80CDE9E0  38 C1 00 08 */	addi r6, r1, 8
/* 80CDE9E4  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80CDE9E8  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80CDE9EC  C0 9F 05 BC */	lfs f4, 0x5bc(r31)
/* 80CDE9F0  38 FF 05 74 */	addi r7, r31, 0x574
/* 80CDE9F4  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80CDE9F8  39 20 00 00 */	li r9, 0
/* 80CDE9FC  C0 BD 00 18 */	lfs f5, 0x18(r29)
/* 80CDEA00  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80CDEA04  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80CDEA08  4B 34 FF 08 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80CDEA0C  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 80CDEA10  38 60 00 01 */	li r3, 1
/* 80CDEA14  39 61 00 30 */	addi r11, r1, 0x30
/* 80CDEA18  4B 68 38 10 */	b _restgpr_29
/* 80CDEA1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CDEA20  7C 08 03 A6 */	mtlr r0
/* 80CDEA24  38 21 00 30 */	addi r1, r1, 0x30
/* 80CDEA28  4E 80 00 20 */	blr 
