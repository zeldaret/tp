lbl_80BC4628:
/* 80BC4628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC462C  7C 08 02 A6 */	mflr r0
/* 80BC4630  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC4634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC4638  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC463C  7C 7E 1B 78 */	mr r30, r3
/* 80BC4640  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BC4644  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BC4648  38 80 00 10 */	li r4, 0x10
/* 80BC464C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BC4650  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BC4654  4B 5D F1 71 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BC4658  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BC465C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BC4660  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80BC4664  80 84 00 04 */	lwz r4, 4(r4)
/* 80BC4668  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BC466C  4B 5E 07 35 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BC4670  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BC4674  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BC4678  80 9E 06 68 */	lwz r4, 0x668(r30)
/* 80BC467C  80 84 00 04 */	lwz r4, 4(r4)
/* 80BC4680  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BC4684  4B 5E 07 1D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BC4688  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC468C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC4690  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BC4694  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BC4698  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BC469C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BC46A0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BC46A4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BC46A8  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80BC46AC  4B 44 96 19 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BC46B0  80 7E 06 68 */	lwz r3, 0x668(r30)
/* 80BC46B4  4B 44 96 11 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BC46B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC46BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC46C0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BC46C4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BC46C8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BC46CC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BC46D0  38 60 00 01 */	li r3, 1
/* 80BC46D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC46D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC46DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC46E0  7C 08 03 A6 */	mtlr r0
/* 80BC46E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC46E8  4E 80 00 20 */	blr 
