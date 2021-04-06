lbl_80C85F14:
/* 80C85F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C85F18  7C 08 02 A6 */	mflr r0
/* 80C85F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C85F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C85F24  93 C1 00 08 */	stw r30, 8(r1)
/* 80C85F28  7C 7E 1B 78 */	mr r30, r3
/* 80C85F2C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C85F30  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C85F34  38 80 00 10 */	li r4, 0x10
/* 80C85F38  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C85F3C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C85F40  4B 51 D8 85 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C85F44  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C85F48  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C85F4C  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C85F50  80 84 00 04 */	lwz r4, 4(r4)
/* 80C85F54  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C85F58  4B 51 EE 49 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C85F5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C85F60  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C85F64  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C85F68  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C85F6C  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C85F70  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C85F74  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C85F78  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C85F7C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C85F80  4B 38 7D 45 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C85F84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C85F88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C85F8C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C85F90  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C85F94  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C85F98  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C85F9C  38 60 00 01 */	li r3, 1
/* 80C85FA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C85FA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C85FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C85FAC  7C 08 03 A6 */	mtlr r0
/* 80C85FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C85FB4  4E 80 00 20 */	blr 
