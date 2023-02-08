lbl_80D438C8:
/* 80D438C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D438CC  7C 08 02 A6 */	mflr r0
/* 80D438D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D438D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D438D8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D438DC  7C 7E 1B 78 */	mr r30, r3
/* 80D438E0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D438E4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D438E8  38 80 00 10 */	li r4, 0x10
/* 80D438EC  38 BE 03 8C */	addi r5, r30, 0x38c
/* 80D438F0  38 DE 00 04 */	addi r6, r30, 4
/* 80D438F4  4B 45 FE D1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D438F8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D438FC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D43900  80 9E 00 00 */	lwz r4, 0(r30)
/* 80D43904  80 84 00 04 */	lwz r4, 4(r4)
/* 80D43908  38 BE 00 04 */	addi r5, r30, 4
/* 80D4390C  4B 46 14 95 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D43910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D43914  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D43918  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D4391C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D43920  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D43924  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D43928  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D4392C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D43930  80 7E 00 00 */	lwz r3, 0(r30)
/* 80D43934  4B 2C A3 91 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D43938  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4393C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D43940  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D43944  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D43948  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D4394C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D43950  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D43954  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D43958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4395C  7C 08 03 A6 */	mtlr r0
/* 80D43960  38 21 00 10 */	addi r1, r1, 0x10
/* 80D43964  4E 80 00 20 */	blr 
