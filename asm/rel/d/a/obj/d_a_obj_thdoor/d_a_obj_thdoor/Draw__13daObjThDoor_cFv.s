lbl_80D0E150:
/* 80D0E150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E154  7C 08 02 A6 */	mflr r0
/* 80D0E158  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E15C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0E160  93 C1 00 08 */	stw r30, 8(r1)
/* 80D0E164  7C 7E 1B 78 */	mr r30, r3
/* 80D0E168  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D0E16C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D0E170  38 80 00 10 */	li r4, 0x10
/* 80D0E174  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D0E178  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D0E17C  4B 49 56 49 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D0E180  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D0E184  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D0E188  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80D0E18C  80 84 00 04 */	lwz r4, 4(r4)
/* 80D0E190  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D0E194  4B 49 6C 0D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D0E198  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0E19C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0E1A0  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D0E1A4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D0E1A8  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D0E1AC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D0E1B0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D0E1B4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D0E1B8  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D0E1BC  4B 2F FB 09 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D0E1C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0E1C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0E1C8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D0E1CC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D0E1D0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D0E1D4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D0E1D8  38 60 00 01 */	li r3, 1
/* 80D0E1DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0E1E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D0E1E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E1E8  7C 08 03 A6 */	mtlr r0
/* 80D0E1EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E1F0  4E 80 00 20 */	blr 
