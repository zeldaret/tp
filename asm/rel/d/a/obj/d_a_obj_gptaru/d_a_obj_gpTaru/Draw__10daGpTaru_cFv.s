lbl_8057F284:
/* 8057F284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F288  7C 08 02 A6 */	mflr r0
/* 8057F28C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057F294  93 C1 00 08 */	stw r30, 8(r1)
/* 8057F298  7C 7E 1B 78 */	mr r30, r3
/* 8057F29C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8057F2A0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8057F2A4  38 80 00 10 */	li r4, 0x10
/* 8057F2A8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8057F2AC  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8057F2B0  4B C2 45 15 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8057F2B4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8057F2B8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8057F2BC  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 8057F2C0  80 84 00 04 */	lwz r4, 4(r4)
/* 8057F2C4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8057F2C8  4B C2 5A D9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8057F2CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057F2D0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057F2D4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 8057F2D8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8057F2DC  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 8057F2E0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8057F2E4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8057F2E8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8057F2EC  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8057F2F0  4B A8 E9 D5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8057F2F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057F2F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057F2FC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8057F300  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8057F304  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8057F308  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8057F30C  38 60 00 01 */	li r3, 1
/* 8057F310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057F314  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057F318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057F31C  7C 08 03 A6 */	mtlr r0
/* 8057F320  38 21 00 10 */	addi r1, r1, 0x10
/* 8057F324  4E 80 00 20 */	blr 
