lbl_80BE5960:
/* 80BE5960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE5964  7C 08 02 A6 */	mflr r0
/* 80BE5968  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE596C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE5970  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE5974  7C 7E 1B 78 */	mr r30, r3
/* 80BE5978  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BE597C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BE5980  38 80 00 10 */	li r4, 0x10
/* 80BE5984  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BE5988  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BE598C  4B 5B DE 39 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BE5990  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BE5994  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BE5998  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80BE599C  80 84 00 04 */	lwz r4, 4(r4)
/* 80BE59A0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BE59A4  4B 5B F3 FD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BE59A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE59AC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE59B0  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BE59B4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BE59B8  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BE59BC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BE59C0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BE59C4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BE59C8  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BE59CC  4B 42 82 F9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BE59D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE59D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE59D8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BE59DC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BE59E0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BE59E4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BE59E8  38 60 00 01 */	li r3, 1
/* 80BE59EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE59F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE59F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE59F8  7C 08 03 A6 */	mtlr r0
/* 80BE59FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE5A00  4E 80 00 20 */	blr 
