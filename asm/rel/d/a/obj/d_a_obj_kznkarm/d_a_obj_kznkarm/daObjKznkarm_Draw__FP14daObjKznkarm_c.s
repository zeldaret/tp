lbl_80C50870:
/* 80C50870  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C50874  7C 08 02 A6 */	mflr r0
/* 80C50878  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C5087C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C50880  4B 71 19 5D */	bl _savegpr_29
/* 80C50884  7C 7F 1B 78 */	mr r31, r3
/* 80C50888  3C 60 80 C5 */	lis r3, M_attr__14daObjKznkarm_c@ha /* 0x80C50D08@ha */
/* 80C5088C  3B A3 0D 08 */	addi r29, r3, M_attr__14daObjKznkarm_c@l /* 0x80C50D08@l */
/* 80C50890  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C50894  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C50898  38 80 00 10 */	li r4, 0x10
/* 80C5089C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C508A0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C508A4  4B 55 2F 21 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C508A8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C508AC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C508B0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C508B4  80 84 00 04 */	lwz r4, 4(r4)
/* 80C508B8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C508BC  4B 55 44 E5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C508C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C508C4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C508C8  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C508CC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C508D0  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C508D4  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C508D8  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C508DC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C508E0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C508E4  4B 3B D3 E1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C508E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C508EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C508F0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C508F4  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C508F8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C508FC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C50900  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80C50904  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 80C50908  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 80C5090C  EC 20 18 2A */	fadds f1, f0, f3
/* 80C50910  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C50914  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C50918  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C5091C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80C50920  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C50924  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C50928  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C5092C  80 7F 07 94 */	lwz r3, 0x794(r31)
/* 80C50930  38 80 00 01 */	li r4, 1
/* 80C50934  80 BF 05 68 */	lwz r5, 0x568(r31)
/* 80C50938  38 C1 00 08 */	addi r6, r1, 8
/* 80C5093C  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 80C50940  C0 5D 00 3C */	lfs f2, 0x3c(r29)
/* 80C50944  C0 9F 06 4C */	lfs f4, 0x64c(r31)
/* 80C50948  38 FF 06 A4 */	addi r7, r31, 0x6a4
/* 80C5094C  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80C50950  39 20 00 00 */	li r9, 0
/* 80C50954  C0 BD 00 58 */	lfs f5, 0x58(r29)
/* 80C50958  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80C5095C  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80C50960  4B 3D DF B1 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80C50964  90 7F 07 94 */	stw r3, 0x794(r31)
/* 80C50968  38 60 00 01 */	li r3, 1
/* 80C5096C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C50970  4B 71 18 B9 */	bl _restgpr_29
/* 80C50974  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C50978  7C 08 03 A6 */	mtlr r0
/* 80C5097C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C50980  4E 80 00 20 */	blr 
