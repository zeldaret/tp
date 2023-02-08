lbl_80C62EA0:
/* 80C62EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C62EA4  7C 08 02 A6 */	mflr r0
/* 80C62EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C62EAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C62EB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C62EB4  7C 7E 1B 78 */	mr r30, r3
/* 80C62EB8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C62EBC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C62EC0  38 80 00 10 */	li r4, 0x10
/* 80C62EC4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C62EC8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C62ECC  4B 54 08 F9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C62ED0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C62ED4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C62ED8  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 80C62EDC  80 84 00 04 */	lwz r4, 4(r4)
/* 80C62EE0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C62EE4  4B 54 1E BD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C62EE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C62EEC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C62EF0  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C62EF4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C62EF8  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C62EFC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C62F00  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C62F04  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C62F08  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80C62F0C  4B 3A AD B9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C62F10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C62F14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C62F18  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C62F1C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C62F20  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C62F24  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C62F28  38 60 00 01 */	li r3, 1
/* 80C62F2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C62F30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C62F34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C62F38  7C 08 03 A6 */	mtlr r0
/* 80C62F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C62F40  4E 80 00 20 */	blr 
