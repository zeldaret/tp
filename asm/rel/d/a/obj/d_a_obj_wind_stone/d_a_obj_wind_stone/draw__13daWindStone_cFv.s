lbl_80D37F6C:
/* 80D37F6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D37F70  7C 08 02 A6 */	mflr r0
/* 80D37F74  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D37F78  39 61 00 30 */	addi r11, r1, 0x30
/* 80D37F7C  4B 62 A2 61 */	bl _savegpr_29
/* 80D37F80  7C 7F 1B 78 */	mr r31, r3
/* 80D37F84  3C 60 80 D4 */	lis r3, lit_3760@ha /* 0x80D38608@ha */
/* 80D37F88  3B A3 86 08 */	addi r29, r3, lit_3760@l /* 0x80D38608@l */
/* 80D37F8C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D37F90  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D37F94  38 80 00 08 */	li r4, 8
/* 80D37F98  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D37F9C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D37FA0  4B 46 B8 25 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D37FA4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D37FA8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D37FAC  80 9F 05 84 */	lwz r4, 0x584(r31)
/* 80D37FB0  80 84 00 04 */	lwz r4, 4(r4)
/* 80D37FB4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D37FB8  4B 46 CD E9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D37FBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D37FC0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D37FC4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D37FC8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D37FCC  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D37FD0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D37FD4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D37FD8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D37FDC  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80D37FE0  4B 2D 5C E5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D37FE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D37FE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D37FEC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D37FF0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D37FF4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D37FF8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D37FFC  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80D38000  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 80D38004  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D38008  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D3800C  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80D38010  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D38014  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80D38018  38 80 00 01 */	li r4, 1
/* 80D3801C  80 BF 05 84 */	lwz r5, 0x584(r31)
/* 80D38020  38 C1 00 08 */	addi r6, r1, 8
/* 80D38024  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80D38028  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80D3802C  C0 9F 05 BC */	lfs f4, 0x5bc(r31)
/* 80D38030  38 FF 05 74 */	addi r7, r31, 0x574
/* 80D38034  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80D38038  39 20 00 00 */	li r9, 0
/* 80D3803C  C0 BD 00 18 */	lfs f5, 0x18(r29)
/* 80D38040  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80D38044  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80D38048  4B 2F 68 C9 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80D3804C  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 80D38050  38 60 00 01 */	li r3, 1
/* 80D38054  39 61 00 30 */	addi r11, r1, 0x30
/* 80D38058  4B 62 A1 D1 */	bl _restgpr_29
/* 80D3805C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D38060  7C 08 03 A6 */	mtlr r0
/* 80D38064  38 21 00 30 */	addi r1, r1, 0x30
/* 80D38068  4E 80 00 20 */	blr 
