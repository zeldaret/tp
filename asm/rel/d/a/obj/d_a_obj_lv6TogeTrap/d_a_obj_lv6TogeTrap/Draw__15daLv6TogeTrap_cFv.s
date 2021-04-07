lbl_80C7C33C:
/* 80C7C33C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7C340  7C 08 02 A6 */	mflr r0
/* 80C7C344  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7C348  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7C34C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C7C350  7C 7E 1B 78 */	mr r30, r3
/* 80C7C354  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C7C358  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C7C35C  38 80 00 10 */	li r4, 0x10
/* 80C7C360  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C7C364  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C7C368  4B 52 74 5D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C7C36C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C7C370  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C7C374  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C7C378  80 84 00 04 */	lwz r4, 4(r4)
/* 80C7C37C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C7C380  4B 52 8A 21 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C7C384  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7C388  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7C38C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C7C390  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C7C394  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C7C398  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C7C39C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C7C3A0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C7C3A4  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C7C3A8  4B 39 19 1D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C7C3AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7C3B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7C3B4  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C7C3B8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C7C3BC  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C7C3C0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C7C3C4  38 60 00 01 */	li r3, 1
/* 80C7C3C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7C3CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C7C3D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7C3D4  7C 08 03 A6 */	mtlr r0
/* 80C7C3D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7C3DC  4E 80 00 20 */	blr 
