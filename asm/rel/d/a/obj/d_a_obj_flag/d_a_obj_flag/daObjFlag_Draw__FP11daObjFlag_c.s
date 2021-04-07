lbl_80BEC234:
/* 80BEC234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEC238  7C 08 02 A6 */	mflr r0
/* 80BEC23C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEC240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEC244  93 C1 00 08 */	stw r30, 8(r1)
/* 80BEC248  7C 7E 1B 78 */	mr r30, r3
/* 80BEC24C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BEC250  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BEC254  38 80 00 10 */	li r4, 0x10
/* 80BEC258  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BEC25C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BEC260  4B 5B 75 65 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BEC264  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BEC268  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BEC26C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BEC270  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BEC274  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BEC278  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BEC27C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BEC280  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BEC284  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BEC288  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BEC28C  80 9E 05 6C */	lwz r4, 0x56c(r30)
/* 80BEC290  80 84 00 04 */	lwz r4, 4(r4)
/* 80BEC294  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BEC298  4B 5B 8B 09 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BEC29C  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80BEC2A0  4B 42 1A 25 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BEC2A4  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80BEC2A8  28 04 00 00 */	cmplwi r4, 0
/* 80BEC2AC  41 82 00 20 */	beq lbl_80BEC2CC
/* 80BEC2B0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BEC2B4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BEC2B8  80 84 00 04 */	lwz r4, 4(r4)
/* 80BEC2BC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BEC2C0  4B 5B 8A E1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BEC2C4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80BEC2C8  4B 42 19 FD */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80BEC2CC:
/* 80BEC2CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BEC2D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BEC2D4  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BEC2D8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BEC2DC  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BEC2E0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BEC2E4  38 60 00 01 */	li r3, 1
/* 80BEC2E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEC2EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BEC2F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEC2F4  7C 08 03 A6 */	mtlr r0
/* 80BEC2F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEC2FC  4E 80 00 20 */	blr 
