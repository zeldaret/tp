lbl_80CAA968:
/* 80CAA968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAA96C  7C 08 02 A6 */	mflr r0
/* 80CAA970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAA974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAA978  93 C1 00 08 */	stw r30, 8(r1)
/* 80CAA97C  7C 7E 1B 78 */	mr r30, r3
/* 80CAA980  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CAA984  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CAA988  38 80 00 10 */	li r4, 0x10
/* 80CAA98C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CAA990  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CAA994  4B 4F 8E 31 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CAA998  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CAA99C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CAA9A0  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80CAA9A4  80 84 00 04 */	lwz r4, 4(r4)
/* 80CAA9A8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CAA9AC  4B 4F A3 F5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CAA9B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAA9B4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAA9B8  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CAA9BC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CAA9C0  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CAA9C4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CAA9C8  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CAA9CC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CAA9D0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CAA9D4  4B 36 32 F1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CAA9D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAA9DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAA9E0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CAA9E4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CAA9E8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CAA9EC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CAA9F0  38 60 00 01 */	li r3, 1
/* 80CAA9F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAA9F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CAA9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAAA00  7C 08 03 A6 */	mtlr r0
/* 80CAAA04  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAAA08  4E 80 00 20 */	blr 
