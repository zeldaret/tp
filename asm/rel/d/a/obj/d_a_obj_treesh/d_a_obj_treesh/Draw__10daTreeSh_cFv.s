lbl_80D1F648:
/* 80D1F648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1F64C  7C 08 02 A6 */	mflr r0
/* 80D1F650  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F654  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1F658  93 C1 00 08 */	stw r30, 8(r1)
/* 80D1F65C  7C 7E 1B 78 */	mr r30, r3
/* 80D1F660  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D1F664  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D1F668  38 80 00 10 */	li r4, 0x10
/* 80D1F66C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D1F670  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D1F674  4B 48 41 51 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D1F678  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D1F67C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D1F680  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80D1F684  80 84 00 04 */	lwz r4, 4(r4)
/* 80D1F688  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D1F68C  4B 48 57 15 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D1F690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1F694  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1F698  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D1F69C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D1F6A0  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D1F6A4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D1F6A8  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D1F6AC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D1F6B0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D1F6B4  4B 2E E6 11 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D1F6B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1F6BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1F6C0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D1F6C4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D1F6C8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D1F6CC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D1F6D0  38 60 00 01 */	li r3, 1
/* 80D1F6D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1F6D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D1F6DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F6E0  7C 08 03 A6 */	mtlr r0
/* 80D1F6E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F6E8  4E 80 00 20 */	blr 
