lbl_80D075A4:
/* 80D075A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D075A8  7C 08 02 A6 */	mflr r0
/* 80D075AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D075B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D075B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D075B8  7C 7E 1B 78 */	mr r30, r3
/* 80D075BC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D075C0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D075C4  38 80 00 10 */	li r4, 0x10
/* 80D075C8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D075CC  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D075D0  4B 49 C1 F5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D075D4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D075D8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D075DC  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80D075E0  80 84 00 04 */	lwz r4, 4(r4)
/* 80D075E4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D075E8  4B 49 D7 B9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D075EC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D075F0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D075F4  80 9E 05 AC */	lwz r4, 0x5ac(r30)
/* 80D075F8  80 84 00 04 */	lwz r4, 4(r4)
/* 80D075FC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D07600  4B 49 D7 A1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D07604  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D07608  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0760C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D07610  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D07614  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D07618  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D0761C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D07620  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D07624  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D07628  4B 30 66 9D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D0762C  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80D07630  4B 30 66 95 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D07634  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D07638  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0763C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D07640  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D07644  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D07648  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D0764C  38 60 00 01 */	li r3, 1
/* 80D07650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D07654  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D07658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0765C  7C 08 03 A6 */	mtlr r0
/* 80D07660  38 21 00 10 */	addi r1, r1, 0x10
/* 80D07664  4E 80 00 20 */	blr 
