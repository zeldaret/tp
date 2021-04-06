lbl_80B9F634:
/* 80B9F634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9F638  7C 08 02 A6 */	mflr r0
/* 80B9F63C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9F640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9F644  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9F648  7C 7E 1B 78 */	mr r30, r3
/* 80B9F64C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B9F650  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B9F654  38 80 00 40 */	li r4, 0x40
/* 80B9F658  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B9F65C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80B9F660  4B 60 41 65 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80B9F664  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B9F668  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B9F66C  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80B9F670  80 84 00 04 */	lwz r4, 4(r4)
/* 80B9F674  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80B9F678  4B 60 57 29 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B9F67C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9F680  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9F684  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80B9F688  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B9F68C  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B9F690  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80B9F694  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80B9F698  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80B9F69C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80B9F6A0  4B 46 E6 25 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80B9F6A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9F6A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9F6AC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80B9F6B0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80B9F6B4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80B9F6B8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80B9F6BC  38 60 00 01 */	li r3, 1
/* 80B9F6C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9F6C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B9F6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9F6CC  7C 08 03 A6 */	mtlr r0
/* 80B9F6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9F6D4  4E 80 00 20 */	blr 
