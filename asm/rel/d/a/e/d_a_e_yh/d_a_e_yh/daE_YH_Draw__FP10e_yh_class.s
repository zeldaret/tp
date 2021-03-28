lbl_807FD840:
/* 807FD840  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807FD844  7C 08 02 A6 */	mflr r0
/* 807FD848  90 01 00 34 */	stw r0, 0x34(r1)
/* 807FD84C  39 61 00 30 */	addi r11, r1, 0x30
/* 807FD850  4B B6 49 84 */	b _savegpr_27
/* 807FD854  7C 7F 1B 78 */	mr r31, r3
/* 807FD858  3C 60 80 80 */	lis r3, lit_3902@ha
/* 807FD85C  3B A3 42 7C */	addi r29, r3, lit_3902@l
/* 807FD860  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807FD864  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807FD868  38 80 00 02 */	li r4, 2
/* 807FD86C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807FD870  38 DF 01 0C */	addi r6, r31, 0x10c
/* 807FD874  4B 9A 5F 50 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807FD878  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807FD87C  83 C3 00 04 */	lwz r30, 4(r3)
/* 807FD880  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807FD884  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807FD888  80 9E 00 04 */	lwz r4, 4(r30)
/* 807FD88C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 807FD890  4B 9A 75 10 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807FD894  80 9E 00 04 */	lwz r4, 4(r30)
/* 807FD898  80 7F 06 60 */	lwz r3, 0x660(r31)
/* 807FD89C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 807FD8A0  38 84 00 58 */	addi r4, r4, 0x58
/* 807FD8A4  4B 80 FF 04 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 807FD8A8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807FD8AC  4B 81 39 14 */	b entryDL__16mDoExt_McaMorfSOFv
/* 807FD8B0  A8 1F 06 6E */	lha r0, 0x66e(r31)
/* 807FD8B4  2C 00 00 0A */	cmpwi r0, 0xa
/* 807FD8B8  41 82 00 6C */	beq lbl_807FD924
/* 807FD8BC  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 807FD8C0  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 807FD8C4  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 807FD8C8  EC 20 18 2A */	fadds f1, f0, f3
/* 807FD8CC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807FD8D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 807FD8D4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807FD8D8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807FD8DC  80 7F 06 68 */	lwz r3, 0x668(r31)
/* 807FD8E0  38 80 00 01 */	li r4, 1
/* 807FD8E4  7F C5 F3 78 */	mr r5, r30
/* 807FD8E8  38 C1 00 08 */	addi r6, r1, 8
/* 807FD8EC  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 807FD8F0  C0 5D 00 04 */	lfs f2, 4(r29)
/* 807FD8F4  3C E0 80 45 */	lis r7, mGroundY__11fopAcM_gc_c@ha
/* 807FD8F8  C0 87 0C D0 */	lfs f4, mGroundY__11fopAcM_gc_c@l(r7)
/* 807FD8FC  3C E0 80 3F */	lis r7, mGndCheck__11fopAcM_gc_c@ha
/* 807FD900  38 E7 1C C4 */	addi r7, r7, mGndCheck__11fopAcM_gc_c@l
/* 807FD904  38 E7 00 14 */	addi r7, r7, 0x14
/* 807FD908  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807FD90C  39 20 00 00 */	li r9, 0
/* 807FD910  C0 BD 00 08 */	lfs f5, 8(r29)
/* 807FD914  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 807FD918  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 807FD91C  4B 83 0F F4 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807FD920  90 7F 06 68 */	stw r3, 0x668(r31)
lbl_807FD924:
/* 807FD924  38 7F 08 08 */	addi r3, r31, 0x808
/* 807FD928  38 80 00 0C */	li r4, 0xc
/* 807FD92C  3C A0 80 80 */	lis r5, l_color@ha
/* 807FD930  38 A5 44 20 */	addi r5, r5, l_color@l
/* 807FD934  38 DF 01 0C */	addi r6, r31, 0x10c
/* 807FD938  4B 81 66 78 */	b update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 807FD93C  38 7F 08 08 */	addi r3, r31, 0x808
/* 807FD940  81 9F 08 08 */	lwz r12, 0x808(r31)
/* 807FD944  81 8C 00 08 */	lwz r12, 8(r12)
/* 807FD948  7D 89 03 A6 */	mtctr r12
/* 807FD94C  4E 80 04 21 */	bctrl 
/* 807FD950  1C 83 00 14 */	mulli r4, r3, 0x14
/* 807FD954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807FD958  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 807FD95C  7C 60 22 14 */	add r3, r0, r4
/* 807FD960  3C 63 00 01 */	addis r3, r3, 1
/* 807FD964  38 63 61 54 */	addi r3, r3, 0x6154
/* 807FD968  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 807FD96C  38 9F 08 08 */	addi r4, r31, 0x808
/* 807FD970  4B 81 6D C8 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 807FD974  3B 60 00 01 */	li r27, 1
/* 807FD978  3B C0 00 04 */	li r30, 4
/* 807FD97C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807FD980  3B A3 CA 54 */	addi r29, r3, g_env_light@l
lbl_807FD984:
/* 807FD984  3B 9E 07 78 */	addi r28, r30, 0x778
/* 807FD988  7C 9F E0 2E */	lwzx r4, r31, r28
/* 807FD98C  28 04 00 00 */	cmplwi r4, 0
/* 807FD990  41 82 00 1C */	beq lbl_807FD9AC
/* 807FD994  7F A3 EB 78 */	mr r3, r29
/* 807FD998  80 84 00 04 */	lwz r4, 4(r4)
/* 807FD99C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 807FD9A0  4B 9A 74 00 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807FD9A4  7C 7F E0 2E */	lwzx r3, r31, r28
/* 807FD9A8  4B 81 03 1C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_807FD9AC:
/* 807FD9AC  3B 7B 00 01 */	addi r27, r27, 1
/* 807FD9B0  2C 1B 00 0B */	cmpwi r27, 0xb
/* 807FD9B4  3B DE 00 04 */	addi r30, r30, 4
/* 807FD9B8  41 80 FF CC */	blt lbl_807FD984
/* 807FD9BC  38 60 00 01 */	li r3, 1
/* 807FD9C0  39 61 00 30 */	addi r11, r1, 0x30
/* 807FD9C4  4B B6 48 5C */	b _restgpr_27
/* 807FD9C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807FD9CC  7C 08 03 A6 */	mtlr r0
/* 807FD9D0  38 21 00 30 */	addi r1, r1, 0x30
/* 807FD9D4  4E 80 00 20 */	blr 
