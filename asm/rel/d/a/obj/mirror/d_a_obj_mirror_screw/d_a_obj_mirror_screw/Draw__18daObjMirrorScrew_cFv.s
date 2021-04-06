lbl_80C99608:
/* 80C99608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9960C  7C 08 02 A6 */	mflr r0
/* 80C99610  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C99614  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C99618  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9961C  7C 7E 1B 78 */	mr r30, r3
/* 80C99620  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C99624  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C99628  38 80 00 10 */	li r4, 0x10
/* 80C9962C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C99630  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C99634  4B 50 A1 91 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C99638  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C9963C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C99640  80 9E 05 A0 */	lwz r4, 0x5a0(r30)
/* 80C99644  80 84 00 04 */	lwz r4, 4(r4)
/* 80C99648  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C9964C  4B 50 B7 55 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C99650  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C99654  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C99658  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C9965C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C99660  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C99664  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C99668  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C9966C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C99670  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 80C99674  4B 37 46 51 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C99678  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9967C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C99680  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C99684  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C99688  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C9968C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C99690  38 60 00 01 */	li r3, 1
/* 80C99694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C99698  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9969C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C996A0  7C 08 03 A6 */	mtlr r0
/* 80C996A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C996A8  4E 80 00 20 */	blr 
