lbl_80C151A4:
/* 80C151A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C151A8  7C 08 02 A6 */	mflr r0
/* 80C151AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C151B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C151B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C151B8  7C 7E 1B 78 */	mr r30, r3
/* 80C151BC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C151C0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C151C4  38 80 00 10 */	li r4, 0x10
/* 80C151C8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C151CC  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C151D0  4B 58 E5 F5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C151D4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C151D8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C151DC  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C151E0  80 84 00 04 */	lwz r4, 4(r4)
/* 80C151E4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C151E8  4B 58 FB B9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C151EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C151F0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C151F4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C151F8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C151FC  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C15200  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C15204  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C15208  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C1520C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C15210  4B 3F 8A B5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C15214  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C15218  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1521C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C15220  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C15224  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C15228  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C1522C  38 60 00 01 */	li r3, 1
/* 80C15230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C15234  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C15238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1523C  7C 08 03 A6 */	mtlr r0
/* 80C15240  38 21 00 10 */	addi r1, r1, 0x10
/* 80C15244  4E 80 00 20 */	blr 
