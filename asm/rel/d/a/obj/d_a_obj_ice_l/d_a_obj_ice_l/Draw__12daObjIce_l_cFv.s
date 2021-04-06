lbl_80C206AC:
/* 80C206AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C206B0  7C 08 02 A6 */	mflr r0
/* 80C206B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C206B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C206BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C206C0  7C 7E 1B 78 */	mr r30, r3
/* 80C206C4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C206C8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C206CC  38 80 00 10 */	li r4, 0x10
/* 80C206D0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C206D4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C206D8  4B 58 30 ED */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C206DC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C206E0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C206E4  80 9E 06 34 */	lwz r4, 0x634(r30)
/* 80C206E8  80 84 00 04 */	lwz r4, 4(r4)
/* 80C206EC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C206F0  4B 58 46 B1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C206F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C206F8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C206FC  80 04 5F 78 */	lwz r0, 0x5f78(r4)
/* 80C20700  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C20704  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C20708  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C2070C  80 04 5F 7C */	lwz r0, 0x5f7c(r4)
/* 80C20710  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C20714  80 7E 06 34 */	lwz r3, 0x634(r30)
/* 80C20718  4B 3E D5 AD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C2071C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C20720  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C20724  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C20728  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C2072C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C20730  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C20734  38 60 00 01 */	li r3, 1
/* 80C20738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2073C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C20740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C20744  7C 08 03 A6 */	mtlr r0
/* 80C20748  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2074C  4E 80 00 20 */	blr 
