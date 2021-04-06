lbl_80C6AEB0:
/* 80C6AEB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6AEB4  7C 08 02 A6 */	mflr r0
/* 80C6AEB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6AEBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6AEC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6AEC4  7C 7E 1B 78 */	mr r30, r3
/* 80C6AEC8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C6AECC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C6AED0  38 80 00 10 */	li r4, 0x10
/* 80C6AED4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C6AED8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C6AEDC  4B 53 88 E9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C6AEE0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C6AEE4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C6AEE8  80 9E 07 20 */	lwz r4, 0x720(r30)
/* 80C6AEEC  80 84 00 04 */	lwz r4, 4(r4)
/* 80C6AEF0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C6AEF4  4B 53 9E AD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C6AEF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6AEFC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6AF00  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C6AF04  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C6AF08  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C6AF0C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C6AF10  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C6AF14  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C6AF18  80 7E 07 20 */	lwz r3, 0x720(r30)
/* 80C6AF1C  4B 3A 2D A9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C6AF20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6AF24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6AF28  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C6AF2C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C6AF30  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C6AF34  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C6AF38  38 60 00 01 */	li r3, 1
/* 80C6AF3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6AF40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6AF44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6AF48  7C 08 03 A6 */	mtlr r0
/* 80C6AF4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6AF50  4E 80 00 20 */	blr 
