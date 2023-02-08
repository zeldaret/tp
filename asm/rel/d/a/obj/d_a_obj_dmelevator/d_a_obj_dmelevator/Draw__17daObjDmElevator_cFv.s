lbl_80BDF618:
/* 80BDF618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDF61C  7C 08 02 A6 */	mflr r0
/* 80BDF620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDF624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDF628  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDF62C  7C 7E 1B 78 */	mr r30, r3
/* 80BDF630  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BDF634  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BDF638  38 80 00 10 */	li r4, 0x10
/* 80BDF63C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BDF640  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BDF644  4B 5C 41 81 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BDF648  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BDF64C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BDF650  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 80BDF654  80 84 00 04 */	lwz r4, 4(r4)
/* 80BDF658  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BDF65C  4B 5C 57 45 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BDF660  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BDF664  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BDF668  80 9E 05 B0 */	lwz r4, 0x5b0(r30)
/* 80BDF66C  80 84 00 04 */	lwz r4, 4(r4)
/* 80BDF670  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BDF674  4B 5C 57 2D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BDF678  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDF67C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDF680  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BDF684  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BDF688  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BDF68C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BDF690  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BDF694  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BDF698  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80BDF69C  4B 42 E6 29 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BDF6A0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80BDF6A4  4B 42 E6 21 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BDF6A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDF6AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDF6B0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BDF6B4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BDF6B8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BDF6BC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BDF6C0  38 60 00 01 */	li r3, 1
/* 80BDF6C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDF6C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDF6CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDF6D0  7C 08 03 A6 */	mtlr r0
/* 80BDF6D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDF6D8  4E 80 00 20 */	blr 
