lbl_80CDCA00:
/* 80CDCA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDCA04  7C 08 02 A6 */	mflr r0
/* 80CDCA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDCA0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDCA10  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDCA14  7C 7E 1B 78 */	mr r30, r3
/* 80CDCA18  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CDCA1C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CDCA20  38 80 00 10 */	li r4, 0x10
/* 80CDCA24  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CDCA28  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CDCA2C  4B 4C 6D 99 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CDCA30  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CDCA34  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CDCA38  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80CDCA3C  80 84 00 04 */	lwz r4, 4(r4)
/* 80CDCA40  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CDCA44  4B 4C 83 5D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CDCA48  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CDCA4C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CDCA50  80 9E 05 AC */	lwz r4, 0x5ac(r30)
/* 80CDCA54  80 84 00 04 */	lwz r4, 4(r4)
/* 80CDCA58  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CDCA5C  4B 4C 83 45 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CDCA60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDCA64  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDCA68  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CDCA6C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CDCA70  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CDCA74  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CDCA78  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CDCA7C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CDCA80  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CDCA84  4B 33 12 41 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CDCA88  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80CDCA8C  4B 33 12 39 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CDCA90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDCA94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDCA98  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CDCA9C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CDCAA0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CDCAA4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CDCAA8  38 60 00 01 */	li r3, 1
/* 80CDCAAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDCAB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDCAB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDCAB8  7C 08 03 A6 */	mtlr r0
/* 80CDCABC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDCAC0  4E 80 00 20 */	blr 
