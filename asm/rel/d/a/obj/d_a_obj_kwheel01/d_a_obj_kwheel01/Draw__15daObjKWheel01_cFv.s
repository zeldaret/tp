lbl_80C4F344:
/* 80C4F344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4F348  7C 08 02 A6 */	mflr r0
/* 80C4F34C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4F350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4F354  93 C1 00 08 */	stw r30, 8(r1)
/* 80C4F358  7C 7E 1B 78 */	mr r30, r3
/* 80C4F35C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C4F360  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C4F364  38 80 00 10 */	li r4, 0x10
/* 80C4F368  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C4F36C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C4F370  4B 55 44 55 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C4F374  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C4F378  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C4F37C  80 9E 06 18 */	lwz r4, 0x618(r30)
/* 80C4F380  80 84 00 04 */	lwz r4, 4(r4)
/* 80C4F384  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C4F388  4B 55 5A 19 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C4F38C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4F390  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4F394  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C4F398  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C4F39C  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C4F3A0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C4F3A4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C4F3A8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C4F3AC  80 7E 06 18 */	lwz r3, 0x618(r30)
/* 80C4F3B0  4B 3B E9 15 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C4F3B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4F3B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4F3BC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C4F3C0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C4F3C4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C4F3C8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C4F3CC  38 60 00 01 */	li r3, 1
/* 80C4F3D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4F3D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C4F3D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4F3DC  7C 08 03 A6 */	mtlr r0
/* 80C4F3E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4F3E4  4E 80 00 20 */	blr 
