lbl_80C7637C:
/* 80C7637C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C76380  7C 08 02 A6 */	mflr r0
/* 80C76384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C76388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7638C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C76390  7C 7F 1B 78 */	mr r31, r3
/* 80C76394  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C76398  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C7639C  38 80 00 10 */	li r4, 0x10
/* 80C763A0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C763A4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C763A8  4B 52 D4 1D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C763AC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C763B0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C763B4  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C763B8  80 84 00 04 */	lwz r4, 4(r4)
/* 80C763BC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C763C0  4B 52 E9 E1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C763C4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C763C8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C763CC  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80C763D0  80 84 00 04 */	lwz r4, 4(r4)
/* 80C763D4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C763D8  4B 52 E9 C9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C763DC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C763E0  83 C3 00 04 */	lwz r30, 4(r3)
/* 80C763E4  C0 3F 05 C0 */	lfs f1, 0x5c0(r31)
/* 80C763E8  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80C763EC  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C763F0  4B 39 73 B9 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C763F4  C0 3F 05 D8 */	lfs f1, 0x5d8(r31)
/* 80C763F8  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 80C763FC  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C76400  4B 39 72 D9 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C76404  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80C76408  83 C3 00 04 */	lwz r30, 4(r3)
/* 80C7640C  C0 3F 05 C0 */	lfs f1, 0x5c0(r31)
/* 80C76410  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80C76414  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C76418  4B 39 73 91 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C7641C  C0 3F 05 D8 */	lfs f1, 0x5d8(r31)
/* 80C76420  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 80C76424  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C76428  4B 39 72 B1 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C7642C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C76430  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C76434  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C76438  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C7643C  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C76440  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C76444  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C76448  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C7644C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C76450  4B 39 78 75 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C76454  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80C76458  4B 39 78 6D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C7645C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C76460  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C76464  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C76468  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C7646C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C76470  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C76474  38 60 00 01 */	li r3, 1
/* 80C76478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7647C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C76480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C76484  7C 08 03 A6 */	mtlr r0
/* 80C76488  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7648C  4E 80 00 20 */	blr 
